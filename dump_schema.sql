--
-- PostgreSQL database dump
--

\restrict gONDpMJgHae3T31NDSh99ExlIdFI8bq1HCJXgEMXP07KMKVfogNMcGa1aWJVCOU

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.6 (Ubuntu 17.6-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: authentication; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA authentication;


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: division; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.division AS ENUM (
    'subjr',
    'jr',
    'open',
    'mas1',
    'mas2',
    'mas3',
    'mas4'
);


--
-- Name: meet_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.meet_type AS ENUM (
    'national',
    'amateur',
    'professional',
    'national_qualifier',
    'other'
);


--
-- Name: sexes; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.sexes AS ENUM (
    'female',
    'male'
);


--
-- Name: calculate_dots(numeric, numeric, public.sexes); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_dots(result numeric, bw numeric, sex public.sexes) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
DECLARE
    a NUMERIC;
    b NUMERIC;
    c NUMERIC;
    d NUMERIC;
    e NUMERIC;
    denominator NUMERIC;
    dots_points NUMERIC;
BEGIN

    -- Set coefficients based on sex enum value
    IF sex = 'male' THEN
        a := -0.000001093;
        b := 0.0007391293;
        c := -0.1918759221;
        d := 24.0900756;
        e := -307.75076;
    ELSIF sex = 'female' THEN
        a := -0.0000010706;
        b := 0.0005158568;
        c := -0.1126655495;
        d := 13.6175032;
        e := -57.96288;
    ELSE
        RAISE EXCEPTION 'Invalid sex value: %', sex;
    END IF;

    denominator := a * POWER(bw, 4) + b * POWER(bw, 3) + c * POWER(bw, 2) + d * bw + e;

    dots_points := result * (500 / denominator);

    dots_points := ROUND(dots_points, 2);

    RETURN dots_points;
END;
$$;


--
-- Name: calculate_gl(numeric, numeric, public.sexes); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_gl(result numeric, body_weight numeric, sex public.sexes) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
DECLARE
    a_coeff NUMERIC;
    b_coeff NUMERIC;
    c_coeff NUMERIC;
    gl_points NUMERIC;
BEGIN
    -- Input validation
    IF result <= 0 THEN
        return 0;
    END IF;
    
    IF body_weight <= 0 THEN
        return 0;
    END IF;
    
    -- Set coefficients based on sex (using Classic Powerlifting values)
    CASE sex
        WHEN 'male' THEN
            a_coeff := 1199.72839;
            b_coeff := 1025.18162;
            c_coeff := 0.00921;
        WHEN 'female' THEN
            a_coeff := 610.32796;
            b_coeff := 1045.59282;
            c_coeff := 0.03048;
        ELSE
            RAISE EXCEPTION 'Invalid sex value. Must be ''male'' or ''female''';
    END CASE;
    
    -- Calculate GL Points using the formula: GL Points = Result * (100 / (A - B * e^(-C*Bw)))
    gl_points := result * (100.0 / (a_coeff - b_coeff * EXP(-c_coeff * body_weight)));
    
    -- Round to 2 decimal places
    RETURN ROUND(gl_points, 2);
END;
$$;


--
-- Name: calculate_ipf(numeric, numeric, public.sexes); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_ipf(result numeric, bw numeric, sex public.sexes) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
DECLARE
    a NUMERIC;
    b NUMERIC;
    c NUMERIC;
    d NUMERIC;
    ipf_points NUMERIC;
BEGIN
	IF result <= 0 THEN
        return 0;
    END IF;
    
    IF bw <= 0 THEN
        return 0;
    END IF;
    -- Set coefficients based on sex enum value (Classic Powerlifting)
    IF sex = 'male' THEN
        a := 310.6700;
        b := 857.7850;
        c := 53.2160;
        d := 147.0835;
    ELSIF sex = 'female' THEN
        a := 125.1435;
        b := 228.0300;
        c := 34.5246;
        d := 86.8301;
    ELSE
        RAISE EXCEPTION 'Invalid sex value: %', sex;
    END IF;

    -- Calculate IPF points formula
    ipf_points := 500 + 100 * (result - (a * LN(bw) - b)) / (c * LN(bw) - d);

    RETURN ROUND(ipf_points, 2);
END;
$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sessions; Type: TABLE; Schema: authentication; Owner: -
--

CREATE TABLE authentication.sessions (
    session_id text NOT NULL,
    vpf_id character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    expires_at timestamp without time zone GENERATED ALWAYS AS ((created_at + '3 mons'::interval)) STORED
);


--
-- Name: meet_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.meet_info (
    meet_id integer NOT NULL,
    name text NOT NULL,
    city text,
    start_registration date,
    close_registration date,
    host_date date,
    type public.meet_type,
    media_link text
);


--
-- Name: meet_result; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.meet_result (
    meet_id integer NOT NULL,
    vpf_id text NOT NULL,
    sex public.sexes,
    weight_class integer,
    division public.division,
    body_weight numeric(5,2) DEFAULT 0.0,
    squat1 numeric(5,2) DEFAULT 0.0,
    squat2 numeric(5,2) DEFAULT 0.0,
    squat3 numeric(5,2) DEFAULT 0.0,
    bench1 numeric(5,2) DEFAULT 0.0,
    bench2 numeric(5,2) DEFAULT 0.0,
    bench3 numeric(5,2) DEFAULT 0.0,
    dead1 numeric(5,2) DEFAULT 0.0,
    dead2 numeric(5,2) DEFAULT 0.0,
    dead3 numeric(5,2) DEFAULT 0.0,
    platform text,
    session text,
    flight text,
    team_id integer,
    team_score numeric,
    placement integer,
    CONSTRAINT chk_weight_class_sex CHECK ((((sex = 'male'::public.sexes) AND (weight_class = ANY (ARRAY[53, 59, 66, 74, 83, 93, 105, 120, 999]))) OR ((sex = 'female'::public.sexes) AND (weight_class = ANY (ARRAY[43, 47, 52, 57, 63, 69, 76, 84, 999]))) OR (sex IS NULL)))
);


--
-- Name: vpf_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.vpf_seq
    START WITH 889
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.members (
    vpf_id text DEFAULT ('VPF'::text || lpad((nextval('public.vpf_seq'::regclass))::text, 6, '0'::text)) NOT NULL,
    full_name text NOT NULL,
    nationality text,
    dob smallint,
    national_id text,
    address text,
    phone_number text,
    squat_rack_pin smallint DEFAULT 0,
    bench_rack_pin smallint DEFAULT 0,
    bench_safety_pin smallint DEFAULT 0,
    bench_foot_block smallint DEFAULT 0,
    email text,
    active boolean DEFAULT true,
    drug_violate boolean DEFAULT false,
    notes text,
    is_guest boolean DEFAULT false,
    password text,
    CONSTRAINT members_dob_check CHECK (((dob >= 1900) AND ((dob)::numeric <= EXTRACT(year FROM CURRENT_DATE))))
);


--
-- Name: meet_result_detailed; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW public.meet_result_detailed AS
 SELECT mr.meet_id,
    mr.vpf_id,
    mr.sex,
    mr.weight_class,
    mr.division,
    mr.body_weight,
    mr.squat1,
    mr.squat2,
    mr.squat3,
    GREATEST(mr.squat1, mr.squat2, mr.squat3, (0)::numeric) AS best_squat,
    mr.bench1,
    mr.bench2,
    mr.bench3,
    GREATEST(mr.bench1, mr.bench2, mr.bench3, (0)::numeric) AS best_bench,
    mr.dead1,
    mr.dead2,
    mr.dead3,
    GREATEST(mr.dead1, mr.dead2, mr.dead3, (0)::numeric) AS best_dead,
    mr.platform,
    mr.session,
    mr.flight,
    mr.team_id,
    mr.team_score,
    m.full_name,
    mi.name AS meet_name,
    mi.type,
    ((GREATEST(mr.squat1, mr.squat2, mr.squat3, (0)::numeric) + GREATEST(mr.bench1, mr.bench2, mr.bench3, (0)::numeric)) + GREATEST(mr.dead1, mr.dead2, mr.dead3, (0)::numeric)) AS total,
    public.calculate_dots(((GREATEST(mr.squat1, mr.squat2, mr.squat3, (0)::numeric) + GREATEST(mr.bench1, mr.bench2, mr.bench3, (0)::numeric)) + GREATEST(mr.dead1, mr.dead2, mr.dead3, (0)::numeric)), mr.body_weight, mr.sex) AS dots,
    public.calculate_ipf(((GREATEST(mr.squat1, mr.squat2, mr.squat3, (0)::numeric) + GREATEST(mr.bench1, mr.bench2, mr.bench3, (0)::numeric)) + GREATEST(mr.dead1, mr.dead2, mr.dead3, (0)::numeric)), mr.body_weight, mr.sex) AS ipf,
    public.calculate_gl(((GREATEST(mr.squat1, mr.squat2, mr.squat3, (0)::numeric) + GREATEST(mr.bench1, mr.bench2, mr.bench3, (0)::numeric)) + GREATEST(mr.dead1, mr.dead2, mr.dead3, (0)::numeric)), mr.body_weight, mr.sex) AS gl,
    mr.placement
   FROM ((public.meet_result mr
     JOIN public.members m ON ((mr.vpf_id = m.vpf_id)))
     JOIN public.meet_info mi ON ((mi.meet_id = mr.meet_id)))
  WITH NO DATA;


--
-- Name: bench_records; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW public.bench_records AS
 WITH ranked_benches AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.vpf_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            meet_result_detailed.best_bench,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY meet_result_detailed.best_bench DESC) AS rnk
           FROM public.meet_result_detailed
          WHERE ((meet_result_detailed.type = 'national'::public.meet_type) AND (meet_result_detailed.sex IS NOT NULL) AND (meet_result_detailed.division IS NOT NULL) AND (meet_result_detailed.weight_class IS NOT NULL) AND (GREATEST(meet_result_detailed.bench1, meet_result_detailed.bench2, meet_result_detailed.bench3) > (0)::numeric))
        )
 SELECT meet_id,
    meet_name,
    vpf_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    best_bench AS bench
   FROM ranked_benches
  WHERE (rnk <= 3)
  ORDER BY sex, division, weight_class
  WITH NO DATA;


--
-- Name: deadlift_records; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW public.deadlift_records AS
 WITH ranked_deadlifts AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.vpf_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            meet_result_detailed.best_dead,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY meet_result_detailed.best_dead DESC) AS rnk
           FROM public.meet_result_detailed
          WHERE ((meet_result_detailed.type = 'national'::public.meet_type) AND (meet_result_detailed.sex IS NOT NULL) AND (meet_result_detailed.division IS NOT NULL) AND (meet_result_detailed.weight_class IS NOT NULL) AND (GREATEST(meet_result_detailed.dead1, meet_result_detailed.dead2, meet_result_detailed.dead3) > (0)::numeric))
        )
 SELECT meet_id,
    meet_name,
    vpf_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    best_dead AS deadlift
   FROM ranked_deadlifts
  WHERE (rnk <= 3)
  ORDER BY sex, division, weight_class
  WITH NO DATA;


--
-- Name: meet_info_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.meet_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: meet_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.meet_info_id_seq OWNED BY public.meet_info.meet_id;


--
-- Name: squat_records; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW public.squat_records AS
 WITH ranked_squats AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.vpf_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            meet_result_detailed.best_squat,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY meet_result_detailed.best_squat DESC) AS rnk
           FROM public.meet_result_detailed
          WHERE ((meet_result_detailed.type = 'national'::public.meet_type) AND (meet_result_detailed.sex IS NOT NULL) AND (meet_result_detailed.division IS NOT NULL) AND (meet_result_detailed.weight_class IS NOT NULL) AND (GREATEST(meet_result_detailed.squat1, meet_result_detailed.squat2, meet_result_detailed.squat3) > (0)::numeric))
        )
 SELECT meet_id,
    meet_name,
    vpf_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    best_squat AS squat
   FROM ranked_squats
  WHERE (rnk <= 3)
  ORDER BY sex, division, weight_class
  WITH NO DATA;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    team_name text NOT NULL
);


--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.team_id;


--
-- Name: total_records; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW public.total_records AS
 WITH ranked_totals AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.vpf_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            meet_result_detailed.total,
            meet_result_detailed.dots,
            meet_result_detailed.ipf,
            meet_result_detailed.gl,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY meet_result_detailed.total DESC) AS rnk
           FROM public.meet_result_detailed
          WHERE ((meet_result_detailed.type = 'national'::public.meet_type) AND (meet_result_detailed.sex IS NOT NULL) AND (meet_result_detailed.division IS NOT NULL) AND (meet_result_detailed.weight_class IS NOT NULL) AND (GREATEST(meet_result_detailed.squat1, meet_result_detailed.squat2, meet_result_detailed.squat3) > (0)::numeric) AND (GREATEST(meet_result_detailed.bench1, meet_result_detailed.bench2, meet_result_detailed.bench3) > (0)::numeric) AND (GREATEST(meet_result_detailed.dead1, meet_result_detailed.dead2, meet_result_detailed.dead3) > (0)::numeric))
        )
 SELECT meet_id,
    meet_name,
    vpf_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    total,
    dots,
    ipf,
    gl
   FROM ranked_totals
  WHERE (rnk <= 3)
  ORDER BY sex, division, weight_class
  WITH NO DATA;


--
-- Name: meet_info meet_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meet_info ALTER COLUMN meet_id SET DEFAULT nextval('public.meet_info_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: authentication; Owner: -
--

ALTER TABLE ONLY authentication.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);


--
-- Name: meet_info meet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meet_info
    ADD CONSTRAINT meet_info_pkey PRIMARY KEY (meet_id);


--
-- Name: meet_result meet_result_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meet_result
    ADD CONSTRAINT meet_result_pkey PRIMARY KEY (meet_id, vpf_id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (vpf_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (team_name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: meet_result meet_result_meet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meet_result
    ADD CONSTRAINT meet_result_meet_id_fkey FOREIGN KEY (meet_id) REFERENCES public.meet_info(meet_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: meet_result meet_result_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meet_result
    ADD CONSTRAINT meet_result_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: meet_result meet_result_vpf_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meet_result
    ADD CONSTRAINT meet_result_vpf_id_fkey FOREIGN KEY (vpf_id) REFERENCES public.members(vpf_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;


--
-- Name: FUNCTION calculate_dots(result numeric, bw numeric, sex public.sexes); Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON FUNCTION public.calculate_dots(result numeric, bw numeric, sex public.sexes) TO anon;
GRANT ALL ON FUNCTION public.calculate_dots(result numeric, bw numeric, sex public.sexes) TO authenticated;
GRANT ALL ON FUNCTION public.calculate_dots(result numeric, bw numeric, sex public.sexes) TO service_role;


--
-- Name: FUNCTION calculate_gl(result numeric, body_weight numeric, sex public.sexes); Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON FUNCTION public.calculate_gl(result numeric, body_weight numeric, sex public.sexes) TO anon;
GRANT ALL ON FUNCTION public.calculate_gl(result numeric, body_weight numeric, sex public.sexes) TO authenticated;
GRANT ALL ON FUNCTION public.calculate_gl(result numeric, body_weight numeric, sex public.sexes) TO service_role;


--
-- Name: FUNCTION calculate_ipf(result numeric, bw numeric, sex public.sexes); Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON FUNCTION public.calculate_ipf(result numeric, bw numeric, sex public.sexes) TO anon;
GRANT ALL ON FUNCTION public.calculate_ipf(result numeric, bw numeric, sex public.sexes) TO authenticated;
GRANT ALL ON FUNCTION public.calculate_ipf(result numeric, bw numeric, sex public.sexes) TO service_role;


--
-- Name: TABLE meet_info; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.meet_info TO anon;
GRANT ALL ON TABLE public.meet_info TO authenticated;
GRANT ALL ON TABLE public.meet_info TO service_role;


--
-- Name: TABLE meet_result; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.meet_result TO anon;
GRANT ALL ON TABLE public.meet_result TO authenticated;
GRANT ALL ON TABLE public.meet_result TO service_role;


--
-- Name: SEQUENCE vpf_seq; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON SEQUENCE public.vpf_seq TO anon;
GRANT ALL ON SEQUENCE public.vpf_seq TO authenticated;
GRANT ALL ON SEQUENCE public.vpf_seq TO service_role;


--
-- Name: TABLE members; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.members TO anon;
GRANT ALL ON TABLE public.members TO authenticated;
GRANT ALL ON TABLE public.members TO service_role;


--
-- Name: TABLE meet_result_detailed; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.meet_result_detailed TO anon;
GRANT ALL ON TABLE public.meet_result_detailed TO authenticated;
GRANT ALL ON TABLE public.meet_result_detailed TO service_role;


--
-- Name: TABLE bench_records; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.bench_records TO anon;
GRANT ALL ON TABLE public.bench_records TO authenticated;
GRANT ALL ON TABLE public.bench_records TO service_role;


--
-- Name: TABLE deadlift_records; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.deadlift_records TO anon;
GRANT ALL ON TABLE public.deadlift_records TO authenticated;
GRANT ALL ON TABLE public.deadlift_records TO service_role;


--
-- Name: SEQUENCE meet_info_id_seq; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON SEQUENCE public.meet_info_id_seq TO anon;
GRANT ALL ON SEQUENCE public.meet_info_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.meet_info_id_seq TO service_role;


--
-- Name: TABLE squat_records; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.squat_records TO anon;
GRANT ALL ON TABLE public.squat_records TO authenticated;
GRANT ALL ON TABLE public.squat_records TO service_role;


--
-- Name: TABLE teams; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.teams TO anon;
GRANT ALL ON TABLE public.teams TO authenticated;
GRANT ALL ON TABLE public.teams TO service_role;


--
-- Name: SEQUENCE teams_id_seq; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON SEQUENCE public.teams_id_seq TO anon;
GRANT ALL ON SEQUENCE public.teams_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.teams_id_seq TO service_role;


--
-- Name: TABLE total_records; Type: ACL; Schema: public; Owner: -
--

GRANT ALL ON TABLE public.total_records TO anon;
GRANT ALL ON TABLE public.total_records TO authenticated;
GRANT ALL ON TABLE public.total_records TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO service_role;


--
-- PostgreSQL database dump complete
--

\unrestrict gONDpMJgHae3T31NDSh99ExlIdFI8bq1HCJXgEMXP07KMKVfogNMcGa1aWJVCOU


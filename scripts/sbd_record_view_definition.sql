-- public.bench_records source

CREATE MATERIALIZED VIEW public.bench_records
TABLESPACE pg_default
AS WITH ranked_benches AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.athlete_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            GREATEST(meet_result_detailed.bench1, meet_result_detailed.bench2, meet_result_detailed.bench3) AS best_bench,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY (GREATEST(meet_result_detailed.bench1, meet_result_detailed.bench2, meet_result_detailed.bench3)) DESC) AS rnk
           FROM meet_result_detailed
          WHERE meet_result_detailed.type = 'national'::meet_type AND meet_result_detailed.sex IS NOT NULL AND meet_result_detailed.division IS NOT NULL AND meet_result_detailed.weight_class IS NOT NULL AND GREATEST(meet_result_detailed.bench1, meet_result_detailed.bench2, meet_result_detailed.bench3) > 0::numeric
        )
 SELECT meet_id,
    meet_name,
    athlete_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    best_bench AS bench
   FROM ranked_benches
  WHERE rnk <= 3
  ORDER BY sex, division, weight_class
WITH DATA;

-- public.deadlift_records source

CREATE MATERIALIZED VIEW public.deadlift_records
TABLESPACE pg_default
AS WITH ranked_deadlifts AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.athlete_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            GREATEST(meet_result_detailed.dead1, meet_result_detailed.dead2, meet_result_detailed.dead3) AS best_deadlift,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY (GREATEST(meet_result_detailed.dead1, meet_result_detailed.dead2, meet_result_detailed.dead3)) DESC) AS rnk
           FROM meet_result_detailed
          WHERE meet_result_detailed.type = 'national'::meet_type AND meet_result_detailed.sex IS NOT NULL AND meet_result_detailed.division IS NOT NULL AND meet_result_detailed.weight_class IS NOT NULL AND GREATEST(meet_result_detailed.dead1, meet_result_detailed.dead2, meet_result_detailed.dead3) > 0::numeric
        )
 SELECT meet_id,
    meet_name,
    athlete_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    best_deadlift AS deadlift
   FROM ranked_deadlifts
  WHERE rnk <= 3
  ORDER BY sex, division, weight_class
WITH DATA;

-- public.squat_records source

CREATE MATERIALIZED VIEW public.squat_records
TABLESPACE pg_default
AS WITH ranked_squats AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.athlete_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            GREATEST(meet_result_detailed.squat1, meet_result_detailed.squat2, meet_result_detailed.squat3) AS best_squat,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY (GREATEST(meet_result_detailed.squat1, meet_result_detailed.squat2, meet_result_detailed.squat3)) DESC) AS rnk
           FROM meet_result_detailed
          WHERE meet_result_detailed.type = 'national'::meet_type AND meet_result_detailed.sex IS NOT NULL AND meet_result_detailed.division IS NOT NULL AND meet_result_detailed.weight_class IS NOT NULL AND GREATEST(meet_result_detailed.squat1, meet_result_detailed.squat2, meet_result_detailed.squat3) > 0::numeric
        )
 SELECT meet_id,
    meet_name,
    athlete_id,
    full_name,
    sex,
    division,
    weight_class,
    rnk AS rank,
    best_squat AS squat
   FROM ranked_squats
  WHERE rnk <= 3
  ORDER BY sex, division, weight_class
WITH DATA;

-- public.total_records source

CREATE MATERIALIZED VIEW public.total_records
TABLESPACE pg_default
AS WITH ranked_totals AS (
         SELECT meet_result_detailed.meet_id,
            meet_result_detailed.meet_name,
            meet_result_detailed.athlete_id,
            meet_result_detailed.full_name,
            meet_result_detailed.sex,
            meet_result_detailed.division,
            meet_result_detailed.weight_class,
            meet_result_detailed.total,
            meet_result_detailed.dots,
            meet_result_detailed.ipf,
            meet_result_detailed.gl,
            rank() OVER (PARTITION BY meet_result_detailed.sex, meet_result_detailed.division, meet_result_detailed.weight_class ORDER BY meet_result_detailed.total DESC) AS rnk
           FROM meet_result_detailed
          WHERE meet_result_detailed.type = 'national'::meet_type AND meet_result_detailed.sex IS NOT NULL AND meet_result_detailed.division IS NOT NULL AND meet_result_detailed.weight_class IS NOT NULL AND GREATEST(meet_result_detailed.squat1, meet_result_detailed.squat2, meet_result_detailed.squat3) > 0::numeric AND GREATEST(meet_result_detailed.bench1, meet_result_detailed.bench2, meet_result_detailed.bench3) > 0::numeric AND GREATEST(meet_result_detailed.dead1, meet_result_detailed.dead2, meet_result_detailed.dead3) > 0::numeric
        )
 SELECT meet_id,
    meet_name,
    athlete_id,
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
  WHERE rnk <= 3
  ORDER BY sex, division, weight_class
WITH DATA;
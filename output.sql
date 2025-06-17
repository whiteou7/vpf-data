BEGIN;

-- Insert teams
INSERT INTO public.teams (name) VALUES ('18 POWERLIFTING') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('18 Powerlifting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('18Powerlifting') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('BUCKY') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('INFINITY') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('ProPower Team') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('REDOMINANT') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('RMIT STRENGTH CLUB') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('Sắc Màu') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('TEAM BUCKY') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('Team BFH') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('The Strength Crew') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.teams (name) VALUES ('White Powerlifting') ON CONFLICT (name) DO NOTHING;

-- Insert meet results
INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000087',
    'male',
    53,
    'jr',
    49.6,
    -85.00,
    -90.00,
    90.00,
    65.00,
    -70.00,
    -70.00,
    130.00,
    -135.00,
    -135.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000061',
    'male',
    59,
    'open',
    58.8,
    145.00,
    152.50,
    -157.50,
    -87.50,
    92.50,
    -97.50,
    195.00,
    202.50,
    207.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000073',
    'male',
    59,
    'open',
    57.9,
    125.00,
    137.50,
    -142.50,
    87.50,
    95.00,
    -102.50,
    160.00,
    175.00,
    -182.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000042',
    'male',
    59,
    'jr',
    58.8,
    160.00,
    170.00,
    0.00,
    60.00,
    70.00,
    -80.00,
    -190.00,
    190.00,
    200.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000048',
    'male',
    59,
    'jr',
    58.15,
    135.00,
    137.50,
    142.50,
    75.00,
    77.50,
    80.00,
    167.50,
    172.50,
    -177.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000051',
    'male',
    59,
    'jr',
    58.6,
    130.00,
    140.00,
    150.00,
    65.00,
    70.00,
    -80.00,
    155.00,
    160.00,
    170.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000070',
    'male',
    59,
    'jr',
    57.65,
    -120.00,
    125.00,
    132.50,
    85.00,
    90.00,
    -95.00,
    155.00,
    162.50,
    -175.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000079',
    'male',
    59,
    'jr',
    58.3,
    110.00,
    112.50,
    125.00,
    70.00,
    75.00,
    80.00,
    135.00,
    150.00,
    -160.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000080',
    'male',
    66,
    'open',
    65.1,
    200.00,
    210.00,
    -220.00,
    120.00,
    -130.00,
    130.00,
    210.00,
    225.00,
    235.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000066',
    'male',
    66,
    'open',
    65.45,
    -150.00,
    150.00,
    155.00,
    97.50,
    105.00,
    -107.50,
    165.00,
    -180.00,
    -180.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000014',
    'male',
    66,
    'open',
    63.9,
    105.00,
    112.50,
    120.00,
    92.50,
    100.00,
    107.50,
    150.00,
    162.50,
    172.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000028',
    'male',
    66,
    'open',
    65.85,
    110.00,
    -125.00,
    -125.00,
    80.00,
    90.00,
    95.00,
    155.00,
    170.00,
    -180.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000053',
    'male',
    66,
    'open',
    65.7,
    110.00,
    122.50,
    130.00,
    70.00,
    77.50,
    -80.00,
    150.00,
    -160.00,
    165.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000095',
    'male',
    66,
    'open',
    65.75,
    115.00,
    127.50,
    135.00,
    70.00,
    -75.00,
    80.00,
    145.00,
    155.00,
    -160.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000019',
    'male',
    66,
    'jr',
    65.95,
    170.00,
    -175.00,
    -175.00,
    -105.00,
    105.00,
    110.00,
    185.00,
    195.00,
    -205.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000018',
    'male',
    66,
    'jr',
    63,
    150.00,
    -160.00,
    -160.00,
    95.00,
    -105.00,
    -105.00,
    190.00,
    200.00,
    -207.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000007',
    'male',
    66,
    'jr',
    63.65,
    145.00,
    150.00,
    155.00,
    95.00,
    100.00,
    -105.00,
    180.00,
    190.00,
    -200.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000076',
    'male',
    66,
    'jr',
    63.35,
    120.00,
    130.00,
    140.00,
    70.00,
    77.50,
    85.00,
    170.00,
    185.00,
    200.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000043',
    'male',
    66,
    'jr',
    65.5,
    120.00,
    130.00,
    140.00,
    -67.50,
    75.00,
    80.00,
    140.00,
    155.00,
    165.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000050',
    'male',
    66,
    'subjr',
    65.75,
    140.00,
    150.00,
    160.00,
    80.00,
    -85.00,
    0.00,
    205.00,
    215.00,
    -230.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000032',
    'male',
    66,
    'subjr',
    64.95,
    122.50,
    -130.00,
    135.00,
    70.00,
    77.50,
    82.50,
    135.00,
    145.00,
    155.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000071',
    'male',
    66,
    'subjr',
    63.3,
    120.00,
    125.00,
    130.00,
    65.00,
    -70.00,
    -70.00,
    140.00,
    -147.50,
    147.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000038',
    'male',
    66,
    'subjr',
    65.35,
    -105.00,
    110.00,
    115.00,
    -57.50,
    -60.00,
    -60.00,
    127.50,
    0.00,
    0.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000045',
    'male',
    74,
    'open',
    72.35,
    170.00,
    177.50,
    185.00,
    115.00,
    120.00,
    -122.50,
    -220.00,
    -220.00,
    220.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000063',
    'male',
    74,
    'open',
    73.75,
    165.00,
    175.00,
    180.00,
    95.00,
    102.50,
    105.00,
    -220.00,
    -230.00,
    230.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000052',
    'male',
    74,
    'open',
    73.3,
    170.00,
    185.00,
    -192.50,
    -100.00,
    105.00,
    -115.00,
    190.00,
    -200.00,
    -200.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000059',
    'male',
    74,
    'open',
    69.65,
    -140.00,
    147.50,
    155.00,
    -105.00,
    110.00,
    117.50,
    180.00,
    190.00,
    200.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000034',
    'male',
    74,
    'open',
    71.7,
    137.50,
    147.50,
    152.50,
    87.50,
    97.50,
    100.00,
    182.50,
    195.00,
    202.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000029',
    'male',
    74,
    'open',
    72.9,
    120.00,
    -135.00,
    -135.00,
    -80.00,
    -80.00,
    -80.00,
    160.00,
    -170.00,
    170.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000082',
    'male',
    74,
    'jr',
    73.1,
    -190.00,
    -197.50,
    197.50,
    115.00,
    122.50,
    -130.00,
    200.00,
    215.00,
    230.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000016',
    'male',
    74,
    'jr',
    71.95,
    -172.50,
    175.00,
    182.50,
    117.50,
    122.50,
    127.50,
    225.00,
    237.50,
    -240.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000084',
    'male',
    74,
    'jr',
    72.8,
    -157.50,
    165.00,
    172.50,
    -105.00,
    115.00,
    122.50,
    220.00,
    -230.00,
    -240.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000046',
    'male',
    74,
    'jr',
    72.45,
    -165.00,
    172.50,
    180.00,
    87.50,
    90.00,
    105.00,
    200.00,
    -210.00,
    215.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000065',
    'male',
    74,
    'jr',
    70.75,
    160.00,
    175.00,
    -180.00,
    100.00,
    105.00,
    -107.50,
    190.00,
    205.00,
    -220.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000004',
    'male',
    74,
    'jr',
    71.9,
    155.00,
    -165.00,
    165.00,
    95.00,
    102.50,
    110.00,
    180.00,
    192.50,
    205.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000020',
    'male',
    74,
    'jr',
    71.6,
    150.00,
    157.50,
    167.50,
    110.00,
    -117.50,
    -117.50,
    -170.00,
    180.00,
    190.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000012',
    'male',
    74,
    'jr',
    71.3,
    150.00,
    160.00,
    170.00,
    95.00,
    -105.00,
    -110.00,
    175.00,
    185.00,
    -192.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000055',
    'male',
    74,
    'jr',
    68.25,
    120.00,
    -140.00,
    -150.00,
    -90.00,
    90.00,
    -95.00,
    150.00,
    170.00,
    -180.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000077',
    'male',
    74,
    'jr',
    68.45,
    120.00,
    -127.50,
    130.00,
    70.00,
    -77.50,
    -80.00,
    -160.00,
    167.50,
    175.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000025',
    'male',
    74,
    'jr',
    66.9,
    130.00,
    135.00,
    140.00,
    87.50,
    -95.00,
    -95.00,
    122.50,
    132.50,
    140.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000036',
    'male',
    74,
    'subjr',
    72.8,
    180.00,
    -190.00,
    -195.00,
    85.00,
    -97.50,
    97.50,
    230.00,
    245.00,
    -250.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000083',
    'male',
    74,
    'subjr',
    70.95,
    130.00,
    135.00,
    -140.00,
    72.50,
    77.50,
    85.00,
    160.00,
    -172.50,
    175.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000096',
    'male',
    74,
    'subjr',
    0,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000011',
    'male',
    83,
    'open',
    81.85,
    190.00,
    205.00,
    -210.00,
    110.00,
    120.00,
    125.00,
    200.00,
    220.00,
    237.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000024',
    'male',
    83,
    'open',
    81.75,
    182.50,
    195.00,
    202.50,
    135.00,
    140.00,
    -142.50,
    215.00,
    220.00,
    -230.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000088',
    'male',
    83,
    'open',
    81,
    170.00,
    180.00,
    190.00,
    120.00,
    127.50,
    130.00,
    215.00,
    225.00,
    227.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000062',
    'male',
    83,
    'open',
    80.55,
    170.00,
    180.00,
    190.00,
    107.50,
    117.50,
    -125.00,
    -205.00,
    215.00,
    225.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000049',
    'male',
    83,
    'open',
    79.95,
    180.00,
    190.00,
    -197.50,
    -110.00,
    110.00,
    117.50,
    190.00,
    200.00,
    210.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000027',
    'male',
    83,
    'open',
    76.6,
    155.00,
    175.00,
    -185.00,
    105.00,
    -115.00,
    -120.00,
    185.00,
    195.00,
    202.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000026',
    'male',
    83,
    'open',
    82.3,
    150.00,
    170.00,
    -180.00,
    -100.00,
    105.00,
    -110.00,
    170.00,
    180.00,
    190.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000058',
    'male',
    83,
    'open',
    79.6,
    140.00,
    155.00,
    165.00,
    100.00,
    -110.00,
    115.00,
    160.00,
    170.00,
    180.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000086',
    'male',
    83,
    'open',
    82,
    150.00,
    162.50,
    -170.00,
    110.00,
    -115.00,
    117.50,
    150.00,
    160.00,
    165.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000023',
    'male',
    83,
    'open',
    80.7,
    150.00,
    170.00,
    -180.00,
    65.00,
    -75.00,
    -75.00,
    160.00,
    180.00,
    -195.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000017',
    'male',
    83,
    'jr',
    79.85,
    175.00,
    182.50,
    -190.00,
    85.00,
    92.50,
    -100.00,
    230.00,
    -237.50,
    -237.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000001',
    'male',
    83,
    'jr',
    81.55,
    185.00,
    195.00,
    -202.50,
    110.00,
    -117.50,
    -117.50,
    190.00,
    200.00,
    -205.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000015',
    'male',
    83,
    'jr',
    81.6,
    -160.00,
    182.50,
    -190.00,
    85.00,
    90.00,
    95.00,
    200.00,
    220.00,
    -230.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000047',
    'male',
    83,
    'jr',
    77.9,
    140.00,
    147.50,
    155.00,
    -75.00,
    82.50,
    -87.50,
    175.00,
    187.50,
    202.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000092',
    'male',
    83,
    'jr',
    82,
    135.00,
    -142.50,
    147.50,
    -80.00,
    87.50,
    95.00,
    180.00,
    190.00,
    -200.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000060',
    'male',
    83,
    'jr',
    81.6,
    120.00,
    130.00,
    145.00,
    85.00,
    92.50,
    -100.00,
    140.00,
    155.00,
    170.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000090',
    'male',
    83,
    'jr',
    82.55,
    130.00,
    -140.00,
    -140.00,
    -105.00,
    -105.00,
    -105.00,
    170.00,
    180.00,
    -200.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000040',
    'male',
    83,
    'jr',
    73.15,
    -180.00,
    -185.00,
    185.00,
    -110.00,
    -110.00,
    -110.00,
    210.00,
    220.00,
    -225.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000056',
    'male',
    83,
    'subjr',
    82,
    160.00,
    -170.00,
    170.00,
    75.00,
    80.00,
    85.00,
    190.00,
    200.00,
    210.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000030',
    'male',
    83,
    'subjr',
    77.35,
    137.50,
    147.50,
    155.00,
    90.00,
    95.00,
    -100.00,
    -170.00,
    180.00,
    187.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000072',
    'male',
    83,
    'subjr',
    81.8,
    145.00,
    157.50,
    -162.50,
    75.00,
    82.50,
    -85.00,
    185.00,
    195.00,
    -197.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000003',
    'male',
    83,
    'subjr',
    80.4,
    140.00,
    -150.00,
    160.00,
    67.50,
    72.50,
    77.50,
    170.00,
    180.00,
    190.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000010',
    'male',
    93,
    'open',
    90,
    215.00,
    225.00,
    -230.00,
    142.50,
    152.50,
    157.50,
    230.00,
    242.50,
    252.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000013',
    'male',
    93,
    'open',
    85.05,
    200.00,
    212.50,
    222.50,
    127.50,
    135.00,
    142.50,
    242.50,
    255.00,
    -267.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000002',
    'male',
    93,
    'open',
    88.5,
    197.50,
    210.00,
    217.50,
    107.50,
    115.00,
    120.00,
    255.00,
    270.00,
    -290.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000009',
    'male',
    93,
    'open',
    91.95,
    210.00,
    -220.00,
    220.00,
    122.50,
    -130.00,
    -130.00,
    220.00,
    -230.00,
    230.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000006',
    'male',
    93,
    'open',
    87.65,
    187.50,
    200.00,
    210.00,
    -120.00,
    130.00,
    140.00,
    200.00,
    210.00,
    220.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000091',
    'male',
    93,
    'open',
    89.8,
    -140.00,
    140.00,
    160.00,
    100.00,
    -110.00,
    -110.00,
    -180.00,
    190.00,
    210.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000044',
    'male',
    93,
    'open',
    87.85,
    125.00,
    135.00,
    150.00,
    80.00,
    90.00,
    -95.00,
    130.00,
    150.00,
    -160.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000085',
    'male',
    93,
    'jr',
    83.7,
    165.00,
    -177.50,
    -177.50,
    125.00,
    132.50,
    -140.00,
    220.00,
    -235.00,
    -235.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000031',
    'male',
    93,
    'jr',
    92.4,
    147.50,
    157.50,
    162.50,
    80.00,
    85.00,
    90.00,
    -200.00,
    210.00,
    220.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000089',
    'male',
    93,
    'jr',
    87,
    165.00,
    170.00,
    -172.50,
    -85.00,
    90.00,
    -95.00,
    160.00,
    172.50,
    185.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000005',
    'male',
    93,
    'jr',
    88.75,
    150.00,
    170.00,
    -180.00,
    80.00,
    92.50,
    100.00,
    160.00,
    165.00,
    175.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000041',
    'male',
    93,
    'jr',
    83.95,
    120.00,
    132.50,
    145.00,
    75.00,
    85.00,
    -92.50,
    -180.00,
    190.00,
    205.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000008',
    'male',
    105,
    'open',
    98.5,
    155.00,
    167.50,
    177.50,
    110.00,
    117.50,
    125.00,
    185.00,
    200.00,
    215.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000037',
    'male',
    105,
    'jr',
    95.75,
    170.00,
    182.50,
    -195.00,
    100.00,
    115.00,
    -125.00,
    -200.00,
    215.00,
    225.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000054',
    'male',
    105,
    'jr',
    100.1,
    -145.00,
    -155.00,
    155.00,
    85.00,
    -95.00,
    -100.00,
    180.00,
    190.00,
    205.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000033',
    'male',
    120,
    'jr',
    106,
    170.00,
    180.00,
    190.00,
    100.00,
    110.00,
    -112.50,
    210.00,
    220.00,
    -230.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000074',
    'male',
    999,
    'subjr',
    134.5,
    200.00,
    210.00,
    -220.00,
    100.00,
    110.00,
    -120.00,
    190.00,
    -210.00,
    210.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000064',
    'female',
    47,
    'open',
    46.5,
    100.00,
    107.50,
    112.50,
    47.50,
    52.50,
    55.00,
    117.50,
    127.50,
    -135.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000057',
    'female',
    47,
    'open',
    45.4,
    75.00,
    -80.00,
    80.00,
    25.00,
    30.00,
    -35.00,
    90.00,
    95.00,
    100.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000094',
    'female',
    47,
    'open',
    46.9,
    65.00,
    70.00,
    -75.00,
    30.00,
    32.50,
    -35.00,
    95.00,
    102.50,
    107.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000039',
    'female',
    47,
    'open',
    46.9,
    65.00,
    75.00,
    -85.00,
    27.50,
    30.00,
    -32.50,
    70.00,
    75.00,
    82.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000069',
    'female',
    52,
    'open',
    51.1,
    85.00,
    95.00,
    100.00,
    30.00,
    40.00,
    42.50,
    115.00,
    125.00,
    135.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000067',
    'female',
    52,
    'open',
    51.5,
    75.00,
    -80.00,
    -80.00,
    30.00,
    -37.50,
    -37.50,
    90.00,
    100.00,
    110.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000093',
    'female',
    63,
    'open',
    61.3,
    90.00,
    97.50,
    105.00,
    45.00,
    50.00,
    -52.50,
    115.00,
    122.50,
    130.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000078',
    'female',
    63,
    'jr',
    62.15,
    -85.00,
    85.00,
    87.50,
    37.50,
    -40.00,
    -40.00,
    115.00,
    125.00,
    130.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000022',
    'female',
    63,
    'jr',
    61.75,
    90.00,
    -100.00,
    105.00,
    35.00,
    -42.50,
    -42.50,
    90.00,
    100.00,
    -107.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000075',
    'female',
    63,
    'subjr',
    61.8,
    -115.00,
    115.00,
    -125.00,
    -40.00,
    45.00,
    52.50,
    155.00,
    162.50,
    -170.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000035',
    'female',
    69,
    'jr',
    64.75,
    90.00,
    110.00,
    120.00,
    45.00,
    55.00,
    -60.00,
    100.00,
    127.50,
    -137.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational'),
    'VPF000081',
    'female',
    76,
    'open',
    74.2,
    80.00,
    90.00,
    -97.50,
    30.00,
    37.50,
    -40.00,
    87.50,
    95.00,
    -102.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000179',
    'male',
    59,
    'open',
    58.65,
    145.00,
    -160.00,
    -160.00,
    105.00,
    110.00,
    112.50,
    -185.00,
    185.00,
    190.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000119',
    'male',
    59,
    'open',
    58.5,
    135.00,
    142.50,
    -150.00,
    85.00,
    90.00,
    92.50,
    190.00,
    -200.00,
    207.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000073',
    'male',
    59,
    'open',
    58.95,
    135.00,
    -142.50,
    147.50,
    97.50,
    -105.00,
    105.00,
    170.00,
    185.00,
    -192.50,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000124',
    'male',
    59,
    'open',
    58.6,
    -112.50,
    122.50,
    132.50,
    80.00,
    87.50,
    -92.50,
    150.00,
    157.50,
    165.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000147',
    'male',
    59,
    'open',
    58.8,
    120.00,
    135.00,
    142.50,
    -95.00,
    -95.00,
    -100.00,
    160.00,
    170.00,
    -175.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000103',
    'male',
    59,
    'jr',
    57.7,
    165.00,
    175.00,
    185.00,
    95.00,
    105.00,
    0.00,
    205.00,
    220.00,
    230.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000108',
    'male',
    59,
    'jr',
    57.85,
    130.00,
    140.00,
    150.00,
    95.00,
    105.00,
    110.00,
    180.00,
    195.00,
    205.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000127',
    'male',
    59,
    'jr',
    57.35,
    122.50,
    -132.50,
    132.50,
    82.50,
    90.00,
    97.50,
    155.00,
    165.00,
    172.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000175',
    'male',
    66,
    'open',
    65.55,
    210.00,
    220.00,
    225.00,
    115.00,
    125.00,
    -130.00,
    -240.00,
    245.00,
    -265.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000100',
    'male',
    66,
    'open',
    65.35,
    197.50,
    207.50,
    -212.50,
    125.00,
    130.00,
    -135.00,
    215.00,
    225.00,
    -232.50,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000109',
    'male',
    66,
    'open',
    64.6,
    172.50,
    185.00,
    -190.00,
    132.50,
    -142.50,
    -142.50,
    217.50,
    230.00,
    -245.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000134',
    'male',
    66,
    'open',
    64.85,
    180.00,
    190.00,
    195.00,
    110.00,
    115.00,
    -122.50,
    210.00,
    -225.00,
    -225.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000131',
    'male',
    66,
    'open',
    64.78,
    130.00,
    -142.50,
    -150.00,
    107.50,
    115.00,
    -117.50,
    190.00,
    200.00,
    -210.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000176',
    'male',
    66,
    'open',
    65.85,
    190.00,
    -197.50,
    -197.50,
    -117.50,
    -117.50,
    -117.50,
    -190.00,
    -195.00,
    -195.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000155',
    'male',
    66,
    'jr',
    64.45,
    170.00,
    -185.00,
    -185.00,
    110.00,
    117.50,
    0.00,
    215.00,
    -230.00,
    -240.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000019',
    'male',
    66,
    'jr',
    65.55,
    -170.00,
    170.00,
    180.00,
    110.00,
    -115.00,
    -115.00,
    190.00,
    205.00,
    -215.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000076',
    'male',
    66,
    'jr',
    65.35,
    -135.00,
    150.00,
    -160.00,
    85.00,
    -90.00,
    -90.00,
    -195.00,
    200.00,
    207.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000181',
    'male',
    66,
    'jr',
    65.05,
    135.00,
    145.00,
    -150.00,
    70.00,
    -75.00,
    75.00,
    170.00,
    -182.50,
    190.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000145',
    'male',
    66,
    'jr',
    65.15,
    -120.00,
    120.00,
    130.00,
    80.00,
    -85.00,
    85.00,
    130.00,
    140.00,
    150.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000186',
    'male',
    66,
    'jr',
    65.6,
    -167.50,
    167.50,
    175.00,
    100.00,
    107.50,
    0.00,
    -185.00,
    -185.00,
    0.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000113',
    'male',
    66,
    'subjr',
    65.9,
    -140.00,
    -140.00,
    -140.00,
    -85.00,
    -87.50,
    -87.50,
    -135.00,
    145.00,
    162.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000114',
    'male',
    74,
    'open',
    73.65,
    -202.50,
    205.00,
    210.00,
    125.00,
    127.50,
    -130.00,
    260.00,
    272.50,
    -280.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000177',
    'male',
    74,
    'open',
    72.95,
    210.00,
    -217.50,
    217.50,
    100.00,
    -105.00,
    0.00,
    240.00,
    250.00,
    257.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000098',
    'male',
    74,
    'open',
    73.25,
    175.00,
    185.00,
    -192.50,
    135.00,
    145.00,
    0.00,
    245.00,
    -257.50,
    -265.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'White Powerlifting'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000144',
    'male',
    74,
    'open',
    73.15,
    185.00,
    195.00,
    -200.00,
    125.00,
    132.50,
    -137.50,
    207.50,
    215.00,
    -225.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000140',
    'male',
    74,
    'open',
    73.5,
    152.50,
    162.50,
    170.00,
    107.50,
    -115.00,
    117.50,
    217.50,
    230.00,
    240.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000163',
    'male',
    74,
    'open',
    72.7,
    180.00,
    -190.00,
    -190.00,
    -125.00,
    125.00,
    -135.00,
    217.50,
    -225.00,
    0.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000052',
    'male',
    74,
    'open',
    72.1,
    170.00,
    185.00,
    -190.00,
    100.00,
    110.00,
    -117.50,
    190.00,
    -205.00,
    205.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000115',
    'male',
    74,
    'open',
    72.95,
    165.00,
    167.50,
    170.00,
    110.00,
    112.50,
    0.00,
    200.00,
    215.00,
    -230.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000156',
    'male',
    74,
    'open',
    72.85,
    185.00,
    -200.00,
    -200.00,
    120.00,
    -130.00,
    -130.00,
    190.00,
    -200.00,
    0.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000130',
    'male',
    74,
    'open',
    72.7,
    165.00,
    175.00,
    -185.00,
    95.00,
    100.00,
    -107.50,
    190.00,
    200.00,
    210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000151',
    'male',
    74,
    'open',
    69.4,
    150.00,
    162.50,
    175.00,
    90.00,
    100.00,
    105.00,
    170.00,
    182.50,
    200.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000162',
    'male',
    74,
    'open',
    71.75,
    -140.00,
    -147.50,
    150.00,
    80.00,
    87.50,
    -95.00,
    205.00,
    217.50,
    225.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000142',
    'male',
    74,
    'open',
    73.35,
    155.00,
    170.00,
    -185.00,
    100.00,
    -117.50,
    -117.50,
    170.00,
    182.50,
    190.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000122',
    'male',
    74,
    'open',
    70.55,
    140.00,
    -145.00,
    152.50,
    87.50,
    97.50,
    102.50,
    180.00,
    200.00,
    -210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000129',
    'male',
    74,
    'open',
    71.25,
    135.00,
    145.00,
    152.50,
    100.00,
    -105.00,
    105.00,
    170.00,
    182.50,
    192.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000138',
    'male',
    74,
    'open',
    72.7,
    150.00,
    -160.00,
    -160.00,
    120.00,
    -127.50,
    -127.50,
    155.00,
    -157.50,
    -157.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000153',
    'male',
    74,
    'open',
    71.7,
    -125.00,
    -132.50,
    132.50,
    80.00,
    -82.50,
    -82.50,
    155.00,
    -162.50,
    -162.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000097',
    'male',
    74,
    'open',
    72,
    -170.00,
    -170.00,
    -170.00,
    -100.00,
    -100.00,
    -100.00,
    160.00,
    180.00,
    200.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000104',
    'male',
    74,
    'open',
    71.7,
    -135.00,
    145.00,
    -152.50,
    -67.50,
    -67.50,
    -72.50,
    0.00,
    0.00,
    0.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'White Powerlifting'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000161',
    'male',
    74,
    'open',
    72.8,
    135.00,
    145.00,
    147.50,
    90.00,
    -95.00,
    -95.00,
    -167.50,
    -177.50,
    -177.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000082',
    'male',
    74,
    'jr',
    73,
    190.00,
    -200.00,
    205.00,
    125.00,
    130.00,
    -132.50,
    225.00,
    235.00,
    -245.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000016',
    'male',
    74,
    'jr',
    72.4,
    172.50,
    182.50,
    190.00,
    117.50,
    -125.00,
    130.00,
    225.00,
    237.50,
    -250.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000141',
    'male',
    74,
    'jr',
    70.9,
    180.00,
    187.50,
    -192.50,
    112.50,
    120.00,
    -122.50,
    220.00,
    230.00,
    -240.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000065',
    'male',
    74,
    'jr',
    73.25,
    170.00,
    180.00,
    -182.50,
    100.00,
    107.50,
    112.50,
    200.00,
    210.00,
    225.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000126',
    'male',
    74,
    'jr',
    72.95,
    100.00,
    120.00,
    130.00,
    115.00,
    -120.00,
    -120.00,
    150.00,
    -170.00,
    172.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000160',
    'male',
    74,
    'jr',
    73.4,
    -135.00,
    135.00,
    -150.00,
    -100.00,
    100.00,
    -105.00,
    180.00,
    -195.00,
    -195.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000077',
    'male',
    74,
    'jr',
    69.55,
    -127.50,
    132.50,
    135.00,
    75.00,
    -80.00,
    80.00,
    -170.00,
    170.00,
    175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000135',
    'male',
    74,
    'jr',
    72.2,
    130.00,
    140.00,
    150.00,
    80.00,
    -92.50,
    -97.50,
    120.00,
    140.00,
    -150.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000159',
    'male',
    74,
    'subjr',
    66.69,
    140.00,
    147.50,
    -160.00,
    80.00,
    -90.00,
    -90.00,
    175.00,
    -185.00,
    -185.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000165',
    'male',
    74,
    'subjr',
    72.9,
    127.50,
    -135.00,
    -150.00,
    65.00,
    -72.50,
    -72.50,
    160.00,
    172.50,
    -185.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000110',
    'male',
    83,
    'open',
    80.65,
    -235.00,
    245.00,
    -255.00,
    -155.00,
    155.00,
    162.50,
    265.00,
    275.00,
    285.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000024',
    'male',
    83,
    'open',
    82.1,
    192.50,
    200.00,
    -207.50,
    -135.00,
    135.00,
    137.50,
    215.00,
    225.00,
    232.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000107',
    'male',
    83,
    'open',
    80.55,
    190.00,
    195.00,
    200.00,
    110.00,
    -115.00,
    120.00,
    205.00,
    215.00,
    227.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000062',
    'male',
    83,
    'open',
    81.55,
    177.50,
    -187.50,
    192.50,
    115.00,
    122.50,
    127.50,
    205.00,
    217.50,
    -230.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000105',
    'male',
    83,
    'open',
    80.8,
    157.50,
    167.50,
    175.00,
    87.50,
    95.00,
    105.00,
    190.00,
    -202.50,
    -215.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000182',
    'male',
    83,
    'open',
    80.65,
    220.00,
    230.00,
    237.50,
    140.00,
    -147.50,
    150.00,
    -245.00,
    -245.00,
    -245.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000133',
    'male',
    83,
    'jr',
    81.75,
    180.00,
    195.00,
    205.00,
    -100.00,
    105.00,
    110.00,
    240.00,
    245.00,
    250.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000178',
    'male',
    83,
    'jr',
    82.8,
    170.00,
    185.00,
    -195.00,
    -120.00,
    130.00,
    -140.00,
    210.00,
    225.00,
    240.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000040',
    'male',
    83,
    'jr',
    82.15,
    180.00,
    192.50,
    202.50,
    105.00,
    115.00,
    -122.50,
    205.00,
    220.00,
    230.00,
    '1',
    '1',
    'C',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000164',
    'male',
    83,
    'jr',
    81.75,
    192.50,
    202.50,
    -207.50,
    -107.50,
    112.50,
    115.00,
    205.00,
    212.50,
    -220.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000121',
    'male',
    83,
    'jr',
    82.6,
    160.00,
    -170.00,
    175.00,
    -110.00,
    120.00,
    -130.00,
    200.00,
    205.00,
    -210.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000189',
    'male',
    83,
    'jr',
    78.6,
    165.00,
    -177.50,
    185.00,
    80.00,
    87.50,
    -95.00,
    195.00,
    -210.00,
    -225.00,
    '1',
    '1',
    'C',
    (SELECT id FROM public.teams WHERE name = 'White Powerlifting'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000149',
    'male',
    83,
    'jr',
    80.95,
    147.50,
    -157.50,
    -157.50,
    87.50,
    92.50,
    -97.50,
    187.50,
    200.00,
    -205.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000187',
    'male',
    83,
    'jr',
    82.95,
    130.00,
    140.00,
    152.50,
    72.50,
    82.50,
    -90.00,
    170.00,
    185.00,
    195.00,
    '1',
    '1',
    'C',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000136',
    'male',
    83,
    'jr',
    82.25,
    -140.00,
    150.00,
    170.00,
    -130.00,
    -140.00,
    -140.00,
    210.00,
    225.00,
    245.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000017',
    'male',
    83,
    'jr',
    81.05,
    180.00,
    192.50,
    -197.50,
    95.00,
    102.50,
    -107.50,
    -225.00,
    -225.00,
    0.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000030',
    'male',
    83,
    'subjr',
    79,
    145.00,
    155.00,
    165.00,
    92.50,
    97.50,
    102.50,
    177.50,
    190.00,
    202.50,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000003',
    'male',
    83,
    'subjr',
    80.8,
    152.50,
    165.00,
    175.00,
    80.00,
    87.50,
    -90.00,
    180.00,
    192.50,
    202.50,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000143',
    'male',
    93,
    'open',
    92.2,
    -240.00,
    240.00,
    250.00,
    152.50,
    162.50,
    167.50,
    300.00,
    -325.00,
    -325.00,
    '1',
    '4',
    'J',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000006',
    'male',
    93,
    'open',
    88.9,
    195.00,
    207.50,
    220.00,
    130.00,
    137.50,
    145.00,
    207.50,
    220.00,
    230.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000180',
    'male',
    93,
    'open',
    87.25,
    197.50,
    -210.00,
    -210.00,
    107.50,
    115.00,
    -120.00,
    227.50,
    240.00,
    -252.50,
    '1',
    '4',
    'J',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000170',
    'male',
    93,
    'open',
    91.05,
    200.00,
    205.00,
    0.00,
    110.00,
    -117.50,
    -117.50,
    -205.00,
    205.00,
    -227.50,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000166',
    'male',
    93,
    'open',
    92.15,
    170.00,
    185.00,
    -200.00,
    -120.00,
    120.00,
    -125.00,
    200.00,
    215.00,
    -230.00,
    '1',
    '4',
    'J',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000188',
    'male',
    93,
    'open',
    90.05,
    180.00,
    190.00,
    195.00,
    95.00,
    102.50,
    -107.50,
    205.00,
    215.00,
    -225.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000172',
    'male',
    93,
    'jr',
    90.7,
    185.00,
    207.50,
    -215.00,
    135.00,
    147.50,
    155.00,
    235.00,
    260.00,
    0.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000085',
    'male',
    93,
    'jr',
    84.7,
    165.00,
    177.50,
    185.00,
    130.00,
    137.50,
    145.00,
    220.00,
    232.50,
    247.50,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000005',
    'male',
    93,
    'jr',
    90.15,
    170.00,
    177.50,
    187.50,
    100.00,
    107.50,
    -117.50,
    -190.00,
    -192.50,
    195.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000031',
    'male',
    93,
    'jr',
    91.15,
    150.00,
    160.00,
    -167.50,
    87.50,
    95.00,
    -100.00,
    207.50,
    220.00,
    230.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000123',
    'male',
    105,
    'open',
    98.15,
    230.00,
    240.00,
    250.00,
    147.50,
    155.00,
    160.00,
    255.00,
    270.00,
    285.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'White Powerlifting'),
    8
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000010',
    'male',
    105,
    'open',
    93.8,
    -225.00,
    235.00,
    242.50,
    147.50,
    155.00,
    160.00,
    240.00,
    252.50,
    -260.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000168',
    'male',
    105,
    'open',
    93.85,
    225.00,
    235.00,
    242.50,
    135.00,
    142.50,
    -150.00,
    230.00,
    242.50,
    -247.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000116',
    'male',
    105,
    'open',
    99.3,
    230.00,
    -240.00,
    250.00,
    110.00,
    115.00,
    -120.00,
    210.00,
    -220.00,
    -235.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000148',
    'male',
    105,
    'open',
    102.3,
    170.00,
    180.00,
    190.00,
    110.00,
    117.50,
    -125.00,
    185.00,
    197.50,
    207.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000128',
    'male',
    105,
    'open',
    102.9,
    167.50,
    182.50,
    190.00,
    97.50,
    105.00,
    115.00,
    175.00,
    -192.50,
    200.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000139',
    'male',
    105,
    'open',
    103,
    -152.50,
    165.00,
    175.00,
    -82.50,
    92.50,
    102.50,
    160.00,
    180.00,
    192.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000125',
    'male',
    105,
    'jr',
    99.85,
    180.00,
    192.50,
    200.00,
    132.50,
    145.00,
    -150.00,
    205.00,
    217.50,
    230.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000037',
    'male',
    105,
    'jr',
    96.25,
    185.00,
    195.00,
    207.50,
    115.00,
    125.00,
    -130.00,
    220.00,
    230.00,
    -242.50,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000190',
    'male',
    105,
    'jr',
    98,
    170.00,
    175.00,
    180.00,
    90.00,
    -97.50,
    0.00,
    190.00,
    200.00,
    215.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000118',
    'male',
    105,
    'jr',
    97.5,
    -240.00,
    -240.00,
    -240.00,
    140.00,
    -150.00,
    0.00,
    250.00,
    252.50,
    -270.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000033',
    'male',
    105,
    'jr',
    104.6,
    -180.00,
    -180.00,
    -180.00,
    100.00,
    -107.50,
    0.00,
    210.00,
    220.00,
    -225.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000106',
    'male',
    120,
    'open',
    106.3,
    -195.00,
    205.00,
    212.50,
    135.00,
    142.50,
    -147.50,
    200.00,
    215.00,
    -225.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000101',
    'male',
    999,
    'open',
    123.5,
    260.00,
    270.00,
    280.00,
    175.00,
    185.00,
    190.00,
    250.00,
    -260.00,
    260.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000158',
    'female',
    47,
    'jr',
    46.1,
    70.00,
    77.50,
    -82.50,
    32.50,
    37.50,
    -40.00,
    80.00,
    87.50,
    95.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000102',
    'female',
    47,
    'jr',
    46.15,
    62.50,
    -67.50,
    -67.50,
    30.00,
    32.50,
    -35.00,
    82.50,
    90.00,
    -100.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000154',
    'female',
    52,
    'open',
    48.45,
    97.50,
    107.50,
    -112.50,
    57.50,
    -62.50,
    62.50,
    127.50,
    135.00,
    -140.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000069',
    'female',
    52,
    'open',
    50.9,
    92.50,
    97.50,
    105.00,
    42.50,
    47.50,
    -50.00,
    120.00,
    130.00,
    135.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000112',
    'female',
    52,
    'open',
    48.6,
    90.00,
    97.50,
    -102.50,
    45.00,
    50.00,
    -52.50,
    -125.00,
    132.50,
    -140.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'White Powerlifting'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000120',
    'female',
    52,
    'open',
    51.6,
    100.00,
    -120.00,
    -120.00,
    40.00,
    -47.50,
    -47.50,
    110.00,
    125.00,
    -135.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000174',
    'female',
    52,
    'open',
    49.2,
    75.00,
    82.50,
    -90.00,
    40.00,
    45.00,
    -50.00,
    82.50,
    87.50,
    92.50,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000184',
    'female',
    52,
    'open',
    50.7,
    -90.00,
    -95.00,
    -95.00,
    -50.00,
    50.00,
    -55.00,
    105.00,
    110.00,
    112.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000132',
    'female',
    52,
    'jr',
    50.95,
    95.00,
    102.50,
    110.00,
    50.00,
    55.00,
    60.00,
    125.00,
    135.00,
    142.50,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000167',
    'female',
    52,
    'jr',
    50.85,
    70.00,
    75.00,
    80.00,
    25.00,
    -30.00,
    -30.00,
    90.00,
    97.50,
    -105.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000152',
    'female',
    57,
    'open',
    54.2,
    87.50,
    95.00,
    97.50,
    55.00,
    60.00,
    -62.50,
    100.00,
    110.00,
    115.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000099',
    'female',
    57,
    'jr',
    55.25,
    85.00,
    90.00,
    92.50,
    50.00,
    52.50,
    55.00,
    125.00,
    130.00,
    137.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000173',
    'female',
    57,
    'jr',
    56.5,
    -95.00,
    95.00,
    -100.00,
    -50.00,
    50.00,
    -55.00,
    110.00,
    117.50,
    -125.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000169',
    'female',
    63,
    'open',
    62.6,
    90.00,
    97.50,
    105.00,
    60.00,
    65.00,
    67.50,
    125.00,
    135.00,
    145.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'REDOMINANT'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000171',
    'female',
    63,
    'open',
    59.15,
    67.50,
    75.00,
    82.50,
    35.00,
    40.00,
    -45.00,
    100.00,
    110.00,
    115.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000022',
    'female',
    63,
    'jr',
    61.6,
    100.00,
    110.00,
    115.00,
    40.00,
    45.00,
    -47.50,
    90.00,
    100.00,
    -105.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = '18Powerlifting'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000078',
    'female',
    63,
    'jr',
    61.5,
    80.00,
    85.00,
    90.00,
    -40.00,
    -42.50,
    -42.50,
    120.00,
    130.00,
    -135.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000075',
    'female',
    63,
    'subjr',
    60.65,
    115.00,
    -125.00,
    127.50,
    52.50,
    -57.50,
    -57.50,
    165.00,
    172.50,
    180.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000137',
    'female',
    63,
    'subjr',
    59.95,
    -130.00,
    -130.00,
    -130.00,
    55.00,
    -60.00,
    0.00,
    140.00,
    150.00,
    -155.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000157',
    'female',
    69,
    'open',
    68.8,
    115.00,
    122.50,
    -130.00,
    62.50,
    -67.50,
    -67.50,
    -127.50,
    -130.00,
    130.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'Sắc Màu'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000035',
    'female',
    69,
    'jr',
    64.25,
    -120.00,
    125.00,
    135.00,
    50.00,
    55.00,
    60.00,
    127.50,
    140.00,
    147.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000150',
    'female',
    69,
    'jr',
    68.25,
    90.00,
    92.50,
    -95.00,
    -45.00,
    50.00,
    -52.50,
    130.00,
    140.00,
    147.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000117',
    'female',
    69,
    'subjr',
    66.8,
    90.00,
    -110.00,
    -115.00,
    45.00,
    -52.50,
    -52.50,
    120.00,
    135.00,
    142.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Hanoi'),
    'VPF000183',
    'female',
    76,
    'open',
    71.8,
    92.50,
    -97.50,
    100.00,
    35.00,
    40.00,
    -45.00,
    105.00,
    110.00,
    -115.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000103',
    'male',
    59,
    'open',
    58.5,
    165.00,
    175.00,
    185.00,
    92.50,
    100.00,
    110.00,
    200.00,
    220.00,
    -240.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    8
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000042',
    'male',
    59,
    'open',
    57.95,
    165.00,
    180.00,
    185.00,
    70.00,
    -80.00,
    80.00,
    195.00,
    210.00,
    -215.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000233',
    'male',
    59,
    'open',
    58.85,
    -130.00,
    135.00,
    -145.00,
    105.00,
    -115.00,
    -115.00,
    175.00,
    185.00,
    -195.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000220',
    'male',
    59,
    'open',
    58,
    140.00,
    147.50,
    -152.50,
    100.00,
    -110.00,
    -110.00,
    165.00,
    167.50,
    170.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000225',
    'male',
    59,
    'open',
    58.75,
    145.00,
    -152.50,
    -152.50,
    95.00,
    -100.00,
    100.00,
    170.00,
    -180.00,
    -180.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000210',
    'male',
    59,
    'open',
    58.2,
    120.00,
    122.50,
    140.00,
    77.50,
    85.00,
    -95.00,
    150.00,
    165.00,
    -175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000204',
    'male',
    59,
    'open',
    56.3,
    130.00,
    137.50,
    145.00,
    65.00,
    70.00,
    75.00,
    -165.00,
    -165.00,
    -165.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000232',
    'male',
    59,
    'jr',
    58.25,
    160.00,
    170.00,
    175.00,
    -135.00,
    135.00,
    -150.00,
    -210.00,
    210.00,
    -220.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000223',
    'male',
    59,
    'jr',
    57.75,
    120.00,
    135.00,
    -145.00,
    80.00,
    90.00,
    95.00,
    -170.00,
    180.00,
    -182.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000048',
    'male',
    59,
    'jr',
    57.7,
    140.00,
    142.50,
    -147.50,
    80.00,
    82.50,
    85.00,
    170.00,
    -180.00,
    -182.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000071',
    'male',
    59,
    'subjr',
    57.5,
    -125.00,
    -125.00,
    125.00,
    65.00,
    70.00,
    75.00,
    160.00,
    167.50,
    175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000080',
    'male',
    66,
    'open',
    65.15,
    -205.00,
    215.00,
    -225.00,
    130.00,
    -140.00,
    -140.00,
    225.00,
    240.00,
    -245.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000146',
    'male',
    66,
    'open',
    64.45,
    140.00,
    150.00,
    160.00,
    -70.00,
    75.00,
    -85.00,
    200.00,
    -220.00,
    220.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000230',
    'male',
    66,
    'open',
    64.95,
    130.00,
    145.00,
    -155.00,
    105.00,
    115.00,
    -122.50,
    195.00,
    -210.00,
    -210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000226',
    'male',
    66,
    'open',
    64.95,
    -120.00,
    125.00,
    130.00,
    90.00,
    97.50,
    -105.00,
    -175.00,
    180.00,
    -195.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000216',
    'male',
    66,
    'open',
    65.9,
    190.00,
    -200.00,
    -200.00,
    105.00,
    115.00,
    -120.00,
    -215.00,
    -215.00,
    -215.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000209',
    'male',
    66,
    'open',
    68.8,
    175.00,
    190.00,
    -200.00,
    110.00,
    120.00,
    130.00,
    -195.00,
    195.00,
    -210.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'ProPower Team'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000243',
    'male',
    66,
    'jr',
    65.45,
    172.50,
    182.50,
    -190.00,
    110.00,
    -115.00,
    -115.00,
    217.50,
    -230.00,
    -230.00,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000218',
    'male',
    66,
    'jr',
    65.05,
    167.50,
    175.00,
    -180.00,
    -87.50,
    87.50,
    -95.00,
    190.00,
    202.50,
    205.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000234',
    'male',
    66,
    'jr',
    65.6,
    145.00,
    152.50,
    160.00,
    -95.00,
    97.50,
    105.00,
    175.00,
    190.00,
    -202.50,
    '1',
    '2',
    'E',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000229',
    'male',
    66,
    'jr',
    62.4,
    160.00,
    -165.00,
    -172.50,
    85.00,
    90.00,
    95.00,
    160.00,
    165.00,
    167.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000259',
    'male',
    66,
    'jr',
    63.5,
    135.00,
    145.00,
    -152.50,
    85.00,
    -95.00,
    -100.00,
    140.00,
    152.50,
    162.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000196',
    'male',
    74,
    'open',
    73.9,
    200.00,
    212.50,
    217.50,
    125.00,
    -130.00,
    -130.00,
    235.00,
    -245.00,
    245.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000224',
    'male',
    74,
    'open',
    73.35,
    190.00,
    207.50,
    -217.50,
    120.00,
    -127.50,
    -127.50,
    235.00,
    247.50,
    255.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000194',
    'male',
    74,
    'open',
    72.65,
    205.00,
    -215.00,
    -215.00,
    130.00,
    -137.50,
    -140.00,
    220.00,
    235.00,
    245.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000192',
    'male',
    74,
    'open',
    73.5,
    210.00,
    217.50,
    -222.50,
    -125.00,
    125.00,
    -135.00,
    225.00,
    -235.00,
    -235.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000264',
    'male',
    74,
    'open',
    71.25,
    160.00,
    177.50,
    185.00,
    110.00,
    122.50,
    125.00,
    180.00,
    205.00,
    220.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'ProPower Team'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000205',
    'male',
    74,
    'open',
    71.8,
    150.00,
    160.00,
    170.00,
    100.00,
    110.00,
    -115.00,
    175.00,
    185.00,
    195.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000195',
    'male',
    74,
    'open',
    73.45,
    152.50,
    -165.00,
    -165.00,
    110.00,
    115.00,
    -122.50,
    195.00,
    -210.00,
    -210.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000193',
    'male',
    74,
    'open',
    70.4,
    -135.00,
    145.00,
    -160.00,
    90.00,
    105.00,
    -120.00,
    180.00,
    195.00,
    -210.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000260',
    'male',
    74,
    'open',
    72.2,
    215.00,
    -225.00,
    -230.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000016',
    'male',
    74,
    'jr',
    73.35,
    175.00,
    185.00,
    192.50,
    122.50,
    130.00,
    -135.00,
    225.00,
    237.50,
    240.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000221',
    'male',
    74,
    'jr',
    73.25,
    200.00,
    210.00,
    -217.50,
    105.00,
    112.50,
    120.00,
    230.00,
    -240.00,
    -240.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000246',
    'male',
    74,
    'jr',
    73.45,
    175.00,
    185.00,
    195.00,
    110.00,
    115.00,
    -120.00,
    220.00,
    235.00,
    -245.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000257',
    'male',
    74,
    'jr',
    73.1,
    180.00,
    192.50,
    -200.00,
    115.00,
    -122.50,
    -122.50,
    215.00,
    -225.00,
    -225.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000211',
    'male',
    74,
    'jr',
    72.8,
    160.00,
    170.00,
    180.00,
    -105.00,
    110.00,
    -115.00,
    205.00,
    215.00,
    222.50,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000020',
    'male',
    74,
    'jr',
    71.8,
    160.00,
    165.00,
    -170.00,
    110.00,
    120.00,
    125.00,
    200.00,
    -210.00,
    210.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000241',
    'male',
    74,
    'jr',
    72,
    -172.50,
    172.50,
    -177.50,
    100.00,
    107.50,
    -112.50,
    140.00,
    190.00,
    217.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000213',
    'male',
    74,
    'jr',
    73.1,
    145.00,
    157.50,
    -175.00,
    100.00,
    105.00,
    -112.50,
    170.00,
    177.50,
    185.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000036',
    'male',
    74,
    'subjr',
    72.6,
    -190.00,
    190.00,
    -205.00,
    105.00,
    110.00,
    -115.00,
    250.00,
    -260.00,
    -265.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000201',
    'male',
    83,
    'open',
    81.2,
    200.00,
    212.50,
    -222.50,
    150.00,
    157.50,
    -162.50,
    275.00,
    -285.00,
    285.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000250',
    'male',
    83,
    'open',
    80.95,
    -195.00,
    200.00,
    -215.00,
    110.00,
    117.50,
    125.00,
    260.00,
    277.50,
    300.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000011',
    'male',
    83,
    'open',
    81.7,
    200.00,
    215.00,
    220.00,
    120.00,
    130.00,
    -135.00,
    230.00,
    245.00,
    -255.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000045',
    'male',
    83,
    'open',
    82.75,
    185.00,
    195.00,
    205.00,
    117.50,
    125.00,
    130.00,
    220.00,
    232.50,
    -247.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000254',
    'male',
    83,
    'open',
    81.2,
    190.00,
    -200.00,
    200.00,
    125.00,
    132.50,
    137.50,
    -220.00,
    220.00,
    -235.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000248',
    'male',
    83,
    'open',
    82.15,
    190.00,
    200.00,
    205.00,
    115.00,
    120.00,
    -125.00,
    220.00,
    -235.00,
    -235.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000215',
    'male',
    83,
    'open',
    81.85,
    180.00,
    190.00,
    200.00,
    -120.00,
    -120.00,
    120.00,
    -200.00,
    200.00,
    -230.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000253',
    'male',
    83,
    'open',
    81.6,
    160.00,
    172.50,
    180.00,
    90.00,
    -97.50,
    -97.50,
    185.00,
    197.50,
    210.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000203',
    'male',
    83,
    'open',
    81.7,
    140.00,
    150.00,
    165.00,
    130.00,
    135.00,
    142.50,
    150.00,
    170.00,
    172.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000238',
    'male',
    83,
    'open',
    81.2,
    145.00,
    157.50,
    -162.50,
    102.50,
    -110.00,
    0.00,
    200.00,
    212.50,
    -217.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000198',
    'male',
    83,
    'open',
    82.9,
    -140.00,
    150.00,
    160.00,
    100.00,
    107.50,
    -115.00,
    180.00,
    192.50,
    205.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000023',
    'male',
    83,
    'open',
    81.85,
    170.00,
    -180.00,
    -180.00,
    65.00,
    70.00,
    0.00,
    180.00,
    190.00,
    -200.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000240',
    'male',
    83,
    'jr',
    78.8,
    -210.00,
    222.50,
    240.00,
    125.00,
    135.00,
    -140.00,
    240.00,
    255.00,
    -265.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000251',
    'male',
    83,
    'jr',
    82.4,
    -190.00,
    200.00,
    210.00,
    110.00,
    120.00,
    125.00,
    220.00,
    235.00,
    -245.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000015',
    'male',
    83,
    'jr',
    80.85,
    170.00,
    180.00,
    -190.00,
    85.00,
    92.50,
    97.50,
    200.00,
    215.00,
    230.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'ProPower Team'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000244',
    'male',
    83,
    'jr',
    79.45,
    150.00,
    162.50,
    -167.50,
    82.50,
    -90.00,
    -92.50,
    195.00,
    -212.50,
    212.50,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000258',
    'male',
    83,
    'jr',
    81.8,
    -140.00,
    152.50,
    162.50,
    100.00,
    110.00,
    0.00,
    -160.00,
    167.50,
    180.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000072',
    'male',
    83,
    'subjr',
    81.8,
    165.00,
    -175.00,
    177.50,
    90.00,
    -97.50,
    -97.50,
    210.00,
    -220.00,
    -220.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000013',
    'male',
    93,
    'open',
    87.7,
    -210.00,
    220.00,
    225.00,
    127.50,
    137.50,
    147.50,
    245.00,
    257.50,
    -270.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000002',
    'male',
    93,
    'open',
    90.9,
    -205.00,
    212.50,
    -220.00,
    110.00,
    117.50,
    122.50,
    260.00,
    275.00,
    -282.50,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000261',
    'male',
    93,
    'open',
    89.5,
    190.00,
    -205.00,
    205.00,
    150.00,
    160.00,
    -165.00,
    220.00,
    -230.00,
    230.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000202',
    'male',
    93,
    'open',
    91.4,
    187.50,
    195.00,
    200.00,
    130.00,
    137.50,
    -142.50,
    225.00,
    237.50,
    250.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000208',
    'male',
    93,
    'open',
    92.9,
    200.00,
    -210.00,
    -210.00,
    130.00,
    140.00,
    145.00,
    190.00,
    205.00,
    215.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000227',
    'male',
    93,
    'open',
    91.15,
    -205.00,
    -210.00,
    210.00,
    90.00,
    -97.50,
    -97.50,
    205.00,
    215.00,
    -230.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000265',
    'male',
    93,
    'open',
    90.1,
    160.00,
    175.00,
    180.00,
    120.00,
    130.00,
    -140.00,
    170.00,
    190.00,
    200.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000044',
    'male',
    93,
    'open',
    87.8,
    130.00,
    150.00,
    -160.00,
    -75.00,
    80.00,
    90.00,
    -150.00,
    150.00,
    -160.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000197',
    'male',
    93,
    'open',
    86.75,
    -162.50,
    -177.50,
    -177.50,
    115.00,
    125.00,
    135.00,
    170.00,
    190.00,
    200.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000084',
    'male',
    93,
    'jr',
    83.1,
    180.00,
    -192.50,
    -200.00,
    112.50,
    122.50,
    130.00,
    220.00,
    230.00,
    240.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000111',
    'male',
    93,
    'jr',
    88.05,
    165.00,
    172.50,
    180.00,
    85.00,
    92.50,
    95.00,
    190.00,
    -205.00,
    -205.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000263',
    'male',
    105,
    'open',
    96.85,
    235.00,
    245.00,
    252.50,
    167.50,
    177.50,
    185.00,
    300.00,
    312.50,
    -320.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000206',
    'male',
    105,
    'open',
    103.5,
    225.00,
    240.00,
    252.50,
    190.00,
    -200.00,
    -200.00,
    240.00,
    260.00,
    270.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000118',
    'male',
    105,
    'jr',
    95.5,
    200.00,
    -235.00,
    240.00,
    130.00,
    -150.00,
    0.00,
    250.00,
    265.00,
    -280.00,
    '1',
    '3',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000262',
    'male',
    120,
    'subjr',
    113.2,
    150.00,
    165.00,
    180.00,
    95.00,
    110.00,
    -115.00,
    165.00,
    185.00,
    200.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000222',
    'female',
    47,
    'open',
    46.9,
    95.00,
    -97.50,
    0.00,
    45.00,
    50.00,
    -52.50,
    105.00,
    -110.00,
    110.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000212',
    'female',
    47,
    'open',
    45.7,
    60.00,
    67.50,
    72.50,
    30.00,
    35.00,
    -40.00,
    90.00,
    100.00,
    105.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000236',
    'female',
    47,
    'jr',
    45.85,
    72.50,
    80.00,
    87.50,
    35.00,
    -40.00,
    -40.00,
    75.00,
    82.50,
    95.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'ProPower Team'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000256',
    'female',
    47,
    'jr',
    46.7,
    70.00,
    80.00,
    -90.00,
    30.00,
    -35.00,
    0.00,
    80.00,
    -90.00,
    100.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000242',
    'female',
    47,
    'jr',
    46.95,
    70.00,
    75.00,
    -80.00,
    35.00,
    37.50,
    -40.00,
    97.50,
    -105.00,
    -105.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000247',
    'female',
    47,
    'jr',
    46.85,
    72.50,
    77.50,
    -82.50,
    35.00,
    40.00,
    -45.00,
    82.50,
    90.00,
    -95.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000245',
    'female',
    47,
    'jr',
    45.5,
    55.00,
    60.00,
    -65.00,
    30.00,
    -35.00,
    -35.00,
    80.00,
    87.50,
    92.50,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000266',
    'female',
    52,
    'open',
    51.45,
    105.00,
    115.00,
    120.00,
    72.50,
    -77.50,
    77.50,
    135.00,
    -150.00,
    -150.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000249',
    'female',
    52,
    'open',
    51.05,
    110.00,
    117.50,
    -120.00,
    50.00,
    -55.00,
    55.00,
    130.00,
    140.00,
    150.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000217',
    'female',
    52,
    'open',
    50.5,
    102.50,
    -112.50,
    -112.50,
    52.50,
    -57.50,
    -57.50,
    -97.50,
    97.50,
    -107.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000184',
    'female',
    52,
    'open',
    50.95,
    -85.00,
    85.00,
    -95.00,
    40.00,
    47.50,
    -52.50,
    100.00,
    110.00,
    120.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000214',
    'female',
    52,
    'open',
    51.15,
    90.00,
    92.50,
    -95.00,
    55.00,
    60.00,
    0.00,
    -87.50,
    87.50,
    -90.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000067',
    'female',
    52,
    'open',
    49.3,
    -80.00,
    -80.00,
    -80.00,
    32.50,
    -37.50,
    -37.50,
    95.00,
    105.00,
    -115.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000252',
    'female',
    52,
    'open',
    48.1,
    87.50,
    -92.50,
    -92.50,
    -55.00,
    -55.00,
    -55.00,
    0.00,
    0.00,
    0.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000255',
    'female',
    57,
    'open',
    55.35,
    77.50,
    90.00,
    102.50,
    40.00,
    45.00,
    -50.00,
    100.00,
    112.50,
    120.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000237',
    'female',
    57,
    'open',
    56,
    95.00,
    105.00,
    -110.00,
    42.50,
    47.50,
    -50.00,
    110.00,
    115.00,
    -120.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000231',
    'female',
    57,
    'open',
    56.05,
    85.00,
    92.50,
    -97.50,
    42.50,
    50.00,
    -57.50,
    110.00,
    117.50,
    -127.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000200',
    'female',
    57,
    'open',
    55.3,
    80.00,
    85.00,
    -92.50,
    32.50,
    37.50,
    40.00,
    102.50,
    112.50,
    120.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000228',
    'female',
    57,
    'jr',
    55.55,
    100.00,
    107.50,
    115.00,
    35.00,
    40.00,
    45.00,
    100.00,
    110.00,
    120.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000199',
    'female',
    63,
    'open',
    61.45,
    107.50,
    -112.50,
    -112.50,
    50.00,
    52.50,
    -57.50,
    135.00,
    142.50,
    147.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000235',
    'female',
    63,
    'jr',
    62,
    82.50,
    87.50,
    92.50,
    42.50,
    45.00,
    0.00,
    105.00,
    112.50,
    115.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = 'The Strength Crew'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000137',
    'female',
    63,
    'subjr',
    59.85,
    115.00,
    125.00,
    132.50,
    50.00,
    57.50,
    60.00,
    130.00,
    142.50,
    155.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000239',
    'female',
    69,
    'open',
    66.3,
    115.00,
    -120.00,
    -122.50,
    60.00,
    65.00,
    70.00,
    120.00,
    127.50,
    132.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2023 - Danang'),
    'VPF000207',
    'female',
    76,
    'jr',
    74.85,
    90.00,
    100.00,
    105.00,
    47.50,
    52.50,
    -57.50,
    95.00,
    105.00,
    110.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000306',
    'male',
    59,
    'open',
    58.7,
    140.00,
    150.00,
    160.00,
    105.00,
    115.00,
    -122.50,
    180.00,
    200.00,
    -215.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000373',
    'male',
    59,
    'open',
    55.75,
    -140.00,
    140.00,
    -145.00,
    70.00,
    75.00,
    77.50,
    140.00,
    150.00,
    -160.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000290',
    'male',
    59,
    'jr',
    58.4,
    145.00,
    155.00,
    160.00,
    90.00,
    -105.00,
    -105.00,
    160.00,
    -175.00,
    180.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000070',
    'male',
    59,
    'jr',
    58.8,
    125.00,
    130.00,
    135.00,
    92.50,
    -100.00,
    100.00,
    185.00,
    -192.50,
    -197.50,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000278',
    'male',
    59,
    'jr',
    57.7,
    -115.00,
    125.00,
    132.50,
    75.00,
    82.50,
    90.00,
    140.00,
    152.50,
    165.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000292',
    'male',
    59,
    'jr',
    55,
    120.00,
    127.50,
    132.50,
    70.00,
    75.00,
    -80.00,
    165.00,
    -172.50,
    -180.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000279',
    'male',
    59,
    'jr',
    58.35,
    95.00,
    100.00,
    105.00,
    70.00,
    75.00,
    -82.50,
    120.00,
    130.00,
    -142.50,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000312',
    'male',
    59,
    'subjr',
    57.25,
    105.00,
    112.50,
    120.00,
    -60.00,
    65.00,
    70.00,
    155.00,
    -165.00,
    165.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000341',
    'male',
    59,
    'subjr',
    56.85,
    90.00,
    105.00,
    110.00,
    55.00,
    -60.00,
    -60.00,
    -130.00,
    130.00,
    145.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000340',
    'male',
    59,
    'subjr',
    57.3,
    85.00,
    95.00,
    -102.50,
    50.00,
    -55.00,
    -55.00,
    125.00,
    140.00,
    -152.50,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000322',
    'male',
    59,
    'subjr',
    58.55,
    120.00,
    130.00,
    -140.00,
    -70.00,
    -70.00,
    -70.00,
    140.00,
    155.00,
    160.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000297',
    'male',
    66,
    'open',
    64.9,
    165.00,
    175.00,
    -182.50,
    125.00,
    132.50,
    -140.00,
    195.00,
    205.00,
    210.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000369',
    'male',
    66,
    'open',
    64.95,
    160.00,
    170.00,
    175.00,
    95.00,
    105.00,
    -107.50,
    190.00,
    -205.00,
    207.50,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000323',
    'male',
    66,
    'open',
    65,
    170.00,
    180.00,
    -190.00,
    100.00,
    107.50,
    -115.00,
    200.00,
    -215.00,
    -215.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000066',
    'male',
    66,
    'open',
    66,
    -165.00,
    -165.00,
    170.00,
    105.00,
    -112.50,
    112.50,
    180.00,
    192.50,
    202.50,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000366',
    'male',
    66,
    'open',
    65.6,
    120.00,
    130.00,
    140.00,
    -105.00,
    112.50,
    -120.00,
    150.00,
    162.50,
    170.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000014',
    'male',
    66,
    'open',
    65.3,
    115.00,
    122.50,
    -127.50,
    105.00,
    110.00,
    -112.50,
    157.50,
    167.50,
    175.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000131',
    'male',
    66,
    'open',
    65.1,
    145.00,
    -150.00,
    -150.00,
    -115.00,
    -115.00,
    -115.00,
    -195.00,
    -200.00,
    200.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000007',
    'male',
    66,
    'jr',
    65.35,
    170.00,
    177.50,
    185.00,
    105.00,
    110.00,
    115.00,
    205.00,
    215.00,
    230.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000309',
    'male',
    66,
    'jr',
    64.9,
    180.00,
    -185.00,
    185.00,
    105.00,
    -110.00,
    -110.00,
    190.00,
    200.00,
    -215.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000280',
    'male',
    66,
    'jr',
    64.35,
    155.00,
    165.00,
    -167.50,
    105.00,
    -107.50,
    107.50,
    170.00,
    172.50,
    182.50,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000374',
    'male',
    66,
    'jr',
    64.85,
    150.00,
    152.50,
    -167.50,
    90.00,
    95.00,
    -100.00,
    190.00,
    -200.00,
    205.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000303',
    'male',
    66,
    'jr',
    64.55,
    110.00,
    122.50,
    132.50,
    92.50,
    100.00,
    -105.00,
    140.00,
    150.00,
    155.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000314',
    'male',
    66,
    'jr',
    65.95,
    -130.00,
    -130.00,
    -130.00,
    -80.00,
    -80.00,
    80.00,
    155.00,
    165.00,
    180.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000145',
    'male',
    66,
    'jr',
    65.75,
    125.00,
    132.50,
    135.00,
    85.00,
    87.50,
    -95.00,
    -135.00,
    -135.00,
    -150.00,
    'The Barbell Club',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000276',
    'male',
    66,
    'subjr',
    64.5,
    122.50,
    130.00,
    -135.00,
    62.50,
    67.50,
    -70.00,
    130.00,
    137.50,
    147.50,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000330',
    'male',
    66,
    'subjr',
    64.85,
    -110.00,
    -110.00,
    125.00,
    62.50,
    -65.00,
    0.00,
    142.50,
    157.50,
    -165.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000294',
    'male',
    66,
    'subjr',
    64.75,
    115.00,
    -120.00,
    0.00,
    -65.00,
    -65.00,
    -65.00,
    -140.00,
    145.00,
    150.00,
    'The Barbell Club',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000356',
    'male',
    74,
    'open',
    73.6,
    190.00,
    200.00,
    -210.00,
    -100.00,
    107.50,
    110.00,
    250.00,
    262.50,
    275.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VFP000059',
    'male',
    74,
    'open',
    73.65,
    150.00,
    152.50,
    162.50,
    117.50,
    -122.50,
    122.50,
    -205.00,
    -210.00,
    215.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000367',
    'male',
    74,
    'open',
    72.45,
    162.50,
    172.50,
    180.00,
    -105.00,
    107.50,
    -110.00,
    190.00,
    202.50,
    -212.50,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000293',
    'male',
    74,
    'open',
    72,
    155.00,
    165.00,
    175.00,
    97.50,
    105.00,
    110.00,
    190.00,
    202.50,
    -212.50,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000282',
    'male',
    74,
    'open',
    73.1,
    160.00,
    170.00,
    180.00,
    85.00,
    -92.50,
    -92.50,
    175.00,
    185.00,
    195.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000270',
    'male',
    74,
    'open',
    72.3,
    155.00,
    162.50,
    170.00,
    90.00,
    95.00,
    -102.50,
    180.00,
    187.50,
    192.50,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000332',
    'male',
    74,
    'open',
    73.25,
    -152.50,
    152.50,
    160.00,
    105.00,
    110.00,
    -115.00,
    180.00,
    -190.00,
    -200.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000034',
    'male',
    74,
    'open',
    73.75,
    137.50,
    142.50,
    150.00,
    87.50,
    95.00,
    105.00,
    175.00,
    190.00,
    195.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000359',
    'male',
    74,
    'open',
    73.3,
    140.00,
    150.00,
    -155.00,
    90.00,
    95.00,
    -97.50,
    185.00,
    -200.00,
    200.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000267',
    'male',
    74,
    'open',
    73.6,
    140.00,
    145.00,
    -155.00,
    -85.00,
    95.00,
    -100.00,
    150.00,
    162.50,
    175.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000272',
    'male',
    74,
    'open',
    71.6,
    130.00,
    135.00,
    142.50,
    107.50,
    115.00,
    -120.00,
    150.00,
    155.00,
    -170.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000299',
    'male',
    74,
    'open',
    73.25,
    -140.00,
    140.00,
    142.50,
    92.50,
    -97.50,
    -97.50,
    150.00,
    160.00,
    170.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000095',
    'male',
    74,
    'open',
    73.15,
    135.00,
    147.50,
    155.00,
    75.00,
    82.50,
    -92.50,
    140.00,
    152.50,
    160.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000298',
    'male',
    74,
    'open',
    73.35,
    -125.00,
    125.00,
    137.50,
    75.00,
    85.00,
    -92.50,
    150.00,
    165.00,
    -175.00,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000352',
    'male',
    74,
    'open',
    71.75,
    -127.50,
    127.50,
    135.00,
    -67.50,
    75.00,
    -82.50,
    150.00,
    -160.00,
    172.50,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000337',
    'male',
    74,
    'open',
    69.25,
    125.00,
    135.00,
    137.50,
    80.00,
    82.50,
    -90.00,
    135.00,
    145.00,
    152.50,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000275',
    'male',
    74,
    'open',
    68.1,
    75.00,
    85.00,
    -100.00,
    75.00,
    85.00,
    95.00,
    85.00,
    100.00,
    112.50,
    'The Barbell Club',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000363',
    'male',
    74,
    'open',
    67.85,
    -90.00,
    90.00,
    100.00,
    50.00,
    -60.00,
    -60.00,
    90.00,
    100.00,
    -110.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000285',
    'male',
    74,
    'jr',
    72.05,
    160.00,
    170.00,
    -175.00,
    120.00,
    127.50,
    -132.50,
    215.00,
    -225.00,
    227.50,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000046',
    'male',
    74,
    'jr',
    72.2,
    180.00,
    190.00,
    -195.00,
    105.00,
    110.00,
    -115.00,
    215.00,
    222.50,
    -235.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000329',
    'male',
    74,
    'jr',
    72.2,
    170.00,
    180.00,
    190.00,
    105.00,
    110.00,
    -120.00,
    200.00,
    212.50,
    -225.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000345',
    'male',
    74,
    'jr',
    72.9,
    145.00,
    155.00,
    -162.50,
    105.00,
    -115.00,
    115.00,
    200.00,
    210.00,
    217.50,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000339',
    'male',
    74,
    'jr',
    70.45,
    137.50,
    150.00,
    160.00,
    92.50,
    100.00,
    -107.50,
    192.50,
    -205.00,
    -210.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000160',
    'male',
    74,
    'jr',
    73.5,
    145.00,
    147.50,
    -150.00,
    100.00,
    105.00,
    -107.50,
    190.00,
    195.00,
    200.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000055',
    'male',
    74,
    'jr',
    71.1,
    150.00,
    -152.50,
    -155.00,
    92.50,
    -97.50,
    -97.50,
    180.00,
    0.00,
    -185.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000025',
    'male',
    74,
    'jr',
    71.55,
    140.00,
    -150.00,
    -150.00,
    90.00,
    95.00,
    -100.00,
    140.00,
    152.50,
    165.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000300',
    'male',
    74,
    'jr',
    72.35,
    125.00,
    130.00,
    -135.00,
    95.00,
    100.00,
    -105.00,
    140.00,
    150.00,
    -160.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000287',
    'male',
    74,
    'jr',
    72.5,
    115.00,
    125.00,
    -135.00,
    75.00,
    82.50,
    -87.50,
    145.00,
    160.00,
    170.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000296',
    'male',
    74,
    'jr',
    70.85,
    87.50,
    97.50,
    107.50,
    47.50,
    55.00,
    62.50,
    130.00,
    -145.00,
    150.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000334',
    'male',
    74,
    'jr',
    73.4,
    160.00,
    -170.00,
    -170.00,
    110.00,
    112.50,
    -115.00,
    -225.00,
    -230.00,
    -230.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000311',
    'male',
    74,
    'jr',
    74.15,
    140.00,
    142.50,
    155.00,
    95.00,
    100.00,
    -105.00,
    160.00,
    167.50,
    -175.00,
    'The Barbell Club',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000288',
    'male',
    74,
    'subjr',
    71,
    150.00,
    152.50,
    170.00,
    70.00,
    80.00,
    90.00,
    170.00,
    -185.00,
    -190.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000335',
    'male',
    74,
    'subjr',
    72.95,
    147.50,
    160.00,
    162.50,
    75.00,
    77.50,
    -85.00,
    190.00,
    -200.00,
    -200.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000307',
    'male',
    74,
    'subjr',
    73.8,
    -120.00,
    -125.00,
    125.00,
    70.00,
    -72.50,
    -72.50,
    -190.00,
    197.50,
    -205.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000301',
    'male',
    83,
    'open',
    81.75,
    -177.50,
    187.50,
    200.00,
    117.50,
    125.00,
    132.50,
    210.00,
    225.00,
    230.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000354',
    'male',
    83,
    'open',
    76.7,
    180.00,
    190.00,
    -197.50,
    125.00,
    -130.00,
    -130.00,
    230.00,
    -240.00,
    -242.50,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000357',
    'male',
    83,
    'open',
    79.65,
    170.00,
    180.00,
    190.00,
    115.00,
    120.00,
    125.00,
    220.00,
    230.00,
    -240.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000268',
    'male',
    83,
    'open',
    81.4,
    -187.50,
    195.00,
    205.00,
    120.00,
    -125.00,
    -125.00,
    205.00,
    217.50,
    -232.50,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000269',
    'male',
    83,
    'open',
    80.9,
    165.00,
    177.50,
    182.50,
    105.00,
    115.00,
    120.00,
    192.50,
    202.50,
    210.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000027',
    'male',
    83,
    'open',
    81.05,
    170.00,
    185.00,
    -192.50,
    115.00,
    122.50,
    -127.50,
    205.00,
    -215.00,
    -215.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000342',
    'male',
    83,
    'open',
    81.4,
    165.00,
    175.00,
    -190.00,
    107.50,
    -115.00,
    115.00,
    195.00,
    210.00,
    220.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000365',
    'male',
    83,
    'open',
    80.5,
    147.50,
    157.50,
    165.00,
    102.50,
    110.00,
    115.00,
    -197.50,
    212.50,
    -220.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000047',
    'male',
    83,
    'open',
    81.3,
    -160.00,
    162.50,
    170.00,
    90.00,
    -95.00,
    95.00,
    205.00,
    215.00,
    220.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000274',
    'male',
    83,
    'open',
    80.15,
    -157.50,
    -167.50,
    167.50,
    102.50,
    110.00,
    -117.50,
    190.00,
    205.00,
    -212.50,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000058',
    'male',
    83,
    'open',
    81.4,
    160.00,
    -170.00,
    170.00,
    -100.00,
    110.00,
    117.50,
    170.00,
    185.00,
    192.50,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000273',
    'male',
    83,
    'open',
    77.35,
    135.00,
    145.00,
    155.00,
    95.00,
    105.00,
    -112.50,
    190.00,
    210.00,
    -230.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000368',
    'male',
    83,
    'open',
    77.25,
    140.00,
    -147.50,
    155.00,
    90.00,
    97.50,
    -100.00,
    157.50,
    167.50,
    180.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000321',
    'male',
    83,
    'open',
    80.45,
    110.00,
    120.00,
    -127.50,
    57.50,
    -62.50,
    62.50,
    130.00,
    -137.50,
    137.50,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000305',
    'male',
    83,
    'open',
    80.5,
    -220.00,
    -220.00,
    -220.00,
    125.00,
    -135.00,
    -140.00,
    250.00,
    265.00,
    -275.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000026',
    'male',
    83,
    'open',
    82.05,
    160.00,
    -172.50,
    -175.00,
    -107.50,
    -112.50,
    -112.50,
    190.00,
    -205.00,
    -205.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000182',
    'male',
    83,
    'open',
    -81.95,
    -230.00,
    240.00,
    -250.00,
    145.00,
    -150.00,
    0.00,
    -230.00,
    230.00,
    240.00,
    'The Barbell Club',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000372',
    'male',
    83,
    'jr',
    80.4,
    -200.00,
    210.00,
    -220.00,
    105.00,
    115.00,
    -122.50,
    225.00,
    237.50,
    -250.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000001',
    'male',
    83,
    'jr',
    81.35,
    195.00,
    205.00,
    210.00,
    110.00,
    120.00,
    127.50,
    -190.00,
    -190.00,
    215.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000353',
    'male',
    83,
    'jr',
    79.2,
    -180.00,
    180.00,
    -192.50,
    90.00,
    92.50,
    -100.00,
    220.00,
    -230.00,
    230.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000289',
    'male',
    83,
    'jr',
    81.25,
    170.00,
    180.00,
    190.00,
    110.00,
    120.00,
    -132.50,
    180.00,
    190.00,
    -200.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000189',
    'male',
    83,
    'jr',
    80.7,
    175.00,
    187.50,
    195.00,
    90.00,
    95.00,
    -100.00,
    205.00,
    -217.50,
    -217.50,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000348',
    'male',
    83,
    'jr',
    80.1,
    147.50,
    155.00,
    165.00,
    75.00,
    82.50,
    87.50,
    165.00,
    175.00,
    200.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000346',
    'male',
    83,
    'subjr',
    80.6,
    140.00,
    155.00,
    170.00,
    -80.00,
    80.00,
    -102.50,
    150.00,
    160.00,
    170.00,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000381',
    'male',
    83,
    'subjr',
    82.05,
    125.00,
    135.00,
    145.00,
    75.00,
    82.50,
    -90.00,
    165.00,
    177.50,
    192.50,
    'The Barbell Club',
    '5',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000347',
    'male',
    93,
    'open',
    92.25,
    180.00,
    190.00,
    195.00,
    110.00,
    -117.50,
    117.50,
    210.00,
    220.00,
    -230.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000302',
    'male',
    93,
    'open',
    88.4,
    160.00,
    170.00,
    177.50,
    87.50,
    92.50,
    -97.50,
    195.00,
    205.00,
    215.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000089',
    'male',
    93,
    'jr',
    90.15,
    175.00,
    187.50,
    -200.00,
    90.00,
    97.50,
    102.50,
    170.00,
    185.00,
    197.50,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000376',
    'male',
    93,
    'jr',
    86.8,
    150.00,
    160.00,
    -170.00,
    85.00,
    92.50,
    97.50,
    200.00,
    -210.00,
    -225.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000060',
    'male',
    93,
    'jr',
    89.25,
    165.00,
    -167.50,
    -167.50,
    105.00,
    110.00,
    -115.00,
    -170.00,
    -180.00,
    -200.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000009',
    'male',
    105,
    'open',
    103,
    230.00,
    240.00,
    242.50,
    130.00,
    -140.00,
    0.00,
    235.00,
    -242.50,
    -242.50,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000284',
    'male',
    105,
    'open',
    99.2,
    195.00,
    200.00,
    207.50,
    125.00,
    135.00,
    142.50,
    210.00,
    225.00,
    -257.50,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000313',
    'male',
    105,
    'open',
    101.3,
    175.00,
    187.50,
    200.00,
    115.00,
    122.50,
    127.50,
    215.00,
    225.00,
    -235.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000351',
    'male',
    105,
    'open',
    97.8,
    180.00,
    190.00,
    -197.50,
    100.00,
    110.00,
    115.00,
    210.00,
    220.00,
    230.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000344',
    'male',
    105,
    'open',
    93.6,
    165.00,
    175.00,
    182.50,
    75.00,
    82.50,
    -90.00,
    190.00,
    202.50,
    215.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000033',
    'male',
    105,
    'jr',
    104.3,
    165.00,
    180.00,
    -190.00,
    100.00,
    -107.50,
    -107.50,
    195.00,
    212.50,
    -222.50,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000310',
    'male',
    105,
    'subjr',
    109,
    170.00,
    172.50,
    180.00,
    97.50,
    102.50,
    105.00,
    180.00,
    200.00,
    -210.00,
    'The Barbell Club',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000277',
    'male',
    120,
    'open',
    113.1,
    177.50,
    192.50,
    200.00,
    145.00,
    152.50,
    -160.00,
    245.00,
    257.50,
    0.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000331',
    'male',
    120,
    'open',
    106,
    180.00,
    195.00,
    205.00,
    120.00,
    130.00,
    145.00,
    215.00,
    235.00,
    252.50,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000360',
    'male',
    120,
    'open',
    106.6,
    190.00,
    205.00,
    -225.00,
    95.00,
    105.00,
    112.50,
    202.50,
    217.50,
    230.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000338',
    'male',
    120,
    'open',
    112.9,
    160.00,
    180.00,
    -190.00,
    100.00,
    110.00,
    120.00,
    190.00,
    205.00,
    -215.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000185',
    'male',
    120,
    'jr',
    119.4,
    -190.00,
    -210.00,
    210.00,
    125.00,
    -127.50,
    140.00,
    175.00,
    190.00,
    205.00,
    'The Barbell Club',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000349',
    'female',
    47,
    'open',
    46.75,
    95.00,
    97.50,
    -100.00,
    45.00,
    47.50,
    52.50,
    115.00,
    120.00,
    125.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000361',
    'female',
    47,
    'open',
    46.95,
    90.00,
    97.50,
    -100.00,
    40.00,
    47.50,
    -50.00,
    -100.00,
    107.50,
    115.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000375',
    'female',
    47,
    'open',
    46.5,
    75.00,
    77.50,
    87.50,
    40.00,
    -45.00,
    -45.00,
    -90.00,
    90.00,
    100.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000320',
    'female',
    47,
    'open',
    46.3,
    57.50,
    60.00,
    65.00,
    27.50,
    30.00,
    -32.50,
    60.00,
    65.00,
    70.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000371',
    'female',
    47,
    'jr',
    46.2,
    80.00,
    85.00,
    -90.00,
    35.00,
    40.00,
    42.50,
    105.00,
    -112.50,
    -120.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000378',
    'female',
    47,
    'jr',
    46.65,
    75.00,
    -77.50,
    80.00,
    25.00,
    -30.00,
    30.00,
    80.00,
    -85.00,
    85.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000067',
    'female',
    52,
    'open',
    49.15,
    65.00,
    72.50,
    77.50,
    32.50,
    -37.50,
    -37.50,
    105.00,
    110.00,
    -115.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000364',
    'female',
    52,
    'open',
    51.7,
    75.00,
    77.50,
    -82.50,
    30.00,
    -37.50,
    -37.50,
    90.00,
    95.00,
    100.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000317',
    'female',
    52,
    'open',
    51.65,
    65.00,
    -67.50,
    67.50,
    27.50,
    30.00,
    -32.50,
    80.00,
    90.00,
    100.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000304',
    'female',
    52,
    'open',
    51.2,
    -57.50,
    60.00,
    67.50,
    27.50,
    32.50,
    -35.00,
    75.00,
    82.50,
    87.50,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000327',
    'female',
    52,
    'jr',
    50.25,
    90.00,
    100.00,
    -102.50,
    42.50,
    47.50,
    -50.00,
    110.00,
    120.00,
    130.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000318',
    'female',
    52,
    'jr',
    51.3,
    72.50,
    77.50,
    -82.50,
    55.00,
    -60.00,
    -60.00,
    105.00,
    112.50,
    117.50,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000350',
    'female',
    52,
    'jr',
    50.35,
    80.00,
    90.00,
    -100.00,
    35.00,
    40.00,
    45.00,
    90.00,
    100.00,
    107.50,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000370',
    'female',
    52,
    'jr',
    50.25,
    90.00,
    -97.50,
    -102.50,
    -37.50,
    42.50,
    47.50,
    100.00,
    -110.00,
    -115.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000379',
    'female',
    52,
    'jr',
    50.45,
    55.00,
    -62.50,
    -62.50,
    27.50,
    -30.00,
    -30.00,
    70.00,
    77.50,
    85.00,
    'The Barbell Club',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000271',
    'female',
    57,
    'open',
    55.7,
    70.00,
    80.00,
    -87.50,
    30.00,
    32.50,
    -37.50,
    100.00,
    107.50,
    112.50,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000326',
    'female',
    57,
    'open',
    55.35,
    80.00,
    0.00,
    0.00,
    40.00,
    -42.50,
    42.50,
    90.00,
    -92.50,
    100.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000343',
    'female',
    57,
    'open',
    54.25,
    87.50,
    92.50,
    -100.00,
    -40.00,
    -40.00,
    -40.00,
    107.50,
    115.00,
    -120.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000281',
    'female',
    57,
    'jr',
    55.9,
    95.00,
    102.50,
    107.50,
    55.00,
    60.00,
    -62.50,
    120.00,
    130.00,
    -135.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000328',
    'female',
    63,
    'open',
    62.25,
    65.00,
    72.50,
    80.00,
    30.00,
    35.00,
    -42.50,
    75.00,
    85.00,
    -100.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000315',
    'female',
    63,
    'open',
    61.4,
    65.00,
    70.00,
    72.50,
    35.00,
    -42.50,
    -42.50,
    60.00,
    65.00,
    70.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000324',
    'female',
    63,
    'jr',
    61.1,
    105.00,
    115.00,
    -122.50,
    57.50,
    62.50,
    -67.50,
    -125.00,
    135.00,
    142.50,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000283',
    'female',
    63,
    'jr',
    62.2,
    -90.00,
    95.00,
    105.00,
    35.00,
    42.50,
    -50.00,
    110.00,
    120.00,
    130.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000291',
    'female',
    63,
    'subjr',
    61.25,
    70.00,
    80.00,
    -90.00,
    -30.00,
    35.00,
    40.00,
    110.00,
    120.00,
    130.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000207',
    'female',
    69,
    'jr',
    68.1,
    100.00,
    -105.00,
    -105.00,
    50.00,
    55.00,
    -57.50,
    105.00,
    110.00,
    115.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000286',
    'female',
    69,
    'subjr',
    64.7,
    80.00,
    90.00,
    95.00,
    35.00,
    40.00,
    -45.00,
    90.00,
    97.50,
    -105.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Amateur Invitational 2'),
    'VPF000081',
    'female',
    76,
    'open',
    75.05,
    90.00,
    102.50,
    105.00,
    35.00,
    40.00,
    -45.00,
    95.00,
    105.00,
    115.00,
    'The Barbell Club',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000103',
    'male',
    59,
    'open',
    58.5,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    -210.00,
    -225.00,
    -232.50,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000384',
    'male',
    66,
    'open',
    64.4,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    180.00,
    190.00,
    200.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000393',
    'male',
    66,
    'open',
    64.4,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    150.00,
    165.00,
    180.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000153',
    'male',
    66,
    'open',
    64.8,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    145.00,
    157.50,
    -165.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000383',
    'male',
    74,
    'open',
    66.8,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    152.50,
    160.00,
    165.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000391',
    'male',
    74,
    'open',
    73.1,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    135.00,
    147.50,
    -155.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000356',
    'male',
    74,
    'open',
    73.2,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    275.00,
    282.50,
    -290.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000385',
    'male',
    83,
    'open',
    75.55,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    175.00,
    190.00,
    200.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000017',
    'male',
    83,
    'open',
    80.4,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    220.00,
    232.50,
    -250.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000348',
    'male',
    83,
    'open',
    81.65,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    150.00,
    175.00,
    180.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000003',
    'male',
    83,
    'open',
    81.95,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    -212.50,
    222.50,
    230.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000382',
    'male',
    83,
    'open',
    82.35,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    200.00,
    212.50,
    225.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000381',
    'male',
    83,
    'open',
    82.45,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    190.00,
    200.00,
    -220.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000110',
    'male',
    83,
    'open',
    82.8,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    285.00,
    -300.00,
    -300.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000386',
    'male',
    83,
    'open',
    81.8,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    -180.00,
    -190.00,
    -190.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000008',
    'male',
    105,
    'open',
    98,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    190.00,
    205.00,
    220.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000310',
    'male',
    120,
    'open',
    113.8,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    170.00,
    180.00,
    190.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000388',
    'female',
    47,
    'subjr',
    45.2,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    80.00,
    82.50,
    90.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000392',
    'female',
    47,
    'subjr',
    46.8,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    90.00,
    100.00,
    -110.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000132',
    'female',
    52,
    'subjr',
    50.6,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    135.00,
    142.50,
    -150.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000389',
    'female',
    57,
    'subjr',
    55.6,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    105.00,
    112.50,
    120.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000390',
    'female',
    57,
    'subjr',
    56,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    105.00,
    -115.00,
    122.50,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000099',
    'female',
    63,
    'subjr',
    59.9,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    90.00,
    92.50,
    125.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'The Barbell Club - Dead Or Lift'),
    'VPF000387',
    'female',
    63,
    'subjr',
    62.7,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    110.00,
    120.00,
    -130.00,
    'The Barbell Club',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000232',
    'male',
    59,
    'jr',
    58.5,
    170.00,
    185.00,
    190.50,
    130.00,
    142.50,
    150.00,
    205.00,
    -220.00,
    225.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000108',
    'male',
    59,
    'jr',
    58.3,
    145.00,
    155.00,
    160.00,
    105.00,
    115.00,
    120.00,
    195.00,
    205.00,
    210.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000127',
    'male',
    59,
    'jr',
    57.65,
    140.00,
    -150.00,
    -150.00,
    95.00,
    100.00,
    102.50,
    -167.50,
    175.00,
    185.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000048',
    'male',
    59,
    'jr',
    57.75,
    140.00,
    147.50,
    -152.50,
    80.00,
    85.00,
    -90.00,
    170.00,
    180.00,
    187.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000103',
    'male',
    59,
    'open',
    57.05,
    170.00,
    182.50,
    190.00,
    102.50,
    110.00,
    -115.00,
    200.00,
    215.00,
    225.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000179',
    'male',
    59,
    'open',
    57.9,
    147.50,
    155.00,
    162.50,
    107.50,
    112.50,
    -120.00,
    185.00,
    200.00,
    -210.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000119',
    'male',
    59,
    'open',
    57.65,
    150.00,
    -157.50,
    -157.50,
    90.00,
    95.00,
    97.50,
    200.00,
    210.00,
    217.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000073',
    'male',
    59,
    'open',
    58.55,
    145.00,
    0.00,
    -160.00,
    -115.00,
    -115.00,
    -115.00,
    0.00,
    0.00,
    0.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000155',
    'male',
    66,
    'jr',
    65.2,
    180.00,
    190.00,
    200.00,
    115.00,
    -120.00,
    0.00,
    225.00,
    235.00,
    -250.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000243',
    'male',
    66,
    'jr',
    65.3,
    175.00,
    -185.00,
    -187.50,
    112.50,
    -117.50,
    120.00,
    220.00,
    230.00,
    -245.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000076',
    'male',
    66,
    'jr',
    64.5,
    145.00,
    155.00,
    160.00,
    85.00,
    92.50,
    97.50,
    210.00,
    -217.50,
    217.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000218',
    'male',
    66,
    'jr',
    66,
    140.00,
    -165.00,
    -177.50,
    -90.00,
    90.00,
    -97.50,
    0.00,
    0.00,
    0.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000175',
    'male',
    66,
    'open',
    65.54,
    232.50,
    -237.50,
    237.50,
    120.00,
    125.00,
    130.00,
    247.50,
    260.00,
    -270.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000100',
    'male',
    66,
    'open',
    64.8,
    200.00,
    215.00,
    -220.00,
    132.50,
    142.50,
    -148.00,
    225.00,
    -235.00,
    240.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000080',
    'male',
    66,
    'open',
    65.4,
    210.00,
    -220.00,
    -220.00,
    130.00,
    137.50,
    142.50,
    225.00,
    235.00,
    242.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000109',
    'male',
    66,
    'open',
    65.1,
    175.00,
    -185.00,
    185.00,
    137.50,
    145.50,
    -150.00,
    230.00,
    242.50,
    -250.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000036',
    'male',
    74,
    'subjr',
    73.3,
    200.00,
    207.50,
    -212.50,
    105.00,
    -110.00,
    0.00,
    -255.00,
    255.00,
    -270.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000082',
    'male',
    74,
    'jr',
    72.4,
    190.00,
    202.50,
    207.50,
    125.00,
    132.50,
    137.50,
    225.00,
    237.50,
    -250.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000246',
    'male',
    74,
    'jr',
    73.65,
    -200.00,
    200.00,
    -210.00,
    120.00,
    -125.00,
    125.00,
    -230.00,
    230.00,
    247.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000016',
    'male',
    74,
    'jr',
    73.25,
    180.00,
    192.50,
    -200.00,
    125.00,
    -130.00,
    132.50,
    -227.50,
    237.50,
    -245.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000141',
    'male',
    74,
    'jr',
    72.4,
    185.00,
    192.50,
    197.50,
    112.50,
    -117.50,
    0.00,
    230.00,
    235.00,
    -240.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000065',
    'male',
    74,
    'jr',
    73.3,
    180.00,
    190.00,
    -192.50,
    115.00,
    120.00,
    0.00,
    225.00,
    235.00,
    -242.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000020',
    'male',
    74,
    'jr',
    72.75,
    170.00,
    180.00,
    -182.50,
    115.00,
    122.50,
    -125.00,
    200.00,
    210.00,
    -220.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000122',
    'male',
    74,
    'jr',
    73.9,
    0.00,
    177.50,
    182.50,
    -102.50,
    102.50,
    112.50,
    200.00,
    210.00,
    -215.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000241',
    'male',
    74,
    'jr',
    70.25,
    160.00,
    -175.00,
    -175.00,
    -105.00,
    105.00,
    -110.00,
    225.00,
    -240.00,
    -240.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000135',
    'male',
    74,
    'jr',
    71.85,
    140.00,
    155.00,
    157.50,
    87.50,
    -92.50,
    92.50,
    140.00,
    150.00,
    -160.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000114',
    'male',
    74,
    'open',
    73,
    -215.00,
    215.00,
    220.00,
    -127.50,
    127.50,
    -130.00,
    265.00,
    277.50,
    -287.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000098',
    'male',
    74,
    'open',
    72.3,
    187.50,
    -197.50,
    197.50,
    145.00,
    150.50,
    -155.00,
    245.00,
    255.00,
    -262.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000144',
    'male',
    74,
    'open',
    73.7,
    205.00,
    -212.50,
    -212.50,
    132.50,
    137.50,
    142.50,
    227.50,
    -240.00,
    245.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000224',
    'male',
    74,
    'open',
    73.7,
    205.00,
    210.00,
    -215.00,
    125.00,
    130.00,
    -132.50,
    240.00,
    -250.00,
    -250.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000163',
    'male',
    74,
    'open',
    72.7,
    180.00,
    190.00,
    -195.00,
    130.00,
    -137.50,
    -137.50,
    -220.00,
    220.00,
    -225.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000140',
    'male',
    74,
    'open',
    73,
    160.00,
    167.50,
    177.50,
    110.00,
    117.50,
    -125.00,
    230.00,
    242.50,
    -252.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000052',
    'male',
    74,
    'open',
    73.3,
    190.00,
    197.50,
    205.00,
    110.00,
    0.00,
    -125.00,
    205.00,
    215.00,
    -225.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000129',
    'male',
    74,
    'open',
    73,
    150.00,
    152.50,
    165.00,
    105.00,
    110.00,
    -115.00,
    182.50,
    192.50,
    200.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000194',
    'male',
    74,
    'open',
    72.3,
    205.00,
    -210.00,
    210.00,
    130.00,
    137.50,
    -142.50,
    -240.00,
    -240.00,
    -242.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000195',
    'male',
    74,
    'open',
    73.3,
    160.00,
    -170.00,
    -170.00,
    110.00,
    120.00,
    -127.50,
    -210.00,
    -210.00,
    -210.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000072',
    'male',
    83,
    'subjr',
    81.85,
    185.00,
    195.00,
    -202.50,
    90.00,
    92.50,
    0.00,
    210.00,
    220.00,
    -225.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000133',
    'male',
    83,
    'jr',
    81.1,
    200.00,
    -210.00,
    -215.00,
    105.00,
    110.00,
    112.50,
    235.00,
    -245.00,
    245.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000164',
    'male',
    83,
    'jr',
    81.7,
    190.00,
    205.00,
    210.00,
    105.00,
    112.50,
    -117.50,
    205.00,
    215.00,
    230.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000244',
    'male',
    83,
    'jr',
    82.8,
    170.00,
    182.50,
    -192.50,
    -100.00,
    100.00,
    0.00,
    -220.00,
    -232.50,
    232.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000189',
    'male',
    83,
    'jr',
    80.4,
    175.00,
    185.00,
    187.50,
    90.00,
    -95.00,
    -95.00,
    200.00,
    212.50,
    -222.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000187',
    'male',
    83,
    'jr',
    82.85,
    140.00,
    150.00,
    -160.00,
    75.00,
    85.00,
    -100.00,
    190.00,
    205.00,
    215.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000201',
    'male',
    83,
    'open',
    82.2,
    212.50,
    222.50,
    227.50,
    155.00,
    161.00,
    -163.50,
    280.00,
    292.50,
    300.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000011',
    'male',
    83,
    'open',
    81.8,
    220.00,
    230.00,
    240.00,
    130.00,
    -140.00,
    140.00,
    230.00,
    250.00,
    265.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000024',
    'male',
    83,
    'open',
    81.8,
    200.00,
    -207.50,
    -210.00,
    140.00,
    147.50,
    -152.50,
    225.00,
    235.00,
    -242.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000203',
    'male',
    83,
    'open',
    82.6,
    172.50,
    175.00,
    187.50,
    135.00,
    145.00,
    -147.50,
    200.00,
    215.00,
    -230.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000238',
    'male',
    83,
    'open',
    80.95,
    -155.00,
    155.00,
    -157.50,
    -107.50,
    -107.50,
    -107.50,
    -212.50,
    212.50,
    -232.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000110',
    'male',
    83,
    'open',
    81.05,
    240.00,
    252.50,
    260.00,
    150.00,
    160.50,
    163.00,
    -285.00,
    -285.00,
    -285.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000172',
    'male',
    93,
    'jr',
    92.3,
    190.00,
    215.00,
    -225.00,
    150.00,
    -165.00,
    -165.00,
    255.00,
    265.00,
    -275.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000084',
    'male',
    93,
    'jr',
    84.2,
    -200.00,
    212.50,
    -220.00,
    125.00,
    135.00,
    -142.50,
    252.50,
    265.00,
    -285.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000085',
    'male',
    93,
    'jr',
    87.3,
    185.00,
    192.50,
    195.00,
    140.00,
    150.00,
    -155.00,
    235.00,
    247.50,
    -255.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000005',
    'male',
    93,
    'jr',
    86.1,
    185.00,
    195.00,
    -205.00,
    105.00,
    110.00,
    112.50,
    190.00,
    200.00,
    210.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000031',
    'male',
    93,
    'jr',
    91.1,
    160.00,
    170.00,
    -175.00,
    95.00,
    102.50,
    -107.50,
    220.00,
    0.00,
    245.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000013',
    'male',
    93,
    'open',
    90.2,
    222.50,
    235.00,
    247.50,
    140.00,
    150.00,
    157.50,
    250.00,
    262.50,
    275.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000002',
    'male',
    93,
    'open',
    92.8,
    212.50,
    225.00,
    235.00,
    117.50,
    125.00,
    130.00,
    260.00,
    275.00,
    -290.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000265',
    'male',
    93,
    'open',
    88.3,
    -217.50,
    230.00,
    -237.50,
    145.00,
    152.50,
    157.50,
    227.50,
    240.00,
    -247.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000261',
    'male',
    93,
    'open',
    90.5,
    200.00,
    -212.50,
    212.50,
    157.50,
    165.00,
    -170.00,
    230.00,
    242.50,
    -252.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000208',
    'male',
    93,
    'open',
    91.5,
    205.00,
    220.00,
    230.00,
    145.00,
    -155.00,
    -155.00,
    230.00,
    240.00,
    -250.00,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000006',
    'male',
    93,
    'open',
    90.7,
    205.00,
    220.00,
    230.00,
    135.00,
    142.50,
    147.50,
    210.00,
    225.00,
    232.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000248',
    'male',
    93,
    'open',
    83.2,
    205.00,
    215.00,
    -222.50,
    120.00,
    127.50,
    -132.50,
    230.00,
    235.00,
    -245.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000166',
    'male',
    93,
    'open',
    91.1,
    190.00,
    205.00,
    -210.00,
    125.00,
    -132.50,
    -132.50,
    215.00,
    230.00,
    237.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000118',
    'male',
    105,
    'jr',
    101.4,
    235.00,
    245.00,
    -255.00,
    145.00,
    157.50,
    -165.00,
    200.00,
    0.00,
    265.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000037',
    'male',
    105,
    'jr',
    93.25,
    200.00,
    210.00,
    220.00,
    120.00,
    -132.50,
    132.50,
    220.00,
    230.00,
    237.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000125',
    'male',
    105,
    'jr',
    102.8,
    190.00,
    200.00,
    205.00,
    137.50,
    150.00,
    -160.00,
    207.50,
    220.00,
    -250.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000206',
    'male',
    105,
    'open',
    104.1,
    255.00,
    267.50,
    275.00,
    192.50,
    200.00,
    202.50,
    -265.00,
    265.00,
    -272.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000123',
    'male',
    105,
    'open',
    99.4,
    235.00,
    245.00,
    255.00,
    152.50,
    160.00,
    -167.50,
    275.00,
    290.00,
    -302.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000168',
    'male',
    105,
    'open',
    99.8,
    242.50,
    -252.50,
    252.50,
    142.50,
    152.50,
    160.00,
    242.50,
    252.50,
    260.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000010',
    'male',
    105,
    'open',
    93.6,
    230.00,
    237.50,
    245.00,
    152.50,
    -160.00,
    -160.00,
    240.00,
    252.50,
    -267.50,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000116',
    'male',
    105,
    'open',
    96.6,
    245.00,
    260.00,
    270.00,
    115.00,
    -122.50,
    -122.50,
    215.00,
    225.00,
    235.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000106',
    'male',
    120,
    'open',
    107,
    210.00,
    217.50,
    220.00,
    140.00,
    150.00,
    155.00,
    215.00,
    225.00,
    -230.00,
    'Nhà Thi Đấu Tây Hồ',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000101',
    'male',
    999,
    'open',
    126.2,
    276.00,
    282.50,
    0.00,
    187.50,
    195.00,
    -200.00,
    255.00,
    265.00,
    -272.50,
    'Nhà Thi Đấu Tây Hồ',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000102',
    'female',
    47,
    'jr',
    45.9,
    -70.00,
    70.00,
    75.00,
    32.50,
    35.00,
    -37.50,
    100.00,
    -105.00,
    -105.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000380',
    'female',
    47,
    'open',
    46.7,
    107.50,
    115.00,
    120.50,
    67.50,
    75.50,
    -78.00,
    140.00,
    150.50,
    -160.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000132',
    'female',
    52,
    'jr',
    51.3,
    105.00,
    107.50,
    117.50,
    52.50,
    57.50,
    60.00,
    130.00,
    140.00,
    -145.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000242',
    'female',
    52,
    'jr',
    47.5,
    80.00,
    90.00,
    -95.00,
    40.00,
    -42.50,
    42.50,
    100.00,
    110.00,
    115.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000167',
    'female',
    52,
    'jr',
    51.9,
    80.00,
    90.00,
    95.00,
    25.00,
    -30.00,
    30.00,
    -100.00,
    -100.00,
    -100.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000249',
    'female',
    52,
    'open',
    51.45,
    115.00,
    120.00,
    123.00,
    50.00,
    55.00,
    60.00,
    147.50,
    155.50,
    160.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    8
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000112',
    'female',
    52,
    'open',
    49.5,
    95.00,
    102.50,
    107.50,
    50.00,
    55.00,
    57.50,
    130.00,
    137.50,
    -142.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000154',
    'female',
    52,
    'open',
    48.8,
    95.00,
    102.50,
    -107.50,
    55.00,
    60.00,
    -65.00,
    -130.00,
    130.00,
    -142.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000217',
    'female',
    52,
    'open',
    50.6,
    105.00,
    112.50,
    -120.00,
    55.00,
    -57.50,
    -57.50,
    100.00,
    -112.50,
    -112.50,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000184',
    'female',
    52,
    'open',
    51.15,
    90.00,
    -95.00,
    -95.00,
    45.00,
    -52.50,
    -55.00,
    110.00,
    120.00,
    -130.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000174',
    'female',
    52,
    'open',
    49.25,
    82.50,
    85.00,
    -90.00,
    45.00,
    50.00,
    -55.00,
    85.00,
    87.50,
    100.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000069',
    'female',
    52,
    'open',
    51.55,
    95.00,
    102.50,
    110.00,
    45.00,
    -50.00,
    -50.00,
    -130.00,
    -130.00,
    -130.00,
    'Nhà Thi Đấu Tây Hồ',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000099',
    'female',
    57,
    'jr',
    56.25,
    107.50,
    110.00,
    -117.50,
    47.50,
    52.50,
    -55.00,
    137.50,
    -142.50,
    142.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000228',
    'female',
    57,
    'jr',
    55.05,
    110.00,
    115.00,
    117.50,
    45.00,
    -50.00,
    50.00,
    122.50,
    130.00,
    135.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000173',
    'female',
    57,
    'jr',
    56.65,
    85.00,
    95.00,
    107.50,
    45.00,
    52.50,
    -57.50,
    110.00,
    125.00,
    -137.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000255',
    'female',
    57,
    'open',
    55.35,
    95.00,
    102.50,
    105.00,
    50.00,
    52.50,
    57.50,
    110.00,
    122.50,
    130.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000152',
    'female',
    57,
    'open',
    53.65,
    90.00,
    95.00,
    -100.00,
    60.00,
    -65.00,
    65.00,
    110.00,
    117.50,
    -120.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000137',
    'female',
    63,
    'subjr',
    59.85,
    130.00,
    -137.50,
    137.50,
    60.00,
    65.00,
    67.50,
    150.00,
    160.00,
    165.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000075',
    'female',
    63,
    'subjr',
    61.05,
    130.00,
    132.50,
    140.00,
    55.00,
    60.00,
    -65.00,
    170.00,
    -182.50,
    -182.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000199',
    'female',
    63,
    'open',
    62.6,
    107.50,
    110.00,
    120.00,
    55.00,
    -60.00,
    60.00,
    140.00,
    -145.00,
    145.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000169',
    'female',
    63,
    'open',
    62.75,
    95.00,
    110.00,
    112.50,
    57.50,
    62.50,
    -70.00,
    115.00,
    127.50,
    135.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000117',
    'female',
    69,
    'subjr',
    67.8,
    97.50,
    100.00,
    115.00,
    45.00,
    50.00,
    -57.50,
    120.00,
    135.00,
    142.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000035',
    'female',
    69,
    'jr',
    65.35,
    125.00,
    132.50,
    137.50,
    52.50,
    57.50,
    60.00,
    132.50,
    145.00,
    -152.50,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = '18 Powerlifting'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2023'),
    'VPF000150',
    'female',
    69,
    'jr',
    68.9,
    87.50,
    95.00,
    100.00,
    47.50,
    -50.00,
    50.00,
    145.00,
    150.00,
    -160.00,
    'Nhà Thi Đấu Tây Hồ',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000176',
    'male',
    59,
    'open',
    57.65,
    170.00,
    175.00,
    180.00,
    105.00,
    110.00,
    -115.00,
    180.00,
    190.00,
    197.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000440',
    'male',
    59,
    'open',
    57.45,
    127.50,
    140.00,
    150.00,
    90.00,
    97.50,
    102.50,
    175.00,
    190.00,
    205.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000450',
    'male',
    59,
    'open',
    57.7,
    115.00,
    135.00,
    145.00,
    80.00,
    90.00,
    -92.50,
    150.00,
    165.00,
    172.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000403',
    'male',
    59,
    'open',
    55.2,
    120.00,
    122.50,
    130.00,
    90.00,
    97.50,
    -112.50,
    -160.00,
    172.50,
    -175.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000469',
    'male',
    59,
    'open',
    58.8,
    115.00,
    122.50,
    -125.00,
    -87.50,
    -87.50,
    -87.50,
    165.00,
    175.00,
    185.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000409',
    'male',
    59,
    'jr',
    58.45,
    140.00,
    142.50,
    145.00,
    85.00,
    90.00,
    92.50,
    155.00,
    157.50,
    160.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000448',
    'male',
    59,
    'jr',
    54.95,
    110.00,
    120.00,
    130.00,
    65.00,
    75.00,
    80.00,
    160.00,
    167.50,
    180.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000433',
    'male',
    59,
    'jr',
    57.65,
    115.00,
    120.00,
    122.50,
    60.00,
    70.00,
    75.00,
    150.00,
    -160.00,
    160.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000437',
    'male',
    59,
    'subjr',
    58.5,
    90.00,
    92.50,
    115.00,
    50.00,
    65.00,
    -72.50,
    100.00,
    145.00,
    155.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000323',
    'male',
    66,
    'open',
    65.5,
    175.00,
    190.00,
    -195.00,
    100.00,
    107.50,
    110.00,
    205.00,
    215.00,
    -225.00,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000426',
    'male',
    66,
    'open',
    65.55,
    -180.00,
    -180.00,
    180.00,
    100.00,
    110.00,
    -117.50,
    210.00,
    -222.50,
    -227.50,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000449',
    'male',
    66,
    'open',
    64.2,
    145.00,
    155.00,
    162.50,
    105.00,
    110.00,
    115.00,
    165.00,
    175.00,
    182.50,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000226',
    'male',
    66,
    'open',
    64.2,
    -125.00,
    -130.00,
    130.00,
    95.00,
    100.00,
    -105.00,
    -185.00,
    195.00,
    -225.00,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000458',
    'male',
    66,
    'open',
    64.65,
    140.00,
    142.50,
    -160.00,
    95.00,
    105.00,
    112.50,
    150.00,
    160.00,
    170.00,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000079',
    'male',
    66,
    'open',
    64.15,
    145.00,
    155.00,
    -160.00,
    95.00,
    100.00,
    -102.50,
    145.00,
    155.00,
    165.00,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000468',
    'male',
    66,
    'open',
    65.85,
    110.00,
    120.00,
    122.50,
    65.00,
    75.00,
    0.00,
    190.00,
    200.00,
    -207.50,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000153',
    'male',
    66,
    'open',
    64.6,
    115.00,
    120.00,
    -122.50,
    75.00,
    80.00,
    -82.50,
    135.00,
    145.00,
    157.50,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000463',
    'male',
    66,
    'open',
    63.1,
    0.00,
    127.50,
    -135.00,
    60.00,
    67.50,
    -75.00,
    145.00,
    155.00,
    -160.00,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000466',
    'male',
    66,
    'open',
    63.9,
    95.00,
    100.00,
    -110.00,
    70.00,
    80.00,
    -95.00,
    130.00,
    140.00,
    -150.00,
    '1',
    '3',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000401',
    'male',
    66,
    'jr',
    64.5,
    140.00,
    155.00,
    160.00,
    75.00,
    90.00,
    -100.00,
    165.00,
    -185.00,
    185.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000181',
    'male',
    66,
    'jr',
    64.2,
    135.00,
    145.00,
    152.50,
    -70.00,
    72.50,
    -77.50,
    165.00,
    180.00,
    -190.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000322',
    'male',
    66,
    'jr',
    63.7,
    132.50,
    142.50,
    -150.00,
    67.50,
    72.50,
    -80.00,
    155.00,
    165.00,
    175.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000460',
    'male',
    66,
    'jr',
    65.95,
    135.00,
    -145.00,
    -150.00,
    -90.00,
    -92.50,
    -92.50,
    155.00,
    157.50,
    -162.50,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000461',
    'male',
    66,
    'subjr',
    63.5,
    130.00,
    140.00,
    150.00,
    90.00,
    95.00,
    100.00,
    180.00,
    185.00,
    195.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000330',
    'male',
    66,
    'subjr',
    64.7,
    130.00,
    140.00,
    152.50,
    57.50,
    62.50,
    -65.00,
    165.00,
    175.00,
    185.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000411',
    'male',
    66,
    'subjr',
    65.4,
    132.50,
    140.00,
    -147.50,
    62.50,
    70.00,
    -75.00,
    137.50,
    140.00,
    145.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000454',
    'male',
    66,
    'mas1',
    65.75,
    90.00,
    95.00,
    100.00,
    52.50,
    57.50,
    -62.50,
    100.00,
    107.50,
    112.50,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000412',
    'male',
    74,
    'open',
    72.65,
    180.00,
    190.00,
    200.00,
    125.00,
    130.00,
    -135.00,
    225.00,
    235.00,
    245.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000151',
    'male',
    74,
    'open',
    72.3,
    190.00,
    202.50,
    212.50,
    110.00,
    -120.00,
    -122.50,
    207.50,
    217.50,
    -230.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000424',
    'male',
    74,
    'open',
    73.9,
    160.00,
    170.00,
    180.00,
    105.00,
    -115.00,
    -120.00,
    225.00,
    235.00,
    -245.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000052',
    'male',
    74,
    'open',
    73.4,
    190.00,
    200.00,
    -205.00,
    110.00,
    -117.50,
    -117.50,
    -200.00,
    -200.00,
    200.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000416',
    'male',
    74,
    'open',
    72.9,
    155.00,
    170.00,
    175.00,
    95.00,
    102.50,
    -110.00,
    205.00,
    215.00,
    225.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000097',
    'male',
    74,
    'open',
    73.75,
    165.00,
    167.50,
    180.00,
    95.00,
    -105.00,
    -105.00,
    205.00,
    215.00,
    225.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000415',
    'male',
    74,
    'open',
    73.5,
    160.00,
    170.00,
    180.00,
    100.00,
    110.00,
    112.50,
    175.00,
    -185.00,
    195.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000058',
    'male',
    74,
    'open',
    73.3,
    155.00,
    162.50,
    170.00,
    110.00,
    115.00,
    0.00,
    175.00,
    185.00,
    200.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000408',
    'male',
    74,
    'open',
    73.2,
    165.00,
    175.00,
    180.00,
    95.00,
    100.00,
    105.00,
    -185.00,
    185.00,
    195.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000428',
    'male',
    74,
    'open',
    74,
    145.00,
    157.50,
    160.00,
    105.00,
    112.50,
    -120.00,
    180.00,
    195.00,
    207.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000400',
    'male',
    74,
    'open',
    73.65,
    140.00,
    155.00,
    -160.00,
    110.00,
    -115.00,
    -115.00,
    200.00,
    0.00,
    -215.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000358',
    'male',
    74,
    'open',
    71.9,
    160.00,
    162.50,
    -170.00,
    90.00,
    95.00,
    100.00,
    190.00,
    200.00,
    -210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000482',
    'male',
    74,
    'open',
    72.75,
    155.00,
    -160.00,
    160.00,
    85.00,
    87.50,
    90.00,
    195.00,
    205.00,
    210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000441',
    'male',
    74,
    'open',
    71.9,
    150.00,
    -160.00,
    -162.50,
    90.00,
    100.00,
    -107.50,
    190.00,
    200.00,
    207.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000413',
    'male',
    74,
    'open',
    72.6,
    -155.00,
    155.00,
    160.00,
    107.50,
    -115.00,
    -117.50,
    180.00,
    190.00,
    -195.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000431',
    'male',
    74,
    'open',
    73.2,
    170.00,
    -177.50,
    -177.50,
    82.50,
    87.50,
    -92.50,
    190.00,
    200.00,
    -212.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000471',
    'male',
    74,
    'open',
    73.9,
    145.00,
    157.50,
    -165.00,
    102.50,
    105.00,
    115.00,
    160.00,
    162.50,
    177.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000014',
    'male',
    74,
    'open',
    69.7,
    117.50,
    127.50,
    135.00,
    105.00,
    115.00,
    -122.50,
    155.00,
    167.50,
    180.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000425',
    'male',
    74,
    'open',
    73.8,
    125.00,
    145.00,
    162.50,
    85.00,
    95.00,
    -100.00,
    160.00,
    172.50,
    -182.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000267',
    'male',
    74,
    'open',
    73.9,
    145.00,
    -160.00,
    -160.00,
    95.00,
    -102.50,
    -102.50,
    165.00,
    175.00,
    -185.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000447',
    'male',
    74,
    'open',
    73.5,
    150.00,
    155.00,
    -160.00,
    90.00,
    -95.00,
    -95.00,
    155.00,
    165.00,
    -175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000298',
    'male',
    74,
    'open',
    73.75,
    140.00,
    -150.00,
    -155.00,
    85.00,
    90.00,
    -95.00,
    180.00,
    -190.00,
    -190.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000480',
    'male',
    74,
    'open',
    72.8,
    105.00,
    115.00,
    125.00,
    85.00,
    -92.50,
    102.50,
    150.00,
    165.00,
    180.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000472',
    'male',
    74,
    'open',
    72.4,
    -125.00,
    125.00,
    135.00,
    75.00,
    77.50,
    85.00,
    140.00,
    152.50,
    165.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000407',
    'male',
    74,
    'open',
    71.8,
    110.00,
    117.50,
    120.00,
    80.00,
    85.00,
    -90.00,
    147.50,
    157.50,
    165.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000473',
    'male',
    74,
    'open',
    73.6,
    -125.00,
    125.00,
    135.00,
    77.50,
    -82.50,
    -82.50,
    150.00,
    -160.00,
    -170.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000442',
    'male',
    74,
    'open',
    71.1,
    107.50,
    112.50,
    120.00,
    82.50,
    -92.50,
    0.00,
    130.00,
    140.00,
    -152.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000396',
    'male',
    74,
    'open',
    70.2,
    130.00,
    -140.00,
    -140.00,
    -95.00,
    -100.00,
    -100.00,
    140.00,
    -150.00,
    150.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000156',
    'male',
    74,
    'open',
    72.8,
    205.00,
    -215.00,
    -215.00,
    115.00,
    125.00,
    -130.00,
    -225.00,
    -225.00,
    -225.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000402',
    'male',
    74,
    'jr',
    72.65,
    150.00,
    -165.00,
    170.00,
    90.00,
    100.00,
    -107.50,
    190.00,
    215.00,
    -230.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000457',
    'male',
    74,
    'jr',
    73.4,
    140.00,
    -150.00,
    160.00,
    90.00,
    100.00,
    105.00,
    200.00,
    210.00,
    215.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000135',
    'male',
    74,
    'jr',
    72.65,
    140.00,
    155.00,
    -160.00,
    87.50,
    92.50,
    95.00,
    140.00,
    150.00,
    157.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000464',
    'male',
    74,
    'jr',
    71.3,
    122.50,
    132.50,
    140.00,
    80.00,
    87.50,
    -95.00,
    160.00,
    170.00,
    -180.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000421',
    'male',
    74,
    'jr',
    73.85,
    100.00,
    110.00,
    112.50,
    55.00,
    62.50,
    -70.00,
    140.00,
    150.00,
    157.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000439',
    'male',
    74,
    'jr',
    72.75,
    -140.00,
    -145.00,
    -145.00,
    77.50,
    85.00,
    -87.50,
    175.00,
    185.00,
    -190.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000451',
    'male',
    74,
    'subjr',
    73.45,
    152.50,
    160.00,
    165.00,
    85.00,
    90.00,
    -92.50,
    -180.00,
    190.00,
    200.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000438',
    'male',
    74,
    'subjr',
    72.8,
    147.50,
    160.00,
    170.00,
    -60.00,
    67.50,
    72.50,
    175.00,
    190.00,
    -212.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000489',
    'male',
    83,
    'open',
    81.95,
    180.00,
    -200.00,
    -210.00,
    110.00,
    -125.00,
    125.00,
    240.00,
    260.00,
    280.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000405',
    'male',
    83,
    'open',
    82.15,
    187.50,
    200.00,
    -210.00,
    127.50,
    135.00,
    140.00,
    207.50,
    217.50,
    -227.50,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000215',
    'male',
    83,
    'open',
    81.95,
    -180.00,
    190.00,
    195.00,
    115.00,
    -130.00,
    -130.00,
    215.00,
    230.00,
    245.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000446',
    'male',
    83,
    'open',
    81.65,
    -180.00,
    187.50,
    -195.00,
    130.00,
    137.50,
    -142.50,
    210.00,
    220.00,
    227.50,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000253',
    'male',
    83,
    'open',
    81.6,
    190.00,
    -200.00,
    -200.00,
    100.00,
    105.00,
    -107.50,
    230.00,
    245.00,
    -260.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000399',
    'male',
    83,
    'open',
    81.55,
    157.50,
    170.00,
    180.00,
    117.50,
    127.50,
    137.50,
    195.00,
    210.00,
    -230.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000475',
    'male',
    83,
    'open',
    81.55,
    170.00,
    175.00,
    182.50,
    110.00,
    120.00,
    -127.50,
    190.00,
    205.00,
    220.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000027',
    'male',
    83,
    'open',
    80.45,
    160.00,
    175.00,
    -190.00,
    115.00,
    -125.00,
    -125.00,
    170.00,
    0.00,
    205.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000436',
    'male',
    83,
    'open',
    80.5,
    -155.00,
    -162.50,
    165.00,
    100.00,
    110.00,
    115.00,
    205.00,
    215.00,
    -230.00,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000491',
    'male',
    83,
    'open',
    79.2,
    130.00,
    132.50,
    142.50,
    100.00,
    110.00,
    112.50,
    190.00,
    202.50,
    207.50,
    '1',
    '4',
    'J',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000385',
    'male',
    83,
    'open',
    80.25,
    125.00,
    140.00,
    152.50,
    90.00,
    92.50,
    -110.00,
    190.00,
    200.00,
    210.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000398',
    'male',
    83,
    'open',
    80.6,
    150.00,
    -160.00,
    -165.00,
    115.00,
    -125.00,
    -125.00,
    130.00,
    145.00,
    -160.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000104',
    'male',
    83,
    'open',
    75.55,
    115.00,
    125.00,
    132.50,
    70.00,
    72.50,
    0.00,
    175.00,
    185.00,
    195.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000397',
    'male',
    83,
    'jr',
    78.7,
    190.00,
    200.00,
    0.00,
    90.00,
    100.00,
    105.00,
    -240.00,
    240.00,
    255.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000462',
    'male',
    83,
    'jr',
    78,
    -165.00,
    175.00,
    -187.50,
    80.00,
    90.00,
    -105.00,
    -210.00,
    225.00,
    235.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000486',
    'male',
    83,
    'jr',
    81.9,
    155.00,
    165.00,
    -175.00,
    97.50,
    105.00,
    110.00,
    200.00,
    210.00,
    215.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000490',
    'male',
    83,
    'jr',
    81.85,
    155.00,
    162.50,
    170.00,
    95.00,
    102.50,
    -110.00,
    195.00,
    207.50,
    212.50,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000443',
    'male',
    83,
    'jr',
    81.6,
    -155.00,
    155.00,
    -162.50,
    100.00,
    105.00,
    -110.00,
    190.00,
    -202.50,
    -202.50,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000481',
    'male',
    83,
    'jr',
    82.65,
    140.00,
    142.50,
    -160.00,
    115.00,
    -122.50,
    -125.00,
    175.00,
    185.00,
    -195.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000430',
    'male',
    83,
    'jr',
    81.9,
    120.00,
    125.00,
    132.50,
    -62.50,
    67.50,
    -75.00,
    150.00,
    160.00,
    170.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000417',
    'male',
    83,
    'jr',
    79.2,
    105.00,
    115.00,
    122.50,
    70.00,
    75.00,
    80.00,
    117.50,
    127.50,
    142.50,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000478',
    'male',
    83,
    'subjr',
    75.2,
    142.50,
    -152.50,
    155.00,
    80.00,
    85.00,
    90.00,
    155.00,
    162.50,
    175.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000395',
    'male',
    83,
    'subjr',
    77.35,
    97.50,
    -107.50,
    115.00,
    60.00,
    65.00,
    70.00,
    142.50,
    152.50,
    162.50,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000485',
    'male',
    83,
    'subjr',
    82.05,
    -102.50,
    -102.50,
    -210.00,
    60.00,
    62.50,
    92.50,
    195.00,
    207.50,
    215.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000254',
    'male',
    93,
    'open',
    84.7,
    210.00,
    220.00,
    -230.00,
    130.00,
    135.00,
    142.50,
    230.00,
    240.00,
    247.50,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000487',
    'male',
    93,
    'open',
    92.25,
    185.00,
    -200.00,
    205.00,
    125.00,
    135.00,
    0.00,
    220.00,
    235.00,
    -245.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000394',
    'male',
    93,
    'jr',
    91.5,
    160.00,
    170.00,
    180.00,
    105.00,
    115.00,
    120.00,
    200.00,
    220.00,
    -245.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000404',
    'male',
    93,
    'jr',
    84.9,
    155.00,
    165.00,
    172.50,
    -110.00,
    -110.00,
    110.00,
    185.00,
    195.00,
    205.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000423',
    'male',
    93,
    'jr',
    86.65,
    135.00,
    150.00,
    162.50,
    95.00,
    105.00,
    110.00,
    160.00,
    180.00,
    -200.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000386',
    'male',
    93,
    'jr',
    87.2,
    145.00,
    155.00,
    160.00,
    65.00,
    70.00,
    75.00,
    170.00,
    185.00,
    -200.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000316',
    'male',
    93,
    'jr',
    92,
    115.00,
    125.00,
    135.00,
    82.50,
    -90.00,
    -90.00,
    180.00,
    185.00,
    190.00,
    '1',
    '5',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000453',
    'male',
    93,
    'subjr',
    85.35,
    145.00,
    147.50,
    165.00,
    80.00,
    90.00,
    95.00,
    190.00,
    200.00,
    210.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000420',
    'male',
    93,
    'subjr',
    85.5,
    150.00,
    165.00,
    167.50,
    80.00,
    -90.00,
    -95.00,
    190.00,
    -205.00,
    215.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000351',
    'male',
    105,
    'open',
    101.2,
    185.00,
    195.00,
    202.50,
    115.00,
    122.50,
    -127.50,
    220.00,
    230.00,
    -240.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000360',
    'male',
    105,
    'open',
    102,
    -200.00,
    207.50,
    -215.00,
    102.50,
    115.00,
    -120.00,
    220.00,
    232.50,
    -245.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000476',
    'male',
    105,
    'jr',
    99.7,
    155.00,
    165.00,
    175.00,
    95.00,
    -100.00,
    -100.00,
    177.50,
    190.00,
    200.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000435',
    'male',
    105,
    'subjr',
    100.7,
    140.00,
    155.00,
    -162.50,
    50.00,
    65.00,
    72.50,
    140.00,
    155.00,
    170.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000057',
    'female',
    47,
    'open',
    45.9,
    90.00,
    97.50,
    102.50,
    35.00,
    40.00,
    42.50,
    100.00,
    110.00,
    117.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000406',
    'female',
    47,
    'open',
    45.7,
    72.50,
    77.50,
    -80.00,
    27.50,
    32.50,
    -35.00,
    90.00,
    100.00,
    -110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000427',
    'female',
    47,
    'open',
    46.8,
    -75.00,
    -75.00,
    -75.00,
    25.00,
    30.00,
    -35.00,
    90.00,
    100.00,
    105.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000465',
    'female',
    47,
    'open',
    0,
    60.00,
    65.00,
    72.50,
    25.00,
    27.50,
    -30.00,
    110.00,
    120.00,
    -125.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000429',
    'female',
    47,
    'jr',
    46.55,
    60.00,
    67.50,
    77.50,
    25.00,
    32.50,
    37.50,
    75.00,
    87.50,
    97.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000456',
    'female',
    52,
    'open',
    51.3,
    85.00,
    90.00,
    95.00,
    35.00,
    40.00,
    42.50,
    110.00,
    117.50,
    125.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000467',
    'female',
    52,
    'open',
    51.2,
    85.00,
    92.50,
    95.00,
    40.00,
    45.00,
    -47.50,
    95.00,
    105.00,
    107.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000477',
    'female',
    52,
    'open',
    50.85,
    70.00,
    75.00,
    80.00,
    -35.00,
    40.00,
    -42.50,
    70.00,
    80.00,
    95.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000470',
    'female',
    52,
    'open',
    50.2,
    60.00,
    62.50,
    65.00,
    30.00,
    -32.50,
    -32.50,
    95.00,
    102.50,
    107.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000419',
    'female',
    52,
    'open',
    51.75,
    72.50,
    75.00,
    -82.50,
    -47.50,
    -47.50,
    -47.50,
    97.50,
    -107.50,
    0.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000281',
    'female',
    57,
    'open',
    55.55,
    95.00,
    102.50,
    107.50,
    60.00,
    65.00,
    -67.50,
    127.50,
    135.00,
    140.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000484',
    'female',
    57,
    'open',
    54.3,
    95.00,
    105.00,
    -110.00,
    35.00,
    40.00,
    -42.50,
    110.00,
    -120.00,
    120.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000483',
    'female',
    57,
    'open',
    55.15,
    82.50,
    87.50,
    -92.50,
    32.50,
    37.50,
    -40.00,
    130.00,
    137.50,
    -140.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000455',
    'female',
    57,
    'open',
    56.15,
    90.00,
    95.00,
    100.00,
    40.00,
    42.50,
    -45.00,
    110.00,
    117.50,
    -130.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000389',
    'female',
    57,
    'open',
    55.85,
    80.00,
    87.50,
    92.50,
    30.00,
    35.00,
    -40.00,
    105.00,
    110.00,
    -120.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000459',
    'female',
    57,
    'jr',
    55.35,
    100.00,
    -110.00,
    110.00,
    50.00,
    -52.50,
    0.00,
    115.00,
    125.00,
    132.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000410',
    'female',
    57,
    'subjr',
    56.85,
    0.00,
    55.00,
    65.00,
    45.00,
    52.50,
    -55.00,
    70.00,
    85.00,
    100.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000432',
    'female',
    63,
    'open',
    57.75,
    80.00,
    90.00,
    95.00,
    45.00,
    -50.00,
    50.00,
    115.00,
    125.00,
    132.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000445',
    'female',
    63,
    'jr',
    61.95,
    80.00,
    82.50,
    90.00,
    -30.00,
    37.50,
    42.50,
    120.00,
    130.00,
    140.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000422',
    'female',
    63,
    'subjr',
    61.75,
    85.00,
    -92.50,
    -95.00,
    47.50,
    50.00,
    55.00,
    110.00,
    117.50,
    -125.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000452',
    'female',
    63,
    'mas1',
    62.4,
    80.00,
    90.00,
    -100.00,
    40.00,
    45.00,
    -52.50,
    90.00,
    100.00,
    110.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000414',
    'female',
    69,
    'jr',
    68.3,
    85.00,
    87.50,
    97.50,
    35.00,
    40.00,
    42.50,
    90.00,
    100.00,
    110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPF000418',
    'female',
    76,
    'open',
    75.4,
    80.00,
    87.50,
    95.00,
    37.50,
    -42.50,
    -45.00,
    90.00,
    105.00,
    110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPFG00002',
    'male',
    105,
    'mas1',
    99.75,
    232.50,
    -242.50,
    0.00,
    135.00,
    145.00,
    0.00,
    250.00,
    272.50,
    0.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'Pinkman Invitational 2024: Amateur Summer Gathering'),
    'VPFG00001',
    'female',
    57,
    'mas1',
    60.25,
    110.00,
    -117.50,
    -117.50,
    57.50,
    -62.50,
    -62.50,
    130.00,
    140.00,
    -145.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000508',
    'male',
    59,
    'open',
    58.5,
    150.00,
    170.00,
    0.00,
    125.00,
    135.00,
    140.00,
    210.00,
    -225.00,
    -230.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000500',
    'male',
    59,
    'open',
    58.25,
    140.00,
    -150.00,
    -150.00,
    -110.00,
    110.00,
    -115.00,
    180.00,
    190.00,
    200.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'Team BFH'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000210',
    'male',
    59,
    'open',
    57.7,
    140.00,
    -150.00,
    150.00,
    -85.00,
    90.00,
    -95.00,
    170.00,
    180.00,
    -185.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000403',
    'male',
    59,
    'open',
    56,
    120.00,
    130.00,
    137.50,
    90.00,
    97.50,
    102.50,
    162.50,
    172.50,
    -180.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000042',
    'male',
    59,
    'jr',
    58,
    170.00,
    180.00,
    -185.00,
    70.00,
    77.50,
    85.00,
    200.00,
    -215.00,
    220.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000496',
    'male',
    59,
    'subjr',
    58.2,
    120.00,
    130.00,
    -140.00,
    60.00,
    -70.00,
    0.00,
    170.00,
    -185.00,
    185.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'Team BFH'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000175',
    'male',
    66,
    'open',
    64.45,
    200.00,
    220.00,
    230.00,
    120.00,
    -130.00,
    -130.00,
    250.00,
    -265.00,
    -270.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000297',
    'male',
    66,
    'open',
    64.35,
    175.00,
    180.00,
    -185.00,
    140.00,
    145.00,
    -147.50,
    202.50,
    212.50,
    220.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000503',
    'male',
    66,
    'open',
    64.1,
    180.00,
    -190.00,
    -190.00,
    120.00,
    130.00,
    -140.00,
    200.00,
    225.00,
    -235.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000426',
    'male',
    66,
    'open',
    65.6,
    180.00,
    -190.00,
    -190.00,
    110.00,
    -117.50,
    -117.50,
    210.00,
    -220.00,
    -220.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000230',
    'male',
    66,
    'open',
    64.05,
    -160.00,
    -160.00,
    -160.00,
    -125.00,
    -125.00,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000309',
    'male',
    66,
    'jr',
    64.85,
    182.50,
    190.00,
    197.50,
    110.00,
    112.50,
    122.50,
    220.00,
    230.00,
    240.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000280',
    'male',
    66,
    'jr',
    65.05,
    165.00,
    -175.00,
    175.00,
    110.00,
    115.00,
    -117.50,
    180.00,
    192.50,
    -200.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'Team BFH'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000518',
    'male',
    66,
    'jr',
    64.25,
    150.00,
    162.50,
    170.00,
    90.00,
    100.00,
    -105.00,
    162.50,
    175.00,
    185.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000492',
    'male',
    66,
    'subjr',
    64.2,
    130.00,
    140.00,
    -145.00,
    65.00,
    67.50,
    82.50,
    150.00,
    165.00,
    -177.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000507',
    'male',
    66,
    'subjr',
    65.05,
    110.00,
    120.00,
    -127.50,
    -60.00,
    65.00,
    -70.00,
    120.00,
    135.00,
    -150.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'Team BFH'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000504',
    'male',
    74,
    'open',
    73.8,
    215.00,
    0.00,
    225.00,
    105.00,
    110.00,
    115.00,
    250.00,
    260.00,
    270.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000194',
    'male',
    74,
    'open',
    72.7,
    200.00,
    207.50,
    212.50,
    130.00,
    -140.00,
    -140.00,
    230.00,
    245.00,
    -250.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000016',
    'male',
    74,
    'open',
    72.75,
    185.00,
    200.00,
    -207.50,
    120.00,
    127.50,
    -135.00,
    230.00,
    245.00,
    -262.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000497',
    'male',
    74,
    'open',
    70.25,
    200.00,
    210.00,
    215.00,
    105.00,
    120.00,
    -125.00,
    225.00,
    -235.00,
    -237.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000285',
    'male',
    74,
    'open',
    71.8,
    170.00,
    180.00,
    -185.00,
    -125.00,
    125.00,
    0.00,
    220.00,
    230.00,
    240.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'Team BFH'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000498',
    'male',
    74,
    'open',
    72.45,
    160.00,
    170.00,
    180.00,
    105.00,
    110.00,
    120.00,
    200.00,
    215.00,
    -230.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000517',
    'male',
    74,
    'open',
    72.4,
    -185.00,
    185.00,
    -202.50,
    105.00,
    -115.00,
    -122.50,
    210.00,
    -232.50,
    -240.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000494',
    'male',
    74,
    'open',
    72.2,
    155.00,
    157.50,
    170.00,
    95.00,
    100.00,
    105.00,
    200.00,
    210.00,
    -225.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000509',
    'male',
    74,
    'open',
    73.25,
    150.00,
    160.00,
    170.00,
    110.00,
    -117.50,
    -117.50,
    205.00,
    -215.00,
    -215.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000519',
    'male',
    74,
    'open',
    71.2,
    160.00,
    162.50,
    -175.00,
    95.00,
    100.00,
    107.50,
    -190.00,
    -200.00,
    202.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000506',
    'male',
    74,
    'open',
    71.7,
    150.00,
    160.00,
    165.00,
    85.00,
    92.50,
    100.00,
    185.00,
    192.50,
    200.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000298',
    'male',
    74,
    'open',
    73.2,
    140.00,
    -155.00,
    -155.00,
    85.00,
    90.00,
    -95.00,
    180.00,
    -190.00,
    -195.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000095',
    'male',
    74,
    'open',
    73.95,
    150.00,
    -162.50,
    162.50,
    -85.00,
    90.00,
    -95.00,
    150.00,
    152.50,
    -170.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000501',
    'male',
    74,
    'open',
    66.85,
    125.00,
    127.50,
    135.00,
    -75.00,
    -77.50,
    -77.50,
    145.00,
    147.50,
    162.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000282',
    'male',
    74,
    'open',
    72,
    170.00,
    180.00,
    -185.00,
    75.00,
    85.00,
    92.50,
    -205.00,
    -205.00,
    -205.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000493',
    'male',
    74,
    'jr',
    73.15,
    190.00,
    200.00,
    0.00,
    120.00,
    -127.50,
    0.00,
    -230.00,
    250.00,
    -265.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'Team BFH'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000402',
    'male',
    74,
    'jr',
    71.2,
    140.00,
    160.00,
    172.50,
    90.00,
    97.50,
    -105.00,
    190.00,
    205.00,
    225.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000182',
    'male',
    83,
    'open',
    81.2,
    235.00,
    245.00,
    0.00,
    142.50,
    -150.00,
    0.00,
    240.00,
    255.00,
    265.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000114',
    'male',
    83,
    'open',
    77.45,
    225.00,
    232.50,
    0.00,
    127.50,
    130.00,
    -132.50,
    265.00,
    277.50,
    282.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000011',
    'male',
    83,
    'open',
    80.65,
    225.00,
    235.00,
    0.00,
    135.00,
    -145.00,
    0.00,
    240.00,
    260.00,
    -277.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000524',
    'male',
    83,
    'open',
    82.2,
    175.00,
    185.00,
    195.00,
    100.00,
    102.50,
    115.00,
    180.00,
    195.00,
    210.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000516',
    'male',
    83,
    'open',
    80.65,
    -185.00,
    185.00,
    -192.50,
    122.50,
    -125.00,
    -127.50,
    192.50,
    202.50,
    -217.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000023',
    'male',
    83,
    'open',
    82.55,
    -165.00,
    170.00,
    -180.00,
    70.00,
    72.50,
    -77.50,
    190.00,
    205.00,
    -212.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000036',
    'male',
    83,
    'jr',
    78.55,
    210.00,
    220.00,
    225.00,
    110.00,
    117.50,
    0.00,
    260.00,
    -270.00,
    -280.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000072',
    'male',
    83,
    'subjr',
    82.5,
    130.00,
    140.00,
    150.00,
    95.00,
    102.50,
    -107.50,
    130.00,
    140.00,
    147.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000002',
    'male',
    93,
    'open',
    92.45,
    225.00,
    237.50,
    245.00,
    -120.00,
    127.50,
    -132.50,
    265.00,
    285.00,
    300.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000208',
    'male',
    93,
    'open',
    91.8,
    220.00,
    235.00,
    -245.00,
    140.00,
    155.00,
    160.00,
    235.00,
    0.00,
    -250.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000227',
    'male',
    93,
    'open',
    88.15,
    210.00,
    220.00,
    230.00,
    95.00,
    -105.00,
    105.00,
    215.00,
    230.00,
    -240.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000313',
    'male',
    93,
    'open',
    92.7,
    190.00,
    -210.00,
    -210.00,
    115.00,
    122.50,
    127.50,
    220.00,
    232.50,
    -250.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000513',
    'male',
    93,
    'open',
    89,
    165.00,
    175.00,
    -185.00,
    115.00,
    122.50,
    127.50,
    190.00,
    200.00,
    210.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000510',
    'male',
    93,
    'open',
    89.55,
    145.00,
    0.00,
    170.00,
    87.50,
    95.00,
    -100.00,
    180.00,
    195.00,
    205.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000505',
    'male',
    93,
    'open',
    91.85,
    -150.00,
    150.00,
    160.00,
    95.00,
    105.00,
    -112.50,
    150.00,
    -165.00,
    -165.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000502',
    'male',
    93,
    'jr',
    89.65,
    195.00,
    200.00,
    0.00,
    90.00,
    95.00,
    97.50,
    240.00,
    245.00,
    -250.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000520',
    'male',
    93,
    'jr',
    89.65,
    175.00,
    182.50,
    190.00,
    90.00,
    92.50,
    100.00,
    205.00,
    215.00,
    225.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000515',
    'male',
    93,
    'jr',
    92.55,
    170.00,
    185.00,
    195.00,
    110.00,
    120.00,
    -130.00,
    180.00,
    200.00,
    -220.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000514',
    'male',
    105,
    'open',
    99.3,
    180.00,
    195.00,
    200.00,
    110.00,
    117.50,
    0.00,
    220.00,
    -240.00,
    -250.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000118',
    'male',
    105,
    'jr',
    103.9,
    240.00,
    255.00,
    -270.00,
    157.50,
    165.00,
    0.00,
    265.00,
    280.00,
    -290.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000277',
    'male',
    120,
    'open',
    113.5,
    215.00,
    225.00,
    0.00,
    155.00,
    162.50,
    -167.50,
    250.00,
    260.00,
    265.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000527',
    'male',
    120,
    'jr',
    106,
    175.00,
    185.00,
    195.00,
    105.00,
    115.00,
    125.00,
    -205.00,
    220.00,
    232.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000512',
    'female',
    47,
    'open',
    46.3,
    90.00,
    97.50,
    0.00,
    35.00,
    40.00,
    0.00,
    120.00,
    -130.00,
    -130.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000427',
    'female',
    47,
    'open',
    46.6,
    -70.00,
    75.00,
    77.50,
    25.00,
    -30.00,
    -30.00,
    100.00,
    112.50,
    -117.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000499',
    'female',
    47,
    'open',
    45.5,
    105.00,
    112.50,
    -117.50,
    -50.00,
    -50.00,
    -50.00,
    115.00,
    122.50,
    -130.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000511',
    'female',
    47,
    'jr',
    46.95,
    65.00,
    -72.50,
    72.50,
    -37.50,
    -37.50,
    -37.50,
    100.00,
    105.00,
    110.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000525',
    'female',
    52,
    'open',
    51.45,
    -75.00,
    77.50,
    -82.50,
    40.00,
    42.50,
    -47.50,
    97.50,
    0.00,
    117.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000067',
    'female',
    52,
    'open',
    50.55,
    72.50,
    77.50,
    82.50,
    35.00,
    -40.00,
    -40.00,
    110.00,
    117.50,
    -122.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000237',
    'female',
    57,
    'open',
    55,
    90.00,
    102.50,
    107.50,
    47.50,
    -52.50,
    52.50,
    110.00,
    120.00,
    -130.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000495',
    'female',
    57,
    'jr',
    56.45,
    90.00,
    100.00,
    -107.50,
    45.00,
    -50.00,
    -50.00,
    -125.00,
    130.00,
    140.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000137',
    'female',
    57,
    'subjr',
    54.8,
    80.00,
    90.00,
    -100.00,
    60.00,
    -65.00,
    -65.00,
    80.00,
    95.00,
    110.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000521',
    'female',
    63,
    'open',
    60.25,
    80.00,
    90.00,
    100.00,
    32.50,
    40.00,
    45.00,
    110.00,
    117.50,
    125.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000522',
    'female',
    63,
    'open',
    61.3,
    90.00,
    95.00,
    100.00,
    40.00,
    42.50,
    -45.00,
    110.00,
    117.50,
    -125.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000418',
    'female',
    76,
    'open',
    73.75,
    90.00,
    95.00,
    100.00,
    37.50,
    -42.50,
    -42.50,
    105.00,
    107.50,
    115.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Danang'),
    'VPF000523',
    'female',
    84,
    'open',
    82.2,
    100.00,
    107.50,
    115.00,
    50.00,
    52.50,
    -55.00,
    110.00,
    120.00,
    127.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000176',
    'male',
    59,
    'open',
    58.2,
    175.00,
    180.00,
    0.00,
    110.00,
    115.00,
    117.50,
    180.00,
    -190.00,
    -190.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000440',
    'male',
    59,
    'open',
    57.85,
    147.50,
    157.50,
    -162.50,
    97.50,
    105.00,
    -112.50,
    192.50,
    205.00,
    -215.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000073',
    'male',
    59,
    'open',
    58.85,
    150.00,
    -160.00,
    -160.00,
    105.00,
    107.50,
    -112.50,
    175.00,
    -185.00,
    185.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000103',
    'male',
    59,
    'jr',
    58.1,
    150.00,
    160.00,
    170.00,
    80.00,
    95.00,
    105.00,
    200.00,
    210.00,
    -220.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000409',
    'male',
    59,
    'jr',
    58.45,
    135.00,
    -137.50,
    155.00,
    90.00,
    100.00,
    102.50,
    170.00,
    180.00,
    -195.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000312',
    'male',
    59,
    'subjr',
    58.4,
    135.00,
    140.00,
    0.00,
    70.00,
    77.50,
    82.50,
    175.00,
    185.00,
    -195.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000547',
    'male',
    66,
    'open',
    65.6,
    185.00,
    -195.00,
    -195.00,
    105.00,
    107.50,
    115.00,
    210.00,
    225.00,
    -240.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000076',
    'male',
    66,
    'open',
    65.05,
    152.50,
    162.50,
    172.50,
    90.00,
    97.50,
    -102.50,
    212.50,
    222.50,
    -227.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000018',
    'male',
    66,
    'open',
    65.05,
    150.00,
    152.50,
    162.50,
    100.00,
    -110.00,
    -110.00,
    195.00,
    205.00,
    -210.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000007',
    'male',
    66,
    'jr',
    65.3,
    172.50,
    180.00,
    -185.00,
    112.50,
    117.50,
    -125.00,
    190.00,
    210.00,
    217.50,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000211',
    'male',
    66,
    'jr',
    64.85,
    170.00,
    177.50,
    -185.00,
    105.00,
    112.50,
    -117.50,
    -212.50,
    -217.50,
    217.50,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'RMIT STRENGTH CLUB'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000553',
    'male',
    66,
    'jr',
    65,
    130.00,
    140.00,
    -150.00,
    90.00,
    97.50,
    -105.00,
    175.00,
    -185.00,
    -190.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000461',
    'male',
    66,
    'subjr',
    63.85,
    150.00,
    160.00,
    -162.50,
    -95.00,
    95.00,
    -110.00,
    185.00,
    195.00,
    -210.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000038',
    'male',
    66,
    'subjr',
    64.55,
    120.00,
    -122.50,
    -135.00,
    65.00,
    70.00,
    75.00,
    150.00,
    170.00,
    -180.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000534',
    'male',
    74,
    'open',
    71.4,
    205.00,
    215.00,
    222.50,
    115.00,
    122.50,
    -127.50,
    265.00,
    275.00,
    282.50,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000109',
    'male',
    74,
    'open',
    72,
    180.00,
    190.00,
    -200.00,
    140.00,
    147.50,
    155.00,
    240.00,
    252.50,
    267.50,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000574',
    'male',
    74,
    'open',
    73.55,
    200.00,
    207.50,
    215.00,
    125.00,
    130.00,
    -135.00,
    255.00,
    267.50,
    -277.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000570',
    'male',
    74,
    'open',
    73.7,
    197.50,
    202.50,
    207.50,
    117.50,
    125.00,
    130.00,
    237.50,
    247.50,
    -262.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000100',
    'male',
    74,
    'open',
    70.4,
    200.00,
    212.50,
    -222.50,
    130.00,
    137.50,
    140.00,
    215.00,
    227.50,
    -237.50,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000546',
    'male',
    74,
    'open',
    73.7,
    200.00,
    210.00,
    -220.00,
    130.00,
    137.50,
    -142.50,
    -220.00,
    220.00,
    0.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000424',
    'male',
    74,
    'open',
    73.85,
    170.00,
    185.00,
    190.00,
    110.00,
    125.00,
    -135.00,
    225.00,
    240.00,
    -265.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000065',
    'male',
    74,
    'open',
    73.95,
    190.00,
    0.00,
    -200.00,
    120.00,
    125.00,
    -130.00,
    235.00,
    -245.00,
    -245.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000163',
    'male',
    74,
    'open',
    72.95,
    170.00,
    -185.00,
    185.00,
    120.00,
    127.50,
    -140.00,
    205.00,
    215.00,
    230.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000140',
    'male',
    74,
    'open',
    73.55,
    160.00,
    167.50,
    -177.50,
    110.00,
    117.50,
    120.00,
    225.00,
    237.50,
    245.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000097',
    'male',
    74,
    'open',
    72.95,
    180.00,
    -192.50,
    -192.50,
    100.00,
    107.50,
    -112.50,
    -220.00,
    220.00,
    -232.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000541',
    'male',
    74,
    'open',
    72.6,
    170.00,
    -180.00,
    185.00,
    105.00,
    112.50,
    -117.50,
    200.00,
    -215.00,
    -220.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000034',
    'male',
    74,
    'open',
    72.8,
    160.00,
    170.00,
    -175.00,
    95.00,
    102.50,
    107.50,
    190.00,
    200.00,
    -210.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000576',
    'male',
    74,
    'jr',
    73.8,
    185.00,
    200.00,
    0.00,
    125.00,
    135.00,
    -140.00,
    205.00,
    225.00,
    -245.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    8
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000568',
    'male',
    74,
    'jr',
    71.35,
    147.50,
    160.00,
    170.00,
    95.00,
    102.50,
    105.00,
    187.50,
    200.00,
    207.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000542',
    'male',
    74,
    'jr',
    71.7,
    140.00,
    150.00,
    -157.50,
    85.00,
    100.00,
    -105.00,
    130.00,
    190.00,
    192.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000532',
    'male',
    74,
    'jr',
    71.5,
    -150.00,
    -150.00,
    150.00,
    95.00,
    100.00,
    -105.00,
    165.00,
    -190.00,
    190.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000561',
    'male',
    74,
    'jr',
    71.85,
    135.00,
    140.00,
    147.50,
    85.00,
    -90.00,
    -90.00,
    165.00,
    172.50,
    -180.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'RMIT STRENGTH CLUB'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000025',
    'male',
    74,
    'jr',
    72,
    145.00,
    -150.00,
    -150.00,
    85.00,
    -92.50,
    -92.50,
    -155.00,
    157.50,
    -167.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000421',
    'male',
    74,
    'jr',
    73.8,
    110.00,
    115.00,
    120.00,
    60.00,
    65.00,
    67.50,
    150.00,
    162.50,
    170.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000556',
    'male',
    74,
    'subjr',
    71.1,
    140.00,
    150.00,
    157.50,
    70.00,
    75.00,
    -80.00,
    155.00,
    165.00,
    175.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000395',
    'male',
    74,
    'subjr',
    73.85,
    105.00,
    112.50,
    117.50,
    -67.50,
    70.00,
    75.00,
    145.00,
    155.00,
    -165.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000537',
    'male',
    83,
    'open',
    80.75,
    235.00,
    -250.00,
    250.00,
    145.00,
    155.00,
    162.50,
    270.00,
    285.00,
    -300.00,
    '1',
    '4',
    'I',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000084',
    'male',
    83,
    'open',
    82.5,
    197.50,
    210.00,
    217.50,
    125.00,
    132.50,
    140.00,
    250.00,
    262.50,
    -275.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000107',
    'male',
    83,
    'open',
    81.4,
    192.50,
    202.50,
    -212.50,
    127.50,
    132.50,
    137.50,
    230.00,
    -240.00,
    247.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000529',
    'male',
    83,
    'open',
    81.6,
    200.00,
    -207.50,
    207.50,
    130.00,
    137.50,
    -142.50,
    225.00,
    237.50,
    -247.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000549',
    'male',
    83,
    'open',
    80.4,
    175.00,
    182.50,
    190.00,
    140.00,
    -145.00,
    145.00,
    212.50,
    220.00,
    230.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000538',
    'male',
    83,
    'open',
    78.65,
    170.00,
    180.00,
    185.00,
    100.00,
    115.00,
    125.00,
    210.00,
    220.00,
    240.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000269',
    'male',
    83,
    'open',
    81.1,
    175.00,
    185.00,
    -192.50,
    120.00,
    125.00,
    -130.00,
    210.00,
    220.00,
    -225.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000273',
    'male',
    83,
    'open',
    77.7,
    150.00,
    -160.00,
    160.00,
    100.00,
    -110.00,
    110.00,
    205.00,
    220.00,
    -230.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000575',
    'male',
    83,
    'open',
    80.15,
    -160.00,
    160.00,
    -162.50,
    100.00,
    105.00,
    0.00,
    200.00,
    0.00,
    0.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000536',
    'male',
    83,
    'open',
    76.95,
    125.00,
    135.00,
    140.00,
    90.00,
    100.00,
    -105.00,
    130.00,
    145.00,
    160.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000573',
    'male',
    83,
    'open',
    81.8,
    -190.00,
    -190.00,
    -190.00,
    125.00,
    -132.50,
    -132.50,
    205.00,
    215.00,
    -225.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000274',
    'male',
    83,
    'open',
    81.45,
    175.00,
    -182.50,
    -182.50,
    -115.00,
    -122.50,
    -122.50,
    205.00,
    215.00,
    -227.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000543',
    'male',
    83,
    'jr',
    80.45,
    210.00,
    220.00,
    -227.50,
    110.00,
    117.50,
    122.50,
    230.00,
    237.50,
    247.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000535',
    'male',
    83,
    'jr',
    81,
    207.50,
    215.00,
    -220.00,
    125.00,
    -135.00,
    -135.00,
    215.00,
    222.50,
    -242.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000528',
    'male',
    83,
    'jr',
    82.35,
    170.00,
    182.50,
    192.50,
    112.50,
    125.00,
    130.00,
    180.00,
    190.00,
    202.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000017',
    'male',
    83,
    'jr',
    79.7,
    180.00,
    -190.00,
    0.00,
    90.00,
    95.00,
    100.00,
    220.00,
    230.00,
    242.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000348',
    'male',
    83,
    'jr',
    81.25,
    190.00,
    -202.50,
    -202.50,
    95.00,
    102.50,
    -110.00,
    205.00,
    215.00,
    227.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000567',
    'male',
    83,
    'jr',
    80.65,
    160.00,
    170.00,
    -180.00,
    100.00,
    -107.50,
    -107.50,
    190.00,
    205.00,
    -212.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000558',
    'male',
    83,
    'jr',
    81.5,
    150.00,
    -160.00,
    -160.00,
    90.00,
    95.00,
    100.00,
    200.00,
    207.50,
    215.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000296',
    'male',
    83,
    'jr',
    75.8,
    135.00,
    145.00,
    155.00,
    67.50,
    72.50,
    75.00,
    155.00,
    165.00,
    175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000037',
    'male',
    83,
    'jr',
    81.3,
    -200.00,
    -210.00,
    -210.00,
    -120.00,
    -120.00,
    -120.00,
    -230.00,
    -230.00,
    -230.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000557',
    'male',
    83,
    'jr',
    81.5,
    -190.00,
    -190.00,
    -190.00,
    110.00,
    117.50,
    -125.00,
    -210.00,
    -210.00,
    -210.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000244',
    'male',
    83,
    'jr',
    82.15,
    -167.50,
    -175.00,
    -175.00,
    95.00,
    102.50,
    -107.50,
    -225.00,
    -240.00,
    -255.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'RMIT STRENGTH CLUB'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000485',
    'male',
    83,
    'subjr',
    82.95,
    210.00,
    222.50,
    -232.50,
    -95.00,
    -95.00,
    95.00,
    140.00,
    -160.00,
    162.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000552',
    'male',
    83,
    'subjr',
    80.9,
    145.00,
    160.00,
    -175.00,
    57.50,
    60.00,
    62.50,
    160.00,
    180.00,
    -257.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000555',
    'male',
    93,
    'open',
    85.2,
    215.00,
    225.00,
    235.00,
    140.00,
    155.00,
    -165.00,
    230.00,
    245.00,
    -255.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000544',
    'male',
    93,
    'open',
    90.15,
    200.00,
    212.50,
    225.00,
    115.00,
    120.00,
    125.00,
    220.00,
    232.50,
    250.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000166',
    'male',
    93,
    'open',
    90.55,
    200.00,
    207.50,
    -212.50,
    125.00,
    -127.50,
    -127.50,
    230.00,
    -240.00,
    -240.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000172',
    'male',
    93,
    'jr',
    93,
    205.00,
    215.00,
    0.00,
    155.00,
    165.00,
    -170.00,
    255.00,
    270.00,
    0.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000569',
    'male',
    93,
    'jr',
    91.1,
    195.00,
    205.00,
    210.00,
    100.00,
    107.50,
    -115.00,
    200.00,
    212.50,
    215.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000571',
    'male',
    93,
    'jr',
    91.75,
    170.00,
    180.00,
    190.00,
    100.00,
    107.50,
    117.50,
    200.00,
    -220.00,
    225.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'RMIT STRENGTH CLUB'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000551',
    'male',
    93,
    'subjr',
    91.45,
    200.00,
    220.00,
    240.00,
    140.00,
    142.50,
    160.00,
    -280.00,
    -300.00,
    300.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000420',
    'male',
    93,
    'subjr',
    86.45,
    160.00,
    180.00,
    200.00,
    90.00,
    100.00,
    -110.00,
    200.00,
    220.00,
    240.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000010',
    'male',
    93,
    'mas1',
    92.05,
    225.00,
    235.00,
    245.00,
    145.00,
    155.00,
    -162.50,
    240.00,
    250.00,
    260.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000548',
    'male',
    105,
    'open',
    98.2,
    -242.50,
    250.00,
    260.00,
    142.50,
    152.50,
    -157.50,
    250.00,
    260.00,
    270.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000116',
    'male',
    105,
    'open',
    95.6,
    -255.00,
    -255.00,
    255.00,
    115.00,
    120.00,
    -125.00,
    220.00,
    230.00,
    -240.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000565',
    'male',
    105,
    'open',
    104.9,
    -200.00,
    200.00,
    0.00,
    180.00,
    190.00,
    -200.00,
    200.00,
    0.00,
    0.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000355',
    'male',
    105,
    'open',
    94.65,
    200.00,
    215.00,
    0.00,
    105.00,
    0.00,
    0.00,
    230.00,
    245.00,
    0.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000531',
    'male',
    105,
    'jr',
    102.7,
    185.00,
    200.00,
    -207.50,
    100.00,
    110.00,
    -115.00,
    210.00,
    225.00,
    -240.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000106',
    'male',
    120,
    'open',
    110.5,
    220.00,
    230.00,
    237.50,
    157.50,
    -165.00,
    -165.00,
    225.00,
    235.00,
    245.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000101',
    'male',
    999,
    'open',
    124,
    230.00,
    245.00,
    260.00,
    180.00,
    190.00,
    0.00,
    260.00,
    270.00,
    -280.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000154',
    'female',
    47,
    'open',
    46.3,
    95.00,
    102.50,
    107.50,
    57.50,
    62.50,
    65.00,
    120.00,
    130.00,
    140.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000550',
    'female',
    47,
    'open',
    46.5,
    100.00,
    102.50,
    105.00,
    -52.50,
    52.50,
    -55.00,
    -135.00,
    135.00,
    140.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000380',
    'female',
    52,
    'open',
    49.3,
    115.00,
    122.50,
    125.00,
    70.00,
    -75.00,
    -75.00,
    145.00,
    155.00,
    160.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000554',
    'female',
    52,
    'open',
    51.35,
    110.00,
    117.50,
    122.50,
    50.00,
    55.00,
    60.00,
    127.50,
    135.00,
    140.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'TEAM BUCKY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000562',
    'female',
    52,
    'open',
    50.6,
    -95.00,
    95.00,
    -102.50,
    45.00,
    50.00,
    55.00,
    110.00,
    120.00,
    122.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000563',
    'female',
    52,
    'open',
    49.85,
    85.00,
    -90.00,
    92.50,
    52.50,
    55.00,
    -57.50,
    110.00,
    -115.00,
    -117.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000132',
    'female',
    52,
    'jr',
    51.8,
    107.50,
    115.00,
    -120.00,
    -50.00,
    50.00,
    -57.50,
    130.00,
    140.00,
    -145.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000559',
    'female',
    52,
    'jr',
    51.95,
    70.00,
    75.00,
    80.00,
    40.00,
    45.00,
    -47.50,
    85.00,
    -90.00,
    0.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'RMIT STRENGTH CLUB'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000069',
    'female',
    57,
    'open',
    53.3,
    107.50,
    115.00,
    -120.00,
    47.50,
    50.00,
    -52.50,
    137.50,
    150.00,
    160.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000255',
    'female',
    57,
    'open',
    55.45,
    100.00,
    107.50,
    112.50,
    47.50,
    52.50,
    55.00,
    110.00,
    122.50,
    -137.50,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000564',
    'female',
    57,
    'jr',
    56.85,
    125.00,
    132.50,
    135.00,
    50.00,
    57.50,
    60.00,
    172.50,
    -177.50,
    0.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000099',
    'female',
    57,
    'jr',
    55.25,
    100.00,
    105.00,
    -110.00,
    -57.50,
    57.50,
    60.00,
    115.00,
    122.50,
    127.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000540',
    'female',
    57,
    'jr',
    55.45,
    75.00,
    82.50,
    87.50,
    40.00,
    -42.50,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000526',
    'female',
    57,
    'mas1',
    56.6,
    85.00,
    90.00,
    95.00,
    45.00,
    50.00,
    -55.00,
    0.00,
    0.00,
    0.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000169',
    'female',
    63,
    'open',
    62.2,
    105.00,
    112.50,
    -120.00,
    60.00,
    65.00,
    -67.50,
    0.00,
    0.00,
    0.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000530',
    'female',
    63,
    'jr',
    61.35,
    85.00,
    90.00,
    -95.00,
    30.00,
    35.00,
    -40.00,
    85.00,
    95.00,
    -105.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000137',
    'female',
    63,
    'subjr',
    57.05,
    90.00,
    105.00,
    -112.50,
    57.50,
    65.00,
    -70.00,
    110.00,
    125.00,
    140.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000183',
    'female',
    69,
    'open',
    65.35,
    105.00,
    -112.50,
    -112.50,
    45.00,
    -50.00,
    50.00,
    115.00,
    125.00,
    135.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000572',
    'female',
    69,
    'open',
    68.85,
    90.00,
    100.00,
    -105.00,
    55.00,
    -60.00,
    60.00,
    115.00,
    125.00,
    -132.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Hanoi'),
    'VPF000324',
    'female',
    69,
    'jr',
    65.95,
    105.00,
    115.00,
    122.50,
    60.00,
    -67.50,
    -67.50,
    125.00,
    135.00,
    145.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000613',
    'male',
    53,
    'subjr',
    51.06,
    80.00,
    87.50,
    92.50,
    40.00,
    47.50,
    -50.00,
    95.00,
    -107.50,
    107.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000619',
    'male',
    59,
    'subjr',
    57.16,
    100.00,
    110.00,
    -115.00,
    -70.00,
    72.50,
    77.50,
    137.50,
    147.50,
    -160.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000617',
    'male',
    66,
    'open',
    65.62,
    220.00,
    -230.00,
    0.00,
    135.00,
    140.00,
    0.00,
    245.00,
    -255.00,
    260.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000605',
    'male',
    66,
    'open',
    65.62,
    170.00,
    182.50,
    190.00,
    -112.50,
    115.00,
    -120.00,
    -227.50,
    227.50,
    -247.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000614',
    'male',
    66,
    'open',
    65.15,
    175.00,
    -187.50,
    187.50,
    105.00,
    112.50,
    -120.00,
    205.00,
    215.00,
    220.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000179',
    'male',
    66,
    'open',
    63.54,
    157.50,
    165.00,
    172.50,
    117.50,
    -122.50,
    125.00,
    190.00,
    205.00,
    -220.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000579',
    'male',
    66,
    'open',
    65.3,
    140.00,
    150.00,
    -155.00,
    90.00,
    -97.50,
    -100.00,
    160.00,
    170.00,
    180.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000103',
    'male',
    66,
    'jr',
    60,
    175.00,
    187.50,
    200.00,
    100.00,
    110.00,
    -115.00,
    205.00,
    220.00,
    230.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000108',
    'male',
    66,
    'jr',
    63.76,
    165.00,
    175.00,
    185.00,
    115.00,
    122.50,
    127.50,
    205.00,
    215.00,
    -222.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000020',
    'male',
    66,
    'jr',
    64.14,
    160.00,
    170.00,
    -175.00,
    105.00,
    112.50,
    -120.00,
    200.00,
    210.00,
    -215.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000401',
    'male',
    66,
    'jr',
    63.72,
    155.00,
    165.00,
    170.00,
    90.00,
    -97.50,
    -97.50,
    180.00,
    -192.50,
    192.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000584',
    'male',
    66,
    'jr',
    64.38,
    130.00,
    132.50,
    -145.00,
    85.00,
    -90.00,
    0.00,
    160.00,
    170.00,
    175.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000461',
    'male',
    66,
    'subjr',
    62.68,
    150.00,
    152.50,
    162.50,
    95.00,
    100.00,
    -105.00,
    190.00,
    200.00,
    -205.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000598',
    'male',
    66,
    'subjr',
    64.48,
    145.00,
    152.50,
    -155.00,
    67.50,
    -72.50,
    -72.50,
    177.50,
    182.50,
    -190.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000330',
    'male',
    66,
    'subjr',
    65.42,
    145.00,
    152.50,
    -160.00,
    60.00,
    -67.50,
    -67.50,
    177.50,
    -182.50,
    -182.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000411',
    'male',
    66,
    'subjr',
    64.92,
    -135.00,
    140.00,
    0.00,
    72.50,
    77.50,
    -82.50,
    140.00,
    0.00,
    0.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000507',
    'male',
    66,
    'subjr',
    65.56,
    120.00,
    -130.00,
    -130.00,
    65.00,
    -70.00,
    -70.00,
    135.00,
    -145.00,
    -155.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000454',
    'male',
    66,
    'mas1',
    64.18,
    97.50,
    105.00,
    0.00,
    55.00,
    60.00,
    62.50,
    107.50,
    120.00,
    125.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000175',
    'male',
    74,
    'open',
    71.76,
    240.00,
    -242.50,
    265.00,
    125.00,
    132.50,
    -140.00,
    -265.00,
    -275.00,
    275.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000356',
    'male',
    74,
    'open',
    73.08,
    212.50,
    222.50,
    -232.50,
    -112.50,
    -120.00,
    120.00,
    270.00,
    282.50,
    290.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000221',
    'male',
    74,
    'open',
    73.1,
    185.00,
    -195.00,
    200.00,
    -112.50,
    112.50,
    117.50,
    220.00,
    232.50,
    -237.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000151',
    'male',
    74,
    'open',
    72.78,
    197.50,
    207.50,
    -215.00,
    110.00,
    117.50,
    -122.50,
    210.00,
    -217.50,
    -217.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000282',
    'male',
    74,
    'open',
    72.64,
    165.00,
    180.00,
    0.00,
    80.00,
    90.00,
    -100.00,
    190.00,
    -205.00,
    -215.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000597',
    'male',
    74,
    'jr',
    72.88,
    185.00,
    195.00,
    -205.00,
    145.00,
    152.50,
    160.00,
    220.00,
    235.00,
    -247.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000583',
    'male',
    74,
    'jr',
    71.24,
    150.00,
    157.50,
    170.00,
    97.50,
    -100.00,
    -102.50,
    185.00,
    195.00,
    -210.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000453',
    'male',
    74,
    'subjr',
    73.56,
    160.00,
    170.00,
    175.00,
    90.00,
    -95.00,
    95.00,
    200.00,
    215.00,
    230.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000451',
    'male',
    74,
    'subjr',
    72.12,
    155.00,
    162.50,
    -170.00,
    90.00,
    95.00,
    -100.00,
    185.00,
    195.00,
    -222.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000537',
    'male',
    83,
    'open',
    81.66,
    -235.00,
    235.00,
    0.00,
    140.00,
    150.00,
    160.00,
    265.00,
    -270.00,
    0.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000024',
    'male',
    83,
    'open',
    82.46,
    205.00,
    220.00,
    227.50,
    145.00,
    152.50,
    -157.50,
    232.50,
    247.50,
    255.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000254',
    'male',
    83,
    'open',
    81.96,
    215.00,
    225.00,
    -232.50,
    135.00,
    -142.50,
    -142.50,
    235.00,
    -245.00,
    -245.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000446',
    'male',
    83,
    'open',
    82.26,
    -190.00,
    200.00,
    -207.50,
    135.00,
    -142.50,
    142.50,
    215.00,
    225.00,
    235.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000610',
    'male',
    83,
    'open',
    82.8,
    182.50,
    195.00,
    -205.00,
    120.00,
    -127.50,
    127.50,
    220.00,
    232.50,
    -240.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000591',
    'male',
    83,
    'open',
    74.44,
    147.50,
    -155.00,
    -160.00,
    87.50,
    95.00,
    -100.00,
    -175.00,
    185.00,
    195.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000593',
    'male',
    83,
    'jr',
    80.44,
    237.50,
    252.50,
    262.50,
    165.00,
    0.00,
    0.00,
    280.00,
    295.00,
    300.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000603',
    'male',
    83,
    'jr',
    81,
    200.00,
    210.00,
    215.00,
    115.00,
    125.00,
    132.50,
    245.00,
    255.00,
    262.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000588',
    'male',
    83,
    'jr',
    82.18,
    -195.00,
    195.00,
    -210.00,
    120.00,
    127.50,
    -135.00,
    225.00,
    235.00,
    240.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000037',
    'male',
    83,
    'jr',
    82.06,
    185.00,
    195.00,
    205.00,
    120.00,
    -130.00,
    -130.00,
    -220.00,
    -235.00,
    235.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000611',
    'male',
    83,
    'jr',
    82.86,
    152.50,
    162.50,
    170.00,
    80.00,
    85.00,
    -90.00,
    180.00,
    190.00,
    -200.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000122',
    'male',
    83,
    'jr',
    81.66,
    205.00,
    -210.00,
    -210.00,
    115.00,
    -122.50,
    -122.50,
    -225.00,
    -230.00,
    -230.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000003',
    'male',
    83,
    'subjr',
    81.78,
    175.00,
    187.50,
    200.00,
    90.00,
    97.50,
    102.50,
    205.00,
    220.00,
    230.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000478',
    'male',
    83,
    'subjr',
    77.16,
    152.50,
    162.50,
    -172.50,
    87.50,
    92.50,
    -100.00,
    152.50,
    162.50,
    175.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000587',
    'male',
    93,
    'open',
    90.9,
    -247.50,
    255.00,
    265.00,
    145.00,
    155.00,
    160.00,
    265.00,
    275.00,
    280.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000581',
    'male',
    93,
    'open',
    92.46,
    180.00,
    200.00,
    220.00,
    140.00,
    152.50,
    172.50,
    250.00,
    270.00,
    302.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000566',
    'male',
    93,
    'open',
    90.9,
    265.00,
    -275.00,
    -275.00,
    155.00,
    -162.50,
    162.50,
    250.00,
    265.00,
    -275.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000589',
    'male',
    93,
    'open',
    90.98,
    225.00,
    237.50,
    245.00,
    132.50,
    137.50,
    145.00,
    230.00,
    240.00,
    -250.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000602',
    'male',
    93,
    'open',
    88.22,
    215.00,
    225.00,
    -235.00,
    130.00,
    137.50,
    140.00,
    120.00,
    170.00,
    200.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000615',
    'male',
    93,
    'open',
    91.64,
    165.00,
    -167.50,
    177.50,
    110.00,
    117.50,
    -122.50,
    200.00,
    207.50,
    215.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000545',
    'male',
    93,
    'open',
    91.72,
    155.00,
    165.00,
    175.00,
    117.50,
    125.00,
    132.50,
    190.00,
    200.00,
    -202.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000618',
    'male',
    93,
    'jr',
    90.18,
    195.00,
    205.00,
    215.00,
    125.00,
    135.00,
    140.00,
    210.00,
    222.50,
    230.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000582',
    'male',
    93,
    'jr',
    86.48,
    190.00,
    -197.50,
    -197.50,
    110.00,
    115.00,
    117.50,
    200.00,
    210.00,
    215.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000580',
    'male',
    93,
    'jr',
    89.56,
    180.00,
    190.00,
    -200.00,
    102.50,
    110.00,
    -115.00,
    -180.00,
    -180.00,
    -180.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000381',
    'male',
    93,
    'subjr',
    91.16,
    -175.00,
    180.00,
    200.00,
    97.50,
    107.50,
    115.00,
    -210.00,
    -210.00,
    230.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000009',
    'male',
    105,
    'open',
    102.82,
    240.00,
    0.00,
    250.00,
    135.00,
    142.50,
    -150.00,
    -235.00,
    235.00,
    -245.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000487',
    'male',
    105,
    'open',
    95.4,
    -205.00,
    205.00,
    -215.00,
    130.00,
    135.00,
    140.00,
    235.00,
    250.00,
    -255.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000621',
    'male',
    105,
    'open',
    96.6,
    -215.00,
    215.00,
    0.00,
    150.00,
    0.00,
    0.00,
    230.00,
    0.00,
    0.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000609',
    'male',
    105,
    'jr',
    98.08,
    172.50,
    185.00,
    195.00,
    97.50,
    105.00,
    110.00,
    232.50,
    247.50,
    260.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000586',
    'male',
    120,
    'open',
    105.18,
    205.00,
    217.50,
    227.50,
    -135.00,
    150.00,
    160.00,
    235.00,
    250.00,
    -265.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000600',
    'male',
    120,
    'subjr',
    117.32,
    140.00,
    145.00,
    0.00,
    -130.00,
    130.00,
    135.00,
    145.00,
    0.00,
    0.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000620',
    'male',
    999,
    'open',
    120.52,
    270.00,
    280.00,
    285.00,
    170.00,
    -197.50,
    0.00,
    220.00,
    -275.00,
    275.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000499',
    'female',
    47,
    'open',
    45.82,
    100.00,
    -102.50,
    110.00,
    40.00,
    -50.00,
    -50.00,
    105.00,
    115.00,
    -132.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000577',
    'female',
    47,
    'jr',
    46.54,
    70.00,
    -77.50,
    -80.00,
    30.00,
    35.00,
    -40.00,
    90.00,
    100.00,
    107.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000607',
    'female',
    47,
    'jr',
    45.98,
    65.00,
    70.00,
    72.50,
    30.00,
    32.50,
    -37.50,
    65.00,
    72.50,
    77.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000249',
    'female',
    52,
    'open',
    51.44,
    115.00,
    120.00,
    122.50,
    50.00,
    55.00,
    -57.50,
    155.00,
    -162.50,
    -162.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000594',
    'female',
    52,
    'jr',
    50.14,
    67.50,
    77.50,
    85.00,
    35.00,
    -42.50,
    42.50,
    90.00,
    102.50,
    107.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000601',
    'female',
    52,
    'jr',
    51.48,
    70.00,
    80.00,
    -92.50,
    42.50,
    47.50,
    -50.00,
    90.00,
    97.50,
    107.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000595',
    'female',
    52,
    'jr',
    49.96,
    77.50,
    85.00,
    -90.00,
    -42.50,
    -42.50,
    -42.50,
    -85.00,
    85.00,
    -92.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000281',
    'female',
    57,
    'open',
    55.5,
    110.00,
    120.00,
    125.00,
    65.00,
    70.00,
    72.50,
    140.00,
    145.00,
    150.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000199',
    'female',
    57,
    'open',
    55.4,
    107.50,
    110.00,
    112.50,
    57.50,
    -62.50,
    62.50,
    135.00,
    -145.00,
    145.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000622',
    'female',
    57,
    'open',
    55.36,
    110.00,
    115.00,
    120.00,
    45.00,
    -52.50,
    52.50,
    120.00,
    -130.00,
    130.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000326',
    'female',
    57,
    'open',
    55.46,
    92.50,
    100.00,
    107.50,
    47.50,
    -52.50,
    -52.50,
    122.50,
    132.50,
    140.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000228',
    'female',
    57,
    'jr',
    56.2,
    110.00,
    -117.50,
    -120.00,
    45.00,
    -50.00,
    50.00,
    120.00,
    130.00,
    140.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000592',
    'female',
    57,
    'jr',
    56.54,
    -117.50,
    -125.00,
    -125.00,
    45.00,
    50.00,
    -52.50,
    125.00,
    135.00,
    142.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000606',
    'female',
    63,
    'open',
    62.18,
    125.00,
    132.50,
    -137.50,
    -50.00,
    52.50,
    57.50,
    140.00,
    150.00,
    157.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000608',
    'female',
    63,
    'open',
    61.64,
    100.00,
    107.50,
    -110.00,
    35.00,
    40.00,
    45.00,
    125.00,
    135.00,
    147.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000455',
    'female',
    63,
    'open',
    60.12,
    105.00,
    -115.00,
    115.00,
    47.50,
    50.00,
    52.50,
    115.00,
    125.00,
    130.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000173',
    'female',
    63,
    'open',
    62.3,
    95.00,
    102.50,
    -110.00,
    40.00,
    50.00,
    52.50,
    105.00,
    115.00,
    -125.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000751',
    'female',
    63,
    'open',
    61.74,
    97.50,
    -105.00,
    -105.00,
    45.00,
    50.00,
    -55.00,
    97.50,
    102.50,
    -115.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000599',
    'female',
    63,
    'jr',
    61.26,
    95.00,
    100.00,
    102.50,
    35.00,
    40.00,
    -45.00,
    120.00,
    140.00,
    147.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000612',
    'female',
    63,
    'subjr',
    61.76,
    82.50,
    87.50,
    92.50,
    27.50,
    32.50,
    -35.00,
    92.50,
    100.00,
    105.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000169',
    'female',
    69,
    'open',
    64.28,
    95.00,
    100.00,
    107.50,
    60.00,
    65.00,
    -70.00,
    120.00,
    -140.00,
    140.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000604',
    'female',
    69,
    'open',
    64.14,
    90.00,
    97.50,
    105.00,
    30.00,
    -40.00,
    -40.00,
    -105.00,
    105.00,
    -125.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000616',
    'female',
    69,
    'subjr',
    68.36,
    25.00,
    40.00,
    52.50,
    25.00,
    -27.50,
    -42.50,
    25.00,
    27.50,
    -75.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000578',
    'female',
    69,
    'subjr',
    71.68,
    90.00,
    95.00,
    -100.00,
    27.50,
    30.00,
    0.00,
    100.00,
    110.00,
    -115.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Qualifier 2024: Last Chance'),
    'VPF000585',
    'female',
    76,
    'jr',
    69.2,
    70.00,
    80.00,
    90.00,
    30.00,
    35.00,
    40.00,
    90.00,
    100.00,
    110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000738',
    'male',
    53,
    'jr',
    51.08,
    90.00,
    110.00,
    120.00,
    55.00,
    62.50,
    70.00,
    155.00,
    167.50,
    -180.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000403',
    'male',
    59,
    'open',
    55.64,
    125.00,
    135.00,
    -140.00,
    95.00,
    100.00,
    -105.00,
    165.00,
    170.00,
    -175.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000469',
    'male',
    59,
    'open',
    58.6,
    120.00,
    125.00,
    130.00,
    75.00,
    -85.00,
    -85.00,
    175.00,
    185.00,
    195.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000466',
    'male',
    59,
    'open',
    58.9,
    85.00,
    90.00,
    100.00,
    75.00,
    85.00,
    90.00,
    115.00,
    125.00,
    135.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000777',
    'male',
    59,
    'open',
    58.06,
    -150.00,
    -150.00,
    -150.00,
    -100.00,
    -100.00,
    0.00,
    -165.00,
    0.00,
    0.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000433',
    'male',
    59,
    'jr',
    57.18,
    135.00,
    140.00,
    150.00,
    -75.00,
    80.00,
    -85.00,
    175.00,
    -180.00,
    180.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000782',
    'male',
    59,
    'jr',
    54.28,
    125.00,
    132.50,
    140.00,
    87.50,
    95.00,
    97.50,
    160.00,
    170.00,
    -175.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000703',
    'male',
    59,
    'subjr',
    56.4,
    100.00,
    120.00,
    125.00,
    50.00,
    60.00,
    65.00,
    125.00,
    145.00,
    160.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000712',
    'male',
    59,
    'subjr',
    56.56,
    100.00,
    110.00,
    -120.00,
    -65.00,
    -65.00,
    -65.00,
    120.00,
    130.00,
    140.00,
    '1',
    '4',
    'K',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000719',
    'male',
    66,
    'open',
    65.34,
    170.00,
    180.00,
    -185.00,
    100.00,
    107.50,
    110.00,
    200.00,
    210.00,
    215.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000702',
    'male',
    66,
    'open',
    64.98,
    170.00,
    -180.00,
    180.00,
    95.00,
    -102.50,
    -102.50,
    -175.00,
    180.00,
    187.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000680',
    'male',
    66,
    'open',
    64,
    140.00,
    150.00,
    160.00,
    80.00,
    82.50,
    90.00,
    190.00,
    210.00,
    -215.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000790',
    'male',
    66,
    'open',
    65.5,
    142.50,
    150.00,
    155.00,
    112.50,
    -117.50,
    -117.50,
    172.50,
    182.50,
    -192.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000677',
    'male',
    66,
    'open',
    65.2,
    140.00,
    150.00,
    -155.00,
    85.00,
    -90.00,
    90.00,
    175.00,
    185.00,
    195.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000764',
    'male',
    66,
    'open',
    64.28,
    137.50,
    145.00,
    150.00,
    80.00,
    -85.00,
    -85.00,
    180.00,
    192.50,
    200.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000690',
    'male',
    66,
    'open',
    63.16,
    135.00,
    137.50,
    -155.00,
    70.00,
    -80.00,
    -82.50,
    167.50,
    -177.50,
    -182.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000720',
    'male',
    66,
    'open',
    65.52,
    -107.50,
    -107.50,
    107.50,
    -57.50,
    60.00,
    65.00,
    137.50,
    145.00,
    155.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000687',
    'male',
    66,
    'jr',
    64.26,
    155.00,
    157.50,
    165.00,
    100.00,
    105.00,
    107.50,
    175.00,
    185.00,
    197.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000743',
    'male',
    66,
    'jr',
    65.12,
    132.50,
    -145.00,
    145.00,
    102.50,
    110.00,
    -115.00,
    165.00,
    175.00,
    187.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000303',
    'male',
    66,
    'jr',
    64.66,
    132.50,
    140.00,
    142.50,
    102.50,
    105.00,
    107.50,
    170.00,
    180.00,
    190.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000393',
    'male',
    66,
    'jr',
    65.94,
    142.50,
    150.00,
    -157.50,
    80.00,
    85.00,
    -87.50,
    180.00,
    190.00,
    -207.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000681',
    'male',
    66,
    'jr',
    64.82,
    130.00,
    132.50,
    135.00,
    70.00,
    90.00,
    100.00,
    -150.00,
    170.00,
    175.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000778',
    'male',
    66,
    'jr',
    64.26,
    140.00,
    150.00,
    152.50,
    85.00,
    -90.00,
    -90.00,
    160.00,
    170.00,
    -300.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000735',
    'male',
    66,
    'jr',
    64.92,
    127.50,
    135.00,
    142.50,
    77.50,
    85.00,
    92.50,
    135.00,
    150.00,
    -160.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000740',
    'male',
    66,
    'jr',
    64,
    110.00,
    117.50,
    120.00,
    95.00,
    0.00,
    100.00,
    -145.00,
    145.00,
    155.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000683',
    'male',
    66,
    'subjr',
    63.08,
    135.00,
    -140.00,
    -140.00,
    65.00,
    -72.50,
    72.50,
    160.00,
    170.00,
    -180.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000715',
    'male',
    66,
    'subjr',
    63.54,
    105.00,
    115.00,
    122.50,
    -75.00,
    77.50,
    82.50,
    -145.00,
    145.00,
    157.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000696',
    'male',
    66,
    'subjr',
    62.32,
    120.00,
    -130.00,
    -130.00,
    80.00,
    -85.00,
    -85.00,
    127.50,
    137.50,
    -150.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000775',
    'male',
    66,
    'subjr',
    65.3,
    120.00,
    132.50,
    -137.50,
    -95.00,
    95.00,
    -102.50,
    0.00,
    0.00,
    0.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000156',
    'male',
    74,
    'open',
    73.83,
    190.00,
    205.00,
    220.00,
    115.00,
    125.00,
    -135.00,
    205.00,
    -207.50,
    230.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000770',
    'male',
    74,
    'open',
    72.72,
    -175.00,
    175.00,
    185.00,
    115.00,
    125.00,
    130.00,
    220.00,
    235.00,
    240.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000519',
    'male',
    74,
    'open',
    72.68,
    167.50,
    180.00,
    -192.50,
    105.00,
    112.50,
    117.50,
    205.00,
    -215.00,
    -215.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000734',
    'male',
    74,
    'open',
    71.7,
    -155.00,
    160.00,
    -177.50,
    100.00,
    -102.50,
    -102.50,
    200.00,
    212.50,
    225.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000766',
    'male',
    74,
    'open',
    73.26,
    -145.00,
    -152.50,
    152.50,
    -90.00,
    92.50,
    100.00,
    180.00,
    -190.00,
    200.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000765',
    'male',
    74,
    'open',
    73.48,
    157.50,
    167.50,
    -177.50,
    95.00,
    -102.50,
    -102.50,
    175.00,
    -190.00,
    190.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000750',
    'male',
    74,
    'open',
    73.98,
    145.00,
    155.00,
    -162.50,
    100.00,
    110.00,
    115.00,
    175.00,
    182.50,
    -190.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000783',
    'male',
    74,
    'open',
    72.24,
    130.00,
    145.00,
    -155.00,
    95.00,
    102.50,
    -107.50,
    170.00,
    185.00,
    195.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000744',
    'male',
    74,
    'open',
    71.48,
    130.00,
    137.50,
    140.00,
    -110.00,
    112.50,
    115.00,
    145.00,
    155.00,
    172.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000713',
    'male',
    74,
    'open',
    72.36,
    105.00,
    115.00,
    120.00,
    70.00,
    75.00,
    80.00,
    160.00,
    180.00,
    200.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000685',
    'male',
    74,
    'open',
    72.4,
    100.00,
    125.00,
    132.50,
    90.00,
    95.00,
    -100.00,
    150.00,
    162.50,
    -175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000772',
    'male',
    74,
    'open',
    72.94,
    95.00,
    -107.50,
    -120.00,
    70.00,
    82.50,
    -87.50,
    -145.00,
    145.00,
    162.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000758',
    'male',
    74,
    'open',
    72.98,
    -150.00,
    -160.00,
    -160.00,
    65.00,
    72.50,
    -80.00,
    -160.00,
    -167.50,
    -170.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000699',
    'male',
    74,
    'jr',
    72.54,
    167.50,
    177.50,
    185.00,
    97.50,
    102.50,
    105.00,
    200.00,
    212.50,
    225.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000457',
    'male',
    74,
    'jr',
    72.7,
    157.50,
    165.00,
    167.50,
    100.00,
    -105.00,
    -107.50,
    210.00,
    217.50,
    -225.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000700',
    'male',
    74,
    'jr',
    71.56,
    150.00,
    165.00,
    175.00,
    105.00,
    115.00,
    120.00,
    170.00,
    185.00,
    -195.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000710',
    'male',
    74,
    'jr',
    72.66,
    157.50,
    162.50,
    165.00,
    97.50,
    105.00,
    -110.00,
    180.00,
    190.00,
    -212.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000732',
    'male',
    74,
    'jr',
    72.46,
    160.00,
    170.00,
    180.00,
    70.00,
    75.00,
    82.50,
    160.00,
    175.00,
    185.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000460',
    'male',
    74,
    'jr',
    73.28,
    -150.00,
    150.00,
    170.00,
    95.00,
    102.50,
    105.00,
    150.00,
    170.00,
    -190.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000728',
    'male',
    74,
    'jr',
    73.08,
    -140.00,
    145.00,
    -150.00,
    85.00,
    -95.00,
    100.00,
    170.00,
    185.00,
    195.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000701',
    'male',
    74,
    'jr',
    73.26,
    155.00,
    157.50,
    160.00,
    87.50,
    92.50,
    -95.00,
    170.00,
    180.00,
    -195.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000686',
    'male',
    74,
    'jr',
    72.94,
    142.50,
    150.00,
    155.00,
    97.50,
    -105.00,
    105.00,
    150.00,
    160.00,
    -170.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000753',
    'male',
    74,
    'jr',
    73.56,
    127.50,
    137.50,
    145.00,
    85.00,
    92.50,
    97.50,
    150.00,
    162.50,
    172.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000706',
    'male',
    74,
    'jr',
    72.54,
    130.00,
    140.00,
    -150.00,
    75.00,
    80.00,
    -85.00,
    115.00,
    125.00,
    -140.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000678',
    'male',
    74,
    'subjr',
    71.18,
    132.50,
    140.00,
    145.00,
    95.00,
    105.00,
    110.00,
    160.00,
    170.00,
    180.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000781',
    'male',
    74,
    'subjr',
    69,
    115.00,
    127.50,
    135.00,
    -92.50,
    95.00,
    -102.50,
    155.00,
    -162.50,
    0.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000785',
    'male',
    74,
    'subjr',
    69.16,
    80.00,
    90.00,
    100.00,
    40.00,
    45.00,
    52.50,
    90.00,
    100.00,
    110.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000006',
    'male',
    83,
    'open',
    79.08,
    215.00,
    225.00,
    -232.50,
    142.50,
    150.00,
    155.00,
    235.00,
    250.00,
    260.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000755',
    'male',
    83,
    'open',
    82.06,
    180.00,
    190.00,
    200.00,
    -135.00,
    142.50,
    -150.00,
    230.00,
    245.00,
    -255.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000748',
    'male',
    83,
    'open',
    80.7,
    175.00,
    187.50,
    195.00,
    110.00,
    117.50,
    122.50,
    217.50,
    230.00,
    235.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000516',
    'male',
    83,
    'open',
    80.8,
    195.00,
    212.50,
    220.00,
    117.50,
    125.00,
    -127.50,
    207.50,
    -215.00,
    -215.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000752',
    'male',
    83,
    'open',
    82.3,
    185.00,
    -195.00,
    -195.00,
    120.00,
    125.00,
    -130.00,
    217.50,
    -230.00,
    -240.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000385',
    'male',
    83,
    'open',
    81.04,
    165.00,
    180.00,
    -187.50,
    100.00,
    110.00,
    115.00,
    200.00,
    -210.00,
    -210.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000759',
    'male',
    83,
    'open',
    82.06,
    180.00,
    -195.00,
    -195.00,
    115.00,
    -122.50,
    -125.00,
    170.00,
    180.00,
    200.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000784',
    'male',
    83,
    'open',
    75.36,
    152.50,
    165.00,
    175.00,
    90.00,
    97.50,
    -105.00,
    -205.00,
    220.00,
    -227.50,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000694',
    'male',
    83,
    'open',
    77.82,
    152.50,
    162.50,
    172.50,
    102.50,
    112.50,
    120.00,
    165.00,
    175.00,
    185.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000736',
    'male',
    83,
    'open',
    78.5,
    140.00,
    147.50,
    155.00,
    95.00,
    102.50,
    107.50,
    180.00,
    192.50,
    205.00,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000741',
    'male',
    83,
    'open',
    79.74,
    120.00,
    135.00,
    -150.00,
    80.00,
    90.00,
    100.00,
    170.00,
    182.50,
    200.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000104',
    'male',
    83,
    'open',
    80.54,
    140.00,
    150.00,
    157.50,
    70.00,
    -80.00,
    85.00,
    180.00,
    192.50,
    -202.50,
    '1',
    '5',
    'M',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000761',
    'male',
    83,
    'jr',
    81.56,
    190.00,
    200.00,
    -205.00,
    117.50,
    125.00,
    127.50,
    217.50,
    230.00,
    242.50,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000443',
    'male',
    83,
    'jr',
    81.3,
    170.00,
    180.00,
    -190.00,
    110.00,
    115.00,
    120.00,
    200.00,
    -210.00,
    -210.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000481',
    'male',
    83,
    'jr',
    82.88,
    165.00,
    170.00,
    -175.00,
    122.50,
    127.50,
    132.50,
    190.00,
    -197.50,
    197.50,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000716',
    'male',
    83,
    'jr',
    80.88,
    160.00,
    172.50,
    177.50,
    90.00,
    97.50,
    -100.00,
    177.50,
    -190.00,
    205.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000756',
    'male',
    83,
    'jr',
    80.86,
    160.00,
    -170.00,
    170.00,
    100.00,
    107.50,
    -112.50,
    180.00,
    190.00,
    -200.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000717',
    'male',
    83,
    'jr',
    77.44,
    125.00,
    135.00,
    142.50,
    75.00,
    82.50,
    -87.50,
    175.00,
    187.50,
    200.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000430',
    'male',
    83,
    'jr',
    81.38,
    130.00,
    140.00,
    150.00,
    -72.50,
    75.00,
    -82.50,
    170.00,
    180.00,
    -190.00,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000723',
    'male',
    83,
    'jr',
    75.94,
    130.00,
    140.00,
    147.50,
    90.00,
    -97.50,
    -97.50,
    140.00,
    152.50,
    162.50,
    '1',
    '5',
    'L',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000786',
    'male',
    83,
    'subjr',
    81.32,
    -140.00,
    150.00,
    155.00,
    -110.00,
    115.00,
    -120.00,
    180.00,
    190.00,
    -205.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000676',
    'male',
    83,
    'subjr',
    81.3,
    160.00,
    170.00,
    175.00,
    80.00,
    -87.50,
    0.00,
    160.00,
    175.00,
    190.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000768',
    'male',
    83,
    'subjr',
    81.46,
    100.00,
    -130.00,
    130.00,
    -80.00,
    100.00,
    -110.00,
    180.00,
    200.00,
    207.50,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000767',
    'male',
    83,
    'subjr',
    78.42,
    -145.00,
    145.00,
    155.00,
    75.00,
    80.00,
    -82.50,
    165.00,
    180.00,
    -185.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000779',
    'male',
    83,
    'subjr',
    81.06,
    -120.00,
    -120.00,
    120.00,
    65.00,
    90.00,
    105.00,
    130.00,
    -145.00,
    160.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000789',
    'male',
    83,
    'subjr',
    82.46,
    120.00,
    -122.50,
    122.50,
    70.00,
    -75.00,
    75.00,
    160.00,
    180.00,
    -200.00,
    '1',
    '3',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000313',
    'male',
    93,
    'open',
    91.9,
    192.50,
    200.00,
    0.00,
    -120.00,
    120.00,
    130.00,
    225.00,
    232.50,
    240.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000722',
    'male',
    93,
    'open',
    89.96,
    180.00,
    187.50,
    190.00,
    120.00,
    127.50,
    135.00,
    190.00,
    205.00,
    220.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000760',
    'male',
    93,
    'open',
    91,
    90.00,
    115.00,
    130.00,
    50.00,
    62.50,
    -72.50,
    100.00,
    130.00,
    150.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000742',
    'male',
    93,
    'jr',
    91.34,
    200.00,
    212.50,
    222.50,
    100.00,
    110.00,
    120.00,
    220.00,
    232.50,
    245.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000682',
    'male',
    93,
    'jr',
    87.96,
    175.00,
    195.00,
    210.00,
    85.00,
    95.00,
    100.00,
    190.00,
    205.00,
    220.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000423',
    'male',
    93,
    'jr',
    83.62,
    155.00,
    167.50,
    177.50,
    100.00,
    107.50,
    112.50,
    175.00,
    190.00,
    202.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000693',
    'male',
    93,
    'jr',
    90.14,
    160.00,
    167.50,
    175.00,
    100.00,
    107.50,
    -112.50,
    195.00,
    210.00,
    -215.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000776',
    'male',
    93,
    'jr',
    92.22,
    -135.00,
    135.00,
    -145.00,
    80.00,
    85.00,
    -90.00,
    130.00,
    132.50,
    150.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000763',
    'male',
    93,
    'subjr',
    89.78,
    100.00,
    110.00,
    120.00,
    40.00,
    50.00,
    52.50,
    110.00,
    120.00,
    130.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000749',
    'male',
    93,
    'mas1',
    89.2,
    135.00,
    142.50,
    150.00,
    145.00,
    155.00,
    160.00,
    190.00,
    200.00,
    212.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000128',
    'male',
    105,
    'open',
    104.02,
    -175.00,
    190.00,
    -200.00,
    115.00,
    125.00,
    -135.00,
    180.00,
    197.50,
    210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000771',
    'male',
    105,
    'jr',
    102.68,
    180.00,
    195.00,
    205.00,
    110.00,
    117.50,
    122.50,
    210.00,
    220.00,
    235.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000714',
    'male',
    105,
    'jr',
    96.64,
    190.00,
    210.00,
    217.50,
    85.00,
    95.00,
    -100.00,
    185.00,
    195.00,
    207.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000746',
    'male',
    105,
    'jr',
    104.74,
    150.00,
    162.50,
    172.50,
    92.50,
    100.00,
    105.00,
    187.50,
    202.50,
    -207.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000707',
    'female',
    47,
    'open',
    44.9,
    87.50,
    92.50,
    97.50,
    37.50,
    -42.50,
    -42.50,
    107.50,
    112.50,
    117.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000465',
    'female',
    47,
    'open',
    45.88,
    77.50,
    82.50,
    85.00,
    32.50,
    35.00,
    -37.50,
    117.50,
    -125.00,
    -135.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000704',
    'female',
    47,
    'open',
    45.62,
    57.50,
    -70.00,
    -77.50,
    27.50,
    32.50,
    35.00,
    67.50,
    75.00,
    82.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000406',
    'female',
    47,
    'open',
    44.92,
    72.50,
    80.00,
    -85.00,
    27.50,
    -32.50,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000721',
    'female',
    47,
    'jr',
    46.2,
    80.00,
    82.50,
    85.00,
    37.50,
    -40.00,
    0.00,
    85.00,
    90.00,
    95.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000739',
    'female',
    52,
    'open',
    51.56,
    100.00,
    107.50,
    112.50,
    30.00,
    35.00,
    40.00,
    125.00,
    135.00,
    147.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000525',
    'female',
    52,
    'open',
    50.58,
    75.00,
    82.50,
    -85.00,
    37.50,
    42.50,
    -47.50,
    107.50,
    115.00,
    120.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000729',
    'female',
    52,
    'open',
    51.24,
    75.00,
    80.00,
    -85.00,
    32.50,
    37.50,
    40.00,
    105.00,
    112.50,
    117.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000780',
    'female',
    52,
    'open',
    51.12,
    75.00,
    -80.00,
    80.00,
    -37.50,
    37.50,
    40.00,
    95.00,
    100.00,
    105.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000689',
    'female',
    52,
    'open',
    50.76,
    70.00,
    75.00,
    -77.50,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000688',
    'female',
    52,
    'jr',
    50.54,
    85.00,
    95.00,
    -100.00,
    40.00,
    45.00,
    -47.50,
    105.00,
    112.50,
    120.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000594',
    'female',
    52,
    'jr',
    50.1,
    80.00,
    85.00,
    -87.50,
    37.50,
    -42.50,
    42.50,
    95.00,
    105.00,
    110.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000762',
    'female',
    57,
    'open',
    56.28,
    90.00,
    95.00,
    100.00,
    30.00,
    35.00,
    40.00,
    100.00,
    107.50,
    112.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000747',
    'female',
    57,
    'open',
    52.68,
    -75.00,
    82.50,
    -90.00,
    30.00,
    35.00,
    -37.50,
    110.00,
    122.50,
    -135.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000697',
    'female',
    57,
    'open',
    55.4,
    80.00,
    -87.50,
    -95.00,
    35.00,
    40.00,
    -45.00,
    80.00,
    90.00,
    97.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000788',
    'female',
    57,
    'open',
    57.22,
    80.00,
    85.00,
    92.50,
    -47.50,
    47.50,
    -50.00,
    90.00,
    100.00,
    110.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000705',
    'female',
    57,
    'jr',
    55.1,
    105.00,
    112.50,
    -117.50,
    42.50,
    -45.00,
    45.00,
    117.50,
    125.00,
    -132.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000692',
    'female',
    57,
    'jr',
    54.68,
    87.50,
    92.50,
    97.50,
    47.50,
    52.50,
    -55.00,
    120.00,
    127.50,
    -132.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000773',
    'female',
    57,
    'jr',
    55.82,
    85.00,
    -92.50,
    92.50,
    42.50,
    47.50,
    -55.00,
    90.00,
    97.50,
    105.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000684',
    'female',
    57,
    'subjr',
    55.78,
    70.00,
    77.50,
    80.00,
    30.00,
    37.50,
    -42.50,
    92.50,
    95.00,
    97.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000745',
    'female',
    57,
    'subjr',
    56.4,
    50.00,
    67.50,
    75.00,
    37.50,
    45.00,
    -47.50,
    77.50,
    82.50,
    95.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000695',
    'female',
    63,
    'open',
    59.76,
    100.00,
    107.50,
    112.50,
    40.00,
    42.50,
    -45.00,
    120.00,
    127.50,
    -132.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000708',
    'female',
    63,
    'open',
    61.18,
    72.50,
    77.50,
    82.50,
    35.00,
    40.00,
    42.50,
    107.50,
    117.50,
    125.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000754',
    'female',
    63,
    'open',
    61.72,
    70.00,
    80.00,
    85.00,
    30.00,
    35.00,
    -37.50,
    90.00,
    -95.00,
    0.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000445',
    'female',
    63,
    'jr',
    61.18,
    110.00,
    117.50,
    -122.50,
    45.00,
    -50.00,
    -52.50,
    135.00,
    -137.50,
    -145.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000698',
    'female',
    63,
    'jr',
    60.84,
    70.00,
    80.00,
    90.00,
    30.00,
    35.00,
    -40.00,
    100.00,
    115.00,
    -125.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000787',
    'female',
    69,
    'open',
    66.94,
    77.50,
    82.50,
    87.50,
    40.00,
    45.00,
    -47.50,
    100.00,
    110.00,
    117.50,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Winter is coming'),
    'VPF000774',
    'female',
    76,
    'open',
    73.64,
    110.00,
    120.00,
    -125.00,
    35.00,
    42.50,
    47.50,
    115.00,
    130.00,
    135.00,
    '1',
    '4',
    'I',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000176',
    'male',
    59,
    'open',
    58.22,
    -180.00,
    180.00,
    182.50,
    110.00,
    -115.00,
    -115.00,
    -185.00,
    185.00,
    -190.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000440',
    'male',
    59,
    'open',
    58.4,
    150.00,
    162.50,
    170.00,
    105.00,
    -112.50,
    112.50,
    195.00,
    -205.00,
    -205.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000073',
    'male',
    59,
    'open',
    58.94,
    -150.00,
    152.50,
    -157.50,
    107.50,
    112.50,
    0.00,
    190.00,
    200.00,
    -210.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000500',
    'male',
    59,
    'open',
    58.94,
    145.00,
    -155.00,
    -155.00,
    -115.00,
    -115.00,
    115.00,
    185.00,
    195.00,
    205.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000508',
    'male',
    59,
    'open',
    57.86,
    -185.00,
    -185.00,
    -185.00,
    130.00,
    -145.00,
    -145.00,
    210.00,
    220.00,
    -235.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000103',
    'male',
    59,
    'jr',
    58.38,
    180.00,
    192.50,
    -200.00,
    100.00,
    107.50,
    -112.50,
    205.00,
    220.00,
    232.50,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000042',
    'male',
    59,
    'jr',
    58.02,
    180.00,
    190.00,
    197.50,
    -95.00,
    100.00,
    -105.00,
    -215.00,
    225.00,
    -235.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000496',
    'male',
    59,
    'subjr',
    57.94,
    130.00,
    140.00,
    147.50,
    65.00,
    -72.50,
    -80.00,
    190.00,
    200.00,
    202.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000619',
    'male',
    59,
    'subjr',
    57.9,
    120.00,
    135.00,
    145.00,
    75.00,
    82.50,
    -87.50,
    160.00,
    -180.00,
    185.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000617',
    'male',
    66,
    'open',
    65.52,
    210.00,
    -225.00,
    -225.00,
    130.00,
    140.00,
    -146.00,
    225.00,
    240.00,
    -260.50,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    7
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000503',
    'male',
    66,
    'open',
    63.78,
    180.00,
    190.00,
    -200.00,
    -120.00,
    -140.00,
    140.00,
    220.00,
    -235.00,
    -245.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000614',
    'male',
    66,
    'open',
    66,
    185.00,
    195.00,
    -202.50,
    107.50,
    115.00,
    120.00,
    212.50,
    225.00,
    -232.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000426',
    'male',
    66,
    'open',
    65.74,
    185.00,
    195.00,
    -205.00,
    115.00,
    -122.50,
    -122.50,
    210.00,
    225.00,
    -235.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000547',
    'male',
    66,
    'open',
    64.42,
    180.00,
    190.00,
    -195.00,
    110.00,
    117.50,
    122.50,
    220.00,
    -235.00,
    -235.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000076',
    'male',
    66,
    'open',
    65,
    172.50,
    180.00,
    185.00,
    95.00,
    102.50,
    -107.50,
    220.00,
    230.00,
    -235.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000309',
    'male',
    66,
    'jr',
    65.06,
    187.50,
    195.00,
    200.50,
    117.50,
    125.00,
    130.00,
    225.00,
    235.50,
    246.00,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000461',
    'male',
    66,
    'subjr',
    63.94,
    160.00,
    165.00,
    170.00,
    -100.00,
    100.00,
    105.00,
    200.00,
    205.00,
    -207.50,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000454',
    'male',
    66,
    'mas1',
    65.44,
    100.00,
    107.50,
    0.00,
    60.00,
    -65.00,
    -68.00,
    125.00,
    131.50,
    136.50,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000175',
    'male',
    74,
    'open',
    71.4,
    250.00,
    260.00,
    -262.50,
    -130.00,
    130.00,
    135.00,
    265.00,
    -275.00,
    275.00,
    '1',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000356',
    'male',
    74,
    'open',
    73.16,
    215.00,
    225.00,
    230.00,
    115.00,
    -122.50,
    -122.50,
    270.00,
    287.50,
    -300.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000109',
    'male',
    74,
    'open',
    71.26,
    185.00,
    192.50,
    197.50,
    145.00,
    -153.00,
    153.00,
    240.00,
    255.00,
    -260.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000424',
    'male',
    74,
    'open',
    73.3,
    205.00,
    215.00,
    225.00,
    125.00,
    -132.50,
    -132.50,
    255.00,
    -270.00,
    -270.00,
    '1',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000016',
    'male',
    74,
    'open',
    73.22,
    195.00,
    207.50,
    215.00,
    125.00,
    132.50,
    137.50,
    232.50,
    -247.50,
    250.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000163',
    'male',
    74,
    'open',
    73.48,
    190.00,
    -195.00,
    -195.00,
    130.00,
    135.00,
    140.00,
    210.00,
    230.00,
    240.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000497',
    'male',
    74,
    'open',
    70.8,
    -200.00,
    200.00,
    210.00,
    115.00,
    122.50,
    125.00,
    215.00,
    -230.00,
    -230.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000034',
    'male',
    74,
    'open',
    72.78,
    160.00,
    172.50,
    175.00,
    100.00,
    107.50,
    -115.00,
    195.00,
    205.00,
    215.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000534',
    'male',
    74,
    'open',
    71.84,
    212.50,
    -220.00,
    220.00,
    115.00,
    120.00,
    125.00,
    -270.00,
    -270.00,
    -270.00,
    '1',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000498',
    'male',
    74,
    'open',
    72.6,
    170.00,
    -185.00,
    -185.00,
    115.00,
    125.00,
    -130.00,
    0.00,
    0.00,
    0.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000504',
    'male',
    74,
    'open',
    73.04,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    0.00,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000065',
    'male',
    74,
    'open',
    74.72,
    180.00,
    190.00,
    -200.00,
    120.00,
    127.50,
    -130.00,
    225.00,
    237.50,
    242.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000597',
    'male',
    74,
    'jr',
    73.66,
    190.00,
    202.50,
    -210.00,
    -152.50,
    152.50,
    162.50,
    227.50,
    -240.00,
    248.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000493',
    'male',
    74,
    'jr',
    74,
    185.00,
    192.50,
    200.00,
    120.00,
    -127.50,
    127.50,
    235.00,
    245.00,
    248.00,
    '1',
    '4',
    'G',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000568',
    'male',
    74,
    'jr',
    70.58,
    150.00,
    160.00,
    165.00,
    92.50,
    97.50,
    -105.00,
    190.00,
    202.50,
    212.50,
    '1',
    '4',
    'G',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000453',
    'male',
    74,
    'subjr',
    74,
    -180.00,
    180.00,
    -187.50,
    95.00,
    -102.50,
    -106.00,
    215.00,
    232.50,
    -255.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000451',
    'male',
    74,
    'subjr',
    72.42,
    160.00,
    167.50,
    175.00,
    -97.50,
    102.50,
    -106.00,
    187.50,
    197.50,
    210.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000556',
    'male',
    74,
    'subjr',
    70.52,
    160.00,
    170.00,
    -180.00,
    75.00,
    80.00,
    -85.00,
    165.00,
    175.00,
    -190.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000537',
    'male',
    83,
    'open',
    82.02,
    235.00,
    245.00,
    255.50,
    150.00,
    160.00,
    165.50,
    265.00,
    280.00,
    290.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    9
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000182',
    'male',
    83,
    'open',
    81.82,
    -237.50,
    237.50,
    247.50,
    142.50,
    147.50,
    -150.00,
    255.00,
    270.00,
    282.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000011',
    'male',
    83,
    'open',
    81,
    240.00,
    255.00,
    -262.50,
    140.00,
    150.00,
    -155.00,
    270.00,
    -285.00,
    -285.00,
    '1',
    '4',
    'H',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000084',
    'male',
    83,
    'open',
    81.84,
    215.00,
    225.00,
    235.00,
    135.00,
    -145.00,
    145.00,
    265.00,
    -277.50,
    -287.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000024',
    'male',
    83,
    'open',
    82.18,
    215.00,
    230.00,
    235.00,
    147.50,
    155.00,
    -157.50,
    245.00,
    -260.00,
    -260.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000529',
    'male',
    83,
    'open',
    82.2,
    205.00,
    215.00,
    222.50,
    135.00,
    142.50,
    -147.50,
    235.00,
    245.00,
    -250.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000107',
    'male',
    83,
    'open',
    82.7,
    210.00,
    220.00,
    -225.00,
    132.50,
    140.00,
    -145.00,
    230.00,
    -237.50,
    -237.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000549',
    'male',
    83,
    'open',
    82.34,
    190.00,
    200.00,
    207.50,
    145.00,
    -152.50,
    152.50,
    225.00,
    -235.00,
    -235.00,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000269',
    'male',
    83,
    'open',
    81.7,
    -185.00,
    185.00,
    197.50,
    122.50,
    -130.00,
    -130.00,
    217.50,
    230.00,
    237.50,
    '1',
    '4',
    'H',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000543',
    'male',
    83,
    'jr',
    81.28,
    -220.00,
    220.00,
    232.50,
    120.00,
    128.00,
    135.00,
    235.00,
    250.00,
    260.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000535',
    'male',
    83,
    'jr',
    79.72,
    -212.50,
    212.50,
    -220.00,
    125.00,
    130.00,
    0.00,
    220.00,
    230.00,
    237.50,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000348',
    'male',
    83,
    'jr',
    82.16,
    195.00,
    197.50,
    -207.50,
    100.00,
    107.50,
    112.50,
    215.00,
    227.50,
    235.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000296',
    'male',
    83,
    'jr',
    76.48,
    145.00,
    157.50,
    165.00,
    70.00,
    75.00,
    -80.00,
    167.50,
    182.50,
    -195.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000603',
    'male',
    83,
    'jr',
    81.36,
    215.00,
    225.00,
    233.00,
    -130.00,
    -140.00,
    -140.00,
    250.00,
    260.00,
    270.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000003',
    'male',
    83,
    'subjr',
    82.3,
    182.50,
    196.00,
    206.00,
    105.00,
    111.00,
    115.50,
    220.50,
    234.00,
    -246.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000581',
    'male',
    93,
    'open',
    92.82,
    237.50,
    250.00,
    260.00,
    157.50,
    167.50,
    -177.00,
    300.00,
    315.00,
    323.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000566',
    'male',
    93,
    'open',
    91.84,
    285.00,
    292.50,
    -300.00,
    167.50,
    173.00,
    -175.00,
    -275.00,
    275.00,
    -287.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000208',
    'male',
    93,
    'open',
    91.32,
    235.00,
    250.00,
    -257.50,
    160.00,
    -170.00,
    170.00,
    245.00,
    -255.00,
    -255.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    5
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000002',
    'male',
    93,
    'open',
    92.76,
    225.00,
    235.00,
    -240.00,
    127.50,
    -135.00,
    -137.50,
    280.00,
    -295.00,
    -305.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000545',
    'male',
    93,
    'open',
    91.86,
    195.00,
    210.00,
    217.50,
    132.50,
    -142.50,
    -142.50,
    215.00,
    230.00,
    240.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000227',
    'male',
    93,
    'open',
    90,
    -215.00,
    -225.00,
    225.00,
    100.00,
    105.00,
    -110.00,
    200.00,
    215.00,
    -230.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000544',
    'male',
    93,
    'open',
    91.78,
    210.00,
    222.50,
    230.00,
    120.00,
    130.00,
    -135.00,
    -232.50,
    -235.00,
    -255.00,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000569',
    'male',
    93,
    'jr',
    91.96,
    195.00,
    207.50,
    220.00,
    102.50,
    110.00,
    -120.00,
    -185.00,
    185.00,
    202.50,
    '1',
    '1',
    'B',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000381',
    'male',
    93,
    'subjr',
    91.72,
    195.00,
    216.00,
    220.50,
    107.50,
    117.50,
    -125.00,
    255.00,
    -275.00,
    -300.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000010',
    'male',
    93,
    'mas1',
    90.58,
    232.50,
    242.50,
    -250.00,
    150.00,
    -157.50,
    -157.50,
    245.00,
    255.00,
    262.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000548',
    'male',
    105,
    'open',
    99.48,
    250.00,
    260.00,
    270.00,
    150.00,
    157.50,
    -162.50,
    255.00,
    265.00,
    275.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000116',
    'male',
    105,
    'open',
    97.12,
    250.00,
    275.50,
    282.50,
    -120.00,
    120.00,
    125.00,
    220.00,
    230.00,
    240.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000621',
    'male',
    105,
    'open',
    96.14,
    -215.00,
    -215.00,
    215.00,
    160.00,
    -170.00,
    -170.00,
    240.00,
    252.50,
    -272.50,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000487',
    'male',
    105,
    'open',
    99.62,
    -205.00,
    210.00,
    220.00,
    -137.50,
    137.50,
    0.00,
    235.00,
    -250.00,
    0.00,
    '1',
    '2',
    'D',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000118',
    'male',
    105,
    'jr',
    102.16,
    220.00,
    240.00,
    -242.50,
    160.00,
    -170.00,
    -170.00,
    250.00,
    -275.00,
    -275.00,
    '1',
    '2',
    'C',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000609',
    'male',
    105,
    'jr',
    99.48,
    180.00,
    190.00,
    -200.00,
    100.00,
    105.00,
    -110.00,
    237.50,
    255.00,
    265.50,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000531',
    'male',
    105,
    'jr',
    104.62,
    190.00,
    205.00,
    212.50,
    100.00,
    110.00,
    -115.00,
    205.00,
    225.00,
    -235.00,
    '1',
    '2',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000586',
    'male',
    120,
    'open',
    107.56,
    242.50,
    252.50,
    -260.00,
    170.00,
    -175.00,
    175.00,
    252.50,
    265.00,
    -272.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000600',
    'male',
    120,
    'subjr',
    117.22,
    180.00,
    200.00,
    -212.50,
    130.00,
    140.00,
    -145.00,
    195.00,
    -215.00,
    215.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000620',
    'male',
    999,
    'open',
    124.64,
    270.00,
    285.00,
    300.00,
    187.50,
    195.00,
    200.00,
    275.00,
    287.50,
    -297.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000499',
    'female',
    47,
    'open',
    46.14,
    117.50,
    125.00,
    -130.00,
    57.50,
    -62.50,
    62.50,
    125.00,
    132.50,
    -137.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000550',
    'female',
    47,
    'open',
    45.78,
    107.50,
    110.00,
    115.00,
    47.50,
    50.00,
    -52.50,
    132.50,
    140.00,
    145.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000154',
    'female',
    47,
    'open',
    45.88,
    100.00,
    -105.00,
    105.00,
    60.00,
    62.50,
    -65.00,
    -135.00,
    135.00,
    -140.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000577',
    'female',
    47,
    'jr',
    46.44,
    72.50,
    80.00,
    85.00,
    27.50,
    32.50,
    37.50,
    95.00,
    105.00,
    -110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000380',
    'female',
    52,
    'open',
    49.48,
    117.50,
    123.50,
    130.00,
    70.00,
    76.00,
    -80.00,
    152.50,
    -161.00,
    -162.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000249',
    'female',
    52,
    'open',
    51.7,
    115.00,
    -120.00,
    -120.00,
    52.50,
    -55.00,
    0.00,
    155.00,
    -161.00,
    -162.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000562',
    'female',
    52,
    'open',
    50.98,
    90.00,
    97.50,
    -102.50,
    45.00,
    -52.50,
    52.50,
    115.00,
    120.00,
    -135.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000067',
    'female',
    52,
    'open',
    49.52,
    -80.00,
    80.00,
    85.00,
    37.50,
    -40.00,
    40.00,
    120.00,
    -130.00,
    -130.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000563',
    'female',
    52,
    'open',
    49.18,
    90.00,
    -95.00,
    -95.00,
    -52.50,
    -52.50,
    -52.50,
    110.00,
    117.50,
    125.00,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000132',
    'female',
    52,
    'jr',
    51.64,
    80.00,
    90.00,
    105.00,
    42.50,
    47.50,
    -55.00,
    120.00,
    130.00,
    140.50,
    '1',
    '3',
    'F',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    4
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000594',
    'female',
    52,
    'jr',
    49.7,
    82.50,
    90.00,
    100.00,
    40.00,
    -42.50,
    -42.50,
    112.50,
    117.50,
    -130.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000559',
    'female',
    52,
    'jr',
    51.48,
    77.50,
    82.50,
    -87.50,
    47.50,
    -52.50,
    -52.50,
    105.00,
    112.50,
    -120.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000281',
    'female',
    57,
    'open',
    55.5,
    115.00,
    -125.00,
    127.50,
    67.50,
    72.50,
    75.00,
    142.50,
    152.50,
    157.50,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    6
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000266',
    'female',
    57,
    'open',
    55.44,
    110.00,
    115.00,
    120.00,
    70.00,
    75.00,
    0.00,
    130.00,
    145.00,
    -152.50,
    '1',
    '3',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000255',
    'female',
    57,
    'open',
    55.34,
    112.50,
    120.00,
    125.00,
    52.50,
    57.50,
    -62.50,
    132.50,
    140.00,
    145.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    3
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000069',
    'female',
    57,
    'open',
    53.48,
    107.50,
    -115.00,
    -115.00,
    -47.50,
    47.50,
    50.00,
    142.50,
    152.50,
    157.50,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000237',
    'female',
    57,
    'open',
    55.2,
    -117.50,
    -117.50,
    -117.50,
    55.00,
    60.00,
    -65.00,
    125.00,
    -135.00,
    -135.00,
    '1',
    '3',
    'E',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000099',
    'female',
    57,
    'jr',
    56.72,
    112.50,
    -118.00,
    -118.00,
    60.50,
    63.00,
    66.50,
    132.50,
    -143.00,
    143.00,
    '1',
    '3',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000606',
    'female',
    63,
    'open',
    61.7,
    125.00,
    135.00,
    -141.00,
    52.50,
    57.50,
    60.00,
    142.50,
    150.00,
    -160.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000137',
    'female',
    63,
    'subjr',
    59.94,
    135.00,
    -142.50,
    -145.00,
    65.00,
    72.50,
    -77.50,
    -165.00,
    165.00,
    -180.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000169',
    'female',
    69,
    'open',
    63.26,
    105.00,
    112.50,
    117.50,
    62.50,
    67.50,
    70.00,
    125.00,
    140.00,
    150.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000183',
    'female',
    69,
    'open',
    65.9,
    -110.00,
    -110.00,
    110.00,
    45.00,
    52.50,
    -55.00,
    130.00,
    140.00,
    145.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'BUCKY'),
    1
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000324',
    'female',
    69,
    'jr',
    67.96,
    110.00,
    120.00,
    127.50,
    60.00,
    65.00,
    70.00,
    130.00,
    140.00,
    150.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = '18 POWERLIFTING'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000418',
    'female',
    76,
    'open',
    74.66,
    90.00,
    95.00,
    102.50,
    37.50,
    42.50,
    -47.50,
    100.00,
    110.00,
    115.00,
    '1',
    '1',
    'A',
    (SELECT id FROM public.teams WHERE name = 'INFINITY'),
    2
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF National Championship 2024'),
    'VPF000585',
    'female',
    76,
    'jr',
    69.14,
    85.00,
    95.00,
    100.00,
    37.50,
    40.00,
    -43.00,
    100.00,
    110.00,
    115.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000662',
    'male',
    53,
    'jr',
    51.3,
    -90.00,
    -95.00,
    -95.00,
    52.50,
    57.50,
    -65.00,
    115.00,
    122.50,
    127.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000645',
    'male',
    53,
    'subjr',
    52.18,
    -95.00,
    -100.00,
    100.00,
    70.00,
    75.00,
    -80.00,
    100.00,
    110.00,
    -125.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000670',
    'male',
    66,
    'open',
    63.9,
    170.00,
    180.00,
    -185.00,
    97.50,
    105.00,
    110.00,
    175.00,
    187.50,
    197.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000667',
    'male',
    66,
    'open',
    65.6,
    120.00,
    130.00,
    140.00,
    70.00,
    80.00,
    -90.00,
    190.00,
    205.00,
    215.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000743',
    'male',
    66,
    'jr',
    65.1,
    145.00,
    155.00,
    165.00,
    110.00,
    117.50,
    -125.00,
    182.50,
    195.00,
    -202.50,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000623',
    'male',
    66,
    'jr',
    65.58,
    140.00,
    -155.00,
    160.00,
    97.50,
    100.00,
    -105.00,
    160.00,
    -170.00,
    -175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000642',
    'male',
    66,
    'subjr',
    63.44,
    -155.00,
    160.00,
    -170.00,
    -85.00,
    -92.50,
    92.50,
    160.00,
    175.00,
    -190.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000669',
    'male',
    66,
    'subjr',
    64.52,
    130.00,
    137.50,
    145.00,
    75.00,
    -82.50,
    82.50,
    160.00,
    175.00,
    185.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000625',
    'male',
    66,
    'subjr',
    64.56,
    -120.00,
    -120.00,
    125.00,
    60.00,
    70.00,
    -80.00,
    150.00,
    -175.00,
    -175.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000651',
    'male',
    66,
    'subjr',
    65.84,
    75.00,
    85.00,
    105.00,
    70.00,
    80.00,
    -85.00,
    110.00,
    125.00,
    -150.00,
    '1',
    '2',
    'D',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000639',
    'male',
    74,
    'open',
    73.42,
    165.00,
    172.50,
    -180.00,
    110.00,
    117.50,
    122.50,
    190.00,
    202.50,
    212.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000636',
    'male',
    74,
    'open',
    70.88,
    180.00,
    -190.00,
    -190.00,
    95.00,
    102.50,
    -110.00,
    200.00,
    210.00,
    -225.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000664',
    'male',
    74,
    'open',
    72.72,
    155.00,
    162.50,
    167.50,
    107.50,
    112.50,
    117.50,
    195.00,
    207.50,
    -217.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000647',
    'male',
    74,
    'open',
    72.78,
    160.00,
    170.00,
    182.50,
    -75.00,
    -80.00,
    85.00,
    180.00,
    195.00,
    202.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000007',
    'male',
    74,
    'jr',
    72.24,
    195.00,
    0.00,
    0.00,
    120.00,
    0.00,
    0.00,
    -215.00,
    215.00,
    -232.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000638',
    'male',
    74,
    'jr',
    72.24,
    162.50,
    -175.00,
    -175.00,
    117.50,
    125.00,
    -130.00,
    185.00,
    200.00,
    212.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000624',
    'male',
    74,
    'jr',
    72.04,
    157.50,
    167.50,
    -172.50,
    97.50,
    105.00,
    112.50,
    182.50,
    185.00,
    195.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000757',
    'male',
    74,
    'jr',
    72.98,
    160.00,
    -170.00,
    170.00,
    100.00,
    107.50,
    -115.00,
    180.00,
    182.50,
    195.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000663',
    'male',
    74,
    'jr',
    71.7,
    160.00,
    162.50,
    175.00,
    85.00,
    -95.00,
    97.50,
    170.00,
    180.00,
    -190.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000627',
    'male',
    74,
    'jr',
    72.22,
    150.00,
    -160.00,
    165.00,
    105.00,
    -112.50,
    -112.50,
    170.00,
    -195.00,
    -195.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000439',
    'male',
    74,
    'jr',
    71.86,
    140.00,
    155.00,
    165.00,
    80.00,
    90.00,
    -100.00,
    -180.00,
    180.00,
    -210.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000637',
    'male',
    74,
    'jr',
    72.16,
    -165.00,
    165.00,
    -175.00,
    80.00,
    90.00,
    -100.00,
    160.00,
    170.00,
    -185.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000632',
    'male',
    74,
    'subjr',
    69.98,
    125.00,
    137.50,
    142.50,
    100.00,
    110.00,
    115.00,
    140.00,
    160.00,
    172.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000659',
    'male',
    74,
    'subjr',
    72.8,
    135.00,
    -145.00,
    145.00,
    80.00,
    85.00,
    90.00,
    170.00,
    185.00,
    -197.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000696',
    'male',
    74,
    'subjr',
    67.32,
    135.00,
    142.50,
    150.00,
    85.00,
    92.50,
    -95.00,
    140.00,
    150.00,
    160.00,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000641',
    'male',
    74,
    'subjr',
    71.86,
    -120.00,
    120.00,
    122.50,
    50.00,
    80.00,
    -87.50,
    170.00,
    185.00,
    -202.50,
    '1',
    '2',
    'E',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000538',
    'male',
    83,
    'open',
    81.72,
    175.00,
    185.00,
    195.00,
    105.00,
    120.00,
    -130.00,
    -200.00,
    200.00,
    220.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000027',
    'male',
    83,
    'open',
    82,
    120.00,
    -195.00,
    -195.00,
    115.00,
    125.00,
    -132.50,
    200.00,
    -220.00,
    -220.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000643',
    'male',
    83,
    'open',
    82.26,
    -195.00,
    -195.00,
    -195.00,
    125.00,
    132.50,
    137.50,
    210.00,
    222.50,
    225.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000661',
    'male',
    83,
    'jr',
    81.74,
    185.00,
    195.00,
    -202.50,
    120.00,
    -122.50,
    -122.50,
    190.00,
    202.50,
    -220.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000666',
    'male',
    83,
    'jr',
    81.38,
    170.00,
    175.00,
    185.00,
    -95.00,
    97.50,
    -105.00,
    175.00,
    185.00,
    202.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000635',
    'male',
    83,
    'jr',
    78.76,
    147.50,
    155.00,
    162.50,
    100.00,
    107.50,
    110.00,
    190.00,
    202.50,
    -212.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000732',
    'male',
    83,
    'jr',
    76.32,
    167.50,
    177.50,
    187.50,
    77.50,
    85.00,
    -92.50,
    170.00,
    180.00,
    190.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000665',
    'male',
    83,
    'subjr',
    80.89,
    -182.50,
    190.00,
    200.00,
    92.50,
    100.00,
    110.00,
    222.50,
    232.50,
    240.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000657',
    'male',
    83,
    'subjr',
    80.98,
    -165.00,
    -172.50,
    172.50,
    90.00,
    97.50,
    -102.50,
    182.50,
    192.50,
    205.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000491',
    'male',
    93,
    'open',
    89,
    160.00,
    172.50,
    180.00,
    115.00,
    120.00,
    125.00,
    190.00,
    202.50,
    210.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000654',
    'male',
    93,
    'open',
    90.9,
    -145.00,
    150.00,
    160.00,
    80.00,
    87.50,
    95.00,
    195.00,
    210.00,
    220.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000674',
    'male',
    93,
    'open',
    96.2,
    -180.00,
    190.00,
    200.00,
    -110.00,
    115.00,
    -120.00,
    170.00,
    185.00,
    200.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000462',
    'male',
    93,
    'jr',
    83.28,
    210.00,
    217.50,
    225.00,
    102.50,
    107.50,
    112.50,
    227.50,
    -240.00,
    250.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000423',
    'male',
    93,
    'jr',
    89.86,
    160.00,
    172.50,
    185.00,
    105.00,
    112.50,
    120.00,
    185.00,
    197.50,
    202.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000631',
    'male',
    93,
    'jr',
    90.82,
    180.00,
    190.00,
    -200.00,
    -97.50,
    -105.00,
    105.00,
    182.50,
    195.00,
    -215.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000633',
    'male',
    93,
    'jr',
    83.42,
    165.00,
    175.00,
    185.00,
    -67.50,
    -70.00,
    70.00,
    180.00,
    192.50,
    202.50,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000646',
    'male',
    93,
    'jr',
    91.78,
    150.00,
    160.00,
    -170.00,
    107.50,
    112.50,
    -117.50,
    -175.00,
    175.00,
    -190.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000644',
    'male',
    93,
    'jr',
    87.56,
    -140.00,
    150.00,
    157.50,
    90.00,
    92.50,
    -95.00,
    145.00,
    155.00,
    165.00,
    '1',
    '2',
    'F',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000888',
    'male',
    105,
    'open',
    94.26,
    -155.00,
    155.00,
    165.00,
    100.00,
    107.50,
    115.00,
    160.00,
    170.00,
    185.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000650',
    'male',
    105,
    'open',
    84.94,
    180.00,
    190.00,
    200.00,
    125.00,
    130.00,
    135.00,
    190.00,
    -200.00,
    -200.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000660',
    'male',
    105,
    'jr',
    103.2,
    200.00,
    -210.00,
    -210.00,
    110.00,
    115.00,
    -122.50,
    210.00,
    -235.00,
    -250.00,
    '1',
    '1',
    'C',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000707',
    'female',
    47,
    'open',
    45.62,
    92.50,
    -102.50,
    105.00,
    40.00,
    45.00,
    -47.50,
    115.00,
    122.50,
    130.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000673',
    'female',
    47,
    'open',
    45.84,
    97.50,
    102.50,
    107.50,
    -40.00,
    -40.00,
    40.00,
    100.00,
    -105.00,
    -105.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000672',
    'female',
    47,
    'open',
    46.34,
    70.00,
    -72.50,
    72.50,
    30.00,
    35.00,
    -40.00,
    80.00,
    95.00,
    110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000630',
    'female',
    52,
    'open',
    51.92,
    100.00,
    107.50,
    112.50,
    40.00,
    42.50,
    45.00,
    115.00,
    122.50,
    -130.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000152',
    'female',
    52,
    'open',
    51.34,
    92.50,
    -102.50,
    -102.50,
    55.00,
    -60.00,
    60.00,
    105.00,
    115.00,
    120.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000304',
    'female',
    52,
    'open',
    51.2,
    75.00,
    80.00,
    -85.00,
    32.50,
    35.00,
    -37.50,
    95.00,
    102.50,
    -110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000648',
    'female',
    52,
    'open',
    58.16,
    85.00,
    -90.00,
    90.00,
    47.50,
    52.50,
    -55.00,
    97.50,
    102.50,
    107.50,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000626',
    'female',
    52,
    'jr',
    51.76,
    60.00,
    70.00,
    72.50,
    25.00,
    32.50,
    35.00,
    80.00,
    92.50,
    105.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000629',
    'female',
    57,
    'open',
    54.62,
    -100.00,
    105.00,
    -110.00,
    55.00,
    -60.00,
    60.00,
    120.00,
    130.00,
    -140.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000675',
    'female',
    57,
    'open',
    55.62,
    72.50,
    80.00,
    85.00,
    -40.00,
    40.00,
    -45.00,
    102.50,
    110.00,
    115.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000697',
    'female',
    57,
    'open',
    55.54,
    -85.00,
    90.00,
    -95.00,
    37.50,
    42.50,
    -47.50,
    95.00,
    100.00,
    -110.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000688',
    'female',
    57,
    'jr',
    52.18,
    92.50,
    -95.00,
    102.50,
    45.00,
    -47.50,
    -47.50,
    115.00,
    122.50,
    -130.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000656',
    'female',
    57,
    'jr',
    56.9,
    87.50,
    -95.00,
    100.00,
    25.00,
    32.50,
    35.00,
    105.00,
    115.00,
    125.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000628',
    'female',
    57,
    'subjr',
    55.94,
    70.00,
    82.50,
    -90.00,
    37.50,
    40.00,
    -45.00,
    100.00,
    105.00,
    115.00,
    '1',
    '1',
    'A',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000640',
    'female',
    63,
    'open',
    61.04,
    105.00,
    112.50,
    120.00,
    45.00,
    50.00,
    -55.00,
    130.00,
    140.00,
    150.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000658',
    'female',
    63,
    'open',
    60.9,
    110.00,
    115.00,
    120.00,
    50.00,
    -57.50,
    -57.50,
    120.00,
    130.00,
    137.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000671',
    'female',
    63,
    'open',
    60.08,
    90.00,
    102.50,
    110.00,
    52.50,
    57.50,
    60.00,
    120.00,
    127.50,
    -137.50,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000634',
    'female',
    63,
    'open',
    62.12,
    57.50,
    -62.50,
    65.00,
    27.50,
    -32.50,
    -32.50,
    60.00,
    -67.50,
    70.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

INSERT INTO public.meet_result (
    meet_id, athlete_id, sex, weight_class, division,
    body_weight, squat1, squat2, squat3,
    bench1, bench2, bench3,
    dead1, dead2, dead3,
    platform, session, flight, team_id, team_score
) VALUES (
    (SELECT id FROM public.meet_info WHERE name = 'VPF Pinkman Invitational 2024: Spring Celebration'),
    'VPF000668',
    'female',
    69,
    'jr',
    65.62,
    30.00,
    75.00,
    85.00,
    30.00,
    37.50,
    -45.00,
    80.00,
    -95.00,
    100.00,
    '1',
    '1',
    'B',
    NULL,
    NULL
);

COMMIT;

create TABLE public.crbm
(
    -- indices
    gid integer NOT NULL,
    hhld_num integer NOT NULL,
    pers_num smallint NOT NULL,
    trip_num smallint NOT NULL,
    -- small categories
    mode_prime smallint, -- (N, 1, 9)
    trip_purp smallint, -- (N, 1, 6)
    purp_orig smallint,
    purp_dest smallint,
    region_orig smallint,
    region_dest smallint,
    region_emp smallint,
    region_sch smallint,
    dwell_type smallint,
    occupation smallint,
    m_trans_accs smallint,
    m_trans_egrs smallint,
    -- large categories
    start_time integer, -- 96 15min intervals
    trip_week integer,
    trip_day integer,
    gta06_orig integer,
    gta06_dest integer,
    gta06_emp integer,
    gta06_sch integer,
    -- integer values (N, 19, 1)
    trip_km integer, -- sigma: 10.577
    car_pool integer, -- sigma: 0.9023
    n_person integer, -- sigma: 1.375
    n_vehicle integer, -- sigma: 0.958
    n_licence integer, -- sigma: 0.959
    n_emp_ft integer, -- sigma: 0.908
    n_emp_pt integer, -- sigma: 0.509
    n_emp_home integer, -- sigma: 0.360
    n_student integer, -- sigma: 0.907
    n_hhld_trips integer, -- sigma: 4.465
    n_pers_trips integer, -- sigma: 1.754
    n_tran_trips integer, -- sigma 0.832
    n_go_rail integer, -- sigma: 0.329
    n_go_bus integer, -- sigma: 0.173
    n_subway integer, -- sigma: 0.842
    n_ttc_bus integer, -- sigma: 0.790
    n_local integer, -- sigma: 0.585
    n_other integer, -- sigma: 0.086
    age integer, -- sigma: 16.483
    -- binary values (N, 9, 1)
    hwy407 smallint, -- 1: usehwy407
    respond smallint, -- 1: primary, 0: not primary
    sex smallint, -- 1: male
    driver_lic smallint, -- 1: has driver lic
    tran_pass smallint, -- 1: has trans pass
    emp_stat smallint, -- 1: fulltime worker
    stu_stat smallint, -- 1: fulltime student
    free_park smallint, -- 1: has free parking at workplace/school
    use_ttc smallint, -- 1: used ttc

)
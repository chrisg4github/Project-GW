-- Table: public."Country_Yearly_Temps"

-- DROP TABLE public."Country_Yearly_Temps";

CREATE TABLE public."Country_Yearly_Temps"
(
    yr_temp_id integer NOT NULL DEFAULT nextval('yr_temp_seq'::regclass),
    year integer NOT NULL,
    country character varying(100) COLLATE pg_catalog."default",
    yr_avg_temp_f numeric(9, 6) NOT NULL,
    yr_avg_temp_c numeric(9, 6) NOT NULL,
    yr_avg_temp_uncertain numeric(9, 6) NOT NULL,
    CONSTRAINT yr_temp_id_pk PRIMARY KEY (yr_temp_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Country_Yearly_Temps"
    OWNER to postgres;
COMMENT ON TABLE public."Country_Yearly_Temps"
    IS 'This table contains the yearly average of monthly temperature averages by country.';
  

-- Table: public."Country_Mthly_Temps"

--DROP TABLE public."Country_Mthly_Temps";

CREATE TABLE public."Country_Mthly_Temps"
(
    mthly_temp_id integer NOT NULL DEFAULT nextval('mthly_temp_seq'::regclass),
    m_date date NOT NULL,
    mthly_avg_temp_f numeric(9, 6) NOT NULL,
    mthly_avg_temp_c numeric(9, 6) NOT NULL,
    mthly_avg_temp_uncertain numeric(9, 6) NOT NULL,
    country character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT mthly_temp_id_pk PRIMARY KEY (mthly_temp_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Country_Mthly_Temps"
    OWNER to postgres;
COMMENT ON TABLE public."Country_Mthly_Temps"
    IS 'This table contains the monthly average temperature by country.';


-- Table: public."Global_Mthly_Temps"

--DROP TABLE public."Global_Mthly_Temps";

CREATE TABLE public."Global_Mthly_Temps"
(
    g_mthly_temp_id integer NOT NULL DEFAULT nextval('g_mthly_temp_seq'::regclass),
    g_m_date date NOT NULL,
    g_land_avg_tempf numeric(9, 6) NOT NULL,
    g_land_avg_tempc numeric(9, 6) NOT NULL,
    g_land_avg_temp_uncert numeric(9, 6) NOT NULL,
    g_land_max_tempf numeric(9, 6) NOT NULL,
    g_land_max_tempc numeric(9, 6) NOT NULL,
    g_land_max_temp_uncert numeric(9, 6) NOT NULL,
    g_land_min_tempf numeric(9, 6) NOT NULL,
    g_land_min_tempc numeric(9, 6) NOT NULL,
    g_land_min_temp_uncert numeric(9, 6) NOT NULL,
    g_land_ocean_avg_tempf numeric(9, 6) NOT NULL,
    g_land_ocean_avg_tempc numeric(9, 6) NOT NULL,
    g_land_ocean_avg_temp_uncert numeric(9, 6) NOT NULL,
    CONSTRAINT g_mthly_temp_id_pk PRIMARY KEY (g_mthly_temp_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Global_Mthly_Temps"
    OWNER to postgres;
COMMENT ON TABLE public."Global_Mthly_Temps"
    IS 'This table contains the global monthly temperatures.';    
commit;    
    
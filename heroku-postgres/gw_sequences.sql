CREATE SEQUENCE public.yr_temp_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.yr_temp_seq
    OWNER TO postgres;

COMMENT ON SEQUENCE public.yr_temp_seq
    IS 'sequence number for yearly average temperature by country.';


CREATE SEQUENCE public.mthly_temp_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.mthly_temp_seq
    OWNER TO postgres;

COMMENT ON SEQUENCE public.mthly_temp_seq
    IS 'sequence number for mthly average temperature by country.';


CREATE SEQUENCE public.g_mthly_temp_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.g_mthly_temp_seq
    OWNER TO postgres;

COMMENT ON SEQUENCE public.g_mthly_temp_seq
    IS 'sequence number for global monthly average temperatures.';
    
    commit;
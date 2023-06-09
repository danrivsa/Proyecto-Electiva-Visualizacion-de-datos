-- Table: public.Egreso

-- DROP TABLE IF EXISTS public."Egreso";

CREATE TABLE IF NOT EXISTS public."Egreso"
(
    "Fecha" timestamp without time zone,
    "ID_Egreso" integer NOT NULL,
    "Monto" money NOT NULL,
    CONSTRAINT "Egreso_pkey" PRIMARY KEY ("ID_Egreso")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Egreso"
    OWNER to postgres;
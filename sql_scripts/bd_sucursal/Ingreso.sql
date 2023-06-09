-- Table: public.Ingreso

-- DROP TABLE IF EXISTS public."Ingreso";

CREATE TABLE IF NOT EXISTS public."Ingreso"
(
    "Fecha" timestamp without time zone NOT NULL,
    "ID_Ingreso" integer NOT NULL,
    "Monto" money NOT NULL,
    CONSTRAINT "Pk_Ingreso" PRIMARY KEY ("ID_Ingreso")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Ingreso"
    OWNER to postgres;
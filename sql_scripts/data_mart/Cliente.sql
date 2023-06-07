-- Table: public.Cliente

-- DROP TABLE IF EXISTS public."Cliente";

CREATE TABLE IF NOT EXISTS public."Cliente"
(
    "Primer_Nombre" character varying COLLATE pg_catalog."default" NOT NULL,
    "Primer_Apellido" character varying COLLATE pg_catalog."default" NOT NULL,
    "Segundo_Nombre" character varying COLLATE pg_catalog."default",
    "Segundo_Apellido" character varying COLLATE pg_catalog."default",
    "CI" integer NOT NULL,
    "Fecha_Nacimiento" date,
    "ID_Cliente" integer NOT NULL,
    CONSTRAINT "Cliente_pkey" PRIMARY KEY ("ID_Cliente")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Cliente"
    OWNER to postgres;
-- Table: public.Resena

-- DROP TABLE IF EXISTS public."Resena";

CREATE TABLE IF NOT EXISTS public."Resena"
(
    "ID_Resena" integer NOT NULL,
    "ID_Cliente" integer NOT NULL,
    "Valoracion" integer NOT NULL,
    "Fecha" timestamp without time zone NOT NULL,
    CONSTRAINT "Resena_pkey" PRIMARY KEY ("ID_Resena"),
    CONSTRAINT "Fk_Cliente" FOREIGN KEY ("ID_Cliente")
        REFERENCES public."Cliente" ("ID_Cliente") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Resena"
    OWNER to postgres;
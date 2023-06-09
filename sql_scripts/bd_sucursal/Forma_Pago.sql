-- Table: public.Forma_Pago

-- DROP TABLE IF EXISTS public."Forma_Pago";

CREATE TABLE IF NOT EXISTS public."Forma_Pago"
(
    "ID_Forma" integer NOT NULL,
    "Nombre" character varying COLLATE pg_catalog."default" NOT NULL,
    "Descripcion" character varying COLLATE pg_catalog."default",
    CONSTRAINT "Forma_Pago_pkey" PRIMARY KEY ("ID_Forma")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Forma_Pago"
    OWNER to postgres;
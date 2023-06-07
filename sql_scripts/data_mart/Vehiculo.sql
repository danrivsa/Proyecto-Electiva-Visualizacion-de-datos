-- Table: public.Vehiculo

-- DROP TABLE IF EXISTS public."Vehiculo";

CREATE TABLE IF NOT EXISTS public."Vehiculo"
(
    "Placa" character varying COLLATE pg_catalog."default" NOT NULL,
    "ID_Vehiculo" integer NOT NULL,
    "Color" character varying COLLATE pg_catalog."default",
    "ID_Modelo" integer NOT NULL,
    CONSTRAINT "Vehiculo_pkey" PRIMARY KEY ("ID_Vehiculo"),
    CONSTRAINT "Fk_Modelo" FOREIGN KEY ("ID_Modelo")
        REFERENCES public."Modelo_Vehiculo" ("ID_Modelo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Vehiculo"
    OWNER to postgres;
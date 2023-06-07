-- Table: public.Modelo_Vehiculo

-- DROP TABLE IF EXISTS public."Modelo_Vehiculo";

CREATE TABLE IF NOT EXISTS public."Modelo_Vehiculo"
(
    "ID_Modelo" integer NOT NULL,
    "Marca" character varying COLLATE pg_catalog."default" NOT NULL,
    "Año_Fabrica" integer NOT NULL,
    CONSTRAINT "Modelo_Vehiculo_pkey" PRIMARY KEY ("ID_Modelo")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Modelo_Vehiculo"
    OWNER to postgres;
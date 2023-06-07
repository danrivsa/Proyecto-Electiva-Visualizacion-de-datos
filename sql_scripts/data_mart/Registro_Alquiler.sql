-- Table: public.Registro_Alquiler

-- DROP TABLE IF EXISTS public."Registro_Alquiler";

CREATE TABLE IF NOT EXISTS public."Registro_Alquiler"
(
    "ID_Registro" integer NOT NULL,
    "Fecha_Inicio" timestamp without time zone NOT NULL,
    "Fecha_Final" timestamp without time zone,
    "ID_Vehiculo" integer NOT NULL,
    "ID_Cliente" integer NOT NULL,
    "ID_Metodo" integer NOT NULL,
    "Monto" money NOT NULL,
    "Km_Recorridos" character varying COLLATE pg_catalog."default",
    CONSTRAINT "Registro_Alquiler_pkey" PRIMARY KEY ("ID_Registro"),
    CONSTRAINT "Fk_Cliente" FOREIGN KEY ("ID_Cliente")
        REFERENCES public."Cliente" ("ID_Cliente") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Fk_Metodo" FOREIGN KEY ("ID_Metodo")
        REFERENCES public."Forma_Pago" ("ID_Forma") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Fk_Vehiculo" FOREIGN KEY ("ID_Vehiculo")
        REFERENCES public."Vehiculo" ("ID_Vehiculo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Registro_Alquiler"
    OWNER to postgres;
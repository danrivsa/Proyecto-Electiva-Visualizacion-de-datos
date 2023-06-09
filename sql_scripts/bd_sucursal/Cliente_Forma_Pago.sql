-- Table: public.Cliente_Forma_Pago

-- DROP TABLE IF EXISTS public."Cliente_Forma_Pago";

CREATE TABLE IF NOT EXISTS public."Cliente_Forma_Pago"
(
    "ID_Cliente" integer NOT NULL,
    "ID_Forma_Pago" integer NOT NULL,
    CONSTRAINT "Cliente_Forma_Pago_pkey" PRIMARY KEY ("ID_Cliente", "ID_Forma_Pago"),
    CONSTRAINT "Fk_Cliente" FOREIGN KEY ("ID_Cliente")
        REFERENCES public."Cliente" ("ID_Cliente") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Fk_Forma_Pago" FOREIGN KEY ("ID_Forma_Pago")
        REFERENCES public."Forma_Pago" ("ID_Forma") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Cliente_Forma_Pago"
    OWNER to postgres;
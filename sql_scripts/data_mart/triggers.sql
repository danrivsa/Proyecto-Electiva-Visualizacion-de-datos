CREATE OR REPLACE FUNCTION verificar_tiempo() RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tiempo WHERE year = NEW.id_year AND month = NEW.id_month AND day = NEW.id_day AND hour = NEW.id_hour) THEN
        INSERT INTO tiempo (year, month, day, hour) VALUES (NEW.id_year, NEW.id_month, NEW.id_day, NEW.id_hour);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER trigger_verificar_tiempo BEFORE INSERT ON hechos_estadisticas_alquiler
FOR EACH ROW EXECUTE FUNCTION verificar_tiempo();
DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'ideaevent') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.ideaevent
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiep') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiep
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepaccommodationcollection') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepaccommodationcollection
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepdisabilitycollection') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepdisabilitycollection
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepgoal') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepgoal
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepservicedelivery') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepservicedelivery
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepserviceprescription') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepserviceprescription
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;

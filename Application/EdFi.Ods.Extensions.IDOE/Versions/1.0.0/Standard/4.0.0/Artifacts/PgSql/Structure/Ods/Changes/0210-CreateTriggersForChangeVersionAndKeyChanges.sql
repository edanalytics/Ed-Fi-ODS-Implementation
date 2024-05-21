DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'assessmentaccommodation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.assessmentaccommodation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'educationorganizationotherpersonnel') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.educationorganizationotherpersonnel
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'studenteducationorganizationassessmentaccommodation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.studenteducationorganizationassessmentaccommodation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;

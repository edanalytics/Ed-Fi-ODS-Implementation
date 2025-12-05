DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'gadoe' AND event_object_table = 'localeducationagencystatistic') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON gadoe.localeducationagencystatistic
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'gadoe' AND event_object_table = 'schoolstatistic') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON gadoe.schoolstatistic
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'gadoe' AND event_object_table = 'studentspecialeducationassociationevent') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON gadoe.studentspecialeducationassociationevent
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.studentspecialeducationassociationevent_keychg()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    ij0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
    ij1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.specialeducationeventtypedescriptorid;
    SELECT INTO ij0 * FROM edfi.descriptor j0 WHERE descriptorid = new.specialeducationeventtypedescriptorid;
    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;
    SELECT INTO ij1 * FROM edfi.student j1 WHERE studentusi = new.studentusi;

    -- Handle key changes
    INSERT INTO tracked_changes_gadoe.studentspecialeducationassociationevent(
        oldentrydate, oldeventdate, oldschoolid, oldspecialeducationeventtypedescriptorid, oldspecialeducationeventtypedescriptornamespace, oldspecialeducationeventtypedescriptorcodevalue, oldstudentusi, oldstudentuniqueid, 
        newentrydate, neweventdate, newschoolid, newspecialeducationeventtypedescriptorid, newspecialeducationeventtypedescriptornamespace, newspecialeducationeventtypedescriptorcodevalue, newstudentusi, newstudentuniqueid, 
        id, changeversion)
    VALUES (
        old.entrydate, old.eventdate, old.schoolid, old.specialeducationeventtypedescriptorid, dj0.namespace, dj0.codevalue, old.studentusi, dj1.studentuniqueid, 
        new.entrydate, new.eventdate, new.schoolid, new.specialeducationeventtypedescriptorid, ij0.namespace, ij0.codevalue, new.studentusi, ij1.studentuniqueid, 
        old.id, (nextval('changes.changeversionsequence')));

    RETURN null;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'handlekeychanges' AND event_object_schema = 'gadoe' AND event_object_table = 'studentspecialeducationassociationevent') THEN
    CREATE TRIGGER HandleKeyChanges AFTER UPDATE OF entrydate, eventdate, schoolid, specialeducationeventtypedescriptorid, studentusi ON gadoe.studentspecialeducationassociationevent
        FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.studentspecialeducationassociationevent_keychg();
END IF;

END
$$;

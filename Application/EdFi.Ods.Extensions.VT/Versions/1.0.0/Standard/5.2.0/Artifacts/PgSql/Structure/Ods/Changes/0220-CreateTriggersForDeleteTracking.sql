DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_vt.ctecredentialdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CTECredentialDescriptorId, b.codevalue, b.namespace, b.id, 'vt.CTECredentialDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CTECredentialDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'vt' AND event_object_table = 'ctecredentialdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON vt.ctecredentialdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_vt.ctecredentialdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_vt.ctefundcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CTEFundCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'vt.CTEFundCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CTEFundCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'vt' AND event_object_table = 'ctefundcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON vt.ctefundcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_vt.ctefundcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_vt.ctsodescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CTSODescriptorId, b.codevalue, b.namespace, b.id, 'vt.CTSODescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CTSODescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'vt' AND event_object_table = 'ctsodescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON vt.ctsodescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_vt.ctsodescriptor_deleted();
END IF;

END
$$;

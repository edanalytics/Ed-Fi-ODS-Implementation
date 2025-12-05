DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_gadoe.behaviorincidentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.BehaviorIncidentDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.BehaviorIncidentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.BehaviorIncidentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'behaviorincidentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.behaviorincidentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.behaviorincidentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.childfindstatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ChildFindStatusDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.ChildFindStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ChildFindStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'childfindstatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.childfindstatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.childfindstatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.chwcertfieldcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ChwCertFieldCodeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.ChwCertFieldCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ChwCertFieldCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'chwcertfieldcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.chwcertfieldcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.chwcertfieldcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.countyofresidencedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CountyOfResidenceDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.CountyOfResidenceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CountyOfResidenceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'countyofresidencedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.countyofresidencedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.countyofresidencedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.datatypeindicatordescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DataTypeIndicatorDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.DataTypeIndicatorDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DataTypeIndicatorDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'datatypeindicatordescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.datatypeindicatordescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.datatypeindicatordescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.disciplineactionauxiliarydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DisciplineActionAuxiliaryDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.DisciplineActionAuxiliaryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DisciplineActionAuxiliaryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'disciplineactionauxiliarydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.disciplineactionauxiliarydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.disciplineactionauxiliarydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.disciplineprocesstypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DisciplineProcessTypeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.DisciplineProcessTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DisciplineProcessTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'disciplineprocesstypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.disciplineprocesstypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.disciplineprocesstypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.eipdeliverymodeldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EipDeliveryModelDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.EipDeliveryModelDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EipDeliveryModelDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'eipdeliverymodeldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.eipdeliverymodeldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.eipdeliverymodeldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.employeetypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EmployeeTypeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.EmployeeTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EmployeeTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'employeetypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.employeetypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.employeetypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.enrollmentlocationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EnrollmentLocationDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.EnrollmentLocationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EnrollmentLocationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'enrollmentlocationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.enrollmentlocationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.enrollmentlocationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.esoldeliverymodeldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EsolDeliveryModelDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.EsolDeliveryModelDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EsolDeliveryModelDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'esoldeliverymodeldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.esoldeliverymodeldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.esoldeliverymodeldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.fteprogramcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FteProgramCodeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.FteProgramCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FteProgramCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'fteprogramcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.fteprogramcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.fteprogramcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.gifteddeliverymodeldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.GiftedDeliveryModelDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.GiftedDeliveryModelDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.GiftedDeliveryModelDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'gifteddeliverymodeldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.gifteddeliverymodeldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.gifteddeliverymodeldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.giftedserveddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.GiftedServedDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.GiftedServedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.GiftedServedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'giftedserveddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.giftedserveddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.giftedserveddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.iepinclusiontypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IepInclusionTypeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.IepInclusionTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IepInclusionTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'iepinclusiontypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.iepinclusiontypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.iepinclusiontypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.incidentseverityleveldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IncidentSeverityLevelDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.IncidentSeverityLevelDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IncidentSeverityLevelDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'incidentseverityleveldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.incidentseverityleveldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.incidentseverityleveldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.incidenttimingdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IncidentTimingDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.IncidentTimingDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IncidentTimingDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'incidenttimingdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.incidenttimingdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.incidenttimingdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.inclusionpersonneldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.InclusionPersonnelDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.InclusionPersonnelDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.InclusionPersonnelDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'inclusionpersonneldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.inclusionpersonneldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.inclusionpersonneldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.localeducationagencystatistic_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_gadoe.localeducationagencystatistic(
        oldeducationorganizationid,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'localeducationagencystatistic') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.localeducationagencystatistic 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.localeducationagencystatistic_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.nonesolstatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NonESOLStatusDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.NonESOLStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NonESOLStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'nonesolstatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.nonesolstatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.nonesolstatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.nutritionschooldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NutritionSchoolDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.NutritionSchoolDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NutritionSchoolDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'nutritionschooldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.nutritionschooldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.nutritionschooldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.primarystaffclassificationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PrimaryStaffClassificationDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.PrimaryStaffClassificationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PrimaryStaffClassificationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'primarystaffclassificationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.primarystaffclassificationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.primarystaffclassificationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.privateorhomeschooledstudentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PrivateOrHomeSchooledStudentDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.PrivateOrHomeSchooledStudentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PrivateOrHomeSchooledStudentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'privateorhomeschooledstudentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.privateorhomeschooledstudentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.privateorhomeschooledstudentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.programreferredbydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ProgramReferredByDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.ProgramReferredByDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ProgramReferredByDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'programreferredbydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.programreferredbydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.programreferredbydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.psychologicalservicesevaluationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PsychologicalServicesEvaluationDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.PsychologicalServicesEvaluationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PsychologicalServicesEvaluationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'psychologicalservicesevaluationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.psychologicalservicesevaluationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.psychologicalservicesevaluationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.salarypaystepdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SalaryPayStepDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SalaryPayStepDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SalaryPayStepDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'salarypaystepdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.salarypaystepdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.salarypaystepdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.schoolstatistic_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_gadoe.schoolstatistic(
        oldschoolid,
        id, discriminator, changeversion)
    VALUES (
        OLD.schoolid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'schoolstatistic') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.schoolstatistic 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.schoolstatistic_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.section504plandescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.Section504PlanDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.Section504PlanDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.Section504PlanDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'section504plandescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.section504plandescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.section504plandescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.socialworkcasedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SocialWorkCaseDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SocialWorkCaseDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SocialWorkCaseDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'socialworkcasedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.socialworkcasedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.socialworkcasedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.socialworkreferraldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SocialWorkReferralDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SocialWorkReferralDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SocialWorkReferralDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'socialworkreferraldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.socialworkreferraldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.socialworkreferraldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.socialworkserviceinterventiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SocialWorkServiceInterventionDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SocialWorkServiceInterventionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SocialWorkServiceInterventionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'socialworkserviceinterventiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.socialworkserviceinterventiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.socialworkserviceinterventiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.specialeducationdeliverymodeldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationDeliveryModelDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SpecialEducationDeliveryModelDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationDeliveryModelDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'specialeducationdeliverymodeldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.specialeducationdeliverymodeldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.specialeducationdeliverymodeldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.specialeducationeventreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationEventReasonDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SpecialEducationEventReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationEventReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'specialeducationeventreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.specialeducationeventreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.specialeducationeventreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.specialeducationeventtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationEventTypeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SpecialEducationEventTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationEventTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'specialeducationeventtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.specialeducationeventtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.specialeducationeventtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.specialeducationnoncompliancedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationNonComplianceDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SpecialEducationNonComplianceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationNonComplianceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'specialeducationnoncompliancedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.specialeducationnoncompliancedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.specialeducationnoncompliancedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.staffassignmentcertificatetypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffAssignmentCertificateTypeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StaffAssignmentCertificateTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffAssignmentCertificateTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'staffassignmentcertificatetypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.staffassignmentcertificatetypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.staffassignmentcertificatetypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.staffassignmentfieldcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffAssignmentFieldCodeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StaffAssignmentFieldCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffAssignmentFieldCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'staffassignmentfieldcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.staffassignmentfieldcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.staffassignmentfieldcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.staffassignmentfundcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffAssignmentFundCodeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StaffAssignmentFundCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffAssignmentFundCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'staffassignmentfundcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.staffassignmentfundcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.staffassignmentfundcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.staffassignmentsubjectmattercodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffAssignmentSubjectMatterCodeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StaffAssignmentSubjectMatterCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffAssignmentSubjectMatterCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'staffassignmentsubjectmattercodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.staffassignmentsubjectmattercodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.staffassignmentsubjectmattercodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.staffemploymentcharacteristicdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffEmploymentCharacteristicDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StaffEmploymentCharacteristicDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffEmploymentCharacteristicDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'staffemploymentcharacteristicdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.staffemploymentcharacteristicdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.staffemploymentcharacteristicdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.staffservicetypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffServiceTypeDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StaffServiceTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffServiceTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'staffservicetypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.staffservicetypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.staffservicetypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.stemsteamschooldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StemSteamSchoolDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.StemSteamSchoolDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StemSteamSchoolDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'stemsteamschooldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.stemsteamschooldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.stemsteamschooldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.studentspecialeducationassociationevent_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.specialeducationeventtypedescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_gadoe.studentspecialeducationassociationevent(
        oldentrydate, oldeventdate, oldschoolid, oldspecialeducationeventtypedescriptorid, oldspecialeducationeventtypedescriptornamespace, oldspecialeducationeventtypedescriptorcodevalue, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.entrydate, OLD.eventdate, OLD.schoolid, OLD.specialeducationeventtypedescriptorid, dj0.namespace, dj0.codevalue, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'studentspecialeducationassociationevent') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.studentspecialeducationassociationevent 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.studentspecialeducationassociationevent_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.systemofresidencydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SystemOfResidencyDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.SystemOfResidencyDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SystemOfResidencyDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'systemofresidencydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.systemofresidencydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.systemofresidencydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_gadoe.workbasedlearningprogramdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.WorkBasedLearningProgramDescriptorId, b.codevalue, b.namespace, b.id, 'gadoe.WorkBasedLearningProgramDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.WorkBasedLearningProgramDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'gadoe' AND event_object_table = 'workbasedlearningprogramdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON gadoe.workbasedlearningprogramdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_gadoe.workbasedlearningprogramdescriptor_deleted();
END IF;

END
$$;

#!/bin/bash

# Goal: generate comments for *tables* and *columns*, allowing help within postgresql
# Principle: get the last comments from md documention, and generate the sql queries accordingly
# 	1. tables comments is the very first line of the md file
#	2. column comments are extracted from the pipe separeted markdown tables


DOMAIN=CLINICAL
#
#$DOMAIN
#
echo "\n\n--\n--$DOMAIN\n--\n" > "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
echo "\n\n-- VISIT_OCCURRENCE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/VISIT_OCCURRENCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE visit_occurrence IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/VISIT_OCCURRENCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN visit_occurrence.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONDITION_OCCURRENCE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/CONDITION_OCCURRENCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE condition_occurrence IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/CONDITION_OCCURRENCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN condition_occurrence.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DEATH" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/DEATH.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE death IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/DEATH.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN death.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DEVICE_EXPOSURE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/DEVICE_EXPOSURE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE device_exposure IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/DEVICE_EXPOSURE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN device_exposure.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DRUG_EXPOSURE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/DRUG_EXPOSURE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE drug_exposure IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/DRUG_EXPOSURE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN drug_exposure.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- FACT_RELATIONSHIP" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/FACT_RELATIONSHIP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE FACT_RELATIONSHIP IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/FACT_RELATIONSHIP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN FACT_RELATIONSHIP.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- MEASUREMENT" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/MEASUREMENT.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE MEASUREMENT IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/MEASUREMENT.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN MEASUREMENT.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- NOTE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/NOTE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE NOTE IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/NOTE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN NOTE.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- VISIT_DETAIL" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/VISIT_DETAIL.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE VISIT_DETAIL IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/VISIT_DETAIL.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN VISIT_DETAIL.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- SPECIMEN" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/SPECIMEN.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE SPECIMEN IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/SPECIMEN.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN SPECIMEN.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- PROCEDURE_OCCURRENCE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/PROCEDURE_OCCURRENCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE PROCEDURE_OCCURRENCE IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/PROCEDURE_OCCURRENCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN PROCEDURE_OCCURRENCE.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- PERSON" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/PERSON.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE PERSON IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/PERSON.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN PERSON.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- OBSERVATION_PERIOD" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/OBSERVATION_PERIOD.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE OBSERVATION_PERIOD IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/OBSERVATION_PERIOD.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN OBSERVATION_PERIOD.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- OBSERVATION" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/OBSERVATION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE OBSERVATION IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/OBSERVATION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN OBSERVATION.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- NOTE_NLP" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/NOTE_NLP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE NOTE_NLP IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedClinicalDataTables/NOTE_NLP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN NOTE_NLP.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

DOMAIN=ECONOMIC
#
#$DOMAIN
#
echo "\n\n--\n--$DOMAIN\n--\n" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
echo "\n\n-- COST" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedHealthEconomicsDataTables/COST.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE COST IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedHealthEconomicsDataTables/COST.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN COST.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- PAYER_PLAN_PERIOD" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedHealthEconomicsDataTables/PAYER_PLAN_PERIOD.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE PAYER_PLAN_PERIOD IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedHealthEconomicsDataTables/PAYER_PLAN_PERIOD.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN PAYER_PLAN_PERIOD.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

DOMAIN=METADATA
#
#$DOMAIN
#
echo "\n\n--\n--$DOMAIN\n--\n" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
echo "\n\n-- CDM_SOURCE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedMetadata/CDM_SOURCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CDM_SOURCE IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedMetadata/CDM_SOURCE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CDM_SOURCE.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

DOMAIN=DERIVED
#
#$DOMAIN
#
echo "\n\n--\n--$DOMAIN\n--\n" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
echo "\n\n-- COHORT_ATTRIBUTE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/COHORT_ATTRIBUTE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE COHORT_ATTRIBUTE IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/COHORT_ATTRIBUTE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN COHORT_ATTRIBUTE.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- COHORT" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/COHORT.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE COHORT IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/COHORT.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN COHORT.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONDITION_ERA" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/CONDITION_ERA.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CONDITION_ERA IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/CONDITION_ERA.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CONDITION_ERA.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DOSE_ERA" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/DOSE_ERA.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE DOSE_ERA IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/DOSE_ERA.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN DOSE_ERA.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DRUG_ERA" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/DRUG_ERA.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE DRUG_ERA IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedDerivedElements/DRUG_ERA.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN DRUG_ERA.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

DOMAIN=SYSTEM
#
#$DOMAIN
#
echo "\n\n--\n--$DOMAIN\n--\n" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CARE_SITE" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedHealthSystemDataTables/CARE_SITE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CARE_SITE IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedHealthSystemDataTables/CARE_SITE.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CARE_SITE.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- LOCATION" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedHealthSystemDataTables/LOCATION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE LOCATION IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedHealthSystemDataTables/LOCATION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN LOCATION.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- PROVIDER" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedHealthSystemDataTables/PROVIDER.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE PROVIDER IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedHealthSystemDataTables/PROVIDER.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN PROVIDER.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

DOMAIN=VOCABULARY
#
#$DOMAIN
#
echo "\n\n--\n--$DOMAIN\n--\n" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
echo "\n\n-- ATTRIBUTE_DEFINITION" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/ATTRIBUTE_DEFINITION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE ATTRIBUTE_DEFINITION IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/ATTRIBUTE_DEFINITION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN ATTRIBUTE_DEFINITION.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- COHORT_DEFINITION" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/COHORT_DEFINITION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE COHORT_DEFINITION IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/COHORT_DEFINITION.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN COHORT_DEFINITION.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONCEPT_ANCESTOR" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_ANCESTOR.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CONCEPT_ANCESTOR IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_ANCESTOR.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CONCEPT_ANCESTOR.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONCEPT_CLASS" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_CLASS.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CONCEPT_CLASS IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_CLASS.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CONCEPT_CLASS.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONCEPT" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CONCEPT IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CONCEPT.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONCEPT_RELATIONSHIP" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_RELATIONSHIP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CONCEPT_RELATIONSHIP IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_RELATIONSHIP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CONCEPT_RELATIONSHIP.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- CONCEPT_SYNONYM" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_SYNONYM.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE CONCEPT_SYNONYM IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/CONCEPT_SYNONYM.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN CONCEPT_SYNONYM.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DOMAIN" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/DOMAIN.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE DOMAIN IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/DOMAIN.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN DOMAIN.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- DRUG_STRENGTH" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/DRUG_STRENGTH.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE DRUG_STRENGTH IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/DRUG_STRENGTH.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN DRUG_STRENGTH.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- RELATIONSHIP" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/RELATIONSHIP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE RELATIONSHIP IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/RELATIONSHIP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN RELATIONSHIP.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- SOURCE_TO_CONCEPT_MAP" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/SOURCE_TO_CONCEPT_MAP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE SOURCE_TO_CONCEPT_MAP IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/SOURCE_TO_CONCEPT_MAP.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN SOURCE_TO_CONCEPT_MAP.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

echo "\n\n-- VOCABULARY" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
head -1 Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/VOCABULARY.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/\(.*\)/COMMENT ON TABLE VOCABULARY IS '[$DOMAIN] \1';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
grep "|" Documentation/CommonDataModel_Wiki_Files/StandardizedVocabularies/VOCABULARY.md |sed '/^Field/ d'|sed '/^:--/ d'|sed "s/'/''/g" |sed "s/|\(.*\)|.*|.*|\(.*\)|/COMMENT ON COLUMN VOCABULARY.\1 IS '\2';/g" >> "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"

sed -i '/^--\|^COMMENT/!d'          "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
sed -i "s/\t/ /g"   "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
sed -i "s/'[ ]*/'/g"   "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"
sed -i "s/[ ]\+';/';/g" "PostgreSQL/OMOP CDM comments - PostgreSQL.sql"



--
--CLINICAL
--



-- VISIT_OCCURENCE
COMMENT ON COLUMN omop.visit_occurence.visit_occurrence_id IS 'A unique identifier for each Person'';s visit or encounter at a healthcare provider.';
COMMENT ON COLUMN omop.visit_occurence.person_id IS 'A foreign key identifier to the Person for whom the visit is recorded. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.visit_occurence.visit_concept_id IS 'A foreign key that refers to a visit Concept identifier in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.visit_occurence.visit_start_date IS 'The start date of the visit.';
COMMENT ON COLUMN omop.visit_occurence.visit_start_datetime IS 'The date and time of the visit started.';
COMMENT ON COLUMN omop.visit_occurence.visit_end_date IS 'The end date of the visit. If this is a one-day visit the end date should match the start date.';
COMMENT ON COLUMN omop.visit_occurence.visit_end_datetime IS 'The date and time of the visit end.';
COMMENT ON COLUMN omop.visit_occurence.visit_type_concept_id IS 'A foreign key to the predefined Concept identifier in the Standardized Vocabularies reflecting the type of source data from which the visit record is derived.';
COMMENT ON COLUMN omop.visit_occurence.provider_id IS 'A foreign key to the provider in the provider table who was associated with the visit.';
COMMENT ON COLUMN omop.visit_occurence.care_site_id IS 'A foreign key to the care site in the care site table that was visited.';
COMMENT ON COLUMN omop.visit_occurence.visit_source_value IS 'The source code for the visit as it appears in the source data.';
COMMENT ON COLUMN omop.visit_occurence.visit_source_concept_id IS 'A foreign key to a Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.visit_occurence.admitting_source_concept_id|	 IS 'A foreign key to the predefined concept in the Place of Service Vocabulary reflecting the admitting source for a visit.';
COMMENT ON COLUMN omop.visit_occurence.admitting_source_value	 IS '	The source code for the admitting source as it appears in the source data.';
COMMENT ON COLUMN omop.visit_occurence.discharge_to_concept_id IS 'A foreign key to the predefined concept in the Place of Service Vocabulary reflecting the discharge disposition for a visit.';
COMMENT ON COLUMN omop.visit_occurence.discharge_to_source_value IS '	The source code for the discharge disposition as it appears in the source data.';
COMMENT ON COLUMN omop.visit_occurence.preceding_visit_occurrence_id	 IS 'A foreign key to the VISIT_OCCURRENCE table of the visit immediately preceding this visit';


-- CONDITION_OCCURENCE
COMMENT ON COLUMN omop.condition_occurence. condition_occurrence_id         IS ' A unique identifier for each Condition Occurrence event.                                                                                                                                                         ';
COMMENT ON COLUMN omop.condition_occurence. person_id                       IS ' A foreign key identifier to the Person who is experiencing the condition. The demographic details of that Person are stored in the PERSON table.                                                                 ';
COMMENT ON COLUMN omop.condition_occurence. condition_concept_id            IS ' A foreign key that refers to a Standard Condition Concept identifier in the Standardized Vocabularies.                                                                                                           ';
COMMENT ON COLUMN omop.condition_occurence. condition_start_date            IS ' The date when the instance of the Condition is recorded.                                                                                                                                                         ';
COMMENT ON COLUMN omop.condition_occurence. condition_start_datetime        IS ' The date and time when the instance of the Condition is recorded.                                                                                                                                                ';
COMMENT ON COLUMN omop.condition_occurence. condition_end_date              IS ' The date when the instance of the Condition is considered to have ended.                                                                                                                                         ';
COMMENT ON COLUMN omop.condition_occurence. condition_end_datetime          IS ' The date when the instance of the Condition is considered to have ended.                                                                                                                                         ';
COMMENT ON COLUMN omop.condition_occurence. condition_type_concept_id       IS ' A foreign key to the predefined Concept identifier in the Standardized Vocabularies reflecting the source data from which the condition was recorded, the level of standardization, and the type of occurrence.  ';
COMMENT ON COLUMN omop.condition_occurence. stop_reason                     IS ' The reason that the condition was no longer present, as indicated in the source data.                                                                                                                            ';
COMMENT ON COLUMN omop.condition_occurence. provider_id                     IS ' A foreign key to the Provider in the PROVIDER table who was responsible for capturing (diagnosing) the Condition.                                                                                                ';
COMMENT ON COLUMN omop.condition_occurence. visit_occurrence_id             IS ' A foreign key to the visit in the VISIT_OCCURRENCE table during which the Condition was determined (diagnosed).                                                                                                             ';
COMMENT ON COLUMN omop.condition_occurence. visit_detail_id             IS ' A foreign key to the visit in the VISIT_DETAIL table during which the Condition was determined (diagnosed).                                                                                                             ';
COMMENT ON COLUMN omop.condition_occurence. condition_source_value          IS ' The source code for the condition as it appears in the source data. This code is mapped to a standard condition concept in the Standardized Vocabularies and the original code is stored here for reference.     ';
COMMENT ON COLUMN omop.condition_occurence. condition_source_concept_id     IS ' A foreign key to a Condition Concept that refers to the code used in the source.                                                                                                                                 ';
COMMENT ON COLUMN omop.condition_occurence. condition_status_source_value   IS ' The source code for the condition status as it appears in the source data.    ';
COMMENT ON COLUMN omop.condition_occurence. condition_status_concept_id     IS ' A foreign key to the predefined concept in the standard vocabulary reflecting the condition status ';                                                                                                                               


-- DEATH
COMMENT ON COLUMN omop.death.person_id IS 'A foreign key identifier to the deceased person. The demographic details of that person are stored in the person table.';
COMMENT ON COLUMN omop.death.death_date  IS 'The date the person was deceased. If the precise date including day or month is not known or not allowed, December is used as the default month, and the last day of the month the default day.';
COMMENT ON COLUMN omop.death.death_datetime  IS 'The date and time the person was deceased. If the precise date including day or month is not known or not allowed, December is used as the default month, and the last day of the month the default day.';
COMMENT ON COLUMN omop.death.death_type_concept_id IS 'A foreign key referring to the predefined concept identifier in the Standardized Vocabularies reflecting how the death was represented in the source data.';
COMMENT ON COLUMN omop.death.cause_concept_id IS 'A foreign key referring to a standard concept identifier in the Standardized Vocabularies for conditions.';
COMMENT ON COLUMN omop.death.cause_source_value IS 'The source code for the cause of death as it appears in the source data. This code is mapped to a standard concept in the Standardized Vocabularies and the original code is, stored here for reference.';
COMMENT ON COLUMN omop.death.cause_source_concept_id IS 'A foreign key to the concept that refers to the code used in the source. Note, this variable name is abbreviated to ensure it will be allowable across database platforms.';


-- DEVICE_EXPOSURE
COMMENT ON COLUMN omop.device_exposure.device_exposure_id IS 'A system-generated unique identifier for each Device Exposure.';
COMMENT ON COLUMN omop.device_exposure.person_id IS 'A foreign key identifier to the Person who is subjected to the Device. The demographic details of that person are stored in the Person table.';
COMMENT ON COLUMN omop.device_exposure.device_concept_id IS 'A foreign key that refers to a Standard Concept identifier in the Standardized Vocabularies for the Device concept.';
COMMENT ON COLUMN omop.device_exposure.device_exposure_start_date IS 'The date the Device or supply was applied or used.';
COMMENT ON COLUMN omop.device_exposure.device_exposure_start_datetime IS 'The date and time the Device or supply was applied or used.';
COMMENT ON COLUMN omop.device_exposure.device_exposure_end_date IS 'The date the Device or supply was removed from use.';
COMMENT ON COLUMN omop.device_exposure.device_exposure_end_datetime IS 'The date and time the Device or supply was removed from use.';
COMMENT ON COLUMN omop.device_exposure.device_type_concept_id IS 'A foreign key to the predefined Concept identifier in the Standardized Vocabularies reflecting the type of Device Exposure recorded. It indicates how the Device Exposure was represented in the source data.';
COMMENT ON COLUMN omop.device_exposure.unique_device_id  IS 'A UDI or equivalent identifying the instance of the Device used in the Person.';
COMMENT ON COLUMN omop.device_exposure.quantity IS 'The number of individual Devices used for the exposure.';
COMMENT ON COLUMN omop.device_exposure.provider_id IS 'A foreign key to the provider in the PROVIDER table who initiated of administered the Device.';
COMMENT ON COLUMN omop.device_exposure.visit_occurrence_id IS 'A foreign key to the visit in the VISIT table during which the device was used.';
COMMENT ON COLUMN omop.device_exposure.device_source_value IS 'The source code for the Device as it appears in the source data. This code is mapped to a standard Device Concept in the Standardized Vocabularies and the original code is stored here for reference.';
COMMENT ON COLUMN omop.device_exposure.device_source_ concept_id IS 'A foreign key to a Device Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.device_exposure.visit_detail_id IS 'A foreign key to the visit in the visit-detail table during which the Drug Exposure was initiated.';


-- DRUG_EXPOSURE
COMMENT ON COLUMN omop.drug_exposure.drug_exposure_id IS 'A system-generated unique identifier for each Drug utilization event.';
COMMENT ON COLUMN omop.drug_exposure.person_id IS 'A foreign key identifier to the person who is subjected to the Drug. The demographic details of that person are stored in the person table.';
COMMENT ON COLUMN omop.drug_exposure.drug_concept_id IS 'A foreign key that refers to a Standard Concept identifier in the Standardized Vocabularies for the Drug concept.';
COMMENT ON COLUMN omop.drug_exposure.drug_exposure_start_date IS 'The start date for the current instance of Drug utilization. Valid entries include a start date of a prescription, the date a prescription was filled, or the date on which a Drug administration procedure was recorded.';
COMMENT ON COLUMN omop.drug_exposure.drug_exposure_start_datetime IS 'The start date and time for the current instance of Drug utilization. Valid entries include a start date of a prescription, the date a prescription was filled, or the date on which a Drug administration procedure was recorded.';
COMMENT ON COLUMN omop.drug_exposure.drug_exposure_end_date IS 'The end date for the current instance of Drug utilization. It is not available from all sources.';
COMMENT ON COLUMN omop.drug_exposure.drug_exposure_end_datetime IS 'The end date and time for the current instance of Drug utilization. It is not available from all sources.';
COMMENT ON COLUMN omop.drug_exposure.verbatim_end_date IS 'The known end date of a drug_exposure as provided by the source';
COMMENT ON COLUMN omop.drug_exposure.drug_type_concept_id IS ' A foreign key to the predefined Concept identifier in the Standardized Vocabularies reflecting the type of Drug Exposure recorded. It indicates how the Drug Exposure was represented in the source data.';
COMMENT ON COLUMN omop.drug_exposure.stop_reason IS 'The reason the Drug was stopped. Reasons include regimen completed, changed, removed, etc.';
COMMENT ON COLUMN omop.drug_exposure.refills IS 'The number of refills after the initial prescription. The initial prescription is not counted, values start with 0.';
COMMENT ON COLUMN omop.drug_exposure.quantity  IS 'The quantity of drug as recorded in the original prescription or dispensing record.';
COMMENT ON COLUMN omop.drug_exposure.days_supply IS 'The number of days of supply of the medication as recorded in the original prescription or dispensing record.';
COMMENT ON COLUMN omop.drug_exposure.sig IS 'The directions ("signetur") on the Drug prescription as recorded in the original prescription (and printed on the container) or dispensing record.';
COMMENT ON COLUMN omop.drug_exposure.route_concept_id IS 'A foreign key to a predefined concept in the Standardized Vocabularies reflecting the route of administration.';
COMMENT ON COLUMN omop.drug_exposure.lot_number IS 'An identifier assigned to a particular quantity or lot of Drug product from the manufacturer.';
COMMENT ON COLUMN omop.drug_exposure.provider_id IS 'A foreign key to the provider in the provider table who initiated (prescribed or administered) the Drug Exposure.';
COMMENT ON COLUMN omop.drug_exposure.visit_occurrence_id IS 'A foreign key to the visit in the visit table during which the Drug Exposure was initiated.';
COMMENT ON COLUMN omop.drug_exposure.drug_source_value IS 'The source code for the Drug as it appears in the source data. This code is mapped to a Standard Drug concept in the Standardized Vocabularies and the original code is, stored here for reference.';
COMMENT ON COLUMN omop.drug_exposure.drug_source_concept_id IS 'A foreign key to a Drug Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.drug_exposure.route_source_value IS 'The information about the route of administration as detailed in the source.';
COMMENT ON COLUMN omop.drug_exposure.dose_unit_source_value IS 'The information about the dose unit as detailed in the source.';
COMMENT ON COLUMN omop.drug_exposure.visit_detail_id IS 'A foreign key to the visit in the VISIT_DETAIL table during which the Drug Exposure was initiated.';


-- FACT_RELATIONSHIP
COMMENT ON COLUMN omop.FACT_RELATIONSHIP.domain_concept_id_1 IS 'The concept representing the domain of fact one, from which the corresponding table can be inferred.';
COMMENT ON COLUMN omop.FACT_RELATIONSHIP.fact_id_1 IS 'The unique identifier in the table corresponding to the domain of fact one.';
COMMENT ON COLUMN omop.FACT_RELATIONSHIP.domain_concept_id_2 IS 'The concept representing the domain of fact two, from which the corresponding table can be inferred.';
COMMENT ON COLUMN omop.FACT_RELATIONSHIP.fact_id_2 IS 'The unique identifier in the table corresponding to the domain of fact two.';
COMMENT ON COLUMN omop.FACT_RELATIONSHIP.relationship_concept_id  IS 'A foreign key to a Standard Concept ID of relationship in the Standardized Vocabularies.';


-- MEASUREMENT
COMMENT ON COLUMN omop.MEASUREMENT.measurement_id IS 'A unique identifier for each Measurement.';
COMMENT ON COLUMN omop.MEASUREMENT.person_id IS 'A foreign key identifier to the Person about whom the measurement was recorded. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.MEASUREMENT.measurement_concept_id IS 'A foreign key to the standard measurement concept identifier in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.MEASUREMENT.measurement_date IS 'The date of the Measurement.';
COMMENT ON COLUMN omop.MEASUREMENT.measurement_datetime IS 'The date and time of the Measurement. Some database systems don'';t have a datatype of time. To accomodate all temporal analyses, datatype datetime can be used (combining measurement_date and measurement_time [forum discussion](http://forums.ohdsi.org/t/date-time-and-datetime-problem-and-the-world-of-hours-and-1day/314))';
COMMENT ON COLUMN omop.MEASUREMENT.measurement_type_concept_id IS 'A foreign key to the predefined Concept in the Standardized Vocabularies reflecting the provenance from where the Measurement record was recorded.';
COMMENT ON COLUMN omop.MEASUREMENT.operator_concept_id IS 'A foreign key identifier to the predefined Concept in the Standardized Vocabularies reflecting the mathematical operator that is applied to the value_as_number. Operators are <, <=, =, >=, >.';
COMMENT ON COLUMN omop.MEASUREMENT.value_as_number IS 'A Measurement result where the result is expressed as a numeric value.';
COMMENT ON COLUMN omop.MEASUREMENT.value_as_concept_id IS 'A foreign key to a Measurement result represented as a Concept from the Standardized Vocabularies (e.g., positive/negative, present/absent, low/high, etc.).';
COMMENT ON COLUMN omop.MEASUREMENT.unit_concept_id IS 'A foreign key to a Standard Concept ID of Measurement Units in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.MEASUREMENT.range_low IS 'The lower limit of the normal range of the Measurement result. The lower range is assumed to be of the same unit of measure as the Measurement value.';
COMMENT ON COLUMN omop.MEASUREMENT.range_high IS 'The upper limit of the normal range of the Measurement. The upper range is assumed to be of the same unit of measure as the Measurement value.';
COMMENT ON COLUMN omop.MEASUREMENT.provider_id IS 'A foreign key to the provider in the PROVIDER table who was responsible for initiating or obtaining the measurement.';
COMMENT ON COLUMN omop.MEASUREMENT.visit_occurrence_id IS 'A foreign key to the Visit in the VISIT_OCCURRENCE table during which the Measurement was recorded.';
COMMENT ON COLUMN omop.MEASUREMENT.visit_detail_id IS 'A foreign key to the Visit in the VISIT_DETAIL table during which the Measurement was recorded. ';
COMMENT ON COLUMN omop.MEASUREMENT.measurement_source_value IS 'The Measurement name as it appears in the source data. This code is mapped to a Standard Concept in the Standardized Vocabularies and the original code is stored here for reference.';
COMMENT ON COLUMN omop.MEASUREMENT.measurement_source_concept_id IS 'A foreign key to a Concept in the Standard Vocabularies that refers to the code used in the source.';
COMMENT ON COLUMN omop.MEASUREMENT.unit_source_value IS 'The source code for the unit as it appears in the source data. This code is mapped to a standard unit concept in the Standardized Vocabularies and the original code is stored here for reference.';
COMMENT ON COLUMN omop.MEASUREMENT.value_source_value IS 'The source value associated with the content of the value_as_number or value_as_concept_id as stored in the source data.';


-- NOTE
COMMENT ON COLUMN omop.NOTE.note_id IS 'A unique identifier for each note.';
COMMENT ON COLUMN omop.NOTE.person_id IS 'A foreign key identifier to the Person about whom the Note was recorded. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.NOTE.note_date  IS 'The date the note was recorded.';
COMMENT ON COLUMN omop.NOTE.note_datetime IS 'The date and time the note was recorded.';
COMMENT ON COLUMN omop.NOTE.note_type_concept_id IS 'A foreign key to the predefined Concept in the Standardized Vocabularies reflecting the type, origin or provenance of the Note.';
COMMENT ON COLUMN omop.NOTE.note_class_concept_id IS '	A foreign key to the predefined Concept in the Standardized Vocabularies reflecting the HL7 LOINC Document Type Vocabulary classification of the note.';
COMMENT ON COLUMN omop.NOTE.note_title	 IS '	The title of the Note as it appears in the source.';
COMMENT ON COLUMN omop.NOTE.note_text IS 'The content of the Note.';
COMMENT ON COLUMN omop.NOTE.encoding_concept_id	 IS '	A foreign key to the predefined Concept in the Standardized Vocabularies reflecting the note character encoding type';
COMMENT ON COLUMN omop.NOTE.language_concept_id	 IS 'A foreign key to the predefined Concept in the Standardized Vocabularies reflecting the language of the note';
COMMENT ON COLUMN omop.NOTE.provider_id IS 'A foreign key to the Provider in the PROVIDER table who took the Note.';
COMMENT ON COLUMN omop.NOTE.note_source_value IS 'The source value associated with the origin of the note';
COMMENT ON COLUMN omop.NOTE.visit_occurrence_id IS 'Foreign key to the Visit in the VISIT_OCCURRENCE table when the Note was taken.';


-- VISIT_DETAIL
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_detail_id IS 'A unique identifier for each Person'';s visit or encounter at a healthcare provider.';
COMMENT ON COLUMN omop.VISIT_DETAIL.person_id IS 'A foreign key identifier to the Person for whom the visit is recorded. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_detail_concept_id IS 'A foreign key that refers to a visit Concept identifier in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_start_date IS 'The start date of the visit.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_start_datetime IS 'The date and time of the visit started.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_end_date IS 'The end date of the visit. If this is a one-day visit the end date should match the start date.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_end_datetime IS 'The date and time of the visit end.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_type_concept_id IS 'A foreign key to the predefined Concept identifier in the Standardized Vocabularies reflecting the type of source data from which the visit record is derived.';
COMMENT ON COLUMN omop.VISIT_DETAIL.provider_id IS 'A foreign key to the provider in the provider table who was associated with the visit.';
COMMENT ON COLUMN omop.VISIT_DETAIL.care_site_id IS 'A foreign key to the care site in the care site table that was visited.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_source_value IS 'The source code for the visit as it appears in the source data.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_source_concept_id IS 'A foreign key to a Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.VISIT_DETAIL.admitting_source_value	 IS '	The source code for the admitting source as it appears in the source data.';
COMMENT ON COLUMN omop.VISIT_DETAIL.admitting_source_concept_id|	 IS 'A foreign key to the predefined concept in the Place of Service Vocabulary reflecting the admitting source for a visit.';
COMMENT ON COLUMN omop.VISIT_DETAIL.discharge_to_source_value IS '	The source code for the discharge disposition as it appears in the source data.';
COMMENT ON COLUMN omop.VISIT_DETAIL.discharge_to_concept_id IS 'A foreign key to the predefined concept in the Place of Service Vocabulary reflecting the discharge disposition for a visit.';
COMMENT ON COLUMN omop.VISIT_DETAIL.preceding_visit_detail_id	 IS 'A foreign key to the VISIT_DETAIL table of the visit immediately preceding this visit';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_detail_parent_id	 IS 'A foreign key to the VISIT_DETAIL table record to represent the immediate parent visit-detail record.';
COMMENT ON COLUMN omop.VISIT_DETAIL.visit_occurrence_id	 IS 'A foreign key that refers to the record in the VISIT_OCCURRENCE table. This is a required field, because for every visit_detail is a child of visit_occurrence and cannot exist without a corresponding parent record in visit_occurrence.';


-- SPECIMEN
COMMENT ON COLUMN omop.SPECIMEN.specimen_id IS 'A unique identifier for each specimen.';
COMMENT ON COLUMN omop.SPECIMEN.person_id IS 'A foreign key identifier to the Person for whom the Specimen is recorded.';
COMMENT ON COLUMN omop.SPECIMEN.specimen_concept_id IS 'A foreign key referring to a Standard Concept identifier in the Standardized Vocabularies for the Specimen.';
COMMENT ON COLUMN omop.SPECIMEN.specimen_type_concept_id IS 'A foreign key referring to the Concept identifier in the Standardized Vocabularies reflecting the system of record from which the Specimen was represented in the source data.';
COMMENT ON COLUMN omop.SPECIMEN.specimen_date IS 'The date the specimen was obtained from the Person.';
COMMENT ON COLUMN omop.SPECIMEN.specimen_datetime IS 'The date and time on the date when the Specimen was obtained from the person.';
COMMENT ON COLUMN omop.SPECIMEN.quantity IS 'The amount of specimen collection from the person during the sampling procedure.';
COMMENT ON COLUMN omop.SPECIMEN.unit_concept_id IS 'A foreign key to a Standard Concept identifier for the Unit associated with the numeric quantity of the Specimen collection.';
COMMENT ON COLUMN omop.SPECIMEN.anatomic_site_concept_id IS 'A foreign key to a Standard Concept identifier for the anatomic location of specimen collection.';
COMMENT ON COLUMN omop.SPECIMEN.disease_status_concept_id IS 'A foreign key to a Standard Concept identifier for the Disease Status of specimen collection.';
COMMENT ON COLUMN omop.SPECIMEN.specimen_source_id IS 'The Specimen identifier as it appears in the source data.';
COMMENT ON COLUMN omop.SPECIMEN.specimen_source_value IS 'The Specimen value as it appears in the source data. This value is mapped to a Standard Concept in the Standardized Vocabularies and the original code is, stored here for reference.';
COMMENT ON COLUMN omop.SPECIMEN.unit_source_value IS 'The information about the Unit as detailed in the source.';
COMMENT ON COLUMN omop.SPECIMEN.anatomic_site_source_value IS 'The information about the anatomic site as detailed in the source.';
COMMENT ON COLUMN omop.SPECIMEN.disease_status_source_value IS 'The information about the disease status as detailed in the source.';


-- PROCEDURE_OCCURRENCE
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_occurrence_id IS 'A system-generated unique identifier for each Procedure Occurrence.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.person_id IS 'A foreign key identifier to the Person who is subjected to the Procedure. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_concept_id IS 'A foreign key that refers to a standard procedure Concept identifier in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_date IS 'The date on which the Procedure was performed.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_datetime IS 'The date and time on which the Procedure was performed.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_type_concept_id IS 'A foreign key to the predefined Concept identifier in the Standardized Vocabularies reflecting the type of source data from which the procedure record is derived.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.modifier_concept_id IS 'A foreign key to a Standard Concept identifier for a modifier to the Procedure (e.g. bilateral)';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.quantity IS 'The quantity of procedures ordered or administered.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.provider_id IS 'A foreign key to the provider in the provider table who was responsible for carrying out the procedure.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.visit_occurrence_id IS 'A foreign key to the visit in the visit table during which the Procedure was carried out.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_source_value IS 'The source code for the Procedure as it appears in the source data. This code is mapped to a standard procedure Concept in the Standardized Vocabularies and the original code is, stored here for reference. Procedure source codes are typically ICD-9-Proc, CPT-4, HCPCS or OPCS-4 codes.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.procedure_source_concept_id IS 'A foreign key to a Procedure Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.qualifier_source_value IS 'The source code for the qualifier as it appears in the source data.';
COMMENT ON COLUMN omop.PROCEDURE_OCCURRENCE.visit_detail_id IS 'A foreign key to the visit in the visit table during which the Procedure was carried out.';


-- PERSON
COMMENT ON COLUMN omop.PERSON.person_id IS 'A unique identifier for each person.';
COMMENT ON COLUMN omop.PERSON.gender_concept_id IS 'A foreign key that refers to an identifier in the CONCEPT table for the unique gender of the person.';
COMMENT ON COLUMN omop.PERSON.year_of_birth  IS 'The year of birth of the person. For data sources with date of birth, the year is extracted. For data sources where the year of birth is not available, the approximate year of birth is derived based on any age group categorization available.';
COMMENT ON COLUMN omop.PERSON.month_of_birth IS 'The month of birth of the person. For data sources that provide the precise date of birth, the month is extracted and stored in this field.';
COMMENT ON COLUMN omop.PERSON.day_of_birth IS 'The day of the month of birth of the person. For data sources that provide the precise date of birth, the day is extracted and stored in this field.';
COMMENT ON COLUMN omop.PERSON.birth_datetime IS 'The date and time of birth of the person.';
COMMENT ON COLUMN omop.PERSON.race_concept_id IS 'A foreign key that refers to an identifier in the CONCEPT table for the unique race of the person.';
COMMENT ON COLUMN omop.PERSON.ethnicity_concept_id IS 'A foreign key that refers to the standard concept identifier in the Standardized Vocabularies for the ethnicity of the person.';
COMMENT ON COLUMN omop.PERSON.location_id IS 'A foreign key to the place of residency for the person in the location table, where the detailed address information is stored.';
COMMENT ON COLUMN omop.PERSON.provider_id IS 'A foreign key to the primary care provider the person is seeing in the provider table.';
COMMENT ON COLUMN omop.PERSON.care_site_id IS 'A foreign key to the site of primary care in the care_site table, where the details of the care site are stored.';
COMMENT ON COLUMN omop.PERSON.person_source_value IS 'An (encrypted) key derived from the person identifier in the source data. This is necessary when a use case requires a link back to the person data at the source dataset.';
COMMENT ON COLUMN omop.PERSON.gender_source_value IS 'The source code for the gender of the person as it appears in the source data. The person’s gender is mapped to a standard gender concept in the Standardized Vocabularies; the original value is stored here for reference.';
COMMENT ON COLUMN omop.PERSON.gender_source_concept_id IS 'A foreign key to the gender concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.PERSON.race_source_value IS 'The source code for the race of the person as it appears in the source data. The person race is mapped to a standard race concept in the Standardized Vocabularies and the original value is stored here for reference.';
COMMENT ON COLUMN omop.PERSON.race_source_concept_id IS 'A foreign key to the race concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.PERSON.ethnicity_source_value IS 'The source code for the ethnicity of the person as it appears in the source data. The person ethnicity is mapped to a standard ethnicity concept in the Standardized Vocabularies and the original code is, stored here for reference.';
COMMENT ON COLUMN omop.PERSON.ethnicity_source_concept_id IS 'A foreign key to the ethnicity concept that refers to the code used in the source.';


-- OBSERVATION_PERIOD
COMMENT ON COLUMN omop.OBSERVATION_PERIOD.observation_period_id IS 'A unique identifier for each observation period.';
COMMENT ON COLUMN omop.OBSERVATION_PERIOD.person_id IS 'A foreign key identifier to the person for whom the observation period is defined. The demographic details of that person are stored in the person table.';
COMMENT ON COLUMN omop.OBSERVATION_PERIOD.observation_period_start_date IS 'The start date of the observation period for which data are available from the data source.';
COMMENT ON COLUMN omop.OBSERVATION_PERIOD.observation_period_end_date IS 'The end date of the observation period for which data are available from the data source.';
COMMENT ON COLUMN omop.OBSERVATION_PERIOD.period_type_concept_id IS 'A foreign key identifier to the predefined concept in the Standardized Vocabularies reflecting the source of the observation period information';


-- OBSERVATION
COMMENT ON COLUMN omop.OBSERVATION.observation_id IS 'A unique identifier for each observation.';
COMMENT ON COLUMN omop.OBSERVATION.person_id IS 'A foreign key identifier to the Person about whom the observation was recorded. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.OBSERVATION.observation_concept_id IS 'A foreign key to the standard observation concept identifier in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.OBSERVATION.observation_date IS 'The date of the observation.';
COMMENT ON COLUMN omop.OBSERVATION.observation_datetime IS 'The date and time of the observation.';
COMMENT ON COLUMN omop.OBSERVATION.observation_type_concept_id IS 'A foreign key to the predefined concept identifier in the Standardized Vocabularies reflecting the type of the observation.';
COMMENT ON COLUMN omop.OBSERVATION.value_as_number IS 'The observation result stored as a number. This is applicable to observations where the result is expressed as a numeric value.';
COMMENT ON COLUMN omop.OBSERVATION.value_as_string IS 'The observation result stored as a string. This is applicable to observations where the result is expressed as verbatim text.';
COMMENT ON COLUMN omop.OBSERVATION.value_as_concept_id IS 'A foreign key to an observation result stored as a Concept ID. This is applicable to observations where the result can be expressed as a Standard Concept from the Standardized Vocabularies (e.g., positive/negative, present/absent, low/high, etc.).';
COMMENT ON COLUMN omop.OBSERVATION.qualifier_concept_id IS 'A foreign key to a Standard Concept ID for a qualifier (e.g., severity of drug-drug interaction alert)';
COMMENT ON COLUMN omop.OBSERVATION.unit_concept_id IS 'A foreign key to a Standard Concept ID of measurement units in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.OBSERVATION.provider_id IS 'A foreign key to the provider in the PROVIDER table who was responsible for making the observation.';
COMMENT ON COLUMN omop.OBSERVATION.visit_occurrence_id IS 'A foreign key to the visit in the VISIT_OCCURRENCE table during which the observation was recorded.';
COMMENT ON COLUMN omop.OBSERVATION.visit_detail_id IS 'A foreign key to the visit in the VISIT_DETAIL table during which the observation was recorded.';
COMMENT ON COLUMN omop.OBSERVATION.observation_source_value IS 'The observation code as it appears in the source data. This code is mapped to a Standard Concept in the Standardized Vocabularies and the original code is, stored here for reference.';
COMMENT ON COLUMN omop.OBSERVATION.observation_source_concept_id IS 'A foreign key to a Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.OBSERVATION.unit_source_value IS 'The source code for the unit as it appears in the source data. This code is mapped to a standard unit concept in the Standardized Vocabularies and the original code is, stored here for reference.';
COMMENT ON COLUMN omop.OBSERVATION.qualifier_source_value IS 'The source value associated with a qualifier to characterize the observation';


-- NOTE_NLP
COMMENT ON COLUMN omop.NOTE_NLP.note_nlp_id  IS ' A unique identifier for each term extracted from a note.';
COMMENT ON COLUMN omop.NOTE_NLP.note_id  IS ' A foreign key to the Note table note the term was extracted from.';
COMMENT ON COLUMN omop.NOTE_NLP.section_concept_id  IS ' A foreign key to the predefined Concept in the Standardized Vocabularies representing the section of the extracted term.';
COMMENT ON COLUMN omop.NOTE_NLP.snippet  IS ' A small window of text surrounding the term.';
COMMENT ON COLUMN omop.NOTE_NLP.offset  IS ' Character offset of the extracted term in the input note.';
COMMENT ON COLUMN omop.NOTE_NLP.lexical_variant  IS ' Raw text extracted from the NLP tool.';
COMMENT ON COLUMN omop.NOTE_NLP.note_nlp_concept_id  IS ' A foreign key to the predefined Concept in the Standardized Vocabularies reflecting the normalized concept for the extracted term. Domain of the term is represented as part of the Concept table.';
COMMENT ON COLUMN omop.NOTE_NLP.note_nlp_source_concept_id  IS ' A foreign key to a Concept that refers to the code in the source vocabulary used by the NLP system';
COMMENT ON COLUMN omop.NOTE_NLP.nlp_system  IS ' Name and version of the NLP system that extracted the term.Useful for data provenance.';
COMMENT ON COLUMN omop.NOTE_NLP.nlp_date  IS ' The date of the note processing.Useful for data provenance.';
COMMENT ON COLUMN omop.NOTE_NLP.nlp_date_time  IS ' The date and time of the note processing. Useful for data provenance.';
COMMENT ON COLUMN omop.NOTE_NLP.term_exists  IS ' A summary modifier that signifies presence or absence of the term for a given patient. Useful for quick querying. *';


--
--ECONOMIC
--



-- COST
COMMENT ON COLUMN omop.COST.cost_id IS 'A unique identifier for each COST record.';
COMMENT ON COLUMN omop.COST.cost_event_id IS 'A foreign key identifier to the event (e.g. Measurement, Procedure, Visit, Drug Exposure, etc) record for which cost data are recorded.';
COMMENT ON COLUMN omop.COST.cost_domain_id IS 'The concept representing the domain of the cost event, from which the corresponding table can be inferred that contains the entity for which cost information is recorded.';
COMMENT ON COLUMN omop.COST.cost_type_concept_id IS 'A foreign key identifier to a concept in the CONCEPT table for the provenance or the source of the COST data: Calculated from insurance claim information, provider revenue, calculated from cost-to-charge ratio, reported from accounting database, etc.';
COMMENT ON COLUMN omop.COST.currency_concept_id IS 'A foreign key identifier to the concept representing the 3-letter code used to delineate international currencies, such as USD for US Dollar.';
COMMENT ON COLUMN omop.COST.total_charge IS 'The total amount charged by some provider of goods or services (e.g. hospital, physician pharmacy, dme provider) to payers (insurance companies, the patient).';
COMMENT ON COLUMN omop.COST.total_cost IS 'The cost incurred by the provider of goods or services.';
COMMENT ON COLUMN omop.COST.total_paid IS 'The total amount actually paid from all payers for goods or services of the provider.';
COMMENT ON COLUMN omop.COST.paid_by_payer IS 'The amount paid by the Payer for the goods or services.';
COMMENT ON COLUMN omop.COST.paid_by_patient IS 'The total amount paid by the Person as a share of the expenses.';
COMMENT ON COLUMN omop.COST.paid_patient_copay IS 'The amount paid by the Person as a fixed contribution to the expenses.';
COMMENT ON COLUMN omop.COST.paid_patient_coinsurance IS 'The amount paid by the Person as a joint assumption of risk. Typically, this is a percentage of the expenses defined by the Payer Plan after the Person'';s deductible is exceeded.';
COMMENT ON COLUMN omop.COST.paid_patient_deductible IS 'The amount paid by the Person that is counted toward the deductible defined by the Payer Plan. paid_patient_deductible does contribute to the paid_by_patient variable.';
COMMENT ON COLUMN omop.COST.paid_by_primary IS 'The amount paid by a primary Payer through the coordination of benefits.';
COMMENT ON COLUMN omop.COST.paid_ingredient_cost IS 'The amount paid by the Payer to a pharmacy for the drug, excluding the amount paid for dispensing the drug.  paid_ingredient_cost contributes to the paid_by_payer field if this field is populated with a nonzero value.';
COMMENT ON COLUMN omop.COST.paid_dispensing_fee IS 'The amount paid by the Payer to a pharmacy for dispensing a drug, excluding the amount paid for the drug ingredient. paid_dispensing_fee contributes to the paid_by_payer field if this field is populated with a nonzero value.';
COMMENT ON COLUMN omop.COST.payer_plan_period_id IS 'A foreign key to the PAYER_PLAN_PERIOD table, where the details of the Payer, Plan and Family are stored.  Record the payer_plan_id that relates to the payer who contributed to the paid_by_payer field.';
COMMENT ON COLUMN omop.COST.amount_allowed IS 'The contracted amount agreed between the payer and provider.';
COMMENT ON COLUMN omop.COST.revenue_code_concept_id IS 'A foreign key referring to a Standard Concept ID in the Standardized Vocabularies for Revenue codes.';
COMMENT ON COLUMN omop.COST.revenue_code_source_value IS 'The source code for the Revenue code as it appears in the source data, stored here for reference.';
COMMENT ON COLUMN omop.COST.drg_concept_id IS 'A foreign key to the predefined concept in the DRG Vocabulary reflecting the DRG for a visit.';
COMMENT ON COLUMN omop.COST.drg_source_value IS '	The 3-digit DRG source code as it appears in the source data.';


-- PAYER_PLAN_PERIOD
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.payer_plan_period_id IS 'A identifier for each unique combination of payer, plan, family code and time span.';
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.person_id IS 'A foreign key identifier to the Person covered by the payer. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.payer_plan_period_start_date IS 'The start date of the payer plan period.';
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.payer_plan_period_end_date IS 'The end date of the payer plan period.';
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.payer_source_value IS 'The source code for the payer as it appears in the source data.';
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.plan_source_value IS 'The source code for the Person'';s health benefit plan as it appears in the source data.';
COMMENT ON COLUMN omop.PAYER_PLAN_PERIOD.family_source_value IS 'The source code for the Person'';s family as it appears in the source data.';


--
--METADATA
--



-- CDM_SOURCE
COMMENT ON COLUMN omop.CDM_SOURCE.cdm_source_name IS 'The full name of the source';
COMMENT ON COLUMN omop.CDM_SOURCE.cdm_source_abbreviation IS 'An abbreviation of the name';
COMMENT ON COLUMN omop.CDM_SOURCE.cdm_holder IS 'The name of the organization responsible for the development of the CDM instance';
COMMENT ON COLUMN omop.CDM_SOURCE.source_description IS 'A description of the source data origin and purpose for collection. The description may contain a summary of the period of time that is expected to be covered by this dataset.';
COMMENT ON COLUMN omop.CDM_SOURCE.source_documentation_reference IS 'URL or other external reference to location of source documentation';
COMMENT ON COLUMN omop.CDM_SOURCE.cdm_etl _reference IS 'URL or other external reference to location of ETL specification documentation and ETL source code';
COMMENT ON COLUMN omop.CDM_SOURCE.source_release_date IS 'The date for which the source data are most current, such as the last day of data capture';
COMMENT ON COLUMN omop.CDM_SOURCE.cdm_release_date IS 'The date when the CDM was instantiated';
COMMENT ON COLUMN omop.CDM_SOURCE.cdm_version IS 'The version of CDM used';
COMMENT ON COLUMN omop.CDM_SOURCE.vocabulary_version IS 'The version of the vocabulary used';


--
--DERIVED
--



-- COHORT_ATTRIBUTE
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.cohort_definition_id IS 'A foreign key to a record in the [COHORT_DEFINITION](https://github.com/OHDSI/CommonDataModel/wiki/COHORT_DEFINITION) table containing relevant Cohort Definition information.';
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.subject_id IS 'A foreign key to the subject in the Cohort. These could be referring to records in the PERSON, PROVIDER, VISIT_OCCURRENCE table.';
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.cohort_start_date IS 'The date when the Cohort Definition criteria for the Person, Provider or Visit first match.';
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.cohort_end_date IS 'The date when the Cohort Definition criteria for the Person, Provider or Visit no longer match or the Cohort membership was terminated.';
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.attribute_definition_id IS 'A foreign key to a record in the [ATTRIBUTE_DEFINITION](https://github.com/OHDSI/CommonDataModel/wiki/ATTRIBUTE_DEFINITION) table containing relevant Attribute Definition information.';
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.value_as_number IS 'The attribute result stored as a number. This is applicable to attributes where the result is expressed as a numeric value.';
COMMENT ON COLUMN omop.COHORT_ATTRIBUTE.value_as_concept_id IS 'The attribute result stored as a Concept ID. This is applicable to attributes where the result is expressed as a categorical value.';


-- COHORT
COMMENT ON COLUMN omop.COHORT.cohort_definition_id IS 'A foreign key to a record in the COHORT_DEFINITION table containing relevant Cohort Definition information.';
COMMENT ON COLUMN omop.COHORT.subject_id IS 'A foreign key to the subject in the cohort. These could be referring to records in the PERSON, PROVIDER, VISIT_OCCURRENCE table.';
COMMENT ON COLUMN omop.COHORT.cohort_start_date IS 'The date when the Cohort Definition criteria for the Person, Provider or Visit first match.';
COMMENT ON COLUMN omop.COHORT.cohort_end_date IS 'The date when the Cohort Definition criteria for the Person, Provider or Visit no longer match or the Cohort membership was terminated.';


-- CONDITION_ERA
COMMENT ON COLUMN omop.CONDITION_ERA.condition_era_id IS 'A unique identifier for each Condition Era.';
COMMENT ON COLUMN omop.CONDITION_ERA.person_id IS 'A foreign key identifier to the Person who is experiencing the Condition during the Condition Era. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.CONDITION_ERA.condition_concept_id IS 'A foreign key that refers to a standard Condition Concept identifier in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.CONDITION_ERA.condition_era_start_date IS 'The start date for the Condition Era constructed from the individual instances of Condition Occurrences. It is the start date of the very first chronologically recorded instance of the condition.';
COMMENT ON COLUMN omop.CONDITION_ERA.condition_era_end_date IS 'The end date for the Condition Era constructed from the individual instances of Condition Occurrences. It is the end date of the final continuously recorded instance of the Condition.';
COMMENT ON COLUMN omop.CONDITION_ERA.condition_occurrence_count IS 'The number of individual Condition Occurrences used to construct the condition era.';


-- DOSE_ERA
COMMENT ON COLUMN omop.DOSE_ERA.dose_era_id IS 'A unique identifier for each Dose Era.';
COMMENT ON COLUMN omop.DOSE_ERA.person_id IS 'A foreign key identifier to the Person who is subjected to the drug during the drug era. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.DOSE_ERA.drug_concept_id IS 'A foreign key that refers to a Standard Concept identifier in the Standardized Vocabularies for the active Ingredient Concept.';
COMMENT ON COLUMN omop.DOSE_ERA.unit_concept_id IS 'A foreign key that refers to a Standard Concept identifier in the Standardized Vocabularies for the unit concept.';
COMMENT ON COLUMN omop.DOSE_ERA.dose_value IS 'The numeric value of the dose.';
COMMENT ON COLUMN omop.DOSE_ERA.dose_era_start_date IS 'The start date for the drug era constructed from the individual instances of drug exposures. It is the start date of the very first chronologically recorded instance of utilization of a drug.';
COMMENT ON COLUMN omop.DOSE_ERA.dose_era_end_date IS 'The end date for the drug era constructed from the individual instance of drug exposures. It is the end date of the final continuously recorded instance of utilization of a drug.';


-- DRUG_ERA
COMMENT ON COLUMN omop.DRUG_ERA.drug_era_id IS 'A unique identifier for each Drug Era.';
COMMENT ON COLUMN omop.DRUG_ERA.person_id IS 'A foreign key identifier to the Person who is subjected to the Drug during the fDrug Era. The demographic details of that Person are stored in the PERSON table.';
COMMENT ON COLUMN omop.DRUG_ERA.drug_concept_id IS 'A foreign key that refers to a Standard Concept identifier in the Standardized Vocabularies for the Ingredient Concept.';
COMMENT ON COLUMN omop.DRUG_ERA.drug_era_start_date IS 'The start date for the Drug Era constructed from the individual instances of Drug Exposures. It is the start date of the very first chronologically recorded instance of conutilization of a Drug.';
COMMENT ON COLUMN omop.DRUG_ERA.drug_era_end_date IS 'The end date for the drug era constructed from the individual instance of drug exposures. It is the end date of the final continuously recorded instance of utilization of a drug.';
COMMENT ON COLUMN omop.DRUG_ERA.drug_exposure_count IS 'The number of individual Drug Exposure occurrences used to construct the Drug Era.';
COMMENT ON COLUMN omop.DRUG_ERA.gap_days IS 'The number of days that are not covered by DRUG_EXPOSURE records that were used to make up the era record.';


--
--SYSTEM
--



-- CARE_SITE
COMMENT ON COLUMN omop.CARE_SITE.care_site_id IS 'A unique identifier for each Care Site.';
COMMENT ON COLUMN omop.CARE_SITE.care_site_name IS 'The verbatim description or name of the Care Site as in data source';
COMMENT ON COLUMN omop.CARE_SITE.place_of_service_concept_id IS 'A foreign key that refers to a Place of Service Concept ID in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.CARE_SITE.location_id IS 'A foreign key to the geographic Location in the LOCATION table, where the detailed address information is stored.';
COMMENT ON COLUMN omop.CARE_SITE.care_site_source_value IS 'The identifier for the Care Site in the source data, stored here for reference.';
COMMENT ON COLUMN omop.CARE_SITE.place_of_service_source_value IS 'The source code for the Place of Service as it appears in the source data, stored here for reference.';


-- LOCATION
COMMENT ON COLUMN omop.LOCATION.location_id IS 'A unique identifier for each geographic location.';
COMMENT ON COLUMN omop.LOCATION.address_1 IS 'The address field 1, typically used for the street address, as it appears in the source data.';
COMMENT ON COLUMN omop.LOCATION.address_2 IS 'The address field 2, typically used for additional detail such as buildings, suites, floors, as it appears in the source data.';
COMMENT ON COLUMN omop.LOCATION.city  IS 'The city field as it appears in the source data.';
COMMENT ON COLUMN omop.LOCATION.state IS 'The state field as it appears in the source data.';
COMMENT ON COLUMN omop.LOCATION.zip IS 'The zip or postal code.';
COMMENT ON COLUMN omop.LOCATION.county IS 'The county.';
COMMENT ON COLUMN omop.LOCATION.location_source_value IS 'The verbatim information that is used to uniquely identify the location as it appears in the source data.';


-- PROVIDER
COMMENT ON COLUMN omop.PROVIDER.provider_id IS 'A unique identifier for each Provider.';
COMMENT ON COLUMN omop.PROVIDER.provider_name IS 'A description of the Provider.';
COMMENT ON COLUMN omop.PROVIDER.npi IS 'The National Provider Identifier (NPI) of the provider.';
COMMENT ON COLUMN omop.PROVIDER.dea IS 'The Drug Enforcement Administration (DEA) number of the provider.';
COMMENT ON COLUMN omop.PROVIDER.specialty_concept_id IS 'A foreign key to a Standard Specialty Concept ID in the Standardized Vocabularies.';
COMMENT ON COLUMN omop.PROVIDER.care_site_id IS 'A foreign key to the main Care Site where the provider is practicing.';
COMMENT ON COLUMN omop.PROVIDER.year_of_birth IS 'The year of birth of the Provider.';
COMMENT ON COLUMN omop.PROVIDER.gender_concept_id IS 'The gender of the Provider.';
COMMENT ON COLUMN omop.PROVIDER.provider_source_value IS 'The identifier used for the Provider in the source data, stored here for reference.';
COMMENT ON COLUMN omop.PROVIDER.specialty_source_value IS 'The source code for the Provider specialty as it appears in the source data, stored here for reference.';
COMMENT ON COLUMN omop.PROVIDER.specialty_source_concept_id IS 'A foreign key to a Concept that refers to the code used in the source.';
COMMENT ON COLUMN omop.PROVIDER.gender_source_value IS 'The gender code for the Provider as it appears in the source data, stored here for reference.';
COMMENT ON COLUMN omop.PROVIDER.gender_source_concept_id IS 'A foreign key to a Concept that refers to the code used in the source.';


--
--SYSTEM
--



-- ATTRIBUTE_DEFINITION
COMMENT ON COLUMN omop.ATTRIBUTE_DEFINITION.attribute_definition_id IS 'A unique identifier for each Attribute.';
COMMENT ON COLUMN omop.ATTRIBUTE_DEFINITION.attribute_name IS 'A short description of the Attribute.';
COMMENT ON COLUMN omop.ATTRIBUTE_DEFINITION.attribute_description IS 'A complete description of the Attribute definition';
COMMENT ON COLUMN omop.ATTRIBUTE_DEFINITION.attribute_type_concept_id IS 'Type defining what kind of Attribute Definition the record represents and how the syntax may be executed';
COMMENT ON COLUMN omop.ATTRIBUTE_DEFINITION.attribute_syntax IS 'Syntax or code to operationalize the Attribute definition';


-- COHORT_DEFINITION
COMMENT ON COLUMN omop.COHORT_DEFINITION.cohort_definition_id IS 'A unique identifier for each Cohort.';
COMMENT ON COLUMN omop.COHORT_DEFINITION.cohort_definition_name IS 'A short description of the Cohort.';
COMMENT ON COLUMN omop.COHORT_DEFINITION.cohort_definition_description IS 'A complete description of the Cohort definition';
COMMENT ON COLUMN omop.COHORT_DEFINITION.definition_type_concept_id IS 'Type defining what kind of Cohort Definition the record represents and how the syntax may be executed';
COMMENT ON COLUMN omop.COHORT_DEFINITION.cohort_definition_syntax IS 'Syntax or code to operationalize the Cohort definition';
COMMENT ON COLUMN omop.COHORT_DEFINITION.subject_concept_id IS 'A foreign key to the Concept to which defines the domain of subjects that are members of the cohort (e.g., Person, Provider, Visit).';
COMMENT ON COLUMN omop.COHORT_DEFINITION.cohort_instantiation_date IS 'A date to indicate when the Cohort was instantiated in the COHORT table';


-- CONCEPT_ANCESTOR
COMMENT ON COLUMN omop.CONCEPT_ANCESTOR.ancestor_concept_id IS 'A foreign key to the concept in the concept table for the higher-level concept that forms the ancestor in the relationship.';
COMMENT ON COLUMN omop.CONCEPT_ANCESTOR.descendant_concept_id IS 'A foreign key to the concept in the concept table for the lower-level concept that forms the descendant in the relationship.';
COMMENT ON COLUMN omop.CONCEPT_ANCESTOR.min_levels_of_separation IS 'The minimum separation in number of levels of hierarchy between ancestor and descendant concepts. This is an attribute that is used to simplify hierarchic analysis.';
COMMENT ON COLUMN omop.CONCEPT_ANCESTOR.max_levels_of_separation IS 'The maximum separation in number of levels of hierarchy between ancestor and descendant concepts. This is an attribute that is used to simplify hierarchic analysis.';


-- CONCEPT_CLASS
COMMENT ON COLUMN omop.CONCEPT_CLASS.concept_class_id IS 'A unique key for each class.';
COMMENT ON COLUMN omop.CONCEPT_CLASS.concept_class_name IS 'The name describing the Concept Class, e.g. "Clinical Finding", "Ingredient", etc.';
COMMENT ON COLUMN omop.CONCEPT_CLASS.concept_class_concept_id IS 'A foreign key that refers to an identifier in the [CONCEPT](https://github.com/OHDSI/CommonDataModel/wiki/CONCEPT) table for the unique Concept Class the record belongs to.';


-- CONCEPT
COMMENT ON COLUMN omop.CONCEPT.concept_id IS 'A unique identifier for each Concept across all domains.';
COMMENT ON COLUMN omop.CONCEPT.concept_name IS 'An unambiguous, meaningful and descriptive name for the Concept.';
COMMENT ON COLUMN omop.CONCEPT.domain_id IS 'A foreign key to the [DOMAIN](https://github.com/OHDSI/CommonDataModel/wiki/DOMAIN) table the Concept belongs to.';
COMMENT ON COLUMN omop.CONCEPT.vocabulary_id IS 'A foreign key to the [VOCABULARY](https://github.com/OHDSI/CommonDataModel/wiki/VOCABULARY) table indicating from which source the Concept has been adapted.';
COMMENT ON COLUMN omop.CONCEPT.concept_class_id IS 'The attribute or concept class of the Concept. Examples are '';Clinical Drug'';, '';Ingredient'';, '';Clinical Finding''; etc.';
COMMENT ON COLUMN omop.CONCEPT.standard_concept IS 'This flag determines where a Concept is a Standard Concept, i.e. is used in the data, a Classification Concept, or a non-standard Source Concept. The allowables values are '';S''; (Standard Concept) and '';C''; (Classification Concept), otherwise the content is NULL.';
COMMENT ON COLUMN omop.CONCEPT.concept_code IS 'The concept code represents the identifier of the Concept in the source vocabulary, such as SNOMED-CT concept IDs, RxNorm RXCUIs etc. Note that concept codes are not unique across vocabularies.';
COMMENT ON COLUMN omop.CONCEPT.valid_start_date IS 'The date when the Concept was first recorded. The default value is 1-Jan-1970, meaning, the Concept has no (known) date of inception.';
COMMENT ON COLUMN omop.CONCEPT.valid_end_date IS 'The date when the Concept became invalid because it was deleted or superseded (updated) by a new concept. The default value is 31-Dec-2099, meaning, the Concept is valid until it becomes deprecated.';
COMMENT ON COLUMN omop.CONCEPT.invalid_reason IS 'Reason the Concept was invalidated. Possible values are D (deleted), U (replaced with an update) or NULL when valid_end_date has the default value.';


-- CONCEPT_RELATIONSHIP
COMMENT ON COLUMN omop.CONCEPT_RELATIONSHIP.concept_id_1 IS 'A foreign key to a Concept in the [CONCEPT](https://github.com/OHDSI/CommonDataModel/wiki/CONCEPT) table associated with the relationship. Relationships are directional, and this field represents the source concept designation.';
COMMENT ON COLUMN omop.CONCEPT_RELATIONSHIP.concept_id_2 IS 'A foreign key to a Concept in the [CONCEPT](https://github.com/OHDSI/CommonDataModel/wiki/CONCEPT) table associated with the relationship. Relationships are directional, and this field represents the destination concept designation.';
COMMENT ON COLUMN omop.CONCEPT_RELATIONSHIP.relationship_id IS 'A unique identifier to the type or nature of the Relationship as defined in the [RELATIONSHIP](https://github.com/OHDSI/CommonDataModel/wiki/RELATIONSHIP) table.';
COMMENT ON COLUMN omop.CONCEPT_RELATIONSHIP.valid_start_date IS 'The date when the instance of the Concept Relationship is first recorded.';
COMMENT ON COLUMN omop.CONCEPT_RELATIONSHIP.valid_end_date IS 'The date when the Concept Relationship became invalid because it was deleted or superseded (updated) by a new relationship. Default value is 31-Dec-2099.';
COMMENT ON COLUMN omop.CONCEPT_RELATIONSHIP.invalid_reason IS 'Reason the relationship was invalidated. Possible values are '';D''; (deleted), '';U''; (replaced with an update) or NULL when valid_end_date has the default value.';


-- CONCEPT_SYNONYM
COMMENT ON COLUMN omop.CONCEPT_SYNONYM.Field IS 'Description';
COMMENT ON COLUMN omop.CONCEPT_SYNONYM.concept_id IS 'A foreign key to the Concept in the CONCEPT table.';
COMMENT ON COLUMN omop.CONCEPT_SYNONYM.concept_synonym_name IS 'The alternative name for the Concept.';
COMMENT ON COLUMN omop.CONCEPT_SYNONYM.language_concept_id IS 'A foreign key to a Concept representing the language.';


-- DOMAIN
COMMENT ON COLUMN omop.DOMAIN.domain_id IS 'A unique key for each domain.';
COMMENT ON COLUMN omop.DOMAIN.domain_name IS 'The name describing the Domain, e.g. "Condition", "Procedure", "Measurement" etc.';
COMMENT ON COLUMN omop.DOMAIN.domain_concept_id IS 'A foreign key that refers to an identifier in the [CONCEPT](https://github.com/OHDSI/CommonDataModel/wiki/CONCEPT) table for the unique Domain Concept the Domain record belongs to.';


-- DRUG_STRENGTH
COMMENT ON COLUMN omop.DRUG_STRENGTH.drug_concept_id IS 'A foreign key to the Concept in the CONCEPT table representing the identifier for Branded Drug or Clinical Drug Concept.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.ingredient_concept_id IS 'A foreign key to the Concept in the CONCEPT table, representing the identifier for drug Ingredient Concept contained within the drug product.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.amount_value IS 'The numeric value associated with the amount of active ingredient contained within the product.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.amount_unit_concept_id IS 'A foreign key to the Concept in the CONCEPT table representing the identifier for the Unit for the absolute amount of active ingredient.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.numerator_value IS 'The numeric value associated with the concentration of the active ingredient contained in the product';
COMMENT ON COLUMN omop.DRUG_STRENGTH.numerator_unit_concept_id IS 'A foreign key to the Concept in the CONCEPT table representing the identifier for the numerator Unit for the concentration of active ingredient.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.denominator_value IS 'The amount of total liquid (or other divisible product, such as ointment, gel, spray, etc.).';
COMMENT ON COLUMN omop.DRUG_STRENGTH.denominator_unit_concept_id IS 'A foreign key to the Concept in the CONCEPT table representing the identifier for the denominator Unit for the concentration of active ingredient.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.box_size IS 'The number of units of Clinical of Branded Drug, or Quantified Clinical or Branded Drug contained in a box as dispensed to the patient';
COMMENT ON COLUMN omop.DRUG_STRENGTH.valid_start_date IS 'The date when the Concept was first recorded. The default value is 1-Jan-1970.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.valid_end_date IS 'The date when the concept became invalid because it was deleted or superseded (updated) by a new Concept. The default value is 31-Dec-2099.';
COMMENT ON COLUMN omop.DRUG_STRENGTH.invalid_reason IS 'Reason the concept was invalidated. Possible values are '';D''; (deleted), '';U''; (replaced with an update) or NULL when valid_end_date has the default value.';


-- RELATIONSHIP
COMMENT ON COLUMN omop.RELATIONSHIP.Field IS 'Description';
COMMENT ON COLUMN omop.RELATIONSHIP.relationship_id IS ' The type of relationship captured by the relationship record.';
COMMENT ON COLUMN omop.RELATIONSHIP.relationship_name IS ' The text that describes the relationship type.';
COMMENT ON COLUMN omop.RELATIONSHIP.is_hierarchical IS 'Defines whether a relationship defines concepts into classes or hierarchies. Values are 1 for hierarchical relationship or 0 if not.';
COMMENT ON COLUMN omop.RELATIONSHIP.defines_ancestry IS 'Defines whether a hierarchical relationship contributes to the concept_ancestor table. These are subsets of the hierarchical relationships. Valid values are 1 or 0.';
COMMENT ON COLUMN omop.RELATIONSHIP.reverse_relationship_id IS 'The identifier for the relationship used to define the reverse relationship between two concepts.';
COMMENT ON COLUMN omop.RELATIONSHIP.relationship_concept_id IS 'A foreign key that refers to an identifier in the CONCEPT table for the unique relationship concept.';


-- SOURCE_TO_CONCEPT_MAP
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.source_code IS 'The source code being translated into a Standard Concept.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.source_concept_id IS 'A foreign key to the Source Concept that is being translated into a Standard Concept.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.source_vocabulary_id IS 'A foreign key to the VOCABULARY table defining the vocabulary of the source code that is being translated to a Standard Concept.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.source_code_description IS 'An optional description for the source code. This is included as a convenience to compare the description of the source code to the name of the concept.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.target_concept_id IS 'A foreign key to the target Concept to which the source code is being mapped.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.target_vocabulary_id IS 'A foreign key to the VOCABULARY table defining the vocabulary of the target Concept.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.valid_start_date IS 'The date when the mapping instance was first recorded.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.valid_end_date IS 'The date when the mapping instance became invalid because it was deleted or superseded (updated) by a new relationship. Default value is 31-Dec-2099.';
COMMENT ON COLUMN omop.SOURCE_TO_CONCEPT_MAP.invalid_reason IS 'Reason the mapping instance was invalidated. Possible values are D (deleted), U (replaced with an update) or NULL when valid_end_date has the default value.';


-- VOCABULARY
COMMENT ON COLUMN omop.VOCABULARY.vocabulary_id IS 'A unique identifier for each Vocabulary, such as ICD9CM, SNOMED, Visit.';
COMMENT ON COLUMN omop.VOCABULARY.vocabulary_name IS 'The name describing the vocabulary, for example "International Classification of Diseases, Ninth Revision, Clinical Modification, Volume 1 and 2 (NCHS)" etc.';
COMMENT ON COLUMN omop.VOCABULARY.vocabulary_reference IS 'External reference to documentation or available download of the about the vocabulary.';
COMMENT ON COLUMN omop.VOCABULARY.vocabulary_version IS 'Version of the Vocabulary as indicated in the source.';
COMMENT ON COLUMN omop.VOCABULARY.vocabulary_concept_id IS 'A foreign key that refers to a standard concept identifier in the CONCEPT table for the Vocabulary the VOCABULARY record belongs to.';

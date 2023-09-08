Profile: LAC_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id: lac-composition
Description: "LACPass Patient Summary Composition resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with customizations for the entries to use the profiles defined in this implementation guide."

* ^url = "http://lacpass.racsel.org/StructureDefinition/lac-composition"

// Make use of LAC Patient, LAC Immunization and LAC Organization
* subject 1..1 MS 
* subject only Reference(LAC_Patient)
* section[sectionImmunizations] 1..1
* section[sectionImmunizations].entry[immunization] 1..1 
* section[sectionImmunizations].entry[immunization] only Reference(LAC_Immunization)
* custodian 1..1 
* custodian only Reference(LAC_Organization)


Alias: $loinc = http://loinc.org
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $DDCC-Example-Test-CodeSystem = http://worldhealthorganization.github.io/ddcc/CodeSystem/DDCC-Example-Test-CodeSystem
Alias: $mms = http://id.who.int/icd11/mms
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $sct = http://snomed.info/sct
Alias: $atc = http://www.whocc.no/atc
Alias: $standardterms = http://standardterms.edqm.eu
Alias: $dose-rate-type = http://terminology.hl7.org/CodeSystem/dose-rate-type
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Instance: LACCompositionExample
InstanceOf: LAC_Composition
Usage: #example
* status = #final
* type = $loinc#60591-5 "Patient Summary Document"
* subject = Reference(LACPatientExample)
* date = "2023-01-15T17:26:43+00:00"
* author = Reference(LACOrganizationExample)
* title = "Patient Summary as of 01/15/2023"
* confidentiality = #N
* custodian = Reference(LACOrganizationExample)
* section[sectionProblems].title = "Active Problems"
* section[sectionProblems].code = $loinc#11450-4 "Problem list Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hot flushes</div>"
* section[sectionProblems].entry = Reference(73670837-417b-422f-9f99-46fb28d30985)
* section[sectionMedications].title = "Medication"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be populated at future time</div>"
* section[sectionMedications].entry = Reference(d2c23c25-48eb-4e55-a22a-b72787ae1d85)
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be populated at future time</div>"
* section[sectionAllergies].entry = Reference(bd64ca58-bea9-4b3c-aaa0-50e0b7575b79)
* section[sectionImmunizations].title = "History of Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization Narrative"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be populated at future time</div>"
* section[sectionImmunizations].entry[immunization] = Reference(LACImmunizationExample)

Instance: 73670837-417b-422f-9f99-46fb28d30985
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category.coding[0] = $condition-category#problem-list-item "Problem List Item"
* category.coding[+] = $loinc#75326-9 "Problem"
* severity = $loinc#LA6751-7 "Moderate"
* code = $icd-10#I10 "Essential (primary) hypertension"
* subject = Reference(ef333870-0a3a-4ab3-b0ff-6bc191a738c6)
* onsetDateTime = "2015"
* recordedDate = "2016-10"

Instance: dcc7db1b-29a9-4ad1-b6dd-ac06752d9c26
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $sct#108774000 "Product containing anastrozole (medicinal product)"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.4.4.1#99872 "ANASTROZOL 1MG TABLET"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.4.4.7#2076667 "ANASTROZOL CF TABLET FILMOMHULD 1MG"
* code.coding[+] = $atc#L02BG03 "anastrozole"

Instance: d2c23c25-48eb-4e55-a22a-b72787ae1d85
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(dcc7db1b-29a9-4ad1-b6dd-ac06752d9c26)
* subject = Reference(ef333870-0a3a-4ab3-b0ff-6bc191a738c6)
* effectivePeriod.start = "2015-03"
* dosage.timing.repeat.count = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 1 '1' "tablet"

Instance: bd64ca58-bea9-4b3c-aaa0-50e0b7575b79
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#373270004 "Substance with penicillin structure and antibacterial mechanism of action (substance)"
* patient = Reference(ef333870-0a3a-4ab3-b0ff-6bc191a738c6)
* onsetDateTime = "2010"
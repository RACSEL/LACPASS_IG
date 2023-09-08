Profile: LAC_Immunization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Id: lac-immunization
Description: "LACPass Patient Summary Immunization resource. This profile derives from the [DDCC Immunization](https://worldhealthorganization.github.io/ddcc/) with different contraints to include other pathologies."

//* ^url = "https://lacpass.racsel.org/StructureDefinition/lac-immunization"
* ^url = "http://lacpass.racsel.org/StructureDefinition/lac-immunization"


* extension contains DDCCEventBrand named vaccineBrand 1..1 MS
            and DDCCVaccineMarketAuthorization named vaccineMarketAuthorization 0..1 MS
            and DDCCCountryOfEvent named country 1..1 MS
            and DDCCVaccineValidFrom named validFrom 0..1 MS
// * extension[DDCCVaccineBrand] ^label = "Vaccine brand"
// * extension[DDCCVaccineMarketAuthorization] ^label = "Vaccine market authorization holder"
// * extension[DDCCCountryOfVaccination] ^label = "Country of vaccination"
// * extension[DDCCVaccineValidFrom] ^label = "Vaccination valid from"
* extension[vaccineBrand] ^label = "Vaccine brand"
* extension[vaccineMarketAuthorization] ^label = "Vaccine market authorization holder"
* extension[country] ^label = "Country of vaccination"
* extension[validFrom] ^label = "Vaccination valid from"
* vaccineCode 1..1 MS
* vaccineCode ^label = "Vaccine or prophylaxis"
/*
* vaccineCode.coding ^slicing.discriminator[+].type = #exists
* vaccineCode.coding ^slicing.discriminator[=].path = "system"
* vaccineCode.coding ^slicing.discriminator[+].type = #exists
* vaccineCode.coding ^slicing.discriminator[=].path = "code"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains ddccVaccine 1..1 MS
* vaccineCode.coding[ddccVaccine].system 1..1 MS
* vaccineCode.coding[ddccVaccine].code 1..1 MS
* vaccineCode.coding[ddccVaccine] from WHO_DDCC_Vaccines_COVID_19 (example)
*/
* vaccineCode.coding 1..1 MS
* vaccineCode.coding.system 1..1 MS
* vaccineCode.coding.code 1..1 MS
* vaccineCode from DDCC_Vaccines (preferred)
//  do we need this ?  * vaccineCode.coding[ddccVaccine].system = "urn:EXAMPLE-who-:smart:vaccine-certificate:RC1:coding"
//  do we need this ?   * vaccineCode.coding[ddccVaccine].code from WHO_DDCC_Vaccines_COVID_19 (example)

* location 1..1 MS
* location ^label = "Administering centre"
* location.display 1..1 MS
* manufacturer 0..1 MS
* lotNumber MS
* lotNumber ^label = "Vaccine batch number"
* patient only Reference(LAC_Patient)
* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
* occurrence[x] ^label = "Date of vaccination"
* performer 0.. 
* performer.actor only Reference(Practitioner or LAC_Organization)
* performer.actor ^label = "Health worker identifier"
* protocolApplied 1.. MS
* protocolApplied ^slicing.discriminator.type = #type
* protocolApplied ^slicing.discriminator.path = "authority"
* protocolApplied ^slicing.rules = #open
* protocolApplied contains protocolAppliedAuthority 1.. MS
* protocolApplied[protocolAppliedAuthority].authority only Reference(LAC_Organization)
* protocolApplied[protocolAppliedAuthority].targetDisease from DDCC_Disease_Targeted (preferred)
* protocolApplied[protocolAppliedAuthority].targetDisease ^label = "Disease or agent targeted"
* protocolApplied[protocolAppliedAuthority].doseNumber[x] 1..1 MS
* protocolApplied[protocolAppliedAuthority].doseNumber[x] only positiveInt
* protocolApplied[protocolAppliedAuthority].doseNumber[x] ^label = "Dose number"
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] 0..1 
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] only positiveInt
* protocolApplied[protocolAppliedAuthority].seriesDoses[x] ^label = "Total doses"


Instance: LACImmunizationExample
InstanceOf: LAC_Immunization
Usage: #example
* meta.profile = "http://lacpass.racsel.org/StructureDefinition/lac-immunization"
//* extension[vaccineBrand].url = "https://lacpass.racsel.org/StructureDefinition/DDCCEventBrand"
* extension[vaccineBrand].url = "http://lacpass.racsel.org/StructureDefinition/DDCCEventBrand"

* extension[vaccineBrand].valueCoding = $ICD11#XM4YL8
//* extension[vaccineMarketAuthorization].url = "https://lacpass.racsel.org/StructureDefinition/DDCCVaccineMarketAuthorization"
* extension[vaccineMarketAuthorization].url = "http://lacpass.racsel.org/StructureDefinition/DDCCVaccineMarketAuthorization"
* extension[vaccineMarketAuthorization].valueCoding = $DDCC-Example-Test-CodeSystem#TEST
//* extension[country].url = "https://lacpass.racsel.org/StructureDefinition/DDCCCountryOfEvent"
* extension[country].url = "http://lacpass.racsel.org/StructureDefinition/DDCCCountryOfEvent"
* extension[country].valueCode = #CL
* status = #completed
* vaccineCode = $mms#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* lotNumber = "A1234"
* patient = Reference(LACPatientExample)
* occurrenceDateTime = "2020-11-15"
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* location.display = "Administration center"
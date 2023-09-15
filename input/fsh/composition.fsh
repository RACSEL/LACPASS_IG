Profile: LAC_Composition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id: lac-composition
Description: "LACPass Patient Summary Composition resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with customizations for the entries to use the profiles defined in this implementation guide."

* ^url = "http://lacpass.racsel.org/StructureDefinition/lac-composition"

// Make use of LAC Patient, LAC Immunization and LAC Organization
* subject 1..1 MS 
* subject only Reference(LAC_Patient)
* custodian 1..1 
* custodian only Reference(LAC_Organization)
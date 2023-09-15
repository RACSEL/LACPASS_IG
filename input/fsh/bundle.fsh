Profile: LAC_Bundle
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips
Id: lac-bundle
Description: "LACPass Patient Summary Bundle resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with customizations for the entries to use the profiles defined in this implementation guide."

* ^url = "http://lacpass.racsel.org/StructureDefinition/lac-bundle"

// Make use of Composition
* entry[composition].resource 1..1 
* entry[composition].resource only LAC_Composition
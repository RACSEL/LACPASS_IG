Profile: LAC_Organization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Id: lac-organization
Description: "LACPass Patient Summary Organization resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with more contraints for the identification of the country of the organization."

* ^url = "https://lacpass.racsel.org/StructureDefinition/lac-organization"

// Make organization address country required
* address 1..1
* address.country 1..1
* address.country from http://terminology.hl7.org/ValueSet/v3-Country2
* address.country ^short = "Must be ISO-3306 2-letter"


Instance: LACOrganizationExample
InstanceOf: LAC_Organization
Usage: #example
* name = "Ministerio de Salud"
* address.text = "Enrique Mac Iver 541, Santiago, Región Metropolitana"
* address.country = "CL"
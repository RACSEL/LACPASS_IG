Profile: LAC_Bundle_DDCC
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips
Id: lac-bundle-ddcc
Description: "LACPass Patient Summary Bundle resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with customizations for the entries to use the profiles defined in this implementation guide and the necessary to implement the DDCC standard."

* ^url = "http://lacpass.racsel.org/StructureDefinition/lac-bundle-ddcc"

// Make use of Composition
* entry[composition].resource 1..1 
* entry[composition].resource only LAC_Composition_DDCC

Instance: LACBundleIPSExample
InstanceOf: LAC_Bundle_DDCC
Usage: #example
* identifier.system = "urn:ietf:rfc:4122"
* identifier.value = "f50a5146-7d08-4f4d-b7a9-eb8a05d513a0"
* type = #document
* timestamp = "2023-01-15T17:26:43.023+00:00"
* entry[0].fullUrl = "urn:uuid:428e9bed-1f16-4595-91b9-80ae6ac12421"
* entry[=].resource = LACCompositionExample
* entry[+].fullUrl = "urn:uuid:ef333870-0a3a-4ab3-b0ff-6bc191a738c6"
* entry[=].resource = LACPatientExample
* entry[+].fullUrl = "urn:uuid:6fef12e7-64ad-4792-b2ad-5d6b699588fc"
* entry[=].resource = LACImmunizationExample
* entry[+].fullUrl = "urn:uuid:73670837-417b-422f-9f99-46fb28d30985"
* entry[=].resource = 73670837-417b-422f-9f99-46fb28d30985
* entry[+].fullUrl = "urn:uuid:dcc7db1b-29a9-4ad1-b6dd-ac06752d9c26"
* entry[=].resource = dcc7db1b-29a9-4ad1-b6dd-ac06752d9c26
* entry[+].fullUrl = "urn:uuid:d2c23c25-48eb-4e55-a22a-b72787ae1d85"
* entry[=].resource = d2c23c25-48eb-4e55-a22a-b72787ae1d85
* entry[+].fullUrl = "urn:uuid:bd64ca58-bea9-4b3c-aaa0-50e0b7575b79"
* entry[=].resource = bd64ca58-bea9-4b3c-aaa0-50e0b7575b79
* entry[+].fullUrl = "urn:uuid:9d5f17f6-6537-4bbb-a883-a5937a79d10c"
* entry[=].resource = LACOrganizationExample
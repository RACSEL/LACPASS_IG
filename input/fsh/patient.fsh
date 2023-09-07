Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Profile: LAC_Patient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: lac-patient
Description: "LACPass Patient Summary Patient resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with more contraints for the identification of the patients."

* ^url = "https://lacpass.racsel.org/StructureDefinition/lac-patient"

// identifier slice for nhi
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Patient identifier"

// declare slices
* identifier contains 
    international 1..* MS and
    national 1..* MS

// details of international slice
* identifier[international] ^definition = "The international identifier for the patient. The passport number is used."
* identifier[international].system 1..1
* identifier[international].system ^short = "URN OID for the country (ISO-3306 numeric)"
* identifier[international].use 1..1
* identifier[international].use = #official (exactly)
* identifier[international].use ^short = "fixed to official"
* identifier[international].type 1..1
* identifier[international].type = $v2-0203#PPN (exactly)
* identifier[international].type ^short = "Passport number"

// details of national slice
* identifier[national] ^definition = "The national identifier for the patient. Any type different from PPN can be used."
* identifier[national].system 1..1
* identifier[national].system ^short = "URN OID for the country (ISO-3306 numeric)"
* identifier[national].type 1..1
* identifier[national].type from $v2-0203
// * identifier[national].type.coding.code = "PPN" (exactly)
* identifier[national].type ^short = "Any type except PPN (Passport number)"


// declare rule to say can't have more than one 'official' identifier
* obeys lac-pat-1
* obeys lac-pat-2

// invariant for lac-pat-1 rule
Invariant: lac-pat-1
Expression: "Patient.identifier.where(use='official').count() >= 1"
Severity: #error
Description: "A patient can only have a single official identifier"

// invariant for lac-pat-2 rule
Invariant: lac-pat-2
Expression: "Patient.identifier.where(use='official')[0].system.startsWith('urn:oid.2.16.')"
Severity: #error
Description: "The identifier system must be a URN OID"


// Example
Instance: LACPatientExample
InstanceOf: LAC_Patient
Usage: #example

* identifier[international].use = #official
* identifier[international].type = $v2-0203#PPN
* identifier[international].system = "urn:oid.2.16.152"
* identifier[international].value = "CL/F12-1234123-2"

* identifier[national].system = "urn:oid.2.16.152"
* identifier[national].type = $v2-0203#TAX
* identifier[national].value = "CL/18922652-7"

* active = true
* name.use = #official
* name.text = "Sergio Penafiel"
* name.family = "Penafiel"
* name.given = "Sergio"
* gender = #male
* birthDate = "1994-10-13"
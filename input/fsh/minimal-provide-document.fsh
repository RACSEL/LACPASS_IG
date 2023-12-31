Profile: LAC_Minimal_Provide_Document
Parent: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle
Id: lac-provide-document
Description: "LACPass ITI-65 Minimal Provide Document Transaction. This profile derives from the [MHD ITI-65 Minimal Provde Document](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Minimal.ProvideBundle.html) profile with customizations to use the profiles defined in this implementation guide."

* ^url = "http://lacpass.racsel.org/StructureDefinition/lac-provide-document"

// Make use of LAC Bundle and LAC Patient
// * entry[FhirDocuments] 1..1
* entry[FhirDocuments].resource 1..1
* entry[FhirDocuments].resource only LAC_Bundle or LAC_Bundle_DDCC

// * entry[Patient] 1..1
* entry[Patient].resource 1..1
* entry[Patient].resource only LAC_Patient
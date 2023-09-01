# Transactions

This page specifies the transactions that are supported for the use cases of this project. These are divided into two groups, MHD transactions for IPS exchange, and DDCC transactions.

### MHD Transactions

In order to exchange information about IPS the system must support the MHD transactions ITI-65, ITI-67 and ITI-68 described below.

The official repository includes the IPS mediator service which is a FHIR interceptor or API Gateway that transforms the incoming request to implement MHD Transactions. Participant countries can use this mediator or implement their own tranasctions.

#### ITI-65 - Provide Document

Reference: [https://profiles.ihe.net/ITI/MHD/ITI-65.html](https://profiles.ihe.net/ITI/MHD/ITI-65.html)

This endpoint recieves an IPS Bundle and transform it to a FHIR transaction adding the Patient Folder (List) and the Document Reference as explained in the implementation guide.

Example command using the mediator:

    curl -i -X POST http://localhost:3000/fhir/Bundle -H "Content-Type: application/json" -d @examples/ips-sample-1.json


#### ITI-66 - Find Document Lists (Optional)

Reference: [https://profiles.ihe.net/ITI/MHD/ITI-66.html](https://profiles.ihe.net/ITI/MHD/ITI-66.html)

This endpoint recieves a patient identifier and gives the list of document and their references.

Example command:

    curl -i -X GET http://localhost:8080/fhir/List/?patient.identifier=CY/Passport-HG-1112&_format=json&status=current

Note that the parameter `patient.identifier` is defined with the value of the identifier of the patient to be queried.


#### ITI-67 - Find Document References

Reference: [https://profiles.ihe.net/ITI/MHD/ITI-67.html](https://profiles.ihe.net/ITI/MHD/ITI-67.html)

This endpoint recieves a patient identifier and gives the list of document references for this patient.

Example command:

    curl -i -X GET http://localhost:5000/fhir/DocumentReference/?patient.identifier=CY/Passport-HG-1112&_format=json&status=current

Note that the parameter `patient.identifier` is defined with the value of the identifier of the patient to be queried.


#### ITI-68 - Retrieve Document

Reference: [https://profiles.ihe.net/ITI/MHD/ITI-68.html](https://profiles.ihe.net/ITI/MHD/ITI-68.html)

This endpoint returns the IPS for a patient. The URL is retrtieved from the result of the ITI-67 request. Specifically the url will be in the `content > attachment > url` attribute of each entry.

Example command:

    curl -i -X GET http://lacpass.create.cl:8080/fhir/Bundle/IPS-examples-Bundle-01?_format=json


### DDCC Transformation

The IPS mediator includes a FHIR operation called `$ddcc` which transforms IPS Bundles to DDCC documents. It is mandatory for this operation to work that the stored IPS have at least one `Immunization` resource.

This is an example to use the transformation operation using the mediator:

    curl -i --request GET 'http://localhost:3000/fhir/Bundle/fb06a834-6b55-4ac3-a856-82489eb4d69d/$ddcc'

Where `fb06a834-6b55-4ac3-a856-82489eb4d69d` is the id of the IPS Bundle. This endpoint returns the DDCC Bundle associated to the requested IPS.

This transformation retrieves a previously stored IPS and checks whether the `Immunization` resource is present. The process extracts the information from the IPS to build the QuestionnaryResponse with the DDCC structure. This QuestionnarieResponse is sent to the DDCC module to generate the document.
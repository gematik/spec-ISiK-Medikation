Profile: ISiKMedikationTransaction
Parent: Bundle
Id: ISiKMedikationTransaction
Description: "Dieses Profil definiert die Transaktions-Bundles im Rahmen von ISiK-Medikations-Szenarien."
* insert Meta
* type MS
  * ^fixedCode = #transaction
* entry 1..* MS
  * link 0..0
  * fullUrl MS
  * resource MS
  * search 0..0
  * request 1..1 MS
    * method MS
    * url MS
  * response 0..0

Instance: ExampleISiKMedikationTransaction
InstanceOf: ISiKMedikationTransaction
Usage: #example
* type = #transaction
* entry[0]
  * fullUrl = "http://my.source.server.local/fhir/MedicationStatement/ExampleISiKMedikationsInformation1"
  * resource = ExampleISiKMedikationsInformation1
  * request
    * method = #POST
    * url = "http://my.target.fhir.server.local/MedicationStatement"
* entry[+]
  * fullUrl = "http://my.source.server.local/fhir/Medication/ExampleISiKMedikament1"
  * resource = ExampleISiKMedikament1
  * request
    * method = #POST
    * url = "http://my.target.fhir.server.local/Medication"

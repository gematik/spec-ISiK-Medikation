Profile: ISiKMedikationTransactionResponse
Parent: Bundle
Id: ISiKMedikationTransactionResponse
Description: "Dieses Profil definiert die Server-Antwort auf Transaktions-Bundles im Rahmen von ISiK-Medikations-Szenarien."
* insert Meta
* type MS
  * ^fixedCode = #transaction-response
* entry 1..* MS
  * link 0..0
  * fullUrl MS
  * resource MS
  * search 0..0
  * request 0..0
  * response 1..1 MS
    * status MS
    * location MS
    * outcome MS

Instance: ExampleISiKMedikationTransactionResponse
InstanceOf: ISiKMedikationTransactionResponse
Usage: #example
* type = #transaction-response
* entry[0]
  * fullUrl = "http://my.target.fhir.server.local/MedicationStatement/ExampleISiKMedikationsInformation1"
  * resource = ExampleISiKMedikationsInformation1
  * response
    * status = "201"
    * location = "http://my.fhir.server.local/MedicationStatement/ExampleISiKMedikationsInformation1"
* entry[+]
  * fullUrl = "http://my.target.fhir.server.local/Medication/ExampleISiKMedikament1"
  * resource = ExampleISiKMedikament1
  * response
    * status = "201"
    * location = "http://my.fhir.server.local/Medication/ExampleISiKMedikament1"

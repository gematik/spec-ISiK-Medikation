Profile: ISiKMedikationsListe
Parent: List
Id: ISiKMedikationsListe
Description: "Dieses Profil ermöglicht die Zusammenführung einzelner MedikationsInformationen eines Patienten in ISiK Szenarien."
* insert Meta
* id MS
* status MS
* mode MS
* code 1..1 MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      medications 1..1 MS
  * coding[medications]
    * ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/list-example-use-codes"
    * ^patternCoding.code = #medications
    * system 1..1 MS
    * code 1..1 MS
    * display MS
* subject 1..1 MS
* subject only Reference(Patient)
  * reference 1..1 MS
* encounter MS
  * reference 1..1 MS
* date MS
* entry MS
  * date MS
  * item MS
  * item only Reference(MedicationStatement)
    * reference 1..1 MS

Instance: ExampleISiKMedikationsListe
InstanceOf: ISiKMedikationsListe
Usage: #example
* status = #current
* mode = #working
* code.coding
  * system = "http://terminology.hl7.org/CodeSystem/list-example-use-codes"
  * code = #medications
* subject.reference = "Patient/PatientinMusterfrau"
* encounter.reference = "Encounter/Einrichtungskontakt"
* date = 2021-07-04
* entry[0]
  * date = 2021-07-01
  * item.reference = "MedicationStatement/ExampleISiKMedikationsInformation1"
* entry[1]
  * date = 2021-07-04
  * item.reference = "MedicationStatement/ExampleISiKMedikationsInformation2"

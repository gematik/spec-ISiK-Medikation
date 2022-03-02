Profile: ISiKMedikationsListe
Parent: List
Id: ISiKMedikationsListe
Description: "Dieses Profil ermöglicht die Zusammenführung einzelner MedikationsInformationen eines Patienten in ISiK Szenarien."
* insert Meta
* id MS
* status MS
* mode MS
* code 1..1 MS
  * coding 1..1 MS
    * ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/list-example-use-codes"
    * ^patternCoding.code = #medications
    * system 1..1 MS
    * code 1..1 MS
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

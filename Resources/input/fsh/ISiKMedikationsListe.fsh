Profile: ISiKMedikationsListe
Parent: List
Id: ISiKMedikationsListe
Description: "Dieses Profil ermöglicht die Zusammenführung einzelner MedikationsInformationen eines Patienten in ISiK Szenarien."
* insert Meta
* status MS
  * ^short = "(Aktualitäts-)Status der Liste"
* mode MS
  * ^short = "Listenmodus"
  * ^comment = "Beispiel: eingelesene Medikationspläne werden als snapshot repräsentiert. Kontinuierlich fortgeschriebene Listen, z.B. im Rahmen der hausinternen Behandlung, sind als 'working' codiert."
* code 1..1 MS
  * ^short = "Art der Liste."
  * ^comment = "Es ist mindestens ein Coding mit dem Code 'medications' anzugeben. Weitere Codes, z.B. im Kontext anderer Spezifikationen oder Hauscodierungen sind zulässig."
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
  * ^short = "Referenz auf den Patienten"
* subject only Reference(Patient)
  * reference 1..1 MS
* encounter MS
  * ^short = "Referenz auf den Abteilungskontakt"
  * reference 1..1 MS
* date MS
  * ^short = "Erstellungsdatum der Liste"
* entry MS
  * ^short = "Listeneintrag"
  * date MS
    * ^short = "Datum des Listeneintrags"
    * ^comment = "nur zulässig im Listenmodus 'working'"
  * item MS
    * ^short = "Referenz auf die MedikationsInformation"
  * item only Reference(MedicationStatement)
    * reference 1..1 MS

Instance: ExampleISiKMedikationsListe
InstanceOf: ISiKMedikationsListe
Usage: #example
* status = #current
* mode = #working
* subject.reference = "Patient/PatientinMusterfrau"
* encounter.reference = "Encounter/Versorgungsstellenkontakt"
* date = 2021-07-04
* entry[+]
  * date = 2021-07-01
  * item.reference = "MedicationStatement/ExampleISiKMedikationsInformation1"
* entry[+]
  * date = 2021-07-04
  * item.reference = "MedicationStatement/ExampleISiKMedikationsInformation2"

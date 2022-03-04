Profile: ISiKMedikationsVerabreichung
Parent: MedicationAdministration
Id: ISiKMedikationsVerabreichung
Description: "Dieses Profil ermöglicht die Abbildung der Verabreichung von Medikamenten für einen Patienten in ISiK Szenarien."
* insert Meta
* id MS
* status MS
* medicationCodeableConcept MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      PZN 0..1 MS and
      ATC-DE 0..1 MS
  * coding[PZN]
    * ^patternCoding.system = $cs-pzn
    * system 1..1 MS
    * code 1..1 MS
  * coding[ATC-DE]
    * ^patternCoding.system = $cs-atc-de
    * system 1..1 MS
    * code 1..1 MS
  * text MS
* medicationReference MS
  * reference 1..1 MS
* subject MS
* subject only Reference(Patient)
  * reference 1..1 MS
* context MS
  * reference 1..1 MS
* effectiveDateTime MS
* effectivePeriod MS
  * start MS
  * end MS
* reasonReference MS
  * reference 1..1 MS
* note MS
  * text MS
* dosage MS
  * text MS
  * site MS
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        SNOMED-CT 0..1 MS
    * coding[SNOMED-CT]
      * ^patternCoding.system = $cs-sct
      * system 1..1 MS
      * code 1..1 MS
    * text MS
  * route MS
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        EDQM 0..1 MS and
        SNOMED-CT 0..1 MS
    * coding[EDQM]
      * ^patternCoding.system = $cs-edqm
      * system 1..1 MS
      * code 1..1 MS
    * coding[SNOMED-CT]
      * ^patternCoding.system = $cs-sct
      * system 1..1 MS
      * code 1..1 MS
    * text MS
  * dose MS
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS
  * rateRatio MS
    * numerator MS
      * ^patternQuantity.system = $cs-ucum
      * value 1..1 MS
      * unit MS
      * system 1..1 MS
      * code 1..1 MS
    * denominator MS
      * ^patternQuantity.system = $cs-ucum
      * value 1..1 MS
      * unit MS
      * system 1..1 MS
      * code 1..1 MS
  * rateQuantity MS
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS

Instance: ExampleISiKMedikationsVerabreichung
InstanceOf: ISiKMedikationsVerabreichung
Usage: #example
* status = #completed
* medicationReference.reference = "Medication/ExampleISikMedikament1"
* subject.reference = "Patient/PatientinMusterfrau"
* context.reference = "Encounter/Einrichtungskontakt"
* effectiveDateTime = 2021-07-01
* dosage
  * dose
    * value = 1
    * unit = "Brausetablette"
    * system = $cs-ucum
    * code = #1

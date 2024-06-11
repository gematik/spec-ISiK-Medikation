Profile: ISiKMedikationsVerabreichung
Parent: MedicationAdministration
Id: ISiKMedikationsVerabreichung
Description: "Dieses Profil ermöglicht die Abbildung der Verabreichung von Medikamenten für einen Patienten in ISiK Szenarien."
* insert Meta
* status MS
  * ^short = "Status der Verabreichungsinformation"
* medicationCodeableConcept MS
  * ^short = "Medikament in codierter Form oder ggf. als Freitext"
  * ^comment = "kann verwendet werden, wenn keine detaillierten Informationen zum Medikament (z.B. Rezepturen) existieren."
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      PZN 0..1 MS and
      ATC-DE 0..1 MS and
      WG14 0..1 MS
  * coding[PZN] only ISiKPZNCoding
    * ^patternCoding.system = $cs-pzn
  * coding[ATC-DE] only ISiKATCCoding
    * ^patternCoding.system = $cs-atc-de
  * coding[WG14] only ISiKWG14Coding
    * ^patternCoding.system = $cs-wg14
  * text MS
* medicationReference MS
  * ^short = "Referenz auf das Medikament (Medication-Ressource)"
  * ^comment = "wird verwendet, wenn detaillierte Informationen zum Medikament vorliegen"
  * reference 1..1 MS
* subject MS
  * ^short = "Referenz auf den Patienten"
* subject only Reference(Patient)
  * reference 1..1 MS
* context MS
  * ^short = "Referenz auf den Abteilungskontakt"
  * reference 1..1 MS
* effectiveDateTime MS
  * ^short = "Zeitpunkt der Verabreichung"
* effectivePeriod MS
  * ^short = "Zeitraum der Verabreichung"
  * start MS
  * end MS
* performer MS
  * actor MS
    * ^short = "Referenz auf die verabreichende Person"
    * reference 1..1 MS
* reasonReference MS
  * ^short = "Grund der Medikation (Referenz)"
  * reference 1..1 MS
* note MS
  * text MS
    * ^short = "Freitext-Notiz"
* dosage MS
  * ^short = "Dosierungsangaben"
  * text MS
    * ^short = "Freitext-Dosierungsangabe"
  * site MS
    * ^short = "Körperstelle der Verabreichung"
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        SNOMED-CT 0..1 MS
    * coding[SNOMED-CT] only ISiKSnomedCTCoding
      * ^patternCoding.system = $cs-sct
    * text MS
  * route MS
    * ^short = "Route"
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        EDQM 0..1 MS and
        SNOMED-CT 0..1 MS
    * coding[EDQM] from $vs-edqm-route (required)
    * coding[EDQM] only ISiKCoding
      * ^patternCoding.system = $cs-edqm
    * coding[SNOMED-CT] from SctRouteOfAdministration (required)
    * coding[SNOMED-CT] only ISiKSnomedCTCoding
      * ^patternCoding.system = $cs-sct
    * text MS
  * dose MS
    * ^short = "verabreichte Dosis"
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS
  * rateRatio MS
    * ^short = "Verabreichungs-Rate (Verhältnis)"
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
    * ^short = "Verabreichungs-Rate"
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS

Instance: ExampleISiKMedikationsVerabreichung
InstanceOf: ISiKMedikationsVerabreichung
Usage: #example
* status = #completed
* medicationReference.reference = "Medication/ExampleISiKMedikament1"
* subject.reference = "Patient/PatientinMusterfrau"
* context.reference = "Encounter/Fachabteilungskontakt"
* effectiveDateTime = 2021-07-01
* dosage
  * dose
    * value = 1
    * unit = "Brausetablette"
    * system = $cs-ucum
    * code = #1

Instance: ExampleISiKMedikationsVerabreichung2
InstanceOf: ISiKMedikationsVerabreichung
Usage: #example
* status = #completed
* medicationReference = Reference(ExampleISiKMedikament9)
* subject.reference = "Patient/PatientinMusterfrau"
* context.reference = "Encounter/Fachabteilungskontakt"
* effectiveDateTime = 2024-01-22
* dosage
  * dose
    * value = 1
    * unit = "Infusionsbeutel"
    * system = $cs-ucum
    * code = #1

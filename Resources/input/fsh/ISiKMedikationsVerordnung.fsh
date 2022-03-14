Profile: ISiKMedikationsVerordnung
Parent: MedicationRequest
Id: ISiKMedikationsVerordnung
Description: "Dieses Profil ermöglicht die Abbildung von Medikationsverordnungen eines Patienten in ISiK Szenarien."
* insert Meta
* id MS
* status MS
* intent MS
* doNotPerform ..0
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
    * display MS
  * coding[ATC-DE]
    * ^patternCoding.system = $cs-atc-de
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * text MS
* medicationReference MS
  * reference 1..1 MS
* subject MS
* subject only Reference(Patient)
  * reference 1..1 MS
* encounter MS
  * reference 1..1 MS
* authoredOn MS
* requester MS
  * reference 1..1 MS
* note MS
  * text MS
* dosageInstruction MS
  * text MS
  * patientInstruction MS
  * timing MS
    * event MS
    * repeat MS
      * boundsDuration MS
        * ^patternDuration.system = $cs-ucum
        * value 1..1 MS
        * unit MS
        * system 1..1 MS
        * code 1..1 MS
      * boundsRange MS
        * low MS
          * ^patternQuantity.system = $cs-ucum
          * value 1..1 MS
          * unit MS
          * system 1..1 MS
          * code 1..1 MS
        * high MS
          * ^patternQuantity.system = $cs-ucum
          * value 1..1 MS
          * unit MS
          * system 1..1 MS
          * code 1..1 MS
      * boundsPeriod MS
        * start MS
        * end MS
      * count MS
      * countMax MS
      * duration MS
      * durationMax MS
      * durationUnit MS
      * frequency MS
      * frequencyMax MS
      * period MS
      * periodMax MS
      * periodUnit MS
      * dayOfWeek MS
      * timeOfDay MS
      * when MS
      * offset MS
  * asNeededBoolean MS
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
      * display MS
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
      * display MS
    * coding[SNOMED-CT] from SctRouteOfAdministration (required)
      * ^patternCoding.system = $cs-sct
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * text MS
  * doseAndRate MS
    * doseRange MS
      * low MS
        * ^patternQuantity.system = $cs-ucum
        * value 1..1 MS
        * unit MS
        * system 1..1 MS
        * code 1..1 MS
      * high MS
        * ^patternQuantity.system = $cs-ucum
        * value 1..1 MS
        * unit MS
        * system 1..1 MS
        * code 1..1 MS
    * doseQuantity MS
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
    * rateRange MS
      * low MS
        * ^patternQuantity.system = $cs-ucum
        * value 1..1 MS
        * unit MS
        * system 1..1 MS
        * code 1..1 MS
      * high MS
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
  * maxDosePerPeriod MS
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
  * maxDosePerAdministration MS
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS
* dispenseRequest MS
  * quantity MS
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS
* substitution MS
  * allowedBoolean MS

Instance: ExampleISiKMedikationsVerordnung
InstanceOf: ISiKMedikationsVerordnung
Usage: #example
* status = #active
* intent = #order
* medicationReference.reference = "Medication/ExampleISiKMedikament1"
* subject.reference = "Patient/PatientinMusterfrau"
* encounter.reference = "Encounter/Versorgungsstellenkontakt"
* authoredOn = 2021-07-01
* requester.reference = "Practitioner/PractitionerWalterArzt"
* reasonReference.reference = "Condition/BehandlungsDiagnoseFreitext"
* dosageInstruction
  * timing.repeat
    * when[0] = #MORN
    * when[1] = #NOON
    * when[2] = #EVE
  * doseAndRate.doseQuantity
    * value = 1
    * unit = "Brausetablette"
    * system = $cs-ucum
    * code = #1

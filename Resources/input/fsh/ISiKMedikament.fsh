Profile: ISiKMedikament
Parent: Medication
Id: ISiKMedikament
Description: "Dieses Profil ermöglicht die Abbildung von patientenunabhängigen Informationen zu Medikamenten in ISiK Szenarien."
* insert Meta
* id MS
* extension MS
* extension contains $ext-mii-wirkstofftyp named wirkstofftyp 0..1 MS
* code 1..1 MS
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
* status MS
* form MS
* form from EdqmDoseForm (required)
  * coding MS
    * system 1..1 MS
    * code 1..1 MS
* amount MS
  * numerator 1..1 MS
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
* ingredient MS
  * itemCodeableConcept MS
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        ASK 0..1 MS and
        ATC-DE 0..1 MS and
        PZN 0..1 MS
    * coding[ASK]
      * ^patternCoding.system = $cs-ask
      * system 1..1 MS
      * code 1..1 MS
    * coding[ATC-DE]
      * ^patternCoding.system = $cs-atc-de
      * system 1..1 MS
      * code 1..1 MS
    * coding[PZN]
      * ^patternCoding.system = $cs-pzn
      * system 1..1 MS
      * code 1..1 MS
    * text MS
  * itemReference MS
    * reference 1..1 MS
  * isActive MS
  * strength MS
    * numerator 1..1 MS
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
* batch MS
  * lotNumber MS

Instance: ExampleISikMedikament
InstanceOf: ISiKMedikament
Usage: #example
* code.coding
  * system = "http://fhir.de/CodeSystem/ifa/pzn"
  * code = #03470864
* status = #active

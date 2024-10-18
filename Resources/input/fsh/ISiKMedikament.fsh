Profile: ISiKMedikament
Parent: Medication
Id: ISiKMedikament
Description: "Dieses Profil ermöglicht die Abbildung von patientenunabhängigen Informationen zu Medikamenten in ISiK Szenarien."
* insert Meta
* obeys isik-med-1
* code MS
  * ^short = "Medikament in codierter Form oder ggf. als Freitext"
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      PZN 0..1 MS and
      ATC-DE 0..1 MS and
      WG14 0..1 MS
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
  * coding[WG14]
    * ^patternCoding.system = $cs-wg14
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * text MS
* status 1..1 MS
  * ^short = "Status der Medikamenteninformation"
* manufacturer MS
  * ^short = "Hersteller des Medikaments"
  * ^comment = "Hier kann der tatsächliche Hersteller des Medikaments benannt werden, vornehmlich im Fall von Wirkstoffmischungen (Rezepturen), beispielsweise die Krankenhausapotheke. Zu beachten ist, dass die zulassende Organisation, wie sie z.B. in den Daten zur PZN benannt ist, nicht als Hersteller gilt."
  * display 1..1 MS
* form MS
  * ^short = "Abgabeform"
* form
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      EDQM 0..1 MS
  * coding[EDQM] from $vs-edqm-doseform (required)
    * system 1..1 MS
    * code 1..1 MS
    * display MS
* amount MS
  * ^short = "Menge"
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
  * ^short = "Informationen zu Bestandteilen (Rezeptur)"
  * extension MS
  * extension contains $ext-mii-wirkstofftyp named wirkstofftyp 0..1 MS
    * ^short = "Wirkstofftyp"
    * ^comment = "Handelt es sich um eine Angabe zum Wirkstoff oder zum exakter Inhaltsstoff (z.B. Salze)?"
  * itemCodeableConcept MS
    * ^short = "Bestandteil in codierter Form oder ggf. als Freitext"
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        ASK 0..1 MS and
        ATC-DE 0..1 MS and
        PZN 0..1 MS and
        WG14 0..1 MS
    * coding[ASK]
      * ^patternCoding.system = $cs-ask
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * coding[ATC-DE]
      * ^patternCoding.system = $cs-atc-de
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * coding[PZN]
      * ^patternCoding.system = $cs-pzn
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * coding[WG14]
      * ^patternCoding.system = $cs-wg14
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * text MS
  * itemReference MS
    * ^short = "Bestandteil (Referenz auf ein anderes Medikament)"
    * reference 1..1 MS
  * isActive MS
    * ^short = "handelt es sich um einen aktiven Bestandteil?"
  * strength MS
    * ^short = "Stärke"
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
  * ^short = "Angaben zur Charge"
  * ^comment = "Bitte beachten Sie gegebenenfalls die Regelungen der zwischen GKV-SV und DAV: https://www.gkv-datenaustausch.de/leistungserbringer/apotheken/apotheken.jsp . Insbesondere den Technischen Anhang 7 (TA7) zur Arzneimittelabrechnungsvereinbarung gemäß § 300 Absatz 3 SGB V in der aktuellsten Fassung."
  * lotNumber MS
    * ^short = "Chargennummer"
    * ^comment = "Gemäß Anlage 1 der TA7 kann hier übergangsweise bis zum 30. Juni 2025 eine Musterchargennummer (\"STELLEN\") eingetragen werden. Wenn die Übermittlung der Chargenbezeichnung beim Stellen von Arzneimitteln technisch nicht möglich ist, z.B. beim Verblistern, wird von der Verpflichtung zur Chargendokumentation abgesehen. Dementsprechend kann anstatt der tatsächlichen Chargenbezeichnungen \"STELLEN\" in das hierbeschirebene Datenfeld eingetragen werden."

Invariant: isik-med-1
Description: "Medikamenten-Code, -Bezeichnung oder Inhaltsstoffe müssen angegeben werden."
Severity: #error
Expression: "code.exists() or ingredient.exists()"

Instance: ExampleISiKMedikament1
InstanceOf: ISiKMedikament
Usage: #example
* code.coding
  * system = $cs-atc-de
  * code = #V03AB23
  * display = "Acetylcystein"
* status = #active

Instance: ExampleISiKMedikament2
InstanceOf: ISiKMedikament
Usage: #example
* code.text = "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
* status = #active
* form.coding
  * system = $cs-edqm
  * code = #11210000
  * display = "Solution for infusion"
* ingredient[0]
  * extension[wirkstofftyp]
    * valueCoding
      * system = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp"
      * code = #IN
  * itemCodeableConcept.coding
    * system = $cs-atc-de
    * code = #L01DB01
    * display = "Doxorubicin"
  * isActive = true
  * strength
    * numerator
      * value = 85
      * unit = "mg"
      * system = $cs-ucum
      * code = #mg
    * denominator
      * value = 250
      * unit = "Milliliter"
      * system = $cs-ucum
      * code = #mL
* ingredient[1]
  * itemReference.reference = "Medication/7f27cb8d-940b-43fd-ab8b-fee5b7a9b060"
  * isActive = true

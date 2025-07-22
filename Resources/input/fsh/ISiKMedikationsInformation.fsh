Profile: ISiKMedikationsInformation
Parent: MedicationStatement
Id: ISiKMedikationsInformation
Description: "Dieses Profil ermöglicht die Abbildung von Informationen zur Medikation eines Patienten in ISiK Szenarien."
* insert Meta
* status MS
  * ^short = "Status der Medikationsinformation"
* medication[x] MS
* medicationCodeableConcept MS
  * ^short = "Medikament in codierter Form oder ggf. als Freitext"
  * ^comment = "kann verwendet werden, wenn keine detaillierten Informationen zum Medikament (z.B. Rezepturen) existieren."
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      PZN 0..* MS and
      ATC-DE 0..* MS and
      WG14 0..1 MS
  * coding[PZN]
    * ^patternCoding.system = $cs-pzn
    * system 1..1 MS
    * code 1..1 MS
    * display MS
    * insert ISiKMedikament-CodingPZNComment
  * coding[ATC-DE]
    * ^patternCoding.system = $cs-atc-de
    * system 1..1 MS
    * code 1..1 MS
    * display MS
    * insert ISiKMedikament-CodingATCComment
  * coding[WG14]
    * ^patternCoding.system = $cs-wg14
    * system 1..1 MS
    * code 1..1 MS
    * display MS
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
* effective[x] 1..1 MS
  * ^short = "Zeitpunkt oder Zeitraum, für den die MedikationsInformation gilt"
* effectiveDateTime MS
  * ^short = "Zeitpunkt"
* effectivePeriod MS
  * ^short = "Zeitraum"
  * start MS
  * end MS
* dateAsserted MS
  * ^short = "Datum der Feststellung/des Bekanntwerdens der MedikationsInformation"
* reasonCode MS
  * ^short = "Grund der Medikation (codiert)"
  * ^comment = "Festlegung zum MS: Die Elemente .reasonCode und .reasonReference MÜSSEN nach OR-Logik in der Ausgabe verwendet werden, d.h. nur eines MUSS geliefert werden können. Weiterhin MÜSSEN beide Elemente interpretiert werden können.

  Begründung zu Must-Support: Konsolidierung mit MII."
  * coding MS
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * text MS
* reasonReference MS
  * ^short = "Grund der Medikation (Referenz)"
  * ^comment = "Festlegung zum MS: Die Elemente .reasonCode und .reasonReference MÜSSEN nach OR-Logik in der Ausgabe verwendet werden, d.h. nur eines MUSS geliefert werden können. Weiterhin MÜSSEN beide Elemente interpretiert werden können.

  Begründung zu Must-Support: Konsolidierung mit MII."
  * reference 1..1 MS
* note MS
  * text MS
    * ^short = "Freitext-Notiz"
* dosage MS
  * ^short = "Dosierungsangaben"
  * text MS
    * ^short = "Freitext-Dosierungsanweisungen"
    * ^comment = "Festlegung zum Must-Support: Die Verarbeitung MUSS unterstützt werden, indem empfangende Systeme  die Freitext-Dosierungsinformation entweder direkt in der Textform persistieren, ODER die Informationen in eine alternative (strukturierte) Form umwandeln (ggf. unter Einwirkung geeigneter Nutzer). Im letzteren Fall KANN auf eine Persistierung in Textform verzichtet werden, um Inkonsistenzen zu vermeiden.

    Ein System KANN jedoch strukturierte Dosierungsinformationen in Freitext-Dosierungsinformationen umwandeln, um sie in einem Dokument oder einer Benutzeroberfläche anzuzeigen - dabei ist auf Konsistenzwahrung zu allen strukturierten Elementen zu achten.

    Hinweis: Diese Festlegung folgt und spezifiziert folgende MS-Festlegung aus dem [ISiK Basismodul](https://simplifier.net/guide/isik-basis-401/Einfuehrung/UebergreifendeFestlegungen/UebergreifendeFestlegungen_Must-Support-Flags.page.md?version=current): 'Systeme KÖNNEN es darüber hinaus ermöglichen, dass die jeweiligen Informationen vom Anwender ergänzt oder editiert werden.'

    Zum Beispiel könnte ein empfangendes System die Freitext-Dosierungsinformation in strukturierte Dosierungsinformation umwandeln, um sie in einer Medikationsverwaltung anzuzeigen oder später zu exponieren. Geht es zum Beispiel um eine Angabe zu Tageszeiten der Einnahme in der freitextlichen Dosierungsinformation als 'Morgens, Mittags, Abends', so könnte das empfangende System diese Angabe in strukturierte Dosierungsinformationen umwandeln, die die Einnahmezeiten in kodierter Form mit 'MORN', 'NOON', 'EVE' deklariert."
  * patientInstruction MS
    * ^short = "besondere Anweisungen für den Patienten"
  * timing MS
    * ^short = "Angaben zum Timing"
    * event MS
      * ^short = "fester Zeitpunkt"
    * repeat MS
      * ^short = "Wiederholungs-Angaben"
      * boundsDuration MS
        * ^short = "Begrenzung der Dauer"
        * ^patternDuration.system = $cs-ucum
        * value 1..1 MS
        * unit MS
        * system 1..1 MS
        * code 1..1 MS
      * boundsRange MS
        * ^short = "Bereich für die Begrenzung"
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
        * ^short = "begrenzender Zeitraum"
        * start MS
        * end MS
      * count MS
        * ^short = "Anzahl Wiederholungen"
      * countMax MS
        * ^short = "maximale Anzahl Wiederholungen"
      * duration MS
        * ^short = "Dauer der Verabreichung"
      * durationMax MS
        * ^short = "maximale Dauer der Verabreichung"
      * durationUnit MS
        * ^short = "Einheit der Dauer"
      * frequency MS
        * ^short = "Frequenz (Anzahl der Gaben pro Periode)"
      * frequencyMax MS
        * ^short = "maximale Frequenz"
      * period MS
        * ^short = "Zeitperiode zur Frequenz"
      * periodMax MS
        * ^short = "maximale Zeitperiode zur Frequenz"
      * periodUnit MS
        * ^short = "Einheit der Zeitperiode"
      * dayOfWeek MS
        * ^short = "Wochentag"
      * timeOfDay MS
        * ^short = "Tageszeit"
      * when MS
        * ^short = "Tageszeitpunkt codiert"
      * offset MS
        * ^short = "zeitlicher Abstand der Gabe zum beschriebenen Zeitpunkt"
  * asNeededBoolean MS
    * ^short = "Bedarfsmedikation"
  * site MS
    * ^short = "Körperstelle der Verabreichung"
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
    * ^short = "Route"
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        EDQM 0..1 MS and
        SNOMED-CT 0..1 MS
    * coding[EDQM] from $vs-edqm-route (required)
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
    * ^short = "Angaben zu Dosis und Rate"
    * doseRange MS
      * ^short = "Dosisbereich"
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
      * ^short = "Dosis"
      * ^patternQuantity.system = $cs-ucum
      * value 1..1 MS
      * unit MS
      * system 1..1 MS
      * code 1..1 MS
    * rateRatio MS
      * ^short = "Raten-Verhältnis"
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
      * ^short = "Raten-Bereich"
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
      * ^short = "Rate"
      * ^patternQuantity.system = $cs-ucum
      * value 1..1 MS
      * unit MS
      * system 1..1 MS
      * code 1..1 MS
  * maxDosePerPeriod MS
    * ^short = "Maximaldosis (Zähler) pro Zeitraum (Nenner)"
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
    * ^short = "Maximaldosis pro Verabreichung"
    * ^patternQuantity.system = $cs-ucum
    * value 1..1 MS
    * unit MS
    * system 1..1 MS
    * code 1..1 MS

Instance: ExampleISiKMedikationsInformation1
InstanceOf: ISiKMedikationsInformation
Usage: #example
* status = #active
* medicationReference.reference = "Medication/ExampleISiKMedikament1"
* subject.reference = "Patient/PatientinMusterfrau"
* context.reference = "Encounter/Versorgungsstellenkontakt"
* effectivePeriod.start = 2021-07-01
* dateAsserted = 2021-07-01
* reasonReference.reference = "Condition/BehandlungsDiagnoseFreitext"
* dosage
  * timing.repeat
    * when[0] = #MORN
    * when[1] = #NOON
    * when[2] = #EVE
  * doseAndRate.doseQuantity
    * value = 1
    * unit = "Brausetablette"
    * system = $cs-ucum
    * code = #1

Instance: ExampleISiKMedikationsInformation2
InstanceOf: ISiKMedikationsInformation
Usage: #example
* status = #active
* medicationReference.reference = "Medication/ExampleISiKMedikament2"
* subject.reference = "Patient/PatientinMusterfrau"
* context.reference = "Encounter/Versorgungsstellenkontakt"
* effectivePeriod.start = 2021-07-04
* dateAsserted = 2021-07-03
* dosage
  * timing.repeat
    * count = 6
    * frequency = 1
    * period = 3
    * periodUnit = #wk
  * doseAndRate.doseQuantity
    * value = 100
    * unit = "mg"
    * system = $cs-ucum
    * code = #mg

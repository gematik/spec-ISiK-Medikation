Profile: ISiKAMTSBewertung
Parent: RiskAssessment
Id: ISiKAMTSBewertung
Title: "ISiK AMTS-Bewertung"
Description: "Dieses Profil ermöglicht die Abbildung von Informationen zur Risikobeurteilung im Rahmen der Arzneimitteltherapiesicherheit (AMTS)."
* insert Meta
* extension MS
* extension contains ExtensionISiKAcceptedRisk named acceptedRisk 0..1 MS
  * ^short = "akzeptiertes (in Kauf genommenes) Risiko"
  * ^comment = "Begründung des Must-Support: ... tbd.

  Hinweis: Hier kann die Begründung und ggf. erforderliche Begleitmaßnahmen für ein in Kauf genommenes Risiko dokumentiert werden."
* status MS
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* code MS
  * ^short = "Art der Risikobeurteilung"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * coding MS
    * system 1.. MS
    * code 1.. MS
    * display MS
  * text MS
* subject MS
  * ^short = "Referenz auf den Patienten"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* subject only Reference(Patient)
  * reference 1.. MS
  * ^comment = "Begründung der Kardinalität: ... tbd.

  Hintergrund: Die Kardinalität wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* encounter MS
  * ^short = "Referenz auf den Abteilungskontakt"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * reference 1.. MS
* occurrence[x] MS
  * ^short = "Zeitpunkt oder Zeitraum der Beurteilung"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* occurrenceDateTime MS
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* occurrencePeriod MS
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* condition MS
  * ^short = "Bezugsdiagnose (Referenz)"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * reference 1.. MS
* reasonCode MS
  * ^short = "Grund der Risikobewertung (codiert)"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * coding MS
    * system 1.. MS
    * code 1.. MS
    * display MS
  * text MS
* reasonReference MS
  * ^short = "Grund der Risikobewertung (Referenz)"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * reference 1.. MS
* basis MS
  * ^short = "Entscheidungsgrundlagen der Risikobewertung (Referenz)"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * reference 1.. MS
* prediction MS
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
  * outcome MS
    * ^short = "Mögliches Outcome für den Patienten"
    * coding MS
      * system 1.. MS
      * code 1.. MS
      * display MS
    * text MS
  * qualitativeRisk MS
    * ^short = "Risikowahrscheinlichkeit (qualitativ, codiert)"
    * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
    * coding MS
      * system 1.. MS
      * code 1.. MS
      * display MS
    * text MS
  * qualitativeRisk from $vs-risk-probability (extensible)
* mitigation MS
  * ^short = "Hinweis zur Risikovermeidung"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "
* note MS
  * ^short = "Anmerkung zur Risikobewertung"
  * ^comment = "Begründung des Must-Support-Support-Flag (MS): ... tbd.
  
  Hintergrund: Das MS wurde im Rahmen der Ausarbeitung zur Stufe 4 des ISiK Moduls Medikation hinzugefügt und mit den Stakeholdern abgestimmt. "


Instance: ExampleISiKAMTSBewertung1
InstanceOf: ISiKAMTSBewertung
Usage: #example
* status = #final
* code.text = "AMTS Risikobewertung"
* subject.reference = "Patient/PatientinMusterfrau"
* encounter.reference = "Encounter/Fachabteilungskontakt"
* occurrenceDateTime = 2024-02-20T13:14:32+01:00
* condition.reference = "Condition/BehandlungsDiagnoseFreitext"
* reasonReference.reference = "DocumentReference/AnamnesebogenScan123456"
* basis = Reference(ExampleISiKMedikationsListeParkinson)
* basis.reference = "Observation/Serumkreatinin55555"
* basis.reference = "Observation/Koerpergewicht7777"
* prediction
  * outcome.text = "Niereninsuffizienz"
  * qualitativeRisk = $cs-risk-probability#high
* mitigation = "Substitution der Stalevo Dauermedikation"
* note.text = "Abklärung in der Frühbesprechung am 21.02.2024"

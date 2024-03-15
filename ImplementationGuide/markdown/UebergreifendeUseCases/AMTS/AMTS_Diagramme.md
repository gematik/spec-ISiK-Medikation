## Grafische Zusammenfassung
Im Gegensatz zu den sonstigen Zusammenfassungen, wird in den folgenden Diagrammen auf den vorliegenden Übergreifende Use Case (AMTS) fokussiert und nicht auf das gesamte Modul.

## Use Case Diagramm AMTS

Im Folgenden wird ein grafischer Überblick über möglichst in diesem Implementierungsleitfaden (AMTS) abgedeckten Anwednungsfälle gegeben.
Da es sich um eine Zusammenfassung handelt, werden nur folgende Use Case und dafür hinreichende Funktionen dargestellt:
* Allgemeine und intuitiv verständliche Use Cases.
  * Kombinationen und weitere Details sind möglich.
  * Übergreifende Use Cases und und ihre Sub Use Cases können in einem separaten Diagram auf den entsprechenden Seiten gefunden werden.
* Allgemeine und intuitiv Adverse Use Cases. Diese gilt es zu vermeiden.
* In den Funktionen werde triviale Suchen einer Ressoruce anhand ihrer eigenen Properties nicht dargestelt, z.B. Suche einer Ressoruce anhand der ID, Name, Code usw.

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/AMTS_usecases.svg" alt="AMTS Use Cases" width="90%"/>
**Anwendungsfälle AMTS**


### Interkationen In der Versorgung

Im Folgenden ist ein beispielhafter Versorgungsprozess aus dem [Auszug des IOP-Arbeitskreises](https://simplifier.net/guide/isik-medikation-v4/ImplementationGuide-markdown-UebergreifendeUseCases-AMTS#Anhang-I-Auszug) dargestellt, welcher der Erarbeitung diese Implemetierungsleitfadens zugrunde lag. Weitere Prozesse und Details finden sich im [Anhang](https://simplifier.net/guide/isik-medikation-v4/ImplementationGuide-markdown-UebergreifendeUseCases-AMTS#Anhang-I-Auszug).

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/AMTS_AuszugAK/Versorgungsprozess2.jpg" alt="Sturz mit stationärer Behandlung und hausärztlicher Weiterbehandlung" width="90%"/>

**Beispielprozess: Sturz mit stationärer Behandlung und hausärztlicher Weiterbehandlung**


### Ressourcen Diagramm AMTS

Im Folgenden wird ein grafischer Überblick über alle für diesen Übergreifenden Use Case (AMTS) profilierten Ressourcen gegeben.
Da es sich um eine Zusammenfassung handelt, werden nur folgende Profile und Felder dargestellt:
* Profile und Extenstion, die spezielle für AMTS profiliert wurden.
* Profile und Extenstion, die für AMTS zwingend benötigt werden. In vereinfachter Form, mit Verweis auf den Ursprung.
* Felder, mit besonderer Relevanz, die unterstüzt werden MÜSSEN (Must Support).
* * Datentypen, die im ISiK-Kontext enstanden, festgelegt oder eingeschränkt wurden, sind als **Fett** gekennzeichnet.
* Die Elemente (Unterfelder) haben, die unterstüzt werden MÜSSEN (Must Support).
* Nur Unter-Elemente (MS) bis zu ersten Tiefe, abhängig von Umfang und Systematik. D.h. Keine bedingten Wiederholungen (repeat) oder Rekursionen (part-of).

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/amts_resourcediagram.svg" alt="AMTS Ressourcenciagramm" width="90%"/>

**Ressourcendiagramm AMTS**

### Informationsmodelle AMTS

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/amts_infomodel_med.svg" alt="Infomodell AMTS aus Perspektive der Medikation" width="90%"/>

**Infomodell AMTS aus Perspektive der Medikation**


<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/amts_infomodel_basis.svg" alt="Infomodell AMTS mit relevanten Basisinformation" width="90%"/>

**Infomodell AMTS mit relevanten Basisinformation**


<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/amts_infomodel_labvit.svg" alt="Infomodell AMTS mit relevanten Labor- und Vitalinformatione" width="90%"/>

**Infomodell AMTS mit relevanten Labor- und Vitalinformatione**


### Interaktionen im Rahmen AMTS

Im Folgenden sind exemplarisch die Interaktionen für einen AMTS Pull und -Push im Sinne eines Businessprozesses modelliert.

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/AMTS_pull.svg" class="center" alt="AMTS Pull" width="90%"/>

**AMTS Pull**


<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/AMTS_push.svg" class="center" alt="AMTS Push" width="90%"/>

**AMTS Push**
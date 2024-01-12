# Datenobjekte

Folgende Datenobjekte aus dem Modul [ISiK Basis Stufe 3](https://simplifier.net/guide/implementierungsleitfaden-isik-basismodul-stufe-3?version=current) werden in diesem Modul verwendet: 
* [Patient](https://simplifier.net/guide/Implementierungsleitfaden-ISiK-Basismodul-Stufe-3/ImplementationGuide-markdown-Datenobjekte-Datenobjekte-Patient?version=current)
* [Kontakt/Fall (Encounter)](https://simplifier.net/guide/Implementierungsleitfaden-ISiK-Basismodul-Stufe-3/ImplementationGuide-markdown-Datenobjekte-Datenobjekte-Kontakt?version=current)
* [Person im Gesundheitsberuf](https://simplifier.net/guide/Implementierungsleitfaden-ISiK-Basismodul-Stufe-3/markdown-Datenobjekte-Datenobjekte-PersonImGesundheitsberuf?version=current)

Die Verwendung in diesem Modul bedeutet:
Wenn dieses Modul auf Datenobjekte aus dem Basismodul referenziert, dann MÜSSEN die referenzierten FHIR-Ressourcen konform zu den Vorgaben aus dem Basismodul sein. 
Die Referenzierung von im Basismodul spezifizierten Datenobjekten, bedeutet nicht, dass die Interaktionen für die entsprechenden Datenobjekte aus dem Basismodul auch im Modul Medikation bestätigungsrelevant sind.

Darüber hinaus gelten in diesem Modul folgende Datenobjekt-spezifische Festlegungen:

{{index:current}}

Die Kern-Zusammenhänge der Datenobjekte zeigt das (stark vereinfacht dargestellte) Diagramm:

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/main-stufe-3/Material/images/diagrams/Klassendiagramm.svg" class="center" alt="Klassendiagramm" width="90%"/>

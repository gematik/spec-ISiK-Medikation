# Release Notes

Im Rahmen der ISiK-Veröffentlichungen wird das [Semantic Versioning](https://semver.org/lang/de/) verwendet.

Die erste Ziffer X bezeichnet ein Major-Release und regelt die Gültigkeit von Releases. Die dritte Ziffer Y (Release x.0.y) bezeichnet eine technische Korrektur und versioniert kleinere Änderungen (Packages) während eines Jahres, z. B. 1.0.1.


----
Version: 4.0.0-rc3

Datum: tbd.

* Entfernen von MS von .id der Ressourcen https://github.com/gematik/spec-ISiK-Medikation/pull/122
* Entfernen der WG14 Kodierung, Hinzufügen eines SimpleQuantity Profiles welches ein VS bindet bestehend aus UCUM & SCT Unit of presentation um bspw. 500mg/Tablette maschinenlesbar kodieren zu können, hinzufügen eines SnomedCT Slices zur Kodierung der Medikationsressourcen, Update der Abhängigkeit auf IPS 1.1.0 
---
**Release Candidate zur Kommentierung**

Version: 4.0.0-rc

Datum: 04.04.2024

* 10 neue Beispiele und Prosa zu Rezepturen, Verordnung, Verabreichung, Abgabezyklus, Darreichungsformen und nicht-trivialen Kombinationen
* Neue Übergreifender Use Case AMTS, inklusive mini-IG und Auszügen aus IOP-Arbeitskreis. Dieser Übergreifende USe Case nutzt auch (insbesondere) weitere neue Profile aus der Basis und dem Support-Modul Labor
  * Diagnose aus Basis (ISiKAllergieUnvertraeglichkeit, chr. Krankheit wie Parkinson, usw.)
  * Observation aus Basis (Schwangerschaft, AlkoholAbusus usw.)
  * Observation aus Labor oder Vital (SerumKreatinin, GFR, Blutbild, Gewicht usw.)
* Neues Profil ISiKAMTSBewertung
* Neues Extensions: 
  * MedikationsArt in Form von Akut & Dauer
  * Selbstmedikation
  * Behandlungsziel
  * Replaces als Ersatz-Verordnung
  * AcceptedRisk im Zuge einer AMTS-Bewertung
* Erweiterung um Use Case Diagramm, Resourcen Diagramm und Informationsmodell
* Erweiterung um Use Case Zusammenhänge von verketteten Suchparametern

**Full Changelog**: https://github.com/gematik/spec-ISiK-Medikation/compare/v.3.0.2...rc/main-stufe-4

----
Version: 3.0.1

Datum: 08.01.2024

* workflow improvement regarding image rendering and display
* Update dependency with Basis:  https://github.com/gematik/spec-ISiK-Medikation/pull/102/commits/039654b03d5b159ed258c35b48c37cd2db3e4a81
* update sentence on ISIKBasis Ressource usage by @f-peverali in https://github.com/gematik/spec-ISiK-Medikation/pull/103
----
Version: 3.0.0

Datum: 01.07.2023

* Mit dem Release der Stufe 3.0.0 wird werden die unten gelisteten Änderungen normativ festgesetzt - im Wesentlichen ein Update auf die Dependency des ISiK Basismoduls 3.0.0.

----
Version: 3.0.0-rc2

Datum: 30.05.2023

* Update der Dependency auf das aktuelle ISiK Basismoduls (3.0.0-rc3)

----
Version: 3.0.0-rc

Datum: 11.04.2023

* Ausschließlich update der Dependency Packages für ISiK Basismodul und MII-Package

----
Version: 2.0.2

Datum: 31.01.2023

- Update Basismodul Dependency -> 2.0.4
- weitere Änderungen an Implmentierungsleitfaden (informativ)
----
Version: 2.0.1

Datum: 31.10.2022

- Update Basismodul Dependency -> 2.0.2
----
Version: 2.0.0

Datum: 30.06.2022

- Initialer Release

----
Version: 2.0.0-ballot

Datum: 08.04.2022

* Initiale Ballotierungsversion für ISiK Stufe 2

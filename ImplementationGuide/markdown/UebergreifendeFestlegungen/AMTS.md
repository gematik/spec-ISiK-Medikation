# Konzept Arzneitmitteltherapiesicherheit - AMTS (WIP)

## Table of Contents <!-- omit from toc --> 
- [1. Motivation und Hintergrund](#1-motivation-und-hintergrund)
- [2. Ziele](#2-ziele)
- [3. Stakeholder und User](#3-stakeholder-und-user)
- [4. Randbedingungen](#4-randbedingungen)
  - [4.1. Technische Ranbedingungen](#41-technische-ranbedingungen)
  - [4.2. Fachliche Randbedingungen](#42-fachliche-randbedingungen)
  - [4.3. Organisatorische Randbedingungen](#43-organisatorische-randbedingungen)
  - [4.4. Konventionen](#44-konventionen)
- [5. Kontextabgrenzung](#5-kontextabgrenzung)
  - [5.1. User und Systeme](#51-user-und-systeme)
  - [5.2. Patient Data Journey](#52-patient-data-journey)
- [6. Lösungsstrategie](#6-lösungsstrategie)
  - [6.1. Bestehende Standards](#61-bestehende-standards)
- [7. User Stories und Use Cases](#7-user-stories-und-use-cases)
  - [7.1. User Stories - Business](#71-user-stories---business)
  - [7.2. US-01: AMTS Prüfung bei neuer Informationslage](#72-us-01-amts-prüfung-bei-neuer-informationslage)
  - [7.3. US-02: Stationäre Aufnahme mit Medikationsumstellung (Medication Reconciliation)](#73-us-02-stationäre-aufnahme-mit-medikationsumstellung-medication-reconciliation)
  - [7.4. US-03: Entlassung mit Medikationsumstellung (Medication Reconciliation)](#74-us-03-entlassung-mit-medikationsumstellung-medication-reconciliation)
  - [7.5. Fazit zu User Stories](#75-fazit-zu-user-stories)
  - [7.6. Use Cases - Technisch](#76-use-cases---technisch)
  - [7.7. Exemplarische Abläufe](#77-exemplarische-abläufe)
  - [7.8. Nebenbedingungen DUMMY](#78-nebenbedingungen-dummy)
- [8. Liste weiterer Bedarfe an die Spezifikation](#8-liste-weiterer-bedarfe-an-die-spezifikation)
- [9. Annex I - Patient Journey](#9-annex-i---patient-journey)

## 1. Motivation und Hintergrund

Dieser Implementierungsleitfaden beschreibt die an der Schnittstelle verfügbaren Informationen für eine sichere Arzneimitteltherapie. Das beinhaltet die Vermeidung sämtlicher unerwünschter und potenziell gefährlicher Reaktionen eines indivuellen Patienten im Zuge der Einnahme einer verordneten Medikation. Ein intuitives Beispiel dafür ist eine Penicillinallergie des Patienten.

Im Zuge der Ausbaustufe 4 des Moduls ISiK-Medikation werden die bereitgestellten Ressourcen erweitert, so dass nun eine Vielzahl an Funktionen möglich ist, mit denen eine Medikation individuell durch die Informationssysteme beurteilt oder angepasst werden kann.
Die bedeutendsten abzudenken Use Cases sind Wechselwirkungen, Allergien und Kontraindikationen, die vor einer Abgabe identifziert werden sollten. So lässt sich dann z.B. erkennen, ob ein Medikament in einem bestimmten Behandlungsfall nicht als sicher einzustufen ist. Mit den verfügbaren Informationen könnte potenziell auch ein individuell besser geeignetes Medikament vorgeschlagen werden.

Bisher trifft ISiK-Medikation keine Festlegung zur AMTS. Aus diesem Grund ist die das Thema 'AMTS' als zentral in der AG zur Stufe 4 etabliert worden. Änderungs- oder Erweiterungsvorschläge am Dokument per Pull Request sind willkommen. 

## 2. Ziele
Ziel der Arbeiten im Rahmen der Ausbaustufe 4 ist:

1. Die Identifikation und Beschreibung zentral relevanter Anwendungsfälle.
2. Die Identifikation und nachfolgende Spezifikation neuer notwendiger (oder zu erweiternder) Ressourcen als Informationsträger für die AMTS Bewertung.
3. Die Schaffung eines Implementierungsleitfadens zur Bereitstellung ebendieser AMTS relevanter Informationen.
4. Die korrekte Abgrenzung des Leistungsumfang ISiK-Medikation im Bezug auf AMTS (Out-of-Scope).

Die genauere Zielstellung kann unter Einbeziehung der Stakeholder in der ersten Projektphase erweitert oder verändert werden.

## 3. Stakeholder und User
Die Spezifikation richtet sich insbesondere an SW-Hersteller von 1) KIS,  2) zugehörigen Submodulen und Subsystemen, die von Stationsapotheker genutzt werden sowie 3) eigenständigen aber im Ökosystem integrierten Systemen, die in der Krankenhausapotheke zum Einsatz kommen. Alle anderen Hersteller von ISiK-nahen Systemen sind auch eingeladen sich zu beteiligen, da Aufrufe und Ergebnisse potenziell propagier werden müssen.

Es handelt sich um eine technische Spezifikation, zu der keine weiteren medizinischen Fachexperten zu Rate gezogen werden müssen. Die sogenannten 'AMTS-Checks' - zur medizinischen und pharmakologischen Bewertung von AMTS - müssen durch die IS weiterhin selbst durchgeführt werden.

## 4. Randbedingungen

Ein ISiK Modul Medikation besteht bereits und dieses soll nicht grundsätzlich revidiert werden.

Auch die Kompatibilitäten zu den [gelisteten Spezifikationen](https://simplifier.net/guide/Implementierungsleitfaden-ISiK-Modul-Medikation-Stufe-3/ImplementationGuide-markdown-Kompatibilitaet?version=current) sollen gewahrt bleiben.

### 4.1. Technische Ranbedingungen

Da mit dem [MIO Medikationsplan](https://mio.kbv.de/display/EMP1X0X0/Inhalte+des+MIO+Medikationsplan) eine FHIR-Basiertes Lösung für die ePA erstellt wird, sollte die Kompatibilität sowohl organisatorisch als auch in der Spezifikation sichergestellt werden.

### 4.2. Fachliche Randbedingungen

Grundsätzlich stellt sich die Frage welche AMT-relevante Information
gruppiert und zugeordnet werden können:

* **Informationen mit Bezug zum Patienten** - Allergien usw...
* **Informationen mit Bezug zur Medikation** - Wechselwirkung usw...
* **Informationen mit Bezug zu Diagnose, Indikation oder Co-Morbiditäten** - Diese Kategorie betrifft vor allem chronische Erkrankungen (z.B. Niereninsuffizienz), Lebensumstände (z.B. Schwangerschaft) und Lebensgewohnheiten (z.B. Leistungssport). eine zentrale Kontraindikation, Nebenwirkungen, Prädisposition 


### 4.3. Organisatorische Randbedingungen
Es gelten die Fristen wie in anderen Modulen.

Die Konsentierung der Use Cases soll auch eine rein asynchrone Mitarbeit erlauben. Dies schließt eine asynchrone Entscheidungsfindung ein.

### 4.4. Konventionen
Die Draft-Dokumente werden auf github zur Diskussion gestellt.

Pull Requests, die grundsätzliche Änderungen bewirken, sollten in der Regel im Rahmen der AG angekündigt und ggf. diskutiert werden.

## 5. Kontextabgrenzung

Wie alle ISiK Spezifikation dürfen sich die Neuerungen am ISiK Modul Medikation nur auf die Kommunikation innerhalb des Krankenhauses (d.h. zwischen KIS und Subsystemen) beziehen.

Auch wenn eine Kompatibilität zum [MIO Medikationsplan](https://mio.kbv.de/display/EMP1X0X0/Inhalte+des+MIO+Medikationsplan) angestrebt wird, ist eine Schnittstelle zur ePA out of scope.

### 5.1. User und Systeme

Zu berücksichtigende User sind
* Krankenhausmitarbeiter (MFAs, Ärzte etc.)
* Pharamzeutisches Personal (Apotheker, PTAs etc.) 
* Patienten (bei Aufnahme, Entlassunge, stationärer Medikation usw.)

Beteiligte Systeme sind prinzipiell alle bestätigungsrelevanten Systeme (siehe [DKG Festlegung](https://www.dkgev.de/themen/digitalisierung-daten/elektronische-datenuebermittlung/datenuebermittlung-nach-373-sgb-v-informationssysteme-im-krankenhaus/)). Hervorzuheben sind dabei:

* KIS
* KIS-Submodul Medikation
* Eigenständige Systeme der Krankenhausapotheke (AVS)

Zudem sind hervorzuheben als mögliche Clients oder Subsysteme auch Datenbanken oder Services außerhalb der Krankenhauslandschaft, die Informationen bereitstellen über:
* Wirkstoffe und Wechselwirkungen
* Nebenwirkungen
* Substitutionen

### 5.2. Patient Data Journey

## 6. Lösungsstrategie
Vor der Entwicklung einer Lösungsstrategie, die eine Auswahl konkreter Bedarfe benennt, müssen zunächst Ziel- und Problemdefinition besser ausgearbeitet werden. Dennoch lassen sich grundsätzliche Lösungsszenarien nennen.

Zunächst sollte für jedes bestätigungsrelevante System der Umfang des Festzulegenden einzeln bestimmt werden.


### 6.1. Bestehende Standards
Neben allgmein geltenden Festlegungen in FHIR und HL7v2 sind bei der weiteren Problemdefinition folgenden Festlegungen zu beachten:

- Das Allergie Profil aus der Paitentenkurzakte, [ Allergy Intolerance (IPS) ](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-AllergyIntolerance-uv-ips.html)
- Die Bereiche *CAVE*, *Interaktionen* sowie *Indikationen und Nebenwirkungen* des AMTS-Modul der [ABDADatenbank²](https://abdata.de/produkte/abdadatenbank2/amts-modul/)


## 7. User Stories und Use Cases

In folgendem wird zwischen User Stories (Business-Seite) und Use Cases (technisch) unterschieden.

User Stories sollen dazu dienen die Bereiche der Bedarfsanalyse grob abzudecken, daraufhin zu präzisieren und die Problemdefinition zu schärfen. Sie fokussieren auf den Nutzer und was dieser mit einer Funktionalität erreichen möchte.

Use Cases sind eher technisch orientiert und fokussieren verschiedene Einsatzszenarien deren Anwendungsfälle.

### 7.1. User Stories - Business

Die User Stories beschreiben die grundlegenden Kontexte, in denen der Bedarf nach einem AMTS entsteht – mit potenziell unterschiedliche Komponenten für die User-System Interaktion:

- US-01 - AMTS Prüfung bei neuer Informationslage
   - Ein Pharmazeutischer Mitarbeiter möchte AMTS-relevante Informationen abrufen, um eine sichere Abgabe von Medikation zu gewährleisten.
- US-02 - Stationäre Aufnahme mit Medikationsumstellung (Medication Reconciliation)
   - Bei der stationären Aufnahme eines Patienten soll die bestehenden (häusliche oder ambulante) Medikation mit in das geänderte Versorgungsumfeld übersetzte und angepasst werden, um eine gleichwertige und sichere stationäre Verordnung zu gewährleisten.
- US-03 - Entlassung mit Medikationsumstellung (Medication Reconciliation)
   - Bei der Entlassung eines Patienten aus der stationären Versorgung soll die initiale Medikation mit in das sich ändernde Umfeld übersetzte und angepasst werden, um eine gleichwertige und sichere Weiterführung der Medikation zu gewährleisten.

### 7.2. US-01: AMTS Prüfung bei neuer Informationslage


**REQ-001**: Im Rahmen der Medikationsausgabe MUSS der Nutzer auf AMTS hin prüfen können.

### 7.3. US-02: Stationäre Aufnahme mit Medikationsumstellung (Medication Reconciliation)


### 7.4. US-03: Entlassung mit Medikationsumstellung (Medication Reconciliation)


### 7.5. Fazit zu User Stories

Wir nehmen an, dass für US-02 und US-03 es in der Regel dem KIS intern überlassen ist wie es einen Merge regelt oder nicht. Daher wären diese User Stories aus ISiK-Sicht nicht prioritär. Z.B. wenn im KIS händisch eine Aufnahme erfolgt, muss das System entscheiden, wie die Patient-Ressource erstellt wird. Wenn das KIS intern merged und direkt die richtige Ressource herausgibt, besteht keine Notwendigkeit für einen Merge oder ein Merge-Event.

In diesem Sinne wäre US-01 für die folgende Entwicklung technischer Use Cases zum Patient merge zu priorisieren, wobei als externer Client nicht nur ein Patientenportal zu berücksichtigen ist, sondern auch sonstige Client-Systeme die auf ISiK-Schnittstellen zugreifen.

### 7.6. Use Cases - Technisch
Aus einer Perspektive der Workflows lassen sich folgenden Use Cases (UCs) ausdifferenzieren:

* **UC-00: TBD**
   * *Beschreibung:* 
   * *Akteure:* 
* **UC-01: TBD**
   * *Beschreibung:* 
   * *Akteure:* 

![Use Case Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.github.com/gematik/spec-ISiK-Basismodul/Nachbereitung-AG/ImplementationGuide/markdown/UebergreifendeFestlegungen/Use-Case-Diagram.iuml)

Die im UC Diagram grün gekennzeichneten UCs sind besonders zu priorisieren, daher in Folge eine schematische Analyse.

### 7.7. Exemplarische Abläufe

**Beispiel-Sequenz DUMMY** Angenommen es ist ein weiteres Subsystem inklusive einer Schnittstelle (hier bspw. PDMS) beteiligt, so lässt sich eine exemplarische Sequenz für User Story 01 ableiten:
* Eine Ärztin gibt über eine Suchanfrage in der Maske Vor- und Nachnamen des Patienten an (Max Mustermann). Es erscheinen zwei Patienteninstanzen mit identischen Stammdaten (bis auf einen offensichtlichen Tippfehler).
* Die Ärztin führt die Patientendaten über einen Clearingmechanismus zusammen.
* Das KIS sendet über einen Kommunikationsserver eine PUSH-Nachricht (Hl7 v2) an alle Subsysteme (inklusive des PDMS), um den Update-Status der Patienten-Ressource und den geschehenen merge zu informieren.
* Die Subsysteme verarbeiten die merge-informationen und updaten die entsprechende organisationsinterne Patienten-ID (PID).
* Die Ärztin stellt eine Anfrage mit der nun bekannten Patientenintanz (oder über den Namen) für sämtliche Körpertemperaturmessungen der letzten Tage.
* Das KIS leitet diese Anfrage über eine REST-Schnittstelle weiter an das PDMS (über Suchparameter "Patient" nach https://simplifier.net/guide/Implementierungsleitfaden-ISiK-Modul-Vitalparameter-Stufe-3/ImplementationGuide-markdown-Interaktionen?version=current ) und gibt den entsprechenden Datensatz zurück.


**Beispiel-Sequenz DUMMY:** Angenommen es ist die Komponente Patientenportal inklusive einer Schnittstelle beteiligt, so lässt sich eine exemplarische Sequenz für User Story 01 ableiten:
* Das Patientenportal erzeugt aufgrund der von der Patientin angegeben Fall- und Anamnese-Daten verschiedene FHIR-Ressourcen, die einer FHIR Patient Ressource (PatientMustermannPatientenportal) zugeordnet werden.
* Nach dem Synchronisierungsprozess der Terminbuchung zwischen Patientenportal und KIS des KHs wird die FHIR-Instanz PatientMustermannPatientenportal mit der im KIS vorhandenen Instance PatientMustermannKH im Rahmen eines Clearing-Prozesses unter Beteiligung einer KH-Mitarbeitern im KIS zusammengeführt zu PatientMustermannMerge.
* (extends) Die Referenzierten Ressourcen (FHIR Observations) werden (extrahiert und) mit den zusammengeführten Daten von PatientMustermannMerge verknüpft
* Das Patientenportal erkennt (query-getrieben) eine Änderung von Patienten-Ressource nach einem Patient-merge im KIS (dies wäre anzusiedeln bei **UC-03:)


### 7.8. Nebenbedingungen DUMMY


*Annahmen:* 
* Das KIS-System verfügt über die erforderlichen Funktionen zur Durchführung der Zusammenführung von Patientenakten.
* Das Krankenhauspersonal, das die Zusammenführung initiiert oder tätigt, verfügt über die entsprechenden Berechtigungen und Schulungen.

*Vorbedingungen:* 

*Nachbedingungen:* 

Die Patientenakten werden zusammengeführt, und eine vereinheitlichte, genaue Akte wird erstellt.

*Nutzungshäufigkeit:* 
Gelegentlich

*Alternative Abläufe:*

Wenn keine identifizierten Duplikate vorhanden sind, benachrichtigt das System den Benutzer, und der Prozess endet.

*Ausnahmen:*

Bei technischen Problemen, die den Zusammenführungsprozess verhindern, wird eine Fehlermeldung generiert, und der Prozess wird abgebrochen.

*Includes (weitere UCs):* 
   * vollautomatisiertes matching und merging
   * vollautomatisiertes matching mit manuellem merge
   * (halb)automatisiertes matching mit vollautomatisiertem merge
   * Notification über match/merge durch ein Subsystem

*Extends (weitere UCs):*
* tbd.

*Anmerkungen und Probleme:* 
* Patient merges sollten protokolliert werden, um technische Verantwortlichkeit und Rückverfolgbarkeit zu gewährleisten.
on 


## 8. Liste weiterer Bedarfe an die Spezifikation
Hier werden Bedarfe an die Spezifikation vorgehalten, die nicht unmittelbar über die oben priorisierten UCs abgedeckt sind.

1. 
2. 

## 9. Annex I - Patient Journey



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
  - [7.2. US-01: AMTS Prüfung bei Verordnung und Abgabe](#72-us-01-amts-prüfung-bei-verordnung-und-abgabe)
  - [7.3. US-02: AMTS Prüfung bei neuer Informationslage](#73-us-02-amts-prüfung-bei-neuer-informationslage)
  - [7.4. US-02: Stationäre Aufnahme mit Medikationsumstellung (Medication Reconciliation)](#74-us-02-stationäre-aufnahme-mit-medikationsumstellung-medication-reconciliation)
  - [7.5. US-03: Entlassung mit Medikationsumstellung (Medication Reconciliation)](#75-us-03-entlassung-mit-medikationsumstellung-medication-reconciliation)
  - [7.6. Fazit zu User Stories](#76-fazit-zu-user-stories)
  - [7.7. Use Cases - Technisch](#77-use-cases---technisch)
  - [7.8. Exemplarische Abläufe](#78-exemplarische-abläufe)
  - [7.9. Nebenbedingungen und weitere Informationen](#79-nebenbedingungen-und-weitere-informationen)
- [8. Liste weiterer Bedarfe an die Spezifikation](#8-liste-weiterer-bedarfe-an-die-spezifikation)
- [9. Annex I - Diagramme](#9-annex-i---diagramme)

## 1. Motivation und Hintergrund

Dieser Implementierungsleitfaden beschreibt die an der Schnittstelle verfügbaren Informationen für eine sichere Arzneimitteltherapie. Das beinhaltet die Vermeidung sämtlicher unerwünschter und potenziell gefährlicher Reaktionen eines individuellen Patienten im Zuge der Einnahme einer verordneten Medikation. Ein intuitives Beispiel dafür ist eine Penicillinallergie des Patienten.

Im Zuge der Ausbaustufe 4 des Moduls ISiK-Medikation werden die bereitgestellten Ressourcen erweitert, so dass nun eine Vielzahl an Funktionen möglich ist, mit denen eine Medikation individuell durch die Informationssysteme beurteilt oder angepasst werden kann.
Die bedeutendsten abzudeckenden Use Cases sind Wechselwirkungen, Allergien und Kontraindikationen, die vor einer Abgabe identifziert werden sollten. So lässt sich dann z.B. erkennen, ob ein Medikament in einem bestimmten Behandlungsfall nicht als sicher einzustufen ist. Mit den verfügbaren Informationen könnte potenziell auch ein individuell besser geeignetes Medikament vorgeschlagen werden.

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

Grundsätzlich stellt sich die Frage welche AMTS-relevante Information
gruppiert und zugeordnet werden können:

* **Informationen mit Bezug zum Patienten** - Diese Kategorie betrifft Allergien und Unverträglichkeiten aber auch pyhsiologische relevante Merkmale wie z.B. Alter und Gewicht.
* **Informationen mit Bezug zur Medikation** - Diese Kategorie liefert Information zur aktuellen Medikation (z.B. Blutdruck-Senker) mit dem Ziel Wechselwirkung zu weiteren Verordnungen oder Behandlungen zu itendtifizieren und zu bewerten.
* **Informationen mit Bezug zu Diagnose, Indikation oder Co-Morbiditäten** - Diese Kategorie betrifft chronische Erkrankungen (z.B. Niereninsuffizienz), Lebensumstände (z.B. Schwangerschaft) und Lebensgewohnheiten (z.B. Leistungssport). eine zentrale Kontraindikation, Nebenwirkungen, Prädisposition

Eine entsprechende gruppierte Visualisierung der Informationsobjekte findet sich in  [Anhang 1](#9-annex-i---klassen--und-datendiagramm)

### 4.3. Organisatorische Randbedingungen
Es gelten die Fristen wie in anderen Modulen.

Die Konsentierung der Use Cases soll auch eine rein asynchrone Mitarbeit erlauben. Dies schließt eine asynchrone Entscheidungsfindung ein.

### 4.4. Konventionen
Die Draft-Dokumente werden auf GitHub zur Diskussion gestellt.

Pull Requests, die grundsätzliche Änderungen bewirken, sollten in der Regel im Rahmen der AG angekündigt und ggf. diskutiert werden.

## 5. Kontextabgrenzung

Wie alle ISiK Spezifikation dürfen sich die Neuerungen am ISiK Modul Medikation nur auf die Kommunikation innerhalb des Krankenhauses (d.h. zwischen KIS und Subsystemen) beziehen.

Auch wenn eine Kompatibilität zum [MIO Medikationsplan](https://mio.kbv.de/display/EMP1X0X0/Inhalte+des+MIO+Medikationsplan) angestrebt wird, ist eine Schnittstelle zur ePA out of scope.

### 5.1. User und Systeme

Zu berücksichtigende User sind
* Krankenhausmitarbeiter (MFAs, Ärzte etc.)
* Pharmazeutisches Personal (Apotheker, PTAs etc.)
* Patienten (bei Aufnahme, Entlassunge, stationärer Medikation usw.)

Beteiligte Systeme sind prinzipiell alle bestätigungsrelevanten Systeme (siehe [DKG Festlegung](https://www.dkgev.de/themen/digitalisierung-daten/elektronische-datenuebermittlung/datenuebermittlung-nach-373-sgb-v-informationssysteme-im-krankenhaus/)). Hervorzuheben sind dabei:

* KIS, auch fokussierte KIS der Dentalklinik oder der Mund-, Kiefer- und Gesichtschirurgie.
* KIS-Submodule der Medikation
* Eigenständige Systeme der Krankenhausapotheke (AVS)

Zudem sind hervorzuheben als mögliche Clients oder Subsysteme auch Datenbanken oder Services außerhalb der Krankenhauslandschaft, die Informationen bereitstellen über:
* Wirkstoffe und Wechselwirkungen
* Nebenwirkungen
* Substitutionsmöglichkeiten und Generika

### 5.2. Patient Data Journey

Es ist kein spezieller Weg der Patientendaten mit Einfluss auf AMTS bekannt.

## 6. Lösungsstrategie
Vor der Entwicklung einer Lösungsstrategie, die eine Auswahl konkreter Bedarfe benennt, müssen zunächst Ziel- und Problemdefinition besser ausgearbeitet werden. Dennoch lassen sich grundsätzliche Lösungsszenarien nennen.

Zunächst sollte für jedes bestätigungsrelevante System der Umfang des Festzulegenden einzeln bestimmt werden.

### 6.1. Bestehende Standards
Neben allgemein geltenden Festlegungen in FHIR und HL7v2 sind bei der weiteren Problemdefinition folgenden Festlegungen zu beachten:

- Das Allergie Profil aus der Patientenkurzakte, [ Allergy Intolerance (IPS) ](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-AllergyIntolerance-uv-ips.html)
- Die Bereiche *CAVE*, *Interaktionen* sowie *Indikationen und Nebenwirkungen* des AMTS-Modul der [ABDADatenbank²](https://abdata.de/produkte/abdadatenbank2/amts-modul/)
- Das AllergyIntolerance-Profil der KBV-Basisprofile [KBV_PR_Base_AllergyIntolerance](https://simplifier.net/base1x0/kbv_pr_base_allergyintolerance)
- Das AllergyIntolerance-Profil von GEVKO eMDAF [eMDAF Allergien und Unverträglichkeiten](https://simplifier.net/emdaf/emdafprallergyintolerance)

## 7. User Stories und Use Cases

In folgendem wird zwischen User Stories (Business-Seite) und Use Cases (technisch) unterschieden.

User Stories sollen dazu dienen die Bereiche der Bedarfsanalyse grob abzudecken, daraufhin zu präzisieren und die Problemdefinition zu schärfen. Sie fokussieren auf den Nutzer und was dieser mit einer Funktionalität erreichen möchte.

Use Cases sind eher technisch orientiert und fokussieren verschiedene Einsatzszenarien deren Anwendungsfälle.

### 7.1. User Stories - Business

Die User Stories beschreiben die grundlegenden Kontexte, in denen der Bedarf nach einem AMTS entsteht – mit potenziell unterschiedliche Komponenten für die User-System Interaktion:

- US-01 - AMTS Prüfung bei Verordnung, Änderung der Verordnung und Abgabe
   - Ein Heilberufler möchte AMTS-relevante Informationen abrufen, um eine sichere Verordnung, Änderung einer Verordnung (z.B. Substitution) oder Abgabe einer Medikation zu gewährleisten.
- US-02 - AMTS Prüfung bei neuer Informationslage
   - Ein Pharmazeutischer Mitarbeiter möchte AMTS-relevante Informationen abrufen, um eine sichere Abgabe einer Medikation zu gewährleisten.
- US-03 - Stationäre Aufnahme mit Medikationsumstellung (Medication Reconciliation)
   - Bei der stationären Aufnahme eines Patienten soll die bestehenden (häusliche oder ambulante) Medikation mit in das geänderte Versorgungsumfeld übersetzte und angepasst werden, um eine gleichwertige und sichere stationäre Verordnung zu gewährleisten.
- US-04 - Entlassung mit Medikationsumstellung (Medication Reconciliation)
   - Bei der Entlassung eines Patienten aus der stationären Versorgung soll die initiale Medikation mit in das sich ändernde Umfeld übersetzt und angepasst werden, um eine gleichwertige und sichere Weiterführung der Medikation zu gewährleisten.

### 7.2. US-01: AMTS Prüfung bei Verordnung und Abgabe

**REQ-001**: Im Rahmen der Medikationsverordnung, -Änderung oder -Ausgabe MUSS der Nutzer auf AMTS hin prüfen können.

### 7.3. US-02: AMTS Prüfung bei neuer Informationslage

**REQ-002**: Im Rahmen neu bekanntgewordener Informationen MUSS der Nutzer auf AMTS hin prüfen können.

### 7.4. US-02: Stationäre Aufnahme mit Medikationsumstellung (Medication Reconciliation)

**REQ-003**: Im Rahmen der Patientenaufnahme MUSS der Nutzer auf AMTS hin prüfen können.

### 7.5. US-03: Entlassung mit Medikationsumstellung (Medication Reconciliation)

**REQ-004**: Im Rahmen der Entlassung MUSS der Nutzer auf AMTS hin prüfen können.

### 7.6. Fazit zu User Stories

Der zentrale Auslöser einer AMTS-Prüfung und damit auch für die Nutzung der Schnittstellen ist eine vorher unbekannte Informationslage. Die Informationen können initial neu sein, durch den Patienten später in den Prozess hinzugegeben werden, oder sich im Zuge einer Behandlung ergeben.

### 7.7. Use Cases - Technisch
Aus einer Perspektive der Workflows lassen sich folgenden Unter Use Cases (UCs) ausdifferenzieren und darstellen:

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/AMTS_usecases.svg" alt="AMTS Use Cases" width="90%"/>

* **UC-01: Konsolidieren AMTS relevanter Informationen** zur Durchführung einer AMTS-Prüfung
   * *Beschreibung:*
   * *Akteure:*
* **UC-02: TBD**
   * *Beschreibung:*
   * *Akteure:*

### 7.8. Exemplarische Abläufe

**Beispiel-Sequenz Geplanter operativer mit stationärem Aufenthalt**

Ein geriatrischer Patient unterzieht sich einer geplanten Hüftersatzoperation:
* Der Patient kommt am Tag vor dem Eingriff wie verainbart zur stationäre Aufnahme.
* Das Krankenhauspersonal erfasst den relevanten Krankheits- bzw. Versorungsverlauf.
* Das Krankenhauspersonal erhebt relevante klinische Daten: Anamese, Untersusuchung, Vitalparameter, Allergien, Laborbefunde, Blutbild u.ä.
* Das Krankenhauspersonal erhebt seinen umfassenden Medikationsstatus: Anamnese, Medikationsplan, Einweisung & Begleitdokumentation u.ä.
* Das Krankenhauspersonal erarbeitet einen Vorschlag zur Umstellung auf Krankenhaus Medikation
* Mit Hilfe der Schnittstellen werden alle **AMTS relevanten Informationen konsolidiert** und ein AMTS-Check durchgeführt.
* Der Patienten bekommt ein Hüftprothese und wird beobachtet.
* Klinische Daten werden nach dem Eingriff aktualisiert bzw. neu erhoben.
* Zur Entzündungsvermeidung ist eine weitere Verodnung notwendig.
* Im Rahmen des Entlassprozesses erarbeitet das Krankenhauspersonal einen Vorschlag zur Umstellung auf häusliche Gesamtmedikation.
* Mit Hilfe der Schnittstellen werden alle **AMTS relevanten Informationen konsolidiert** und ein AMTS-Check durchgeführt.
* Im Entlassgespräch werdenden Veränderungen kommuniziert und erklärt.
* Der Patient wird mit einem neuen Medikationsplan entlassen.

### 7.9. Nebenbedingungen und weitere Informationen

*Annahmen:*
* Ein Beteiligtes System verfügt über die grundlegende Funktion zur Durchführung eines AMTS-Checks.

*Vorbedingungen:*
* Keine Speziellen

*Nachbedingungen:*
* Keine Speziellen

*Nutzungshäufigkeit:*
* Keine Einschräknungen

*Alternative Abläufe:*
* Keine Speziellen

*Ausnahmen:*
* TBD

*Includes (weitere UCs):* 
* TBD

*Extends (weitere UCs):*
* Erneute AMTS-Prüfung nach Arzneimittelsubstition.

*Anmerkungen und Probleme:*
* AMTS-Checks sollten protokolliert werden, um Verantwortlichkeit und Rückverfolgbarkeit zu gewährleisten. Dies gilt sowohl für den positiven Fall der Veträglichkeit, als auch für den negativen Fall in dem eine Anpassung der Medikation durchgeführt wird.
* AMTS-Checks könnten protokolliert werden, um redundante Prüfungen und Mehrarbeit zu vermeiden.

## 8. Liste weiterer Bedarfe an die Spezifikation
Hier werden Bedarfe an die Spezifikation vorgehalten, die nicht unmittelbar über die oben priorisierten UCs abgedeckt sind.

1. Information darüber, ob ein beteiligtes System selbst AMTS-Checks (oder Teil-Prüfungen) vornehmen kann.
2. TBD

## 9. Annex I - Diagramme

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/amts_usecases.svg" alt="AMTS Use Cases" width="90%"/>

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Medikation/rc/main-stufe-4/Material/images/diagrams/amts_infomodell.svg" alt="AMTS Infomodell" width="90%"/>
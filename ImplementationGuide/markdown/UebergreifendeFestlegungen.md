# Übergreifende Festlegungen

Folgende Festlegungen aus dem Modul [ISiK Basis Stufe 2](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul/ImplementationGuide-markdown-Einfuehrung?version=current) haben in diesem Modul Gültigkeit:
* [Methodik der Schlüsselworte MUSS, SOLL, KANN](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul/I-markdown-UebergreifendeFestlegungen-UebergreifendeFestlegungen-Methodik?version=current)
* [Bedeutung der Must-Support-Flags](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul/I-m-U-UebergreifendeFestlegungen-Must-Support-Flags?version=current)
* [Zu implementierende Repräsentationsformate](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul/I-m-U-UebergreifendeFestlegungen-Repraesentationsformate?version=current)
* [Allgemeine Hinweise zu Suchparametern](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul/I-m-UebergreifendeFestlegungen-UebergreifendeFestlegungen-Suchparameter?version=current)

Darüber hinaus gelten in diesem Modul folgende Datenobjekt-übergreifende Festlegungen:

{{index:current}}

## Offene Punkte

Für die nachfolgend genannten Punkte wird im Rahmen der Ballotierung besonders um Rückmeldung gebeten.

Sollte es diesbezüglich keine Rückmeldungen geben, erfolgt jeweils keine Änderung gegenüber der hier veröffentlichten Fassung.

### Verabreichungsmethode

Bei den Dosierungsangaben ist derzeit die Methode (dosage.method bzw. dosageInstruction.method) nicht ausspezifiziert.

Sollte dieses Datenelement als Must-Support-Element gekennzeichnet sein? Falls ja: welches ValueSet sollte ggf. hinterlegt werden?

### Negation einer Verordnung

Die Negation einer Verordnung, die in FHIR mittels des Elements MedicationRequest.doNotPerform ausgedrückt werden kann, ist derzeit explizit unterbunden.
Dieses Datenelement hat modifizierende Wirkung; konkret würde es in der Instanz bedeuten "Die hier ausgedrückte Verordnung darf nicht stattfinden".

Ein System, das diese Information nicht verarbeiten könnte, wäre nicht FHIR-konform und somit auch nicht ISiK-konform.

Sollte dieses Datenelement dennoch, und dann als Must-Support-Element, erlaubt sein?

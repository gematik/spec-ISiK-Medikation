# Bestätigungsrelevante Systeme

Bestätigungsrelevant im Kontext des Moduls Medikation der ISiK Stufe 2 sind alle Softwareprodukte, die mindestens eine der in Liste 1 angegebenen Artefakte im Kontext der Patienten-Medikation verarbeiten und dauerhaft speichern. Die Verarbeitung schließt in diesem Kontext die Organisation, die Erhebung, die Erfassung, die Anpassung, die Veränderung, das Auslesen, das Abfragen, die Verwendung, die Offenlegung durch Übermittlung, die Verbreitung oder eine andere Form der Bereitstellung ein. Ausgenommen sind Softwareprodukte, die ausschließlich zur redundanten Datenspeicherung und -Wiederherstellung eingesetzt werden.

Die Bestätigung erfolgt getrennt für jedes der Artefakte (Bereiche) in Liste 1. Es MÜSSEN die dort jeweils genannten Datenobjekte implementiert werden.
Darüber hinaus MÜSSEN in jedem Fall die Transaktions-Bundles mit ihrer vollständigen Funktionalität implementiert sein.

**Liste 1:**

| Artefakt/Bereich | Datenobjekte |
--- |--- |
| Medikationsinformationen ("Medikationspläne") | MedikationsInformation, Medikament, MedikationsListe |
| Medikations-Verordnungen | MedikationsVerordnung, Medikament |
|Medikations-Verabreichungen | MedikationsVerabreichung, Medikament |

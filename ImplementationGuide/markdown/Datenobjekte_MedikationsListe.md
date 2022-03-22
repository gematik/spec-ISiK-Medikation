# MedikationsListe

## Profil

**Canonical URL**: https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsListe

{{tree:https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsListe, hybrid}}

[Link Simplifier Profil Übersicht](https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsListe)

## Anmerkungen zu Must-Support-Feldern

@```from
	StructureDefinition
where
    url = 'https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsListe'
for differential.element
where mustSupport = true
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
```

## Beispiele

Valides Beispiel für das Profil MedikationsListe:

{{json:ExampleISiKMedikationsListe}}

## Interaktionen

Für die Ressource List MÜSSEN die REST-Interaktionen "READ", "CREATE" und "UPDATE" implementiert werden.

Folgende Suchparameter sind für das Bestätigungsverfahren relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

   Beispiele

   ```GET [base]/List.code=http://terminology.hl7.org/CodeSystem/list-example-use-codes|medications```

   Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

 1. Der Suchparameter "date" MUSS unterstützt werden:

     Beispiele

     ```GET [base]/List.date=2022-03-21```

     Anwendungshinweise: Weitere Informationen zur Suche nach Date-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "encounter" MUSS unterstützt werden:

   Beispiele:

    ```GET [base]/List?encounter=Encounter/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "encounter.identifier" MUSS unterstützt werden:

   Beispiele:

   ```GET [base]/List?encounter.identifier=http://mein-krankenhaus.example/fhir/sid/fallnummern|7567867```

	 ```GET [base]/List?encounter.identifier=7567867```

   Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

	 Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "item" MUSS unterstützt werden:

    Beispiele

     ```GET [base]/List?item=MedicationStatement/131415```

     Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).


1. Der Suchparameter "patient" MUSS unterstützt werden:

   Beispiele:

    ```GET [base]/List?patient=Patient/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "patient.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?patient.identifier=http://mein-krankenhaus.example/fhir/sid/patienten|1032702```

    ```GET [base]/List?patient.identifier=1032702```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

	Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/List.status=current```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

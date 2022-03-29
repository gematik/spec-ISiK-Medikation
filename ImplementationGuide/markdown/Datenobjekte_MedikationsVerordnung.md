# MedikationsVerordnung

## Profil

**Canonical URL**: https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsVerordnung

{{tree:https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsVerordnung, hybrid}}

[Link Simplifier Profil Übersicht](https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsVerordnung)

## Anmerkungen zu Must-Support-Feldern

@```from
	StructureDefinition
where
    url = 'https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikationsVerordnung'
for differential.element
where mustSupport = true
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
```

## Beispiele

Valides Beispiel für das Profil MedikationsVerordnung:

{{json:ExampleISiKMedikationsVerordnung}}

## Interaktionen

Für die Ressource MedicationRequest MÜSSEN die REST-Interaktionen "READ", "CREATE" und "UPDATE" implementiert werden.

Folgende Suchparameter sind für das Bestätigungsverfahren relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

 1. Der Suchparameter "authoredon" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationRequest.authoredon=2022-03-21```

    Anwendungshinweise: Weitere Informationen zur Suche nach Date-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationStatement.code=http://fhir.de/CodeSystem/bfarm/atc|V03AB23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationRequest.date=2022-03-23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Date-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?encounter=Encounter/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "encounter.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?encounter.identifier=http://mein-krankenhaus.example/fhir/sid/fallnummern|7567867```

    ```GET [base]/MedicationRequest?encounter.identifier=7567867```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

    Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "intent" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationRequest.intent=order```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationRequest?medication=Medication/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "medication.code" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationRequest?medication.code=http://fhir.de/CodeSystem/bfarm/atc|V03AB23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

	  Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?patient=Patient/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "patient.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?patient.identifier=http://mein-krankenhaus.example/fhir/sid/patienten|1032702```

    ```GET [base]/MedicationRequest?patient.identifier=1032702```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

	  Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "requester" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?requester=Practitioner/101112```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "requester.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?requester.identifier=http://fhir.de/sid/bundesaerztekammer/efn|123456789123456```

    ```GET [base]/MedicationRequest?requester.identifier=123456789123456```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

    Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/MedicationRequest.status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

## MedikationsVerabreichung [(MedicationAdministration)](https://www.hl7.org/fhir/medicationadministration.html)

---

### Profil

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationsVerabreichung' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationsVerabreichung, hybrid}}

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationsVerabreichung')
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((9 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

### Anmerkungen zu Must-Support-Feldern

@```from
	StructureDefinition
where
    url = 'https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationsVerabreichung'
for differential.element
where mustSupport = true
  and short.exists()
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
```

## Beispiele

Valides Beispiel für das Profil MedikationsVerabreichung:

{{json:ExampleISiKMedikationsVerabreichung}}

## Interaktionen

Für die Ressource MedicationAdministration MÜSSEN die REST-Interaktionen "READ", "CREATE" und "UPDATE" implementiert werden.

Folgende Suchparameter sind für das Bestätigungsverfahren relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration.code=http://fhir.de/CodeSystem/bfarm/atc|V03AB23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "context" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?context=Encounter/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "context.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?context.identifier=http://mein-krankenhaus.example/fhir/sid/fallnummern|7567867```

    ```GET [base]/MedicationAdministration?context.identifier=7567867```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

    Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "effective-time" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration.effective-time=2022-03-23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Date-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?medication=Medication/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "medication.code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?medication.code=http://fhir.de/CodeSystem/bfarm/atc|V03AB23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

	  Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "patient" MUSS unterstützt werden:

   Beispiele:

   ```GET [base]/MedicationAdministration?patient=Patient/123```

   Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "patient.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?patient.identifier=http://mein-krankenhaus.example/fhir/sid/patienten|1032702```

    ```GET [base]/MedicationAdministration?patient.identifier=1032702```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

	  Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "performer" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?performer=Practitioner/101112```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "performer.identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?performer.identifier=http://fhir.de/sid/bundesaerztekammer/efn|123456789123456```

    ```GET [base]/MedicationAdministration?performer.identifier=123456789123456```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

    Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest.status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

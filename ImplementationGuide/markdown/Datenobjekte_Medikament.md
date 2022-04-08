## Medikament [(Medication)](https://www.hl7.org/fhir/medication.html)

---

### Profil

@```
from StructureDefinition where url = 'https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikament' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikament, hybrid}}

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikament')
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
    url = 'https://gematik.de/fhir/ISiK/v2/StructureDefinition/ISiKMedikament'
for differential.element
where mustSupport = true
  and short.exists()
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
```

## Beispiele

Valide Beispiele für das Profil Medikament:

{{json:ExampleISiKMedikament1}}

{{json:ExampleISiKMedikament2}}

## Interaktionen

Für die Ressource Medication MÜSSEN die REST-Interaktionen "READ", "CREATE" und "UPDATE" implementiert werden.

Folgende Suchparameter sind für das Bestätigungsverfahren relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication.code=http://fhir.de/CodeSystem/bfarm/atc|V03AB23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "form" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication.form=http://standardterms.edqm.eu|11210000```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "ingredient" MUSS unterstützt werden:

   Beispiele:

    ```GET [base]/Medication?ingredient=Medication/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/search.html#reference).

1. Der verkettete Suchparameter "ingredient.code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?ingredient.code=http://fhir.de/CodeSystem/bfarm/atc|V03AB23```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

	  Weitere Informationen zur Suche nach verketteten Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Chained Parameters"](http://hl7.org/fhir/search.html#chaining).

1. Der Suchparameter "ingredient-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication.ingredient-code=http://fhir.de/CodeSystem/bfarm/atc|L01DB01```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "lot-number" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication.lot-number=X123456```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication.status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

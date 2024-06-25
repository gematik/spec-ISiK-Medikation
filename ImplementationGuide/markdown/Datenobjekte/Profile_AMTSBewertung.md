## AMTSBewertung [(RiskAssessment)](https://www.hl7.org/fhir/R4/riskassessment.html)

---

### Profil

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung, hybrid}}

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung')
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
    url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung'
for differential.element
where mustSupport = true
  and short.exists()
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
```

### Beispiele

Valide Beispiele für das Profil Medikament:

TODO:
{{json:ExampleISiKAMTSBewertung1}}

### Interaktionen

Für die Ressource Medication MÜSSEN die REST-Interaktionen "READ", "CREATE" und "UPDATE" implementiert werden.

Folgende Suchparameter sind für das Bestätigungsverfahren relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RiskAssessment?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](https://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RiskAssessment.date=2022-03-21```

    Anwendungshinweise: Weitere Informationen zur Suche nach Date-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date"](https://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "encounter" MUSS unterstützt werden:

   Beispiele:

    ```GET [base]/RiskAssessment?encounter=Encounter/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

   Beispiele:

    ```GET [base]/RiskAssessment?patient=Patient/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach Reference-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://www.hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "risk" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RiskAssessment.risk=http://terminology.hl7.org/CodeSystem/risk-probability|high```

    Anwendungshinweise: Weitere Informationen zur Suche nach Token-type Parametern finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

---

### Verkettete Suchparameter (Chaining und Reverse Chaining)

Auch die verketteten Suchparameter MÜSSEN unterstützt werden und sind mit entsprechenden Referenzen im CapabilityStatement unter ```CapabilityStatement.rest.resource.searchInclude``` bzw. ```CapabilityStatement.rest.resource.searchRevInclude``` angegeben. Siehe {{pagelink:ImplementationGuide/markdown/CapabilityStatement.md}}

Informationen und Beispiele zur Suche nach verketteten Parametern finden sich [im Basismodul](https://simplifier.net/guide/isik-basis-v4/UebergreifendeFestlegungen-UebergreifendeFestlegungen_Suchparameter) und in der FHIR-Basisspezifikation im [Abschnitt "Chained Parameters"](https://hl7.org/fhir/R4/search.html#chaining) und im [Abschnitt "Reverse Chaining"](https://hl7.org/fhir/R4/search.html#has).

Die verketteten Suchparameter des Profils ```RiskAssessment``` hängen wie folgt mit den festgelegten {{pagelink:ImplementationGuide/markdown/UseCasesAnwendung/UseCases.md, text:Anwendungsfällen (Use Cases)}}  zusammen:

1. Der verkettete Suchparameter ```patient.identifier``` unterstützt den Anwendungsfall:

    Um bei einem wiederkehrenden Patienten eine {{pagelink:ImplementationGuide/markdown/UseCasesAnwendung/UseCases.md, text:Verwechslung}} der Risikobewertung und damit eine falsche Schlussfolgerung zur Medikation zu vermeiden.

    Beispiele:  

    ```GET [base]/RiskAssessment?patient.identifier=http://mein-krankenhaus.example/fhir/sid/patienten|1032702```   

    ```GET [base]/RiskAssessment?patient.identifier=1032702```

1. Der verkettete Suchparameter ```encounter.identifier``` unterstützt den Anwendungsfall:

    Um bei einem wiederkehrenden Patienten eine {{pagelink:ImplementationGuide/markdown/UseCasesAnwendung/UseCases.md, text:Verwechslung}} des Falls und damit eine falsche Schlussfolgerung zur Medikation zu vermeiden.

    Beispiele:

    ```GET [base]/RiskAssessment?encounter.identifier=http://mein-krankenhaus.example/fhir/sid/fallnummern|7567867```

    ```GET [base]/RiskAssessment?encounter.identifier=7567867```

1. Der verkettete Suchparameter ```condition.code``` unterstützt den Anwendungsfall:

    Um für die Risikobewertung eines Patienten {{pagelink:ImplementationGuide/markdown/UseCasesAnwendung/UseCases.md, text:eindeutig}} alle relevanten Diagnosen zu finden und eine falsche Schlussfolgerung zur der speziell vorliegenden Diagnose zu vermeiden.

    Beispiele:

    ```GET [base]/RiskAssessment?condition.code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|F71.0```

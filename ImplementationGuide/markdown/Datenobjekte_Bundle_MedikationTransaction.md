## Bundle MedikationTransaction [(Bundle)](https://www.hl7.org/fhir/bundle.html)

---

### Profil

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationTransaction' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationTransaction, hybrid}}

### Anmerkungen zu Must-Support-Feldern

@```from
	StructureDefinition
where
    url = 'https://gematik.de/fhir/isik/v2/Medikation/StructureDefinition/ISiKMedikationTransaction'
for differential.element
where mustSupport = true
  and short.exists()
select
	Feldname: id, Kurzbeschreibung: short, Hinweise: comment
```

### Beispiele

Valides Beispiel für das Profil MedikationTransaction:

{{json:ExampleISiKMedikationTransaction}}

### Interaktionen

Transaction-Bundles werden nicht persistiert, sondern ausschließlich im Kontext von FHIR-Transaktionen verwendet, vgl. [FHIR RESTful API - Batch/Transaction](http://www.hl7.org/fhir/http.html#transaction).

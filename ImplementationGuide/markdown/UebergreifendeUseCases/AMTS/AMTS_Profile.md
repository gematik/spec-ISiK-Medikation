## FHIR-Profile des Anwendungsfalls AMTS


### Profil ISiKAMTSBewertung der Medikation

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung, hybrid}}

---


### Profil ISiKAllergieUnvertraeglichkeit der Basis

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKAllergieUnvertraeglichkeit' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKAllergieUnvertraeglichkeit, hybrid}}

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://gematik.de/fhir/isik/StructureDefinition/ISiKAllergieUnvertraeglichkeit' )
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

#### Observations der Basis


@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKAMTSBewertung, hybrid}}

---


#### Observation Profile des Support-Moduls Labor

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchung' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchung, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungCRP' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungCRP, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungHb' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungHb, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungPCT' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungPCT, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungSerumkreatinin' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungSerumkreatinin, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTSH' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTSH, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungThrombozyten' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungThrombozyten, hybrid}}

---

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTroponin' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTroponin, hybrid}}

---

## FHIR-Profile des Anwendungsfalls AMTS

### Profil ISiKAllergie der Basis

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

### Profil ISiKAMTSBewertung

@```
from StructureDefinition where url = 'https://gematik.de/fhir/isik/v3/Basismodul/StructureDefinition/ISiKVersicherungsverhaeltnisSelbstzahler' select Name: name, Canonical: url
```

{{tree:https://gematik.de/fhir/isik/v3/Basismodul/StructureDefinition/ISiKVersicherungsverhaeltnisSelbstzahler, hybrid}}

---

#### Observation Profile der Basis

#### Observation Profile des Support-Moduls Labor

ValueSet: SctRouteOfAdministration
Id: SctRouteOfAdministration
Description: "Enthaelt alle SNOMED CT Administrationsarten"
* insert Meta
* include codes from system $cs-sct where concept is-a #284009009

ValueSet: ISiKMedikationsart
Id: ISiKMedikationsartVS
Description: "ISiK Therapiearten für Medikation"
* insert Meta
* include codes from system ISiKMedikationsart

ValueSet: UcumUndSctDoseFormVS
Id: UcumUndSctDoseFormVS
Title: "Ucum und SnomedCT Basic Dose Form ValueSet"
Description: "ValueSet zur Abbildung von kodierten Dosierinformationen. Bestehend aus UCUM Codes & SnomedCT Unit Dose Concepten"
* insert Meta
* include codes from system $cs-sct where concept is-a #408102007 // Unit dose (qualifier value)
* include codes from system $cs-ucum
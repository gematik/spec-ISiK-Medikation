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
Description: "ValueSet zur Abbildung von kodierten Dosierinformationen. Bestehend aus UCUM Codes & SnomedCT Unit of presentation"
* insert Meta
* include codes from system $cs-sct where concept is-a #732935002 // Unit of presentation
* include codes from system $cs-ucum
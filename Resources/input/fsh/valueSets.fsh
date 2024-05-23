ValueSet: SctRouteOfAdministration
Id: SctRouteOfAdministration
Title: "SnomedCT Medikation Administrationsarten"
Description: "Enthaelt alle SNOMED CT Medikations-Administrationsarten"
* insert Meta
* include codes from system $cs-sct where concept is-a #284009009

ValueSet: ISiKMedikationsartVS
Id: ISiKMedikationsartVS
Title: "ISiK Medikationsart"
Description: "ISiK Therapiearten für Medikation"
* insert Meta
* include codes from system ISiKMedikationsartCS

ValueSet: MedikationsListeListModeVS
Id: MedikationsListeListModeVS
Title: "Medikationslisten-Modes"
Description: "Erlaubte ListModes der ISiK MedikationsListe"
* insert Meta
* ListMode#working
* ListMode#snapshot
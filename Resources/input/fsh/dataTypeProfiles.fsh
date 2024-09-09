Profile: MedicationQuantity
Parent: SimpleQuantity
Id: MedicationQuantity
Title: "Medication Quantity"
Description: "Quantity Datentyp der UcumUndSctDoseFormVS vorgibt. Bei Dimensionslosen Einheiten wie 'Tablette' SOLL statt eines UCUM Code '1' der passende SnomedCT  Unit of presentation Code angegeben werden."
* value 1..1 MS
* unit MS
* system 1..1 MS
* system = $cs-ucum
* code 1..1 MS

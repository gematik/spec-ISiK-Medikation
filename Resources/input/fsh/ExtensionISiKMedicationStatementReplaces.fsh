Extension: ExtensionISiKMedicationStatementReplaces
Id: ExtensionISiKMedicationStatementReplaces
Title: "ISiKMedicationStatementReplaces"
Description: "Welche Medikationsinformation wird ersetzt?"
* insert Meta
* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* value[x] 1..
* value[x] only Reference(MedicationStatement)
* valueReference
  * reference 1..

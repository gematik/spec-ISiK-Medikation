Extension: ExtensionISiKMedicationRequestReplaces
Id: ExtensionISiKMedicationRequestReplaces
Title: "ISiKMedicationRequestReplaces"
Description: "Welche Medikationsverordnung wird ersetzt?"
* insert Meta
* ^experimental = false
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] 1..
* value[x] only Reference(MedicationRequest)
* valueReference
  * reference 1..

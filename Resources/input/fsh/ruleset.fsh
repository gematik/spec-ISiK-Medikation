RuleSet: Meta
* ^status = #active
* ^experimental = false
* ^publisher = "gematik GmbH"
* ^version = "3.0.6"
* ^date = "2025-07-14"

RuleSet: Meta-CapabilityStatementInformation
* status = #active
* experimental = false
* version = "3.0.6"
* publisher = "gematik GmbH"
* date = "2025-07-14"
* implementationGuide = "https://gematik.de/fhir/isik/v3/Medikation/ImplementationGuide|3.0.6"
* url = "https://gematik.de/fhir/isik/v3/Medikation/CapabilityStatement/medikation-server/information"

RuleSet: Meta-CapabilityStatementVerordnung
* status = #active
* experimental = false
* version = "3.0.6"
* publisher = "gematik GmbH"
* date = "2025-07-14"
* implementationGuide = "https://gematik.de/fhir/isik/v3/Medikation/ImplementationGuide|3.0.6"
* url = "https://gematik.de/fhir/isik/v3/Medikation/CapabilityStatement/medikation-server/verordnung"

RuleSet: Meta-CapabilityStatementVerabreichung
* status = #active
* experimental = false
* version = "3.0.6"
* publisher = "gematik GmbH"
* date = "2025-07-14"
* implementationGuide = "https://gematik.de/fhir/isik/v3/Medikation/ImplementationGuide|3.0.6"
* url = "https://gematik.de/fhir/isik/v3/Medikation/CapabilityStatement/medikation-server/verabreichung"

RuleSet: ISiKMedikament-CodingPZNComment
* ^comment = "Mehrfachcodierung ist zulässig, da für ein abstraktes Medikament auch mehrere PZN-Codes existieren können, z. B. existieren für Aspirin 3 verschiedene Packungsgrößen."

RuleSet: ISiKMedikament-CodingATCComment
* ^comment = "Mehrfachcodierung ist zulässig, da für ein abstraktes Medikament auch mehrere ATC-Codes existieren können, z. B. existieren für Aspirin 4 verschiedene Codes, je nachdem wofür das Medikament angewendet wird."

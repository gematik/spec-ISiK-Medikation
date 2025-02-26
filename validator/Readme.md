# README Validator Quality Checks

The [CI pipeline](https://github.com/gematik/spec-ISiK-Terminplanung/blob/main-stufe-4/.github/workflows/main.yml) ensures the quality of published ISiK conformance resources by utilizing the official Java FHIR validator. It performs comprehensive checks on most machine-readable FHIR artifacts in the repository. For detailed information about the validator, refer to [Using the FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator).

## advisory.json

To facilitate easier identification of issues within profiles, ValueSets, CodeSystems, and examples, the validation pipeline aims to remain "clean." This means the validation output should be free of errors, warnings, and unnecessary informational messages, as cluttered outputs can obscure critical issues. The validator supports this goal through its ["advisor" framework](https://confluence.hl7.org/display/FHIR/Validator+Advisor+Framework), which allows specific messages to be suppressed. All suppressions are defined in the advisor.json file, located alongside this README. The following messages have been suppressed for the current ISiK module:

* All filters containing: `#dom-6` - ISiK resources do not contain a narrative. Ignore this best practice warning for now.
* `SD_PATH_SLICING_DEPRECATED` - In FHIR R5 "pattern" discriminator has been deprecated and is being consolidated with the "value" discriminator. To avoid unintended side effects in R4, we will keep the current slicing.
* `TYPE_SPECIFIC_CHECKS_DT_CANONICAL_RESOLVE` filters expected resolving errors for the urls of Implementationguides or for non-resolvable ISiK Labor profiles.
* `MSG_DRAFT@List.mode` masks the warning for http://hl7.org/fhir/list-mode|4.0.1 which has a draft status in the FHIR-Standard.
* `Terminology_TX_NoValid_3_CC@Encounter.hospitalization.admitSource` filters an expected Information message for the violation of the preferred binding.
* `Terminology_TX_NoValid_2_CC@Encounter.identifier.type` filters an expected Information message for the violation of the extensible binding.
* `Terminology_TX_NoValid_2_CC@Encounter.identifier.type` filters an expected Information message for the violation of the extensible binding.
* `Terminology_TX_NoValid_2_CC@Patient.identifier.type` filters an expected Information message for the violation of the extensible binding.
* `Terminology_TX_Binding_NoSource@RiskAssessment.prediction[0].outcome` filters an expected Information message for an element with no binding.



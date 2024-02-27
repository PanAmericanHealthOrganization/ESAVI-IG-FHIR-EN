This page provides details on terminologies used in the OPS ESAVI FHIR guide, but which are owned and governed by other organizations external to HL7.

Implementers and testers using or referencing any of these code systems for any terminology content artifacts in an HL7 specification **shall** comply with specific licensing requirements for the relevant terminology. Terminology licenses **shall** be obtained from the code system owner for each code system and/or other specific artifact used. It is the sole responsibility of each organization implementing or testing any HL7 specification to ensure that their implementations comply with the licensing requirements of each external terminology used.

More information about [External Terminologies](https://confluence.hl7.org/display/TA/External+Terminologies+-+Information)


### WHODrug

WHODrug is an international reference standard database on medicines, developed and maintained by the Uppsala Monitoring Center (UMC). WHODrug facilitates the registration, analysis and exchange of drug information, primarily to record and analyze drug safety and efficacy data in clinical trials, post-marketing studies and pharmacovigilance activities. WHODrug provides a uniform and structured terminology to describe the active ingredients of medicines, their dosage forms, routes of administration and other relevant characteristics. This tool facilitates the exchange of information between different organizations and countries, improving the quality of data and the comparability of results.

WHODrug includes different identifiers within its structure. For this ESAVI FHIR guide, any of the following may be included, referring to the corresponding codesystems:

1. **Drug Code:** The Drug Code uniquely identifies the name of a drug and its active substance(s), or a general term. It is an aggregation of the Drug Registration Number (DrugRecNo), Sequence Number 1 (Seq1) and Sequence Number 2 (Seq2). As it is made up of three codes, it has meaning per se and can be used to differentiate or group medications by different criteria. It has an associated Drug name, which can be used as a description.
2. **Medicinal Product Identifier (MPID) or medicinal product identifier**, is a serial number without intrinsic meaning that uniquely identifies a specific combination of the following data:
     1. Name of the medication (Drug name)
     2. Name Specifier
     3. Active substance
     4. Country of sales
     5. Marketing authorization holder
     6. Pharmaceutical form
     7. Concentration (Strength)

Since WHODrug does not have an official FHIR facade, the following URIs are provided for each codesystem:

Drug Code URI: XXX

MPID URI: XXX

Retired URI: [http://terminology.hl7.org/CodeSystem/W1-W2](http://terminology.hl7.org/CodeSystem/W1-W2)

More info at:

[http://build.fhir.org/ig/HL7/UTG/CodeSystem-W1-W2.html](http://build.fhir.org/ig/HL7/UTG/CodeSystem-W1-W2.html) (retired)

[https://who-umc.org/whodrug/whodrug-global/implementing-whodrug/](https://who-umc.org/whodrug/whodrug-global/implementing-whodrug/)


### MedDRA

MedDRA is a multilingual standardized international medical terminology that can be used for regulatory communication and evaluation of data related to medicines for human use. MedDRA is designed for use in recording, documenting and monitoring the safety of medicines at all phases of the development cycle (i.e. from clinical trials to post-marketing surveillance).

MedDRA is structured as a five-level hierarchy. System organ classes (SOC) are the broadest terms (e.g., cardiac disorders, investigations). The lowest level of terminology is the Lowest Level Term (LLT) level. There are 26 SOCs and more than 60,000 LLTs.

MedDRA was developed as an initiative of ICH and is maintained and distributed by the MedDRA Maintenance and Support Services Organization (MSSO).

Versions: Versions are released twice a year and are identified by 2 numbers separated by a decimal point (for example, 7.0, 7.1, 8.0, and 8.1). .0 versions may contain changes to the hierarchy. The .1 versions will only contain additions, moves, and modifications to medical concept terms (Preferred Terms, PT) and coding level terms (Lower Level Terms, LLT).

Concepts: Concepts are represented by a MedDRA code and a MedDRA term name. The MedDRA code is a code
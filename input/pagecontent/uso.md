# Use (How to fill out this guide?)
## Names and codes

To accompany the different stages of maturity of the information systems of the countries in the region, the guide has included fields that admit different levels of terminological complexity, from free text to special coding (with and without a use license).
Countries are expected to begin the data submission process by transmitting the information with the same formats and values as found in their information systems. As the process is strengthened, standardizing and incorporating international terminologies, they can be added to the reports sent to PAHO.
For example, if a country captures the names of vaccines in free text, it may report this data as a string in the "vaccine name" field, and to the extent that it adopts encodings such as WHODrug or ICD-11, it may provide a code in the corresponding field.

Fields called "name of..." accept a string value and refer to a literal description, which can be free text or normalized text from the description of an encoding. The codes allow a choice with valuesets or codes, which vary depending on the field. As in general the required fields are the names (string), if an encoding is used, the code description can be applied. For example, if you want to send the information for the OrganizationAddress code, according to the value set you must enter the corresponding code and in the OrganizationAddress name field enter the name associated with the code.

### Identification of people and cases

The unequivocal identification of people in whom an ESAVI was detected is essential to be able to properly manage the data.
However, this identification must be anonymized, meaning that the data cannot be reconstructed in order to reach the real person through the information provided in a report of an ESAVI case.
With this objective, the identification of people in the guide is done through a UUID (Universally Unique Identifier) to identify the vaccinated person.
It is proposed to use [UUID version 5](https://www.uuidtools.com/uuid-versions-explained) to anonymize the national identifier of the person.
Likewise, the same technology will be used to identify cases in the event that there is more than one case per person.

### Sex

The concept of **biological sex** is used for Patient sex, not gender, not administrative sex.

### Vaccines

Each vaccine can be reported in different fields, ranging from literal descriptions to complex coding. At a minimum, the “vaccine name” field must be completed, which is mandatory; it accepts a string value and refers to a literal description (free text).

Ideally, it is proposed to include the WHODrug code of the vaccine, a field that supports a coding (drug code) of the WHODrug standard, although it is limited to those who have access to the license. For those countries that do not have the WHODrug license, other fields have been included to enter the information, allowing you to choose the coding used in the country (for example, ICD-11, SNOMED CT, ATC) or the standardized name of the vaccine (field string type).

### ESAVI

Each ESAVI can be represented in different fields, accepting everything from literal descriptions to complex coding. At a minimum, the ESAVI name field must be completed, which is mandatory, accepts a string value and refers to a literal description (free text). As an ideal alternative, it is proposed to include the ESAVI MedDRA code, a field that supports coding (LLT) of the MedDRA standard, limited to those who have access to the license. For those countries that use systems that allow sharing the ESAVI normalized text but not the code, other fields have been included to choose the encoding used (choice) and the ESAVI normalized name as a string. For those countries that use other ESAVI coding standards than MedDRA (for example, ICD-10, ICD-11, SNOMED CT) there is an optional field that accepts a code, specifying the corresponding codesystem.

### Diagnoses/Medical History

Each medical history can be represented in different fields, ranging from literal descriptions to complex coding. At a minimum, the antecedent name field must be completed, which is mandatory, accepts a string value and refers to a literal description (free text). As an ideal alternative, it is proposed to include the MedDRA code of the medical history, a field that supports coding (LLT) of the MedDRA standard, limited to those who have access to the license. For those countries that use systems that allow sharing the standardized text of the medical history but not the code, other fields have been included to choose the coding used (choice) and the name.
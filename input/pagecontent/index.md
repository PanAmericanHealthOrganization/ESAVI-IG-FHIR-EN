### Introduction

The ESAVI FHIR Implementation Guide (IG) provides guidance on the use of FHIR resources as a mechanism for sharing data on Events Presumedly Attributable to Vaccination and Immunization (ESAVI) between each member state of the Americas region to the Pan American Organization. Health (PAHO).

The ESAVI FHIR Implementation Guide provides guidance for using standard FHIR resources as a mechanism for sharing data required by the [ESAVI Regional Surveillance Manual](https://iris.paho.org/handle/10665.2/55384 ). The use of FHIR as a platform for standardization and automation of ESAVI reporting is expected to improve the quality and timeliness of vaccine safety information.

This FHIR implementation guide is the product of the work for the project "Strengthening the Regional Vaccine Safety System in the context of the COVID-19 Emergency".

The Guide is based on [FHIR Version R4](http://hl7.org/fhir/R4/index.html) and defines the minimum compliance requirements so that each member state can individually report to PAHO the ESAVI of any vaccine, prioritizing those against COVID-19.

The implementation guide is inspired by the World Health Organization's [SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) approach to help countries to integrate global data and WHO/PAHO health recommendations into digital systems accurately and consistently.

These profiles are the basis for future implementation guides and were produced in collaboration between PAHO and the HL7 Argentina Association.

### How to read this guide

This guide is divided into several sections that are displayed in the menu bar located at the top of the page

- [Home](https://build.fhir.org/ig/PanAmericanHealthOrganization/ESAVI-IG-FHIR): Provides the introduction to this guide.
- [Objectives](objetivos.html): Describes the strategic and interoperability objectives
- [General Data](generalidadess.html): General Aspects regarding the project and the Guide
- [Actors and Use Cases](actores_CasosUso.html): Definition of Use Cases.
- [FHIR operations](operacioens.html): Rest operations used for the project.
- [Artifacts](artefactos.html): These pages provide detailed descriptions and formal definitions for the FHIR objects present in the guide.
- [Mappings](mapeos.html): Development of Mappings between DHIS2 and E2B XML(R3) with FHIR.
- [Use](uso.html): Explains the interpretations and intentions of the semantics of the resources.
- [Security](seguridad.html): Explains the security formats for the connection with the Regional System.
- [Downloads](descargas.html): Groups available downloads such as profiles, validation package, examples, etc.

### From logical model to implementation

The logical model is based on the recommendations of the [ESAVI Regional Surveillance Manual](https://iris.paho.org/handle/10665.2/55384) for individual case reporting, where each member state reports to the Regional System of PAHO Safe Vaccination. As a previous step, an ESAVI ES Notification Data Dictionary was structured in tabular format. This logical model is mapped to a resource [Questionnaire] (https://build.fhir.org/ig/PanAmericanHealthOrganization/OPS-ESAVI/StructureDefinition-ESAVIQuestionnaireResponse.html)

### Compliance Requirements

Compliance requirements describe expectations about the functionality of server/client applications, identifying the specific profiles and interactions they must implement. Individual profiles identify structural and terminological requirements. The definitions of search parameters and operations specify how they are implemented by servers.

### Definitions

#### ESAVI

It is called ESAVI (Events Supposedly Attributable to Vaccination or Immunization, also known as Adverse Events Following Vaccination, AEFI, or Adverse Event Following Immunization, AEFI in English) as any health situation (sign, abnormal laboratory finding, symptom or disease). unfavorable and unintended event that occurs after vaccination or immunization and that does not necessarily have a causal relationship with the vaccination process or with the vaccine.

ESAVI surveillance is one of the most important elements in ensuring that vaccines are safe and administered safely. Serious reactions after immunization are very rare, so their detection requires pooling ESAVI data from multiple countries in regional and/or global databases.
During the COVID-19 pandemic, the process of detecting and reporting vaccine safety data has proven to be challenging, especially in the Americas.
In November 2020, the PAHO Technical Advisory Group (TAG)on Vaccine Preventable Diseases, supports the establishment of a regional surveillance system to monitor the safety of vaccines against COVID-19.
This reflects the high priority that strengthening ESAVI surveillance has for the region of the Americas, both for vaccines against COVID-19 and in general. Understanding the information system, from a holistic approach to digital transformation, as a key piece for said strengthening at the national, regional and global levels.

One of the most important challenges is the standardization of both the databases and the coding included and the mechanisms to share and aggregate all the information in the PAHO ESAVI Regional Base, with the objective of minimizing the workload that is required. required by countries.

### Current situation

According to the information systems survey carried out by PAHO in 2020, 83% of the countries in the region did NOT have information systems mature enough for ESAVI surveillance. A group of countries based surveillance on paper forms and aggregated them into spreadsheets. In others, systems were found with fragmented data in multiple national institutions and an absence in the implementation of standards for the accurate recording of the vaccines involved and the associated adverse events.
PAHO's strategy was based on supporting countries according to their level of development, seeking to progressively strengthen their capacities and promoting a digitalization strategy for all surveillance activities. This includes promoting the national adoption of systems such as DHIS2 (District Health Information System 2), an open-source software that was adapted to allow the monitoring of ESAVI cases.

### Rationality of the use of FHIR in ESAVI

In this context, the proposal arises to adopt FHIR (Fast Healthcare Interoperability Resources), the open health data exchange standard created by HL7 International. Countries such as the United States, Canada, Argentina, Brazil, Chile, among others, are already using it as a standard for data exchange in public health. The World Health Organization promotes FHIR as a standard for structuring digital COVID-19 vaccination certificates, among other use cases.

### Dependencies, versions and intellectual property

#### Dependencies

{% include dependency-table.xhtml %}

#### Cross version analysis

{% include cross-version-analysis.xhtml %}

#### Global profiles

{% include globals-table.xhtml %}

#### Intellectual property declaration

{% include ip-statements.xhtml %}
### Use Case Project

The project involves the exchange of ESAVI record forms between national repositories and the PAHO repository, using the **FHIR** standard. Although this project may consider several use cases, in the first instance the one related to the taxation of reports from the **National Repositories**, to that of the **PAHO** will be developed.

### Use Case 1: Sending ESAVI Notification to OPS Repository
<br>

This use case describes the generation of a **FHIR form** designed for ESAVI notification between a National Repository and the OPS Repository. The transaction must be carried out through the use of the indicated standard. If the form is not generated in FHIR, there must be a transformation to be able to generate the transaction. This use case presents the following sequence:
<br>

* National Repository Genenera Questionnaire Response

* The National Repository generates the Questionnaire Response according to the **profile** developed in this Guide, and based on the **ESAVI Questionnaire** of this Guide.
* The generated resource must contain an **id**, in **UUID** format, whose generation scheme is indicated in the profile
* The generated **QuestionnaireResponse Resource** is delivered to the **OPS Repository** through a *POST* operation to the endpoint determined to be the target repository
* The repository service responds to the system that sent the resource, indicating: reception status, possible errors, resource id in case of successful reception
<br>


<br>
<br>


<div align="center">
   <img src="CU1ESAVI.png">
   <p>Taxation ESAVI Report to PAHO Repository</p>
</div>

<br>
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

///////////////////////Información instancia//////////////////////////
Instance: CuestionarioESAVI
Title: "ESAVI Questionnaire"
Description: "ESAVI Questionnaire"
InstanceOf: Questionnaire
Usage: #example

///////////////////////*****************************//////////////////////////


* status = #draft
///////////////////////*****************************//////////////////////////
//// extension para respuesta condicionada de fecha para fechaConsulta   /////
///////////////////////*****************************//////////////////////////

/*
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaCon"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Fecha de Consulta no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer.where(value >= item.where(linkId='datosVacunadoCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaConsulta').answer.value"
//  


/// extension para respuesta condicionada de fecha para fechaNotificacion ////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaNot"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Notificación no sea menor que la fecha de Consulta" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaNotificacion').answer.value"
// 
///////////////////////****************************
///// extension para respuesta condicionada de fechaNotificacion 2 ///////////
///////////////////////****************************
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaNot2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de notificción no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer.where(value >= item.where(linkId='datosVacunadoCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaNotificacion').answer.value"

///////////////////////****************************
/// extension para respuesta condicionada de fecha para fechaLlenadoFicha ////
///////////////////////***************************
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha no sea menor que la fecha de Consulta" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"
 
///////////////////////****************************
// extension para respuesta condicionada de fecha para fechaLlenadoFicha 2  //
///////////////////////****************************
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha no sea menor que la fecha de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"


///////////////////////***************************
/////// extension para respuesta condicionada de fechaLlenadoFicha 3  ////////
///////////////////////***************************

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha3"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Llenado de Ficha no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosVacunadoCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"

///////////////////////***************************
//extension para respuesta condicionada de fecha para fechaAlmacenaRepNacional (JORGE)// 
///////////////////////***********************

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaAlmacenaRepNacional"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha en Repositorio Nacional sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaRepoNacional').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaRepoNacional').answer.value"

// extension para respuesta condicionada de fecha para fechaLlenadoFicha OK ///

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"
 

// extension para respuesta condicionada de fecha para fechaSintomasCovid19 OK//

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaSitomasCovid19"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de sintomas de Covid 19 no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaSintomasCovid19').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaSintomasCovid19').answer.value"
 


// extension para respuesta condicionada de fecha para fechaTomaMuestraCovid19 OK
 

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaTomaMuestraCovid19"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de toma de muestra de Covid 19 no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaTomaMuestraCovid19').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaTomaMuestraCovid19').answer.value"
 
// extension para respuesta condicionada de fecha para fechaTomaMuestraCovid2 OK
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaTomaMuestraCovid192"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de toma de muestra de Covid 19 no sea menor que la  fechas de Sintomas de COVID 19" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaTomaMuestraCovid19').answer.where(value <= item.where(item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaSintomasCovid19').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaTomaMuestraCovid19').answer.value"

/////// extension para respuesta condicionada de fecha para fechaPartoESAVI OK///////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaParto"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha departo no sea menor que la  fecha de ultima Regla" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='registroESAVI').item.where(linkId='antecedentesEmbarazoESAVI').item.where(linkId='fechaPartoESAVI').answer.where(value >= item.where(linkId='registroESAVI').item.where(linkId='antecedentesEmbarazoESAVI').item.where(linkId='fechaUltimaMenstruacionESAVI').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaPartoESAVI').answer.value"
 

/////// extension para respuesta condicionada de fecha para fechaParto OK ///////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaParto2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha departo no sea menor que la  fecha de ultima Regla" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesEmbarazo').item.where(linkId='fechaParto').answer.where(value >= item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesEmbarazo').item.where(linkId='fechaUltimaMenstruacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaParto').answer.value"
*/

///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaAlmacenaRepOPS 
///////////////////////*****************************//////////////////////////
/*
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaHoraVacunacion"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de vacunacion no sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='registroVacunaCovidOtras').item.where(linkId='fechaHoraVacunacion').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaAlmacenaRepOPS').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='registroVacunaCovidOtras').answer.value"
*/
* version = "0.85"
* name = "OPSCuestionarioESAVI"
* title = "PAHO ESAVI Questionnaire"
* status = #draft
* date = "2022-03-17"
* publisher = "Pan American Health Organization"


////////////////////////////////////////////////// ///////////////////////////////
///////////////////// GeneralNotificationDataGroup //////////////////////////
* item[0].type = #group
* item[=].linkId = "datosNotificacionGeneral"
* item[=].text = "Notification Administrative Data"
* item[=].required = true

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosNotificacion //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosNotificacion"
* item[=].item[=].text = "Data about who and where the notification is made"

* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/codPaises"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].text = "Country where the Record originated"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreOrganizacionNotificador"
* item[=].item[=].item[=].text = "Name of the local level institution that performs the primary notification."

* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoDireccionOrganizacion"
* item[=].item[=].item[=].text = "Subnational Geographic Level Code of the Location of the Notifying Institution"


* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].text = "Name of the Subnational Geographic Level of the Location of the Notifying Institution"


* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ProfesionalNotificadorVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].text = "Profession code of the notifier"

////////////////////////////////////////////////// ///////////////////////////////
///////////////////// Date group /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "Fechas"
* item[=].item[=].text = "Administrative Dates (at least one date is necessary)"

* item[=].item[=].item[0].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaConsulta"
* item[=].item[=].item[=].text = "Date of the first consultation with the health service due to ESAVI"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2019-12-01"



* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificacion"
* item[=].item[=].item[=].text = "Date on which the surveillance system officially becomes aware of the occurrence of the event."
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 2019-12-01

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].text = "Date on which the notifier finishes filling out the notification form (if the form is electronic, it is the same as notificationdate)"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 2019-12-01

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].text = "Recorded date of arrival of the notification to the national level database (if the record is electronic, it is the same as dateNotification)"
/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosVacunadoCaso //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "datosIdVacunado"
* item[=].text = "Vaccinated Demographic Data generated by ESAVI"


////////////////////////////
///////////////////// PatientData Group /////////////////////////// ///////
* item[=].item.type = #group
* item[=].item.required = true
* item[=].item.linkId = "dataPaciente"
* item[=].item.text = "Vaccinated Person Data"

* item[=].item.item[0].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "numeroCaso"
* item[=].item.item[=].text = "UUID that identifies the case or notification. A person can have more than one notification."



////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "idPaciente"
* item[=].item.item[=].text = "UUID identification of the person vaccinated/affected by ESAVI"

/////////////////////////////
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/DirOrgNotiVS"
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "codigoResidenciaHabitual"
* item[=].item.item[=].text = "Subnational Geographic Level Code of the Habitual Residence of the Person affected by ESAVI"

/////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].text = "Name Subnational Geographic Level of the Habitual Residence of the Person affected by ESAVI"

////////////////////////////////
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "sexoPaciente"
* item[=].item.item[=].text = "Sex of the vaccinated."

////////////////
* item[=].item.item[+].type = #date
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "fechaNacimiento"
* item[=].item.item[=].text = "Date of birth of the vaccinated person"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = 1900-01-01

//////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "etnia"
* item[=].item.item[=].text = "Name of the ethnic group with which the vaccinated person identifies"

////////////////////////////////////////////////// ///////////////////////////////
////////////////////// Medical Background Group //////////////////////////// ///////
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "antecedentesMedicos"
* item[=].text = "Medical history identified by the patient"

//////////////////////////////////


* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].linkId = "ensayoClinico"
* item[=].item[=].text = "clinicaltrial"


* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "ensayoClinicoCovid19"
* item[=].item[=].item[=].text = "See if you participated in any clinical trials for COVID-19"


////////////////////////////////////////////////// ///////////////////////////////
///////////////////// BackgroundPreviousDiseases Group /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].text = "History of previous illnesses"

/////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].text = "Description of previous health problems in the person affected by ESAVI with emphasis on comorbidities or diseases concomitant to the adverse event, similar previous events and medical events relevant to the current health event (if the disease is coded, it is the description corresponding to the code)."

/////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/CodigoMedDRAEnfPreviaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedDRAEnfPrevia"
* item[=].item[=].item[=].text = "MedDRA code of the medical history"

/////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/EnfermedadesPreviasCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosCodigosEnfPrevia"
* item[=].item[=].item[=].text = "ICD-10/ICD-11/SNOMED code of the medical history"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesEventosAdversos //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
//* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEventosAdversos"
* item[=].item[=].text = "Declaration of existence of previous adverse events"

/////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "antecedentesAdvSimilar"
* item[=].item[=].item[=].text = "History of adverse events similar to the current one"

////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "alergiaMedicamentos"
* item[=].item[=].item[=].text = "History of allergic reactions to medications"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "alergiaVacunas"
* item[=].item[=].item[=].text = "History of allergic reactions to other vaccines"

////////////////////////////////////////////////// ///////////////////////////////
///////////////////// BackgroundSarsCov2 group /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesSarsCov2"
* item[=].item[=].text = "History of diagnosis of SARS-CoV-2 infection"


//////////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "diagnosticoprevioSarsCov2"
* item[=].item[=].item[=].text = "History of diagnosis of SARS-CoV-2 infection (Yes/No/Don't Know)"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "asintomaticoSars"
* item[=].item[=].item[=].text = "Diagnosis of Covid-19 without symptoms (Yes/No/Don't Know)"

//////////////////////////////////
* item[=].item[=].item[+].type = #dateTime
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaSintomasCovid19"
* item[=].item[=].item[=].text = "Date the first sign and/or symptom of COVID-19 began."

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ModoConfirmacionInfeccionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "tipoConfirmacionCovid19"
* item[=].item[=].item[=].text = "Type of COVID-19 diagnosis confirmation"

//////////////////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaTomaMuestraCovid19"
* item[=].item[=].item[=].text = "Date on which the sample was taken for COVID-19 examination"






////////////////////////////////////////////////// ///////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "pacienteEmbarazada"
* item[=].item[=].text = "Pregnancy status"

////////////////////// Enable When
* item[=].item[=].enableWhen[0].question = "sexoPaciente"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $administrative-gender#female

//////////////////////////////////
* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].text = "Were you pregnant at the time of the vaccine?"

//////////////////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].text = "Was she pregnant at the time of the ESAVI?"
//////////////////////////////////




* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaUltimaMenstruacion"
* item[=].item[=].item[=].text = "Date of the Patient's last menstruation"
////////////////////// Enable When
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].enableWhen[0].question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

/////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaProbableParto"
* item[=].item[=].item[=].text = "Date of delivery, or probable date of delivery (calculated or indicated by the person affected by ESAVI)"
////////////////////// Enable When
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].enableWhen[0].question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true


* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "edadGestacional"
* item[=].item[=].item[=].text = "Current gestational age if pregnant or at the time of delivery of the most recent pregnancy"
////////////////////// Enable When
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].enableWhen[0].question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "monitoreoPosteriorVacuna"
* item[=].item[=].item[=].text = "Response corresponding to the query about whether the patient was monitored once vaccinated"

* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true



////////////////////////////////////////////////// ///////////////////////////////
///////////////////// Group background DrugsVaccines /////////////////////////// ///////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "antecedentesFarmacosVacunas"
* item[=].text = "Pharmacological History"

////////////////////////////////////////////////// ///////////////////////////////
////////////////////// Drug group /////////////////////////// ///////
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "medicamento"
* item[=].item[=].text = "History of medications that the patient took at the time of the ESAVI"

//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreMedicamento"
* item[=].item[=].item[=].text = "Name of the medication taken concomitantly with the vaccine or relevant to ESAVI, in free text (if coded, it is the code description)"

///////////////////// OKAY
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/SistemasDeCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "sistemaDeCodificacionParaNombreNormalizadoMedicamento"
* item[=].item[=].item[=].text = "Encoding system"

//////////////ManufacturerName OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreNormalizadoMedicamento"
* item[=].item[=].item[=].text = "Name of the drug as reported by the notifier. May include standardized name if the country does not include a field in which the name of the drug is recorded in free text. medicine."



//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedicamento"
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/CodigoMedicamentoVS"
* item[=].item[=].item[=].text = "WHODrug/SCT/ICD-11/ATC code of the medication consumed by the patient"

//////////////////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreFormaFarmaceutica"
* item[=].item[=].item[=].text = "Name of the pharmaceutical form of the medication"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/FormaFarmaceuticaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoFormaFarmaceutica"
* item[=].item[=].item[=].text = "Code of the pharmaceutical form of the medication"

//////////////////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreViaAdministracion"
* item[=].item[=].item[=].text = "Name of administration route of the medication"


//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ViaAdminMedicamentoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoViaAdministracion"
* item[=].item[=].item[=].text = "Code Via medication administration"



////////////////////////////////////////////////// ///////////////////////////////
///////////////////// Vaccine data group /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosVacunas"
* item[=].item[=].text = "Data on vaccines administered"

//////////////vaccinename OK
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreVacuna"
* item[=].item[=].item[=].text = "Name of vaccine administered"

//////////////////////Want Normalized Name
//* item[=].item[=].item[+].type = #boolean
//* item[=].item[=].item[=].required = false
//* item[=].item[=].item[=].linkId = "nombreNormalizado"
//* item[=].item[=].item[=].text = "Do you want to enter a normal name?"


///////////////////// OKAY
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/SistemasDeCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "sistemaDeCodificacionParaNombreNormalizadoVacuna"
* item[=].item[=].item[=].text = "Encoding system"

//////////////ManufacturerName OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreNormalizadoVacuna"
* item[=].item[=].item[=].text = "Name of the vaccine as reported by the notifier. May include standardized name if the country does not include a field in which the name is recorded in free text of the vaccine"


//////////////vaccinename OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "identificadorVacuna"
* item[=].item[=].item[=].text = "Correlative identifier of the vaccine useful to refer to the vaccine registered in other sections of the guide."

///////////////////// OKAY
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/CodigoWhoVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunaWHODrug"
* item[=].item[=].item[=].text = "Vaccine WHODrug code"

////////////////////////////////////////////////// ///////////////////////////////
///////////////////// Group code VaccineOther /////////////////////////// ///////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/CodigoNoWhoVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunaOtro"
* item[=].item[=].item[=].text = "Vaccine non-WHODrug code"

//////////////ManufacturerName OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreFabricante"
* item[=].item[=].item[=].text = "Name of the manufacturer or holder of the health registration as registered by the notifier"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/CodigoWhoFabricanteVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoFabricanteWHODrug"
* item[=].item[=].item[=].text = "Name of the manufacturer or holder of the health record registered in any pharmaceutical standard in the country. If there is more than one, WHO Drug is preferred."

////////////////////// vaccine dose with maximum and minimum value

* item[=].item[=].item[+].type = #integer
//* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/DosisVacunaVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].text = "Ordinal number of the administered dose"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "numeroLot"
* item[=].item[=].item[=].text = "Lot Number of the Vaccine administered"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaVencimientoVacuna"
* item[=].item[=].item[=].text = "Vaccine Expiration Date"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].item[=].text = "Name of Vaccine Diluent"



/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "numeroLoteDiluyente"
* item[=].item[=].item[=].text = "Vaccine diluent batch number"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaVencimientoDiluyente"
* item[=].item[=].item[=].text = "Vaccine diluent expiration date"

//// Vaccination data group /////////

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].text = "Vaccination center name"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaVacunacion"
* item[=].item[=].item[=].text = "Vaccination date"

/////////////////////
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "horaVacunacion"
* item[=].item[=].item[=].text = "Vaccination time"


* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].text = "Code for the subnational geographic level of the location of the health institution where the vaccine was administered"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].text = "Full address of the institution where the vaccine was administered"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ModoVerificacionVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMecanismoVerificacion"
* item[=].item[=].item[=].text = "Vaccine verification mechanism code"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreOtroMecanismoVerificacion"
* item[=].item[=].item[=].text = "Description of another mechanism not considered in the codes"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaReconstitucionVacuna"
* item[=].item[=].item[=].text = "Date on which the registered vaccine was reconstituted"

/////////////////////
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "horaReconstitucionVacuna"
* item[=].item[=].item[=].text = "Time at which the registered vaccine was reconstituted"


////////////////////////////////////////////////// ///////////////////////////////
///////////////////// ESAVI registration group /////////////////////////// ///////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "registroESAVI"
* item[=].text = "ESAVI registry developed by the vaccinated person"

////////////////////////////////////////////////// ///////////////////////////////
/////////////////////ESAVI data group /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosESAVI"
* item[=].item[=].text = "ESAVI information and its classification according to severity"

//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreESAVI"
* item[=].item[=].item[=].text = "ESAVI name"

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].text = "ESAVI correlative identifier useful to refer to the event recorded in other sections of the guide"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/EsaviMedDRAVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].text = "MedDRA Code of the reported Adverse Event"

/////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = Canonical(EsaviOtroVS) //"https://paho.org/fhir/esavi/ValueSet/EsaviOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].text = "Non-MedDRA code of the adverse event that occurred after vaccination"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaESAVI"
* item[=].item[=].item[=].text = "ESAVI start date referred by the patient or identified by the doctor"

/////////////////////
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "horaESAVI"
* item[=].item[=].item[=].text = "Start time of ESAVI referred by the patient or identified by the doctor"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionESAVI"
* item[=].item[=].item[=].text = "ESAVI narrative description"

////*************new group copied from above so we don't make mistakes*/

///////////////////// Pregnancy History GroupESAVI /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "ESAVIDuranteEmbarazo"
* item[=].item[=].text = "Data related to medical conditions that occurred during pregnancy in which the vaccine was received and/or ESAVI occurred."



* item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].enableWhen.question = "embarazadaMomentoESAVI"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


////////////////////////////////////////////////// //////////////////////////////
////////////////////// Pregnancy Complications Group //////////////////////////// ///////

* item[=].item[=].item[+].linkId = "codigoTipoComplicacionESAVI"
* item[=].item[=].item[=].text = "Type code for pregnancy complications after vaccine administration"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ComplicacionEmbarazoVS"
* item[=].item[=].item[=].required = true
/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].text = "Complication Description"
/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ComplicacionEmbarazoMedDRAVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedDRAComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].text = "MedDRA pregnancy complication code"

////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ComplicacionEmbarazoOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosCodigosComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].text = "SNOMED-CT/ICD-10/ICD-11 code of pregnancy complication"

///**********new group copied from above so we don't make mistakes********/


////////////////////////////////////////////////// ///////////////////////////////
///////////////////// Gravity groupESAVI /////////////////////////// ///////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "gravedadESAVI"
* item[=].item[=].text = "Determination of ESAVI severity status"

/////////////////////
* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "tipoGravedad"
* item[=].item[=].item[=].text = "Serious ESAVI?"



/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerte"
* item[=].item[=].item[=].text = "Death"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravRiesgoVida"
* item[=].item[=].item[=].text = "Life threatening at the time of ESAVI detection"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravDiscapacity"
* item[=].item[=].item[=].text = "Generates severe or permanent disability at the time of detection"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravHospitalizacion"
* item[=].item[=].item[=].text = "Hospitalization or extension thereof"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravAnomaliaCongenita"
* item[=].item[=].item[=].text = "Congenital anomaly"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravAborto"
* item[=].item[=].item[=].text = "Abortion"

* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].enableWhen[0].question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[=].item[=].enableWhen[+].question = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true



/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerteFetal"
* item[=].item[=].item[=].text = "Fetal death"

* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].enableWhen[0].question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[=].item[=].enableWhen[+].question = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].text = "Otros Eventos considerados Médicamente Importantes"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "otrosEventosImportantesTx"
* item[=].item[=].item[=].text = "Descripción de Otros Eventos medicamente importantes"
* item[=].item[=].item[=].enableWhen.question = "otrosEventosImportantes"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo desenlaceESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "desenlaceESAVI"
* item[=].item[=].text = "Desenlace ESAVI"


/////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ClasificacionDesenlaceVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codDesenlaceESAVI"
* item[=].item[=].item[=].text = "Código Desenlace ESAVI"
 
/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaMuerte"
* item[=].item[=].item[=].text = "Fecha de muerte producida por posible ESAVI"

* item[=].item[=].item[=].enableWhen.question = "gravMuerte"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "autopsia"
* item[=].item[=].item[=].text = "Determinación si hubo o no Autopsia"
* item[=].item[=].item[=].enableWhen.question = "gravMuerte"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificaMuerte"
* item[=].item[=].item[=].text = "Fecha en la cual se notifico la muerte del paciente al registro nacional"
* item[=].item[=].item[=].enableWhen.question = "gravMuerte"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificaMuerteFetal"
* item[=].item[=].item[=].text = "Fecha en la cual se notifico la muerte del feto de paciente al registro nacional"
///////////////////// multiples condiciones
* item[=].item[=].item[=].enableWhen.question = "gravAborto"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableWhen.question = "gravMuerteFetal"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

///////////////////// multiples condiciones
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "autopsiaFetal"
* item[=].item[=].item[=].text = "Determinación si hubo o no Autopsia Fetal"
* item[=].item[=].item[=].enableWhen.question = "gravMuerteFetal"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "comentarios"
* item[=].item[=].item[=].text = "Comentarios adicionales en cuanto al cuadro ESAVI"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].text = "Fecha en la cual se inicia investigación"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo causalidadESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "causalidadESAVI"
* item[=].item[=].text = "Información sobre la clasificación de causalidad"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaCausalidadESAVI"
* item[=].item[=].item[=].text = "Final case clasification date"

/////////////////////  s
//* item[=].item[=].item[+].type = #choice
//* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/EsaviClasificaciónCausalidad"
//* item[=].item[=].item[=].required = true
//* item[=].item[=].item[=].linkId = "sistemaclasfcausalidadESAVI"
//* item[=].item[=].item[=].text = "Método de clasificación de causalidad del ESAVI"

////////////////*******************************
///////////////////// 
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = Canonical(SistemaClasfCausalidadVS)
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "sistemaClasfCausalidad"
* item[=].item[=].item[=].text = "Causality classification method"

/////////////////////ddd
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otroSistemaClasfCausalidad"
* item[=].item[=].item[=].text = "Another causality classification system"
////////////////////// Enable When
* item[=].item[=].item[=].enableWhen.question = "sistemaClasfCausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = Canonical(SistemaClasfCausalidadVS)
* item[=].item[=].item[=].enableWhen.answerCoding.code = #other


/////////////////////ddd
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "clasificacioncausaESAVI"
* item[=].item[=].item[=].text = "Description of the ESAVI causality classification"

/////////////////////AEFI Causality
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ClasificacionDesenlaceWHOAEFIVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidadWHOAEFI"
* item[=].item[=].item[=].text = "Causality classification according to the WHO AEFI methodology"

* item[=].item[=].item[=].enableWhen.question = "sistemaClasfCausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = Canonical(SistemaClasfCausalidadVS)
* item[=].item[=].item[=].enableWhen.answerCoding.code = #WHO-AEFI

/////////////////////UMC
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ClasificacionDesenlaceWHOUMCVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidadWHOUMC"
* item[=].item[=].item[=].text = "Causality classification according to the WHO UMC methodology"

* item[=].item[=].item[=].enableWhen.question = "sistemaClasfCausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = Canonical(SistemaClasfCausalidadVS)
* item[=].item[=].item[=].enableWhen.answerCoding.code = #WHO-UMC

/////////////////////UMC
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://paho.org/fhir/esavi/ValueSet/ClasificacionDesenlaceNaranjoVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidadNaranjo"
* item[=].item[=].item[=].text = "Causality classification according to the Naranjo methodology"

* item[=].item[=].item[=].enableWhen.question = "sistemaClasfCausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #Orange
* item[=].item[=].item[=].enableWhen.answerCoding.system = Canonical(SistemaClasfCausalidadVS)

//////////////Vaccine identifier OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "referenciaIdentificadorVacuna"
* item[=].item[=].item[=].text = "Correlative identifier of the vaccine"

* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "referenciaIdentificadorESAVI"
* item[=].item[=].item[=].text = "ESAVI correlative identifier"

* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazoDuranteESAVI"
* item[=].item[=].item[=].text = "Indicator if maternal or fetal complications are those reported as ESAVI."
/* Alias: $DirOrgNotiCS = https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS
Alias: $ProfesionalNotificadorVS = https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorVS
Alias: $CodPaises = https://paho.org/esavi/CodeSystem/CodPaisesCS
Alias: $administrative-gender = https://hl7.org/fhir/administrative-gender
Alias: $EnfermedadesPreviasCodificacionCS = https://paho.org/esavi/CodeSystem/EnfermedadesPreviasCodificacionCS
Alias: $RespuestaSiNoNosabeCS = https://paho.org/fhir/esavi/CodeSystem/RespuestaSiNoNosabeCS
Alias: $EsaviMedDRACS = https://paho.org/fhir/esavi/CodeSystem/EsaviMedDRACS
Alias: $EsaviOtroCS = https://paho.org/esavi/CodeSystem/EsaviOtroCS
Alias: $ClasificacionDesenlaceCS = https://paho.org/fhir/esavi/CodeSystem/ClasificacionDesenlaceCS */

Instance: ejTresNuevo
Description: "Ejemplo de cuestionario Respondido 3"
InstanceOf: ESAVIQuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-04-12T19:09:52.678Z"
* questionnaire = "https://paho.org/fhir/esavi/Questionnaire/CuestionarioESAVI"
* identifier.system = "https://ops.org/esavi/PE"
* identifier.value = "15654244300"
* meta.profile = "https://paho.org/fhir/esavi/StructureDefinition/ESAVIQuestionnaireResponse"
* item[0].linkId = "datosNotificacionGeneral"
* item[=].text = "Datos Administrativos de la Notificación"
* item[=].item[0].linkId = "datosNotificacion"
* item[=].item[=].text = "Datos de quién y donde se realiza la notificación"
* item[=].item[=].item[0].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(CodPaisesCS)
* item[=].item[=].item[=].answer.valueCoding.code = #PER "Perú"
* item[=].item[=].item[+].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].answer.valueString = "Hospital ESSALUD René Toche Groppo"
* item[=].item[=].item[+].linkId = "codigoDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#PE_ICA_0201 "Chincha Alta (Distrito), Ica, Peru"
* item[=].item[=].item[+].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueString = "Chincha alta"
* item[=].item[=].item[+].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(ProfesionalNotificadorCS) 
* item[=].item[=].item[=].answer.valueCoding.code = #1 "Médico"
* item[=].item[+].linkId = "fechas"
* item[=].item[=].text = "Fechas Administrativas (al menos una fecha es necesaria)"
* item[=].item[=].item[0].linkId = "fechaConsulta"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "fechaNotificacion"
* item[=].item[=].item[=].answer.valueDate = "2021-10-05"
* item[=].item[=].item[+].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].answer.valueDate = "2021-10-05"
* item[=].item[=].item[+].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].answer.valueDate = "2021-10-05"
* item[+].linkId = "datosIdVacunado"
* item[=].text = "Datos Demográficos de Vacunado que ha generado ESAVI"
* item[=].item.linkId = "datosPaciente"
* item[=].item.text = "Datos del Vacunado"
* item[=].item.item[0].linkId = "numeroCaso"
* item[=].item.item[=].answer.valueString = "582"
* item[=].item.item[+].linkId = "idPaciente"
* item[=].item.item[=].answer.valueString = "f309923b7f5b8512df70fa8361decfb1"
* item[=].item.item[+].linkId = "codigoResidenciaHabitual"
* item[=].item.item[=].answer.valueCoding = $DirOrgNotiCS#PE_ICA_0201 "Chincha Alta (Distrito), Ica, Peru"
* item[=].item.item[+].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].answer.valueString = "Chincha alta"
* item[=].item.item[+].linkId = "sexoPaciente"
* item[=].item.item[=].answer.valueCoding = $administrative-gender#female "Female"
* item[=].item.item[+].linkId = "fechaNacimiento"
* item[=].item.item[=].answer.valueDate = "1996-06-23"
* item[=].item.item[+].linkId = "etnia"
* item[=].item.item[=].answer.valueString = "Mestizo"
* item[+].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos identificados por el paciente"
* item[=].item[0].linkId = "antecedentesEventosAdversos"
* item[=].item[=].text = "Declaración de existencia de eventos adversos previos"
* item[=].item[=].item.linkId = "antecedentesAdvSimilar"
* item[=].item[=].item.text = "Antecedente de eventos adversos similares al actual"
* item[=].item[=].item.answer.valueCoding.system  = Canonical(RespuestaSiNoNoSabeCS)
* item[=].item[=].item.answer.valueCoding.code = #2 "No"
* item[=].item[+].linkId = "pacienteEmbarazada"
* item[=].item[=].text = "Estado de embarazo"
* item[=].item[=].item[0].linkId = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].answer.valueBoolean = true 
* item[+].linkId = "antecedentesFarmacosVacunas"
* item[=].text = "Antecedentes Farmacológicos"
* item[=].item[0].linkId = "datosVacunas"
* item[=].item[=].text = "Datos de las vacunas administradas"
* item[=].item[=].item[0].linkId = "nombreVacuna"
* item[=].item[=].item[=].answer.valueString = "biontech"
* item[=].item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].item[=].answer.valueInteger = 123456
* item[=].item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].item[=].answer.valueString = "Pfizer"
* item[=].item[=].item[+].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "numeroLote"
* item[=].item[=].item[=].answer.valueString = "FG3525"
* item[=].item[=].item[+].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].answer.valueString = "Ministerio de Salud"
* item[=].item[=].item[+].linkId = "fechaVacunacion"
* item[=].item[=].item[=].answer.valueDate = "2021-09-21"
* item[=].item[=].item[+].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#PE_ICA_0211 "Tambo de Mora (Distrito), Ica, Peru"
* item[=].item[=].item[+].linkId = "codigoMecanismoVerificacion"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(ModoVerificacionVacunaCS)
* item[=].item[=].item[=].answer.valueCoding.code = #5 "No se sabe"

* item[+].linkId = "registroESAVI"
* item[=].text = "Registro de ESAVI desarrollado por el vacunado"
* item[=].item[0].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Absceso en el sitio de inyección"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10022044 "absceso de sitio de inyección"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #95382004 "absceso de sitio de inyección"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Abceso en el sitio de la inyeccion"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Linfadenitis supurativa"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 2
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10025188 "Linfadenitis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #48573006 "Linfadenitis supurativa"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Linfadenitis supurativa"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Linfadenitis supurativa"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 3
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10025188 "Linfadenitis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #48573006 "Linfadenitis supurativa"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Linfadenitis supurativa"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "reacción adversa causada por fármaco"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 4
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10061623 "reacción adversa causada por fármaco"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #62014003 "reacción adversa causada por fármaco"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "reacción adversa causada por fármaco"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Llanto persistente (mayor de 3 horas)"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 5
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10043169 "llanto asociado con el estado de ánimo"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #271951008 "llanto asociado con el estado de ánimo"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Convulsiones"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "convulsión"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 6
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10039906 "convulsión"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #91175000 "convulsión"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "convulsión"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Llanto persistente (mayor de 3 horas)"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 7
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10043169 "llanto asociado con el estado de ánimo"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #271951008 "llanto asociado con el estado de ánimo"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Convulsiones"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Crisis de Hipotonía"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 8
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #312952004 "Crisis de Hipotonía"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Crisis de Hipotonía"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "púrpura trombocitopénica"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 9
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10043561 "púrpura trombocitopénica"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #302873008 "Púrpura trombocitopénica"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Púrpura trombocitopénica"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "síncope vasovagal"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 10
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10042777 "síncope vasovagal"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #398665005 "síncope vasovagal"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "síncope vasovagal"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Parálisis flácida aguda"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 11
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10033799 "parálisis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #44695005 "parálisis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Parálisis flácida aguda"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "encefalopatía"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 12
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10019660 "encefalopatía hepática"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #13920009 "encefalopatía hepática"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Encefalopatía"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Encefalitis"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 13
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10014581 "Encefalitis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #45170000 "Encefalitis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Encefalitis"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Meningitis"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 14
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10027199 "Meningitis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #7180009 "Meningitis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Meningitis"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "osteomielitis"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 15
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10031252 "osteomielitis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #60168000 "osteomielitis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Osteítis / osteomielitis"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Artralgia"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 16
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10023222 "dolor articular"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #57676002 "dolor articular"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Artralgia"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Sepsis"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 17
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10040047 "Sepsis"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #91302008 "Sepsis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Sepsis"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "síndrome del shock tóxico"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 18
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10044248 "síndrome del shock tóxico"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #18504008 "síndrome del shock tóxico"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-09-28"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Síndrome de shock tóxico"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "muerte fetal"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 19
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10027649 "aborto espontáneo"
* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(SCT)
* item[=].item[=].item[=].answer.valueCoding.code = #17369002 "aborto espontáneo"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-10-01"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Otros eventos severos e inusuales especifique: muerte fetal"
* item[=].item[+].linkId = "ESAVIDuranteEmbarazo"
* item[=].item[=].text = "Datos relacionados con condiciones médicas ocurridas durante el embarazo en el que se recibió la vacuna y/o ocurrió el ESAVI."
* item[=].item[=].item[0].linkId = "codigoTipoComplicacionESAVI"
* item[=].item[=].item[=].text = "Código tipo complicacion del embarazo posterior a la administración de vacuna"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(ComplicacionEmbarazoCS)
* item[=].item[=].item[=].answer.valueCoding.code = #01 "Del Embarazo"
* item[=].item[=].item[+].linkId = "nombreComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].answer.valueString = "muerte fetal"
* item[=].item[=].item[+].linkId = "codigoMedDRAComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #17369002 "aborto espontáneo"
/*
* item[=].item[=].item[+].linkId = "fechaParto"
* item[=].item[=].item[=].answer.valueDate = "2021-10-02"
* item[=].item[=].item[+].linkId = "codigoMonitoreoPosteriorVacuna"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/esavi/CodeSystem/RespuestaSiNoNosabeCS#3 "No sabe"


/* 
* item[=].item[+].linkId = "antecedentesEmbarazoESAVI"
* item[=].item[=].text = "Datos relacionados con el estado de embarazo (al menos una fecha es necesaria)"
* item[=].item[=].item[0].linkId = "complicacionesEmbarazoESAVI"
* item[=].item[=].item[=].text = "Tipo de complicación del embarazo durante el ESAVI"
* item[=].item[=].item[=].item[0].linkId = "codigoTipoComplicacionESAVI"
* item[=].item[=].item[=].item[=].answer.valueCoding = https://paho.org/esavi/CodeSystem/ComplicacionEmbarazoCS#01 "Del Embarazo"
* item[=].item[=].item[=].item[+].linkId = "descripcionComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].item[=].answer.valueString = "muerte fetal"
* item[=].item[=].item[=].item[+].linkId = "complicacionEmbarazoOtroESAVI"
* item[=].item[=].item[=].item[=].answer.valueCoding = https://paho.org/esavi/CodeSystem/ComplicacionEmbarazoOtroCS#276507005 "muerte fetal"
* item[=].item[=].item[+].linkId = "fechaUltimaMenstruacionESAVI"
* item[=].item[=].item[=].answer.valueDate = "2022-03-11"
* item[=].item[=].item[+].linkId = "fechaPartoESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-10-02"
* item[=].item[=].item[+].linkId = "codigoMonitoreoPosteriorVacuna"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/esavi/CodeSystem/RespuestaSiNoNosabeCS#3 "No sabe"
*/
* item[=].item[+].linkId = "gravedadESAVI"
* item[=].item[=].text = "Determinación del estado de gravedad del ESAVI"
* item[=].item[=].item[0].linkId = "tipoGravedad"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravMuerte"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "gravRiesgoVida"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravDiscapacidad"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "gravHospitalizacion"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravAnomaliaCongenita"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "gravAborto"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravMuerteFetal"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "otrosEventosImportantesTx"
* item[=].item[=].item[=].answer.valueString = "Legrado uterino por retención de restos"
* item[=].item[=].item[+].linkId = "otrosEventosImportantesTx"
* item[=].item[=].item[=].answer.valueString = "Examen de orina, hemograma, prueba antigénica negativo"

* item[=].item[+].linkId = "desenlaceESAVI"
* item[=].item[=].text = "Desenlace ESAVI"
* item[=].item[=].item[0].linkId = "codDesenlaceESAVI"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(ClasificacionDesenlaceCS)
* item[=].item[=].item[=].answer.valueCoding.code = #1 "Recuperado Completamente"
* item[=].item[=].item[+].linkId = "fechaNotificaMuerteFetal"
* item[=].item[=].item[=].answer.valueDate = "2021-10-02"
* item[=].item[=].item[+].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].answer.valueDate = "2021-10-05"
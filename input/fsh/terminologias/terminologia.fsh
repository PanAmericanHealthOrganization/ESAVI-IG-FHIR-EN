ValueSet: ViaAdminMedicamentoVS //revised OKs external CS LinkID: codigoViaAdministracion
Id: ViaAdminMedicamentoVS
Title: "Medication Administration Routes"
Description: "Describes and lists the routes of administration of medications for registration in ESAVI according to SNOMED CT"
* insert RuleSetVS
* include codes from system SCT where concept is-a #736479009 "intended site of administration of pharmaceutical form (intended site of administration)"
//* include codes from system http://snomed.info/sct


ValueSet: CodPaises //revised. External CS ISO 3166, LinkID: countryOrigin-Reg ----- Explicit CS was generated, the URN of ISO 3166 does not work
Id: codCountries
Title: "Country Codes"
Description: "Codes defined for the identification of countries according to ISO3166-N standard"
* insert RuleSetVS
* include codes from system CodPaisesCS
//* include codes from system urn:iso:std:iso:3166

CodeSystem: CodPaisesCS
Id: codCountriesCS
Title: "Country Codes"
Description: "Codes defined for the identification of countries according to ISO3166-3 standard"
* insert RuleSetCS

* #ABW "Aruba"
* #AFG "Afghanistan"
* #AGO "Angola"
* #AIA "Anguilla"
* #ALA "Eland Islands"
* #ALB "Albania"
* #AND "Andorra"
* #ARE "United Arab Emirates"
* #ARG "Argentina"
* #ARM "Armenia"
* #ASM "American Samoa"
* #ATA "Antarctica"
* #ATF "French Southern Territories"
* #ATG "Antigua and Barbuda"
* #AUS "Australia"
* #AUT "Austria"
* #AZE "Azerbaijan"
* #BDI "Burundi"
* #BEL "Belgium"
* #BEN "Benin"
* #BES "Bonaire, Sint Eustatius and Saba"
* #BFA "Burkina Faso"
* #BGD "Bangladesh"
* #BGR "Bulgaria"
* #BHR "Bahrain"
* #BHS "Bahamas"
* #BIH "Bosnia and Herzegovina"
* #BLM "Saint Barthilemy"
* #BLR "Belarus"
* #BLZ "Belize"
* #BMU "Bermuda"
* #BOL "Bolivia, Plurinational State of"
* #BRA "Brazil"
* #BRB "Barbados"
* #BRN "Brunei Darussalam"
* #BTN "Bhutan"
* #BVT "Bouvet Island"
* #BWA "Botswana"
* #CAF "Central African Republic"
* #CAN "Canada"
* #CCK "Cocos (Keeling) Islands"
* #CHE "Switzerland"
* #CHL "Chile"
* #CHN "China"
* #CIV "Ctte d'Ivoire"
* #CMR "Cameroon"
* #COD "Congo, the Democratic Republic of the"
* #COG "Congo"
* #COK "Cook Islands"
* #COL "Colombia"
* #COM "Comoros"
* #CPV "Cabo Verde"
* #CRI "Costa Rica"
* #CUB "Cuba"
* #CUW "Curagao"
* #CXR "Christmas Island"
* #CYM "Cayman Islands"
* #CYP "Cyprus"
* #CZE "Czechia"
* #DEU "Germany"
* #DJI "Djibouti"
* #DMA "Dominica"
* #DNK "Denmark"
* #DOM "Dominican Republic"
* #DZA "Algeria"
* #ECU "Ecuador"
* #EGY "Egypt"
* #ERI "Eritrea"
* #ESH "Western Sahara"
* #ESP "Spain"
* #EST "Estonia"
* #ETH "Ethiopia"
* #FIN "Finland"
* #FJI "Fiji"
* #FLK "Falkland Islands (Malvinas)"
* #FRA "France"
* #FRO "Faroe Islands"
* #FSM "Micronesia, Federated States of"
* #GAB "Gabon"
* #GBR "United Kingdom"
* #GEO "Georgia"
* #GGY "Guernsey"
* #GHA "Ghana"
* #GIB "Gibraltar"
* #GIN "Guinea"
* #GLP "Guadeloupe"
* #GMB "Gambia"
* #GNB "Guinea-Bissau"
* #GNQ "Equatorial Guinea"
* #GRC "Greece"
* #GRD "Grenada"
* #GRL "Greenland"
* #GTM "Guatemala"
* #GUF "French Guiana"
* #GUM "Guam"
* #GUY "Guyana"
* #HKG "Hong Kong"
* #HMD "Heard Island and McDonald Islands"
* #HND "Honduras"
* #HRV "Croatia"
* #HTI "Haiti"
* #HUN "Hungary"
* #IDN "Indonesia"
* #IMN "Isle of Man"
* #IND "India"
* #IOT "British Indian Ocean Territory"
* #IRL "Ireland"
* #IRN "Iran, Islamic Republic of"
* #IRQ "Iraq"
* #ISL "Iceland"
* #ISR "Israel"
* #ITA "Italy"
* #JAM "Jamaica"
* #JEY "Jersey"
* #JOR "Jordan"
* #JPN "Japan"
* #KAZ "Kazakhstan"
* #KEN "Kenya"
* #KGZ "Kyrgyzstan"
* #KHM "Cambodia"
* #KIR "Kiribati"
* #KNA "Saint Kitts and Nevis"
* #KOR "Korea, Republic of"
* #KWT "Kuwait"
* #LAO "Lao People's Democratic Republic"
* #LBN "Lebanon"
* #LBR "Liberia"
* #LBY "Libya"
* #LCA "Saint Lucia"
* #LIE "Liechtenstein"
* #LKA "Sri Lanka"
* #LSO "Lesotho"
* #LTU "Lithuania"
* #LUX "Luxembourg"
* #LVA "Latvia"
* #MAC "Macao"
* #MAF "Saint Martin (French part)"
* #MAR "Morocco"
* #MCO "Monaco"
* #MDA "Moldova, Republic of"
* #MDG "Madagascar"
* #MDV "Maldives"
* #MEX "Mexico"
* #MHL "Marshall Islands"
* #MKD "Macedonia, the former Yugoslav Republic of"
* #MLI "Mali"
* #MLT "Malta"
* #MMR "Myanmar"
* #MNE "Montenegro"
* #MNG "Mongolia"
* #MNP "Northern Mariana Islands"
* #MOZ "Mozambique"
* #MRT "Mauritania"
* #MSR "Montserrat"
* #MTQ "Martinique"
* #MUS "Mauritius"
* #MWI "Malawi"
* #MYS "Malaysia"
* #MYT "Mayotte"
* #NAM "Namibia"
* #NCL "New Caledonia"
* #NER "Niger"
* #NFK "Norfolk Island"
* #NGA "Nigeria"
* #NIC "Nicaragua"
* #NIU "Niue"
* #NLD "Netherlands"
* #NOR "Norway"
* #NPL "Nepal"
* #NRU "Nauru"
* #NZL "New Zealand"
* #OMN "Oman"
* #PAK "Pakistan"
* #PAN "Panama"
* #PCN "Pitcairn"
* #PER "Peru"
* #PHL "Philippines"
* #PLW "Palau"
* #PNG "Papua New Guinea"
* #POL "Poland"
* #PRI "Puerto Rico"
* #PRK "Korea, Democratic People's Republic of"
* #PRT "Portugal"
* #PRY "Paraguay"
* #PSE "Palestine, State of"
* #PYF "French Polynesia"
* #QAT "Qatar"
* #REU "Riunion"
* #ROU "Romania"
* #RUS "Russian Federation"
* #RWA "Rwanda"
* #SAU "Saudi Arabia"
* #SDN "Sudan"
* #SEN "Senegal"
* #SGP "Singapore"
* #SGS "South Georgia and the South Sandwich Islands"
* #SHN "Saint Helena, Ascension and Tristan da Cunha"
* #SJM "Svalbard and Jan Mayen"
* #SLB "Solomon Islands"
* #SLE "Sierra Leone"
* #SLV "El Salvador"
* #SMR "San Marino"
* #SOM "Somalia"
* #SPM "Saint Pierre and Miquelon"
* #SRB "Serbia"
* #SSD "South Sudan"
* #STP "Sao Tome and Principe"
* #SUR "Suriname"
* #SVK "Slovakia"
* #SVN "Slovenia"
* #SWE "Sweden"
* #SWZ "Swaziland"
* #SXM "Sint Maarten (Dutch part)"
* #SYC "Seychelles"
* #SYR "Syrian Arab Republic"
* #TCA "Turks and Caicos Islands"
* #TCD "Chad"
* #TGO "Togo"
* #THA "Thailand"
* #TJK "Tajikistan"
* #TKL "Tokelau"
* #TKM "Turkmenistan"
* #TLS "Timor-Leste"
* #TON "Tonga"
* #TTO "Trinidad and Tobago"
* #TUN "Tunisia"
* #TUR "Turkey"
* #TUV "Tuvalu"
* #TWN "Taiwan, Province of China"
* #TZA "Tanzania, United Republic of"
* #UGA "Uganda"
* #UKR "Ukraine"
* #UMI "United States Minor Outlying Islands"
* #URY "Uruguay"
* #USA "United States of America"
* #UZB "Uzbekistan"
* #VAT "Holy See"
* #VCT "Saint Vincent and the Grenadines"
* #VEN "Venezuela, Bolivarian Republic of"
* #VGB "Virgin Islands, British"
* #VIR "Virgin Islands, U.S."
* #VNM "Viet Nam"
* #VUT "Vanuatu"
* #WLF "Wallis and Futuna"
* #WSM "Samoa"
* #YEM "Yemen"
* #ZAF "South Africa"
* #ZMB "Zambia"
* #ZWE "Zimbabwe"

ValueSet: EsaviMedDRAVS //revised internal CS OKs with examples pending eternal complete LinkID: codigoESAVIMedDRA
Id: EsaviMedDRAVS
Title: "MedDRA Code of the Reported Adverse Event"
Description: "MedDRA Code of the Reported Adverse Event"
* insert RuleSetVS
* include codes from system MedDRA

ValueSet: ComplicacionEmbarazoMedDRAVS //revised internal CS OKs defined separately, complete on the server LinkID: odigoMedDRAComplicacionPregnancyESAVI
Id: ComplicacionEmbarazoMedDRAVS
Title: "MEDDRA Codes Complications in Pregnancy ESAVI"
Description: "Standardized coding of diagnoses of pregnancy complications using MedDRA codes"
* insert RuleSetVS
* include codes from system MedDRA

ValueSet: ComplicacionEmbarazoOtrosVS //revised OKS CS external LinkID: otherPregnancyComplicationCodesESAVI
Id: ComplicacionEmbarazoOtrosVS
Title: "Other ESAVI Pregnancy Complications Codes"
Description: "Standardized coding of diagnoses of pregnancy complications using Snomed and ICD-10 codes"
* insert RuleSetVS
* include codes from system ICD10 where concept is-a #E03.9 "Hypothyroidism, unspecified"
* include codes from system ICD10 where concept is-a #E66.9 "Obesity, unspecified"
* include codes from system ICD10 where concept is-a #E10.9 "Insulin-dependent diabetes mellitus, without mention of complication"
* include codes from system ICD10 where concept is-a #O03.9 "Complete or unspecified spontaneous abortion, without complication"
* include codes from system ICD10 where concept is-a #L53.9 "Erythematous condition, unspecified"
* include codes from system ICD10 where concept is-a #R60.0 "Localized edema"
* include codes from system ICD10 where concept is-a #R52 "Pain, not elsewhere classified"
* include codes from system ICD10 where concept is-a #R50 "Fever of other origin and unknown origin"
* include codes from system ICD10 where concept is-a #G51.0 "Bell's Palsy"
* include codes from system ICD10 where concept is-a #H92.0 "Otalgia"
* include codes from system ICD10 where concept is-a #H93.1 "Tinnitus"
* include codes from system SCT where concept is-a #118185001 "Pregnancy-related finding"


ValueSet: EsaviOtroVS //revised external CS OKs. LinkID: codeESAVIOther
Id: EsaviOtroVS
Title: "Other Adverse Event Codes"
Description: "Adverse event in another system according to Snomed and ICD-10"
* insert RuleSetVS
* include codes from system SCT where concept is-a #404684003 "Clinical Finding"
//* include codes from system ICD11mms where concept is-a #XY0Y "Main condition"
/** include codes from system ICD10 where concept is-a #E03.9 "Hypothyroidism, unspecified"
* include codes from system ICD10 where concept is-a #E66.9 "Obesity, unspecified"
* include codes from system ICD10 where concept is-a #E10.9 "Insulin-dependent diabetes mellitus, without mention of complication"
* include codes from system ICD10 where concept is-a #O03.9 "Complete or unspecified spontaneous abortion, without complication"
* include codes from system ICD10 where concept is-a #L53.9 "Erythematous condition, unspecified"
* include codes from system ICD10 where concept is-a #R60.0 "Localized edema"
* include codes from system ICD10 where concept is-a #R52 "Pain, not elsewhere classified"
* include codes from system ICD10 where concept is-a #R50 "Fever of other origin and unknown origin"
* include codes from system ICD10 where concept is-a #G51.0 "Bell's Palsy"
* include codes from system ICD10 where concept is-a #H92.0 "Otalgia"
* include codes from system ICD10 where concept is-a #H93.1 "Tinnitus"*/

ValueSet: CodigoWhoVacunaVS //reviewed and modified. LinkID:WHODrugVaccinecode
Id: CodeWhoVacunaVS
Title: "WHODrug code for the vaccine"
Description: "Standardized Coding of the Vaccine Code according to WhoDrug"
* insert RuleSetVS

//* include codes from system CodigoWhoVacunaCS //Limited to COVID Vaccines
//* include codes from system WHODrugPMID
//* include codes from system WHODrugDC
* include codes from system WHODrug

ValueSet: FormaFarmaceuticaVS //revised OKs external CS LinkID: codeFormaFarmaceutica
Id: FormaFarmaceuticaVS
Title: "Identification of Pharmaceutical Forms"
Description: "Describes and lists the pharmaceutical forms of medications for registration in ESAVI according to SNOMED CT"
* insert RuleSetVS

* include codes from system SCT where concept is-a #736478001 "basic pharmaceutical form (basic pharmaceutical form)"

ValueSet: CodigosEnfPreviaVS //revised external CS ICD11, SCT and ICD10, LinkID:otherCodigosEnfPrevia
Id: CodigosEnfPreviaVS
Title: "Previous illnesses in an ESAVI-PAHO"
Description: "Describes the previous diseases in an ESAVI coded in ICD10, ICD11 or SNOMED CT"
* insert RuleSetVS

//* include codes from system ICD11mms where concept is-a #XY0Y "Main condition" //NOT expands!!!!
* include codes from system ICD10 where concept is-a #E03.9 "Hypothyroidism, unspecified"
* include codes from system ICD10 where concept is-a #E66.9 "Obesity, unspecified"
* include codes from system ICD10 where concept is-a #E10.9 "Insulin-dependent diabetes mellitus, without mention of complication"
* include codes from system ICD10 where concept is-a #O03.9 "Complete or unspecified spontaneous abortion, without complication"
* include codes from system ICD10 where concept is-a #L53.9 "Erythematous condition, unspecified"
* include codes from system ICD10 where concept is-a #R60.0 "Localized edema"
* include codes from system ICD10 where concept is-a #R52 "Pain, not elsewhere classified"
* include codes from system ICD10 where concept is-a #R50 "Fever of other origin and unknown origin"
* include codes from system ICD10 where concept is-a #G51.0 "Bell's Palsy"
* include codes from system ICD10 where concept is-a #H92.0 "Otalgia"
* include codes from system ICD10 where concept is-a #H93.1 "Tinnitus"
* include codes from system SCT where concept is-a #404684003 "Clinical Finding"


ValueSet: CodigoNoWhoVacunaVS //Ok with Covid vaccines, don't use Codesystem anymore
Id: CodeNoWhoVacunaVS
Title: "Non-WHODrug Vaccine Code"
Description: "Vaccine non-WHODrug code"
* insert RuleSetVS
//* include codes from system ATCCS where concept is-a #J07BN "COVID 19 Vaccine" //NOT expands!
//* include codes from system ICD11mms //DOES NOT expand!!
* include codes from system http://snomed.info/sct where concept is-a #410942007 "drug or medicine (substance)"

ValueSet: CodigoWhoFabricanteVS //Oks revised, internal CS below Link ID:codigoFabricanteWHODrug
Id: CodigoWhoFAbricanteVS
Title: "Vaccine Manufacturers"
Description: "WHO Vaccine Manufacturer Codes"
* insert RuleSetVS
* include codes from system CodigoWhoFabricanteCS

CodeSystem: CodigoWhoFabricanteCS //oks revised
Id: CodeWhoManufacturerCS
Title: "Vaccine Manufacturer"
Description: "WHO Vaccine Manufacturer Codes"
* insert RuleSetCS
//* #1 "SNOMED-CT"

* #INP	"Inovio Pharmaceuticals"
* #WIB	"Wuhan Institute of Biological Products (CNBG)"
* #SII	"Serum Institute of India"
* #KBP	"Kentucky BioProcessing"
* #BWB	"Beijing WANTAI Biological"
* #CAB	"CanSino Biologicals"
* #MOD	"Moderna"
* #BMB	"Beijing Minhai Biotechnology"
* #IIB	"Israel Institute for Biological Research"
* #VID	"VIDO-Intervac"
* #BIB	"Beijing Bio-Institute Biological Products (CNBG)"
* #GEN	"Genexine"
* #CEC	"Cellid Co"
* #JAP	"Janssen Pharmaceuticals"
* #COV	"Vaxxinity Inc"
* #SIN	"Sinovac"
* #SRC	"State Research Center of Virology & Biotechnology"
* #CHU	"Chumakov"
* #ART	"Arcturus Therapeutics"
* #RIB	"Research Institute for Biological Safety Problems"
* #EUB	"EUBiologics"
* #IMB	"Insitute of Medical Biology"
* #SGM	"Shenzhen GenoImmune Medical Institute"
* #PFI	"Pfizer BioNTech"
* #AIV	"Aivita Biomedical"
* #NOV	"Novavax"
* #GRI	"Gamaleya Research Institute"
* #ANZ	"Anhui Zhifei Longcom Biopharmaceutical"
* #SPG	"Sanofi Pasteur - GSK"
* #CGE	"Center for Genetic Engineering and Biotechnology"
* #AKB	"Akston Biosciences"
* #CUR	"Curevac"
* #SHI	"Shionogi"
* #MVB	"Medigen Vaccine Biologics"
* #ANB	"AnGes Biopharmaceutical"
* #ASZ	"AstraZeneca"
* #NPB	"Nanogen Pharmaceutical Biotechnology"
* #BHB	"Bharat Biotech"
* #IFV	"Instituto Finlay de Vacunas"
* #VAL	"Valneva"
* #BIE	"Biological E"
* #MEI	"Medicago Inc"
* #GOL	"GeneOne LifeScience"
* #CLB	"Clover Biopharmaceuticals"
* #ZYC	"Zydus Cadila"
* #SIU	"Sichuan University"
* #RET	"ReiThera"
* #ERU	"Erciyes University"
* #WBI	"Walvax Biotech"
* #JUL	"Julphar"
* #SHP	"Shifa Pharmed"
* #VPL	"Vaxine Pty Ltd"
* #RAZ	"Razi Vaccine and Serum Research Institute"
* #UNKNOWN	"Unknown"
* #HIT	"Health Institutes of Turkey"
* #NVSII	"National Vaccine and Serum Institute, China"
* #ODIR	"Organization of Defensive Innovation and Research"
* #PII	"Pasteur Institute of Iran"
* #BUMS	"Baqiyatallah University of Medical Sciences"


ValueSet: SistemasDeCodificacionVS //reviewed internal CM below, LinkID: CodingSystemForNormalizedNameVaccine, CodingSystemForNormalizedNameDrug
Id: SistemasDeCodificacionVS
Title: "Coding Systems"
Description: "Coding Systems for Code Determination"
* insert RuleSetVS
* include codes from system SistemasDeCodificacionCS

CodeSystem: SistemasDeCodificacionCS //revised OKs
Id: SistemasDeCodificacionCS
Title: "Coding Systems"
Description: "Coding Systems for Code Determination"
* insert RuleSetCS
* #1 "SNOMED-CT"
* #2 "WHODrug"
* #3 "ATC"
//* #4 "ICD-10"
* #4 "ICD-11"
//* #6 "MedDRA"

ValueSet: RespuestaSiNoNoSabeVS //revised internal CS below
Id: RespuestaSiNoNoSabeVS
Title: "Simple Answers"
Description: "Codes to capture simple yes/no/don't know responses"
* insert RuleSetVS
* include codes from system RespuestaSiNoNoSabeCS

CodeSystem: RespuestaSiNoNoSabeCS //revised
Id: RespuestaSiNoNoSabeCS
Title: "Simple Answers"
Description: "Codes to capture simple yes/no/don't know responses"
* insert RuleSetCS
* ^count = 3
* #1 "Yes"
* #2 "No"
* #3 "He doesn't know"


ValueSet: CodigoMedicamentoVS //revised External CS OKs, LinkIDs: MedicationCode
Id: CodigoMedicamentoVS
Title: "Medication Code"
Description: "Medication Code"
* insert RuleSetVS
* include codes from system SCT where concept is-a #105590001 "Substance"
//* include codes from system ATCCS //NO expands
//* include codes from system ICD11mms where concept is-a #XM4843 //Does not expand!!!

ValueSet: ModoVerificacionVacunaVS //revised Oks internal CS below Link ID: codeMecanismoVerificacion
Id: ModoVerificacionVacunaVS
Title: "Previous Vaccine Verification Modes"
Description: "Vaccine Verification Modes or Completed Vaccination Schedule"
* insert RuleSetVS
* include codes from system ModoVerificacionVacunaCS

CodeSystem: ModoVerificacionVacunaCS //revised Oks
Id: ModoVerificacionVacunaCS
Title: "Prior Vaccination Verification Mode"
Description: "Vaccine Verification Modes or Completed Vaccination Schedule"
* insert RuleSetCS

* #1 "Physical Card/Registration"
* #2 "Electronic Card/Registration"
* #3 "Verbal statement"
* #4 "Clinical history corroborated with ID"
* #5 "It is not known"
* #O "Another"

ValueSet: ModoConfirmacionInfeccionVS //revised internal CS below, LinkID: confirmationtypeCovid19
Id: ModoConfirmacionInfeccionVS
Title: "COVID-19 Infection Confirmation Modes"
Description: "Modes of Confirmation of COVID-19 Infection"
* insert RuleSetVS

* include codes from system ModoConfirmacionInfeccionCS

CodeSystem: ModoConfirmacionInfeccionCS //revised OKs
Id: ModoConfirmacionInfeccionCS
Title: "Infection Confirmation Mode"
Description: "Modes of Confirmation of COVID-19 Infection"
* insert RuleSetCS

* #1 "By clinical epidemiological criteria"
* #2 "by immunoassay"
* #3 "By molecular tests"
* #4 "Due to viral isolation"
* #5 "Other"

ValueSet: ClasificacionDesenlaceVS //revised internal OKS CS below LinkID: codDesenlaceESAVI
Id: ClasificacionDesenlaceVS
Title: "Outcomes After ESAVI"
Description: "Classification of Outcome After Suffering ESAVI"
* insert RuleSetVS

* include codes from system ClasificacionDesenlaceCS

CodeSystem: ClasificacionDesenlaceCS //reviewed OKs
Id: ClasificacionDesenlaceCS
Title: "Outcomes After ESAVI"
Description: "Classification of Outcome After Suffering ESAVI"
* insert RuleSetCS

* #1 "Completely Recovered"
* #2 "In recovery"
* #3 "Not recovered"
* #4 "Recovered with consequences"
* #5 "Death"
* #0 "Unknown"

ValueSet: ComplicacionEmbarazoVS //revised internal CS OKs below LinkID: codeTipoComplicacionESAVI
Id: ComplicacionEmbarazoVS 
Title: "Pregnancy Complications"
Description: "Set of Values for the ESAVI Pregnancy Complications Section"
* insert RuleSetVS
* codes from system ComplicacionEmbarazoCS

CodeSystem: ComplicacionEmbarazoCS //revised OKs
Id: ComplicacionEmbarazoCS
Title: "Pregnancy Complications"
Description: "Codes for Pregnancy Complications"
* insert RuleSetCS

* #01 "Of Pregnancy"
* #02 "Of Childbirth"
* #03 "Fetal puerperium"
* #04 "Neonatal"
* #05 "Congenital Anomaly"

ValueSet: ProfesionalNotificadorVS //revised internal CS below, LinkID: codigoProfesionNotificador
Id:  ProfesionalNotificadorVS
Title: "Type of Notifying Professional"
Description: "ESAVI Notifier Type Codes for PAHO"
* insert RuleSetVS
* include codes from system ProfesionalNotificadorCS

CodeSystem: ProfesionalNotificadorCS //revised
Id: ProfesionalNotificadorCS
Title: "Type of Notifying Professional"
Description: "ESAVI Notifier Type Codes for PAHO"
* insert RuleSetCS

* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-02-02"
* ^publisher = "PAHO - Pan American Health Organization"
* ^content = #complete
* ^count = 6
* #1 "Doctor"
* #2 "Pharmacist"
* #3 "Other Profession related to Health"
* #4 "Lawyer"
* #5 "User or other non-health professional"
* #6 "Not user defined"


ValueSet: CodigoMedDRAEnfPreviaVS //revised internal CS MedDRACS oks, LinkID:codigoMedDRAEnfPrevia
Id: CodeMedDRAEnfPreviaVS
Title: "MedDRA codes to represent previous diseases in an ESAVI-PAHO"
Description: "Describes the previous diseases in an ESAVI coded in MedDRA"
* insert RuleSetVS

* include codes from system MedDRA

ValueSet: SistemaClasfCausalidadVS //revised Internal CS OKs below LinkID: systemCausalityClass
Id: SistemaClasfCausalidadVS
Title: "Type of Causality Classification Method"
Description: "Codes for Types and Causality Classification Methods"
* insert RuleSetVS
* include codes from system SistemaClasfCausalidadCS

CodeSystem: SistemaClasfCausalidadCS //revised OKs
Id: SistemaClasfCausalidadCS
Title: "Type of Causality Classification Method"
Description: "Codes for Types of Causality Classification Methods"
* insert RuleSetCS

* #WHO-UMC "WHO-UMC"	
* #WHO-AEFI "WHO-AEFI"
* #Naranjo "Naranjo"
* #otro "Otro sistema de clasificacion de causalidad"


ValueSet: ClasificacionDesenlaceWHOAEFIVS //revised internal CS OKs below LinkID: classificationDeCausalityWHOAEFI
Id: ClasificacionDesenlaceWHOAEFIVS
Title: "WHO-AEFI causality classification"
Description: "WHO-AEFI causality classification method"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceWHOAEFICS

CodeSystem: ClasificacionDesenlaceWHOAEFICS //revised OKs
Id: ClasificacionDesenlaceWHOAEFICS
Title: "WHO-AEFI causality classification"
Description: "WHO-AEFI causality classification method"
* insert RuleSetCS

* #A1 "Event related to the vaccine or any of its components"
* #A2 "Event related to a quality deviation of the biological product or vaccine"
* #A3 "Event related to a programmatic error"
* #A4 "Stress event that occurred immediately before, during or immediately after the vaccination process"
* #B1 "The temporal relationship is consistent, but there is insufficient definitive evidence of a causal relationship with the vaccine (it may be an event recently associated with the vaccine [signal])"
* #B2 "Determining factors for classification show conflicting trends for and against a causal association with vaccination"
* #C "Coincidental Cause"
* #NC "Not classifiable"


ValueSet: ClassificacionDesenlaceWHOUMCVS //revised internal CS OKs below LinkID: classificationOfCausalityWHOUMC
Id: ClassificacionDesenlaceWHOUMCVS
Title: "WHO-UMC Causality Classification"
Description: "WHO-UMC causality classification method"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceWHOUMCCS

CodeSystem: ClasificacionDesenlaceWHOUMCCS //revised OKs
Id: ClasificacionDesenlaceWHOUMCCS
Title: "WHO-UMC Causality Classification"
Description: "WHO-UMC causality classification method"
* insert RuleSetCS

* #01 "Definitive"
* #02 "Probable"
* #03 "Possible"
* #04 "Unlikely"
* #05 "Conditional / Not classified"
* #06 "Not evaluable / Not classifiable"

ValueSet: ClasificacionDesenlaceNaranjoVS //revised internal CS OKs below LinkID: classificationDeCausalidadNaranjo
Id: ClasificacionDesenlaceNaranjoVS
Title: "Naranjo Causality Classification"
Description: "Naranjo causality classification method"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceNaranjoCS

CodeSystem: ClasificacionDesenlaceNaranjoCS //revised OKs
Id: ClasificacionDesenlaceNaranjoCS
Title: "Naranjo Causality Classification"
Description: "Naranjo causality classification method"
* insert RuleSetCS

* #01 "Definitive"
* #02 "Probable"
* #03 "Possible"
* #04 "Unlikely"


ValueSet: DirOrgNotiVS //revised. Complete internal CS on Server, example in local, LinkID: OrganizationAddressCode, HabitualResidenceCode, VaccinationAddressCode
Id: DirOrgNotiVS
Title: "PAHO Codes for Addresses"
Description: "Set of Values for direction according to OPS"
* insert RuleSetVS
* include codes from system DirOrgNotiCS
### Aspects to consider

<br>

This section describes important definitions, interpretations and requirements common to all actors in the OPS ESAVI implementation guide, used in this guide. The verbs of conformity - **SHALL** *(Should)*, **SHOULD** *(Should)*, **MAY** *(Could)* - used in this guide are defined in the rules of FHIR compliance.

#### Definitions To understand the Guide

Profiles contain certain elements that are important to understand when using them for implementation

##### Profile views

When reviewing a profile we find the possibility of seeing multiple views of it.

###### Text Summary

This view allows you to see a summary of the Profile such as which resource comes from *mandatory* elements, *removed* and that must be *supported*. Additionally, it summarizes the *extensions* and *slices* generated in the design.

<p> <img src="./Resumen.png" alt="Summary View of a Profile"/> </p>
<br clear="all"/>

###### Differential View

This view allows you to observe all those elements of a resource that have been modified or adapted to the local reality. This includes changes such as cardinality, explanations, MS or any other. Elements that have been kept as is in the parent resource do not appear in this view.

*Due to language reasons, any translation of an item's description is considered a change and appears in this view.*

<p> <img src="./MS.png" alt="Differential view of a profile"/> </p>
<br clear="all"/>

###### Snapshot View

In the **Snapshot Table** view, all required elements defined for the profile, and any required or supported elements inherited from a base profile, are marked with an **S**.

<p> <img src="./Snap.png" alt="Snapshot View of a Profile"/> </p>
<br clear="all"/>

###### Snapshot View (Must Support)

In the **Snapshot Table (Must Support)** view, all elements presented in the view are required or must be supported by the profile.

<p> <img src="./SnapMS.png" alt="Snapshot Must Support view of a profile"/> </p>
<br clear="all"/>

#### Definition of the Minimum Data Set

<br>

The CMD defined for each resource is characterized by the flag **MS** which means *Must Support*. This flag determines that the system that receives that element of a resource **MUST** support being able to process and store it.

The existence of an element or route with **MS** does not determine the obligation for a generated resource to contain the data. This is defined by the mandatory nature of the data which **MUST** be specified in the cardinality
<br>

<p> <img src="./MS.png" alt="Must Support view of a profile"/> </p>
<br clear="all"/>

#### Cardinality

Cardinality defines two aspects of an element within a profile

* Number of times an element **Can** be repeated.
* The minimum number of times an element **Must** be described when generating a resource

In this way we find several situations

~~~
 
  {0..1} : The element may not be described in the resource (initial value 0), but if used It must be developed only once (final 1)
  {1..1} : The element is required but can only be displayed once
  {0..3}: Non-mandatory element that can be repeated up to 3 times
  {1..3}: Mandatory element that can be repeated up to 3 times
  {1..*}: Mandatory element that can be repeated countless times

~~~

#### Bindings

Mandatory binding to a value set definition means that one of the codes from the specified value set **MUST** be used. In the case of +CodeableConcept+, it is not valid to use only text, but multiple encodings (translations) are allowed.

*Extensible binding* to a value set definition means that one of the codes in the specified value set **MUST BE USED** if an applicable concept exists, but if no suitable code exists in the value set, it is **MAY** provide an alternative code or codes instead. For *CodeableConcept* multiple encodings are allowed and this rule applies to one of them. Also in the case of *CodeableConcept*, if only text is available, you can use only the text.

<p> <img src="./binding.png" alt="View binding of a profile"/> </p>
<br clear="all"/>

#### Examples

The guide develops a series of examples per profile developed. This example shows in code how a system uses a profile to generate a resource. These examples are accessed from the examples page or from the example tab of each profile

<p> <img src="./ejemplo.png" alt="Example view of a profile"/> </p>
<br clear="all"/>

Furthermore, each example is described in 4 formats:

* Example Narrative: Legible Text
* Code in JSON
* Code in XML
* Code in TTL Representation

~~~
{
   "resourceType" : "Patient",
   "id" : "PatientCL",
   "goal" : {
     "profile" : [
       "http://core.hl7chile.cl/StructureDefinition/CorePacienteCl"
     ]
   },
   "text" : {
     "status" : "generated",
     "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>identifier </b>: NNCH: 15.236.327-k (OFFICIAL)</p><p><b>active</b>: true</p><p><b>name</b>: Marietta María Ximena Rosales (OFFICIAL), Xime </p><p><b>telecom</b>: ph: 943561833(MOBILE), <a href=\"mailto:mariRosal@mimail.com\">mariRosal@mimail. com</a></p><p><b>gender</b>: female</p><p><b>birthDate</b>: 1983-03-24</p><p> <b>address</b>: Av Los Chirimoyos, 32, house 4 5101 5 152 (HOME)</p></div>"
   },
   "identifier" : [
     {
       "use" : "official",
       "type" : {
         "extension" : [
           {
             "url" : "http://core.hl7chile.cl/StructureDefinition/CodigoPaises",
             "valueCodeableConcept" : {
               "coding" : [
                 {
                   "code" : "152",
                   "display" : "Chile"
                 }
               ]
             }
           }
         ],
         "coding" : [
           {
             "code" : "NNCH"
           }
         ]
       },
       "value" : "15,236,327-k"
     }
   ],
   "active" : true,
   "name" : [
     {
       "use" : "official",
       "family": "Rosales",
       "_Familia" : {
         "extension" : [
           {
             "url" : "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family",
             "valueString" : "Bosh"
           }
         ]
       },
       "given" : [
         "Marietta",
         "Maria",
         "Ximena"
       ]
     },
     {
       "use" : "usual",
       "given" : [
         "Xime"
       ]
     }
   ],
   "telecom" : [
     {
       "system" : "phone",
       "value" : "943561833",
       "use" : "mobile"
     },
     {
       "system" : "email",
       "value" : "mariRosal@mimail.com",
       "use" : "work"
     }
   ],
   "gender" : "female",
   "birthDate": "1983-03-24",
   "address" : [
     {
       "use" : "home",
       "line" : [
         "Av Los Chirimoyos, 32, house 4"
       ],
       "city" : "5101",
       "district" : "051",
       "state" : "5",
       "country" : "152"
     }
   ]
}

~~~
Alias: $ICD9CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct
Alias: $CVX = http://hl7.org/fhir/sid/cvx
// Alias: $DIVOC = http://worldhealthorganization.github.io/ddcc/DIVOC
Alias: $EUDCC = https://ec.europa.eu/health/documents/community-register/html/
// Alias: $ICAOV1 = http://worldhealthorganization.github.io/ddcc/ICAOV1

// CODE SYSTEMS
// CodeSystem:     DDCC_ICD11_CodeSystem
// Id:             DDCC-ICD11-CodeSystem
// Title:          "DDCC Codes for ICD11"
// Description:    "ICD11 codes for DDCC so the FHIR server can perform expansions."
// * ^experimental = false
// * ^caseSensitive = true
// * ^url = $ICD11
// * #RA01   "COVID-19 Disease"

// * #XM68M6 "COVID-19 vaccines"

// * #XM1NL1 "COVID-19 vaccine, inactivated virus"
// * #XM7HT3 "CoronaVac®"
// * #XM8866 "BBIBP-CorV"
// * #XM9TQ1 "KCONVAC"
// * #XM1G90 "Covaxin"
// * #XM85P5 "Covi-Vac"
// * #XM9FQ7 "Hayat-Vax"
// * #XM97N6 "QazVac"
// * #XM2YG8 "COVIran Barakat"
// * #XM3U61 "Inactivated SARS-CoV-2 vaccine"

// * #XM5DF6 "COVID-19 vaccine, live attenuated virus"

// * #XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
// * #XM4YL8 "COVID-19 Vaccine AstraZeneca"
// * #XM97T2 "Covishield®"
// * #XM6QV1 "COVID-19 Vaccine Janssen"
// * #XM1AG7 "Convidecia"
// * #XM5ZJ4 "Gam-Covid-Vac"
// * #XM5QM6 "Sputnik-Light"

// * #XM0CX4 "COVID-19 vaccine, replicating viral vector"

// * #XM5JC5 "COVID-19 vaccine, virus protein subunit"
// * #XM3CT4 "Recombinant SARS-CoV-2 vaccine"
// * #XM3PG0 "Soberana-02"
// * #XM4EC8 "MVC-COV1901"
// * #XM6SZ8 "EpiVacCorona"

// * #XM6AT1 "COVID-19 vaccine, DNA based"
// * #XM52P3 "ZyCov-D"

// * #XM0GQ8 "COVID-19 vaccine, RNA based"
// * #XM8NQ0 "Comirnaty®"
// * #XM3DT5 "COVID-19 Vaccine Moderna"

// * #XN109 "SARS-CoV-2"
// * #XN0HL "SARS-CoV-2 Alpha"
// * #XN4Q7 "SARS-CoV-2 Beta"
// * #XN5BQ "SARS-CoV-2 Gamma"
// * #XN8V6 "SARS-CoV-2 Delta"
// * #XN1GK "SARS-CoV-2 Epsilon"
// * #XN3ZE "SARS-CoV-2 Zeta"
// * #XN2V4 "SARS-CoV-2 Eta"
// * #XN4Q1 "SARS-CoV-2 Theta"
// * #XN3UD "SARS-CoV-2 Iota"
// * #XN9L8 "SARS-CoV-2 Kappa"
// * #XN6AM "SARS-CoV-2 Lambda"
// * #XN39J "SARS-CoV-2 Mu"
// * #XN161 "SARS-CoV-2 Omicron"

// * #MG71 "Abnormal laboratory results, not elsewhere classified"
// * #RA01.0 "COVID-19, virus identified"
// * #RA01.1 "COVID-19, virus not identified"
// * #QA02 "Medical observation or evaluation for suspected diseases or conditions, ruled out"
// * #XM1AU2 "Sinopharm WIBP-CorV"
// * #XM1J92 "COVID-19 vaccine, virus like particle"
// * #XM3SK8 "EpiVacCorona-N"
// * #XM9N08 "Razi COV PARS"
// * #XM9P21 "SpikoGen"
// * #XM9T65 "Novavax COVID-19 vaccine"
// * #XM0K39 "Covidful"
// * #XM0RV9 "Soberana Plus"

// * #XM3418 "Yellow fever, live attenuated"
// * #XM28X5 "Measles vaccines"
// * #XM8L15 "Measles, live attenuated"
// * #XM9439 "Measles, combinations with mumps, live attenuated"
// * #XM8TF3 "Measles, combinations with mumps and rubella, live attenuated"
// * #XM21H2 "Measles, combinations with rubella, live attenuated"
// * #XM4AJ8 "Measles, combinations with mumps, rubella and varicella, live attenuated"
// * #XM0N50 "Poliomyelitis vaccines"
// * #XM0VX8 "Poliomyelitis oral, monovalent live attenuated"
// * #XM0KZ1 "Poliomyelitis oral, trivalent, live attenuated"
// * #XM79H3 "Poliomyelitis oral, bivalent, live attenuated"

// * #1D47 "Yellow fever"
// * #1F03 "Measles"
// * #1F03.0 "Measles without complication"
// * #1F03.1 "Measles complicated by encephalitis"
// * #1F03.2 "Measles complicated by meningitis"
// * #1F03.Y "Measles with other complications"
// * #1C81 "Acute poliomyelitis"

// * #XN9S3 "Yellow fever virus"
// * #XN186 "Measles virus"
// * #XN3M0 "Poliovirus"
// * #XN6KZ "Wild poliovirus type 1"
// * #XN9CF "Wild poliovirus type 2"
// * #XN97R "Wild poliovirus type 3"


// CodeSystem:     DDCC_SNOMED_CodeSystem
// Id:             DDCC-SNOMED-CodeSystem
// Title:          "DDCC Codes for SNOMED"
// Description:    "SNOMED codes for DDCC so the FHIR server can perform expansions."
// * ^experimental = false
// * ^caseSensitive = true
// * ^url = SCT

// * #318851000221104 "STAMARIL [VIRUS DE LA FIEBRE AMARILLA CEPA 17D-204 1000 UI] 1 DOSIS/ FRASCO AMPOLLA de POLVO LIOFILIZADO PARA INYECTABLE (fármaco de uso clínico comercial)"
// * #319041000221100 "VAXIPOLIO (vacuna poliovirus inactivado serotipos 1,2 y 3) SUSPENSION INYECTABLE, vial de 1 dosis (fármaco de uso clínico comercial)"
// * #318811000221100 "PROQUAD FRASCO AMPOLLA de INYECTABLE LIOFILIZADO (fármaco de uso clínico comercial)"


// VALUESETS
ValueSet:      DDCC_Vaccines
Id:	           ddcc-vaccines
Title:	       "Vaccine List"
Description:   """
Vaccine List from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#XM68M6 "COVID-19 vaccine"

* include $ICD11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $ICD11#XM7HT3 "CoronaVac®"
* include $ICD11#XM8866 "BBIBP-CorV"
* include $ICD11#XM9TQ1 "KCONVAC"
* include $ICD11#XM1G90 "Covaxin"
* include $ICD11#XM85P5 "Covi-Vac"
* include $ICD11#XM9FQ7 "Hayat-Vax"
* include $ICD11#XM97N6 "QazVac"
* include $ICD11#XM2YG8 "COVIran Barakat"
* include $ICD11#XM3U61 "Inactivated SARS-CoV-2 vaccine"

* include $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"

* include $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $ICD11#XM4YL8 "COVID-19 Vaccine AstraZeneca"
* include $ICD11#XM97T2 "Covishield®"
* include $ICD11#XM6QV1 "COVID-19 Vaccine Janssen"
* include $ICD11#XM1AG7 "Convidecia"
* include $ICD11#XM5ZJ4 "Gam-Covid-Vac"
* include $ICD11#XM5QM6 "Sputnik-Light"

* include $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"

* include $ICD11#XM5JC5 "COVID-19 vaccine, virus protein subunit"
* include $ICD11#XM3CT4 "Recombinant SARS-CoV-2 vaccine"
* include $ICD11#XM3PG0 "Soberana-02"
* include $ICD11#XM4EC8 "MVC-COV1901"
* include $ICD11#XM6SZ8 "EpiVacCorona"

* include $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"

* include $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $ICD11#XM52P3 "ZyCov-D"

* include $ICD11#XM0GQ8 "COVID-19 vaccine, RNA based"
* include $ICD11#XM8NQ0 "Comirnaty®"
* include $ICD11#XM3DT5 "COVID-19 Vaccine Moderna"

* include $ICD11#XM3418 "Yellow fever, live attenuated"
* include $ICD11#XM28X5 "Measles vaccines"
* include $ICD11#XM8L15 "Measles, live attenuated"
* include $ICD11#XM9439 "Measles, combinations with mumps, live attenuated"
* include $ICD11#XM8TF3 "Measles, combinations with mumps and rubella, live attenuated"
* include $ICD11#XM21H2 "Measles, combinations with rubella, live attenuated"
* include $ICD11#XM4AJ8 "Measles, combinations with mumps, rubella and varicella, live attenuated"
* include $ICD11#XM0N50 "Poliomyelitis vaccines"
* include $ICD11#XM0VX8 "Poliomyelitis oral, monovalent live attenuated"
* include $ICD11#XM0KZ1 "Poliomyelitis oral, trivalent, live attenuated"
* include $ICD11#XM79H3 "Poliomyelitis oral, bivalent, live attenuated"



ValueSet:      DDCC_Brands
Id:	           ddcc-brands
Title:	       "DDCC Brand List"
Description:   """
DDCC Brand List from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft

* include $ICD11#XM7HT3 "CoronaVac®"
* include $ICD11#XM8866 "BBIBP-CorV"
* include $ICD11#XM9TQ1 "KCONVAC"
* include $ICD11#XM1G90 "Covaxin"
* include $ICD11#XM85P5 "Covi-Vac"
* include $ICD11#XM9FQ7 "Hayat-Vax"
* include $ICD11#XM97N6 "QazVac"
* include $ICD11#XM2YG8 "COVIran Barakat"

* include $ICD11#XM4YL8 "AstraZeneca"
* include $ICD11#XM97T2 "Covishield®"
* include $ICD11#XM6QV1 "Janssen"
* include $ICD11#XM1AG7 "Convidecia"
* include $ICD11#XM5ZJ4 "Gam-Covid-Vac"
* include $ICD11#XM5QM6 "Sputnik-Light"

* include $ICD11#XM3PG0 "Soberana-02"
* include $ICD11#XM4EC8 "MVC-COV1901"
* include $ICD11#XM6SZ8 "EpiVacCorona"

* include $ICD11#XM52P3 "ZyCov-D"

* include $ICD11#XM8NQ0 "Comirnaty®"
* include $ICD11#XM3DT5 "Moderna"

* include SCT#318851000221104 "STAMARIL [VIRUS DE LA FIEBRE AMARILLA CEPA 17D-204 1000 UI] 1 DOSIS/ FRASCO AMPOLLA de POLVO LIOFILIZADO PARA INYECTABLE (fármaco de uso clínico comercial)"
* include SCT#319041000221100 "VAXIPOLIO (vacuna poliovirus inactivado serotipos 1,2 y 3) SUSPENSION INYECTABLE, vial de 1 dosis (fármaco de uso clínico comercial)"
* include SCT#318811000221100 "PROQUAD FRASCO AMPOLLA de INYECTABLE LIOFILIZADO (fármaco de uso clínico comercial)"




ValueSet:      DDCC_Disease_Targeted
Id:	           ddcc-disease-targeted
Title:	       "Disease or Agent Targeted"
Description:   """
Disease or Agent Targeted List from [ICD 11](https://icd.who.int/browse11)
"""
* ^status = #draft
* include $ICD11#RA01 "COVID-19"

* include $ICD11#1D47 "Yellow fever"
* include $ICD11#1F03 "Measles"
* include $ICD11#1F03.0 "Measles without complication"
* include $ICD11#1F03.1 "Measles complicated by encephalitis"
* include $ICD11#1F03.2 "Measles complicated by meningitis"
* include $ICD11#1F03.Y "Measles with other complications"
* include $ICD11#1C81 "Acute poliomyelitis"

* include $ICD11#XN9S3 "Yellow fever virus"
* include $ICD11#XN186 "Measles virus"
* include $ICD11#XN3M0 "Poliovirus"
* include $ICD11#XN6KZ "Wild poliovirus type 1"
* include $ICD11#XN9CF "Wild poliovirus type 2"
* include $ICD11#XN97R "Wild poliovirus type 3"


// CodeSystem:     DIVOC_CodeSystem
// Id:             DIVOC-CodeSystem
// Title:          "Vaccine Codes for DIVOC"
// Description:    "Vaccine codes for DIVOC so the FHIR server can perform expansions."
// * ^experimental = false
// * ^caseSensitive = true
// * ^url = $DIVOC

// * #DIVOC001 "Zycov-D"
// * #DIVOC002 "Covaxin"
// * #DIVOC003 "Covishield"
// * #DIVOC004 "Sputnik V"
// * #DIVOC005 "Pfizer-BioNTech or Comirnaty"
// * #DIVOC006 "Janssen"
// * #DIVOC007 "Moderna or Modema or Spikevax"
// * #DIVOC008 "AstraZeneca or Vaxzevria"
// * #DIVOC009 "Sinovac or Coronavac"
// * #DIVOC010 "BBIBP- CorV or Sinopharm"
// * #DIVOC011 "Convidecia"
// * #DIVOC012 "Corbevax"
// * #DIVOC013 "Novavax/Covovax NVX - CoV2373"

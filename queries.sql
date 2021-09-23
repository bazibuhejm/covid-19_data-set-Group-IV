SELECT o.*, 
	v.Abdala                  ,
	v.COVIran_Barekat         ,
	v.CanSino                 ,
	v.Covaxin                 ,
	v.EpiVacCorona            ,
	v.Johnson_Johnson         ,
	v.Medigen                 ,
	v.Moderna                 ,
	v.Oxford_AstraZeneca      ,
	v.Pfizer_BioNTech         ,
	v.QazVac                  ,
	v.Sinopharm_Beijing       ,
	v.Sinopharm_HayatVax      ,
	v.Sinopharm_Wuhan         ,
	v.Sinovac                 ,
	v.Soberana02              ,
	v.Sputnik_V               ,
	v.ZF2001                  
INTO cleaned_data
FROM vax_manuf_filtered AS v
INNER JOIN owid_covid_data_filtered AS o
ON o.location = v.location

SELECT * FROM cleaned_data
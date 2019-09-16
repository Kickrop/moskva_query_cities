--Los Angeles
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
person_address like '%Los Angeles%' 
or person_address like '%LOS ANGELES%' 
--or person_address like '%Los Angeles%' 
--or person_address like '% CA %'
or person_name like '%Los Angeles%'
or person_name like '%LOS ANGELES%'
--or person_name like '%Massachusetts%'
)
group by appln_filing_year
--
--Boston
select *, coalesce("2014",0) + coalesce("2015",0) + coalesce("2016",0) as sum_14_16
from (
select 
person_name,techn_field
, sum(case when  appln_filing_year='2014' then count end) "2014"
, sum(case when  appln_filing_year='2015' then count end) "2015"
, sum(case when  appln_filing_year='2016' then count end) "2016"
, sum(case when  appln_filing_year='2017' then count end) "2017"
from (
select appln_filing_year,person_name,techn_field,count(distinct year14_17_address_name.appln_id)
from year14_17_address_name
join tls230_appln_techn_field t230 on year14_17_address_name.appln_id=t230.appln_id
join tls901_techn_field_ipc t901 on t230.techn_field_nr=t901.techn_field_nr
where 
(
person_address like '%Boston,MA%' 
or person_address like '%Massachusetts%'
or person_address like '%Boston MA%' 
or person_address like '%MA %'
or person_name like '%Boston%'
or person_name like '%BOSTON%'
or person_name like '%Massachusetts%'
)
group by appln_filing_year,person_name,techn_field
) x
group by person_name,techn_field
) y
order by sum_14_16 desc
--
--San Francisco
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_address) like '%oakland,ca%'
or lower(person_address) like '%oakland, ca%'
or lower(person_address) like '%oakland, california%'
or lower(person_address) like '%fremont,ca%' or lower(person_address) like '%fremont, ca%'
or lower(person_address) like '%hayward,ca%' or lower(person_address) like '%hayward, ca%'
or lower(person_address) like '%berkeley,ca%' or lower(person_address) like '%berkeley, ca%'
or lower(person_address) like '%san leandro,ca%' 
or lower(person_address) like '%livermore,ca%'
or lower(person_address) like '%alameda,ca%'
or lower(person_address) like '%concord,ca%' 
or lower(person_address) like '%richmond,ca%' 
or lower(person_address) like '%antioch,ca%'
or lower(person_address) like '%san ramon, ca%'
or lower(person_address) like '%san ramon,ca%'
or lower(person_address) like '%walnut creek,ca%'
or lower(person_address) like '%san rafael,ca%'
or lower(person_address) like '%novato, ca%'
or lower(person_address) like '%novato,ca%'
or lower(person_address) like '%mill valley,ca%'
or lower(person_address) like '%larkspur,ca%'
or lower(person_address) like '%napa,ca%'
or lower(person_address) like '%daly city,ca%'
or lower(person_address) like '%san mateo, ca%'
or lower(person_address) like '%san mateo,ca%'
or lower(person_address) like '%redwood city,ca%'
or lower(person_address) like '%redwood city, ca%'
or lower(person_address) like '%south san francisco,ca%'
or lower(person_address) like '%south san francisco, ca%'
or lower(person_address) like '%san bruno,ca%'
or lower(person_address) like '%menlo park, ca%'
or lower(person_address) like '%menlo park,ca%'
or lower(person_address) like '%foster city,ca%'
or lower(person_address) like '%foster city, ca%'
or lower(person_address) like '%burlingame,ca%'
or lower(person_address) like '%burlingame,ca%'
or lower(person_address) like '%san carlos,ca%'
or lower(person_address) like '%san carlos, ca%'
or lower(person_address) like '%san jose,ca%'
or lower(person_address) like '%san jose, ca%'
or lower(person_address) like '%sunnyvale,ca%'
or lower(person_address) like '%sunnyvale, ca%'
or lower(person_address) like '%santa clara, ca%'
or lower(person_address) like '%santa clara,ca%'
or lower(person_address) like '%mountain view,ca%'
or lower(person_address) like '%mountain view, ca%'
or lower(person_address) like '%milpitas, ca%'
or lower(person_address) like '%milpitas,ca%'
or lower(person_address) like '%palo alto,ca%'
or lower(person_address) like '%palo alto, ca%'
or lower(person_address) like '%cupertino, ca%'
or lower(person_address) like '%cupertino,ca%'
or lower(person_address) like '%campbell,ca%'
or lower(person_address) like '%campbell, ca%'
or lower(person_address) like '%morgan hill,ca%'
or lower(person_address) like '%saratoga,ca%'
or lower(person_address) like '%saratoga, ca%'
or lower(person_address) like '%stanford,ca%'
or lower(person_address) like '%los altos,ca%'
or lower(person_address) like '%los gatos,ca%'
or lower(person_address) like '%fairfield,ca%'
or lower(person_address) like '%santa rosa,ca%'
or lower(person_address) like '%santa rosa, ca%'
or lower(person_address) like '%petaluma,ca%'
or lower(person_address) like '%rohnert park,ca%'
or person_name like '%san francisco%'
or person_name like '%oakland,ca%'
--or person_name like '%Massachusetts%'
)
group by appln_filing_year
--
--Frankfurt Am Main
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_address) like '%frankfurt %'
--or lower(person_address) like '%%'
--lower(person_address) like '%offenbach%'
--lower(person_address) like '%landkreis%'
or lower(person_address) like '%aschaffenburg%'
or lower(person_address) like '%kinzig%'
or lower(person_address) like '%wetteraukreis%'
or lower(person_address) like '%hochtaunuskreis%'
or lower(person_address) like '%taunus%'
or lower(person_address) like '%kreis%'
or lower(person_address) like '%darmstadt%'
or lower(person_address) like '%wiesbaden%'
or lower(person_address) like '%mainz%'
or lower(person_address) like '%bingen%'
or lower(person_address) like '%miltenberg%'
or lower(person_address) like '%dreieich%'
or lower(person_address) like '%neu-isenburg%'
or lower(person_address) like '%obertshausen%'
or lower(person_address) like '%rodgau%'
or lower(person_address) like '%rödermark%'
or lower(person_address) like '%seligenstadt%'
or lower(person_address) like '%hanau%'
or lower(person_address) like '%maintal%'
or lower(person_address) like '%gelnhausen%'
or lower(person_address) like '%nidderau%'
or lower(person_address) like '%bad vilbel%'
or lower(person_address) like '%butzbach%'
or lower(person_address) like '%bad homburg%'
or lower(person_address) like '%oberursel%'
or lower(person_address) like '%friedrichsdorf%'
or lower(person_address) like '%taunus%'
or lower(person_address) like '%hofheim %'
or lower(person_address) like '%kelkheim%'
or lower(person_address) like '%eschborn%'
or lower(person_address) like '%griesheim%'
or lower(person_address) like '%weiterstadt%'
or lower(person_address) like '%pfungstadt%'
or lower(person_address) like '%rüsselsheim%'
or lower(person_address) like '%taunusstein%'
or lower(person_address) like '%idstein%'
or lower(person_address) like '%geisenheim%'
or lower(person_address) like '%budenheim%'
or lower(person_address) like '%ingelheim %'
or lower(person_address) like '%worms%'
or lower(person_address) like '%alzenau%'
or lower(person_address) like '%erlenbach%'
or lower(person_address) like '%klingenberg%'
or lower(person_address) like '%obernburg%'
or lower(person_address) like '%wörth %'
or lower(person_name) like '%frankfurt %'
or lower(person_name) like '%darmstadt%'
or lower(person_name) like '%mainz%'
or lower(person_name) like '%wiesbaden%'
--or person_name like '%frankfurt am main%'
--or person_name like '%%'
--or person_name like '%Massachusetts%'
)
group by appln_filing_year
--
--Москва
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
--lower(person_address) like '%frankfurt %'
--or lower(person_address) like '%aschaffenburg%'
--or lower(person_name) like '%frankfurt %'
person_ctry_code = 'RU'
and 
)
group by appln_filing_year
--
select person_name,person_address
from year14_17_address_name
where 
(
lower(person_address) like '%wörth %' --and person_address like 'CA'
--lower(person_address) like '%frankfurt a. m.%'
--lower(person_name) like '%frankfurt %'
--or person_address like '%oakland,california%'
--or person_address like '%Los Angeles%' 
--or person_address like '% CA %'
--or person_name like '%Boston%'
--or person_name like '%BOSTON%'
--or person_name like '%Massachusetts%'
)
group by person_name,person_address
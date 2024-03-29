select appln_nr_epodoc
from tls201_appln
where appln_nr_epodoc = 'EP16191869'

select * from year14_17_address_name
where person_name='OOO ''PARITET'''

--assignees
select distinct person_name--count(distinct person_name)
from year14_17_address_name join tls201_appln on year14_17_address_name.appln_id=tls201_appln.appln_id
where 
		(year14_17_address_name.appln_filing_year between 2010 and 2017)
	and person_ctry_code = 'RU'
	--and lower(person_address) like '%moscow%'
	and appln_auth <> 'RU'

--2010-2017	
--ctry_code 'RU': 27273 
--ctry_code 'RU' and adrs <> '': 7924
--addr like '%moscow%': 902
--auth = 'RU': 25342
--ctry_code = 'RU' and auth <> 'RU': 5330, in online: 19445

--appln_id
--online: ctry_code = 'RU' auth = 'RU' addr like '%moscow%' 1188	
--ctry_code = 'RU' and auth <> 'RU' (2010-2017) in online: 19445, offline: 6836
--online has address 11247 (10-18)

	
--appln_id
select count(distinct year14_17_address_name.appln_id)
from year14_17_address_name join tls201_appln on year14_17_address_name.appln_id=tls201_appln.appln_id
where 
		(year14_17_address_name.appln_filing_year between 2010 and 2017)
	and person_ctry_code = 'RU'
	--and lower(person_address) like '%moscow%'
	and appln_auth <> 'RU'	
	
--	
--Los Angeles
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%los angeles%' 
	or lower(person_name) like '%orange%' 
	--or lower(person_name) like '%orange, ca%' 
	or lower(person_name) like '%riverside%' 
	--or lower(person_name) like '%riverside, ca%' 
	or lower(person_name) like '%san bernardino%' 
	or lower(person_address) like '%los angeles%' 
	or lower(person_address) like '%orange%' 
	--or lower(person_address) like '%orange, ca%' 
	or lower(person_address) like '%riverside%' 
	--or lower(person_address) like '%riverside, ca%' 
	or lower(person_address) like '%san bernardino%' 
	or person_address like '%LA%'
 or person_address like '%L.A.%'
) 
and 
(person_address like '%,CA%' 
	or lower(person_address) like '%california%'
	or person_address like '%, CA%'
	or person_address like '% CA %')
--and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--Minneapolis
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%minneapolis%' 
	or lower(person_name) like '%dakota%' 
	--or lower(person_name) like '%orange, ca%' 
	or lower(person_name) like '%hennepin%' 
	--or lower(person_name) like '%riverside, ca%' 
	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%minneapolis%' 
	or lower(person_address) like '%dakota%' 
	--or lower(person_address) like '%orange, ca%' 
	or lower(person_address) like '%hennepin%' 
	--or lower(person_address) like '%riverside, ca%' 
	or lower(person_address) like '%ramsey%' 
) 
and 
(person_address like '%,MN%' 
	or lower(person_address) like '%minnesota%'
	or person_address like '%, MN%'
	or person_address like '% MN %'
	--or lower(person_name) like '%,MN%')
--and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--San Diego
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%san diego%' 
--	or lower(person_name) like '%dakota%' 
--	--or lower(person_name) like '%orange, ca%' 
--	or lower(person_name) like '%hennepin%' 
--	--or lower(person_name) like '%riverside, ca%' 
--	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%san diego%' 
--	or lower(person_address) like '%dakota%' 
--	--or lower(person_address) like '%orange, ca%' 
--	or lower(person_address) like '%hennepin%' 
--	--or lower(person_address) like '%riverside, ca%' 
--	or lower(person_address) like '%ramsey%' 
) 
and 
(person_address like '%,CA%' 
	or lower(person_address) like '%california%'
	or person_address like '%, CA%'
	or person_address like '% CA %')
--	--or lower(person_name) like '%,MN%')
-- --and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--Seattle
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%seattle%' 
--	or lower(person_name) like '%dakota%' 
--	--or lower(person_name) like '%orange, ca%' 
--	or lower(person_name) like '%hennepin%' 
--	--or lower(person_name) like '%riverside, ca%' 
--	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%seattle%' 
--	or lower(person_address) like '%dakota%' 
--	--or lower(person_address) like '%orange, ca%' 
--	or lower(person_address) like '%hennepin%' 
--	--or lower(person_address) like '%riverside, ca%' 
--	or lower(person_address) like '%ramsey%' 
) 
and 
(person_address like '%,WA%' 
	or lower(person_address) like '%washington %'
	or person_address like '%, WA%'
	or person_address like '% WA %')
--	--or lower(person_name) like '%,MN%')
-- --and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--philadelphia
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%philadelphia%' 
--	or lower(person_name) like '%dakota%' 
--	--or lower(person_name) like '%orange, ca%' 
--	or lower(person_name) like '%hennepin%' 
--	--or lower(person_name) like '%riverside, ca%' 
--	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%philadelphia%' 
--	or lower(person_address) like '%dakota%' 
--	--or lower(person_address) like '%orange, ca%' 
--	or lower(person_address) like '%hennepin%' 
--	--or lower(person_address) like '%riverside, ca%' 
--	or lower(person_address) like '%ramsey%' 
) 
and 
(person_address like '%,PA%' 
	or lower(person_address) like '%pennsylvania%'
	or person_address like '%, PA%'
	or person_address like '% PA %')
--	--or lower(person_name) like '%,MN%')
-- --and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--Chicago
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%chicago%' 
--	or lower(person_name) like '%dakota%' 
--	--or lower(person_name) like '%orange, ca%' 
--	or lower(person_name) like '%hennepin%' 
--	--or lower(person_name) like '%riverside, ca%' 
--	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%chicago%' 
--	or lower(person_address) like '%dakota%' 
--	--or lower(person_address) like '%orange, ca%' 
--	or lower(person_address) like '%hennepin%' 
--	--or lower(person_address) like '%riverside, ca%' 
--	or lower(person_address) like '%ramsey%' 
) 
and 
(person_address like '%,IL%' 
	or lower(person_address) like '%illinois%'
	or person_address like '%, IL%'
	or person_address like '% IL %')
--	--or lower(person_name) like '%,MN%')
-- --and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--Boston-Cambridge
--
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%boston%' 
	or lower(person_name) like '%cambridge%' 
	or lower(person_name) like '%essex%' 
	or lower(person_name) like '%middlesex%' 
--	--or lower(person_name) like '%riverside, ca%' 
	or lower(person_name) like '%norfolk%' 
	or lower(person_name) like '%suffolk%'
	or lower(person_address) like '%boston%' 
	or lower(person_address) like '%cambridge%' 
--	--or lower(person_address) like '%orange, ca%' 
	or lower(person_address) like '%essex%' 
	or lower(person_address) like '%middlesex%' 
	or lower(person_address) like '%norfolk%'
	or lower(person_address) like '%suffolk%' 
) 
and 
(person_address like '%,MA%' 
	or lower(person_address) like '%massachusetts%'
	or person_address like '%, MA%'
	or person_address like '% MA %')
--	--or lower(person_name) like '%,MN%')
-- --and (person_ctry_code = 'US' or person_ctry_code = '')
group by appln_filing_year
--
--techn_fields
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
--London
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%london%' 
--	or lower(person_name) like '%dakota%' 
--	--or lower(person_name) like '%orange, ca%' 
--	or lower(person_name) like '%hennepin%' 
--	--or lower(person_name) like '%riverside, ca%' 
--	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%london%' 
--	or lower(person_address) like '%dakota%' 
--	--or lower(person_address) like '%orange, ca%' 
--	or lower(person_address) like '%hennepin%' 
--	--or lower(person_address) like '%riverside, ca%' 
--	or lower(person_address) like '%ramsey%' 
) 
and 
--(person_address like '%,GB%' 
--	or lower(person_address) like '%england%'
--	or person_address like '%, GB%'
--	or person_address like '% GB %')
	--or lower(person_name) like '%,MN%')
and (person_ctry_code = 'GB' or person_ctry_code = '')
group by appln_filing_year
--
select count(distinct appln_id)
from year14_17_address_name
where person_ctry_code = 'GB'
--
--Tel Aviv - Jerusalem
--
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
lower(person_name) like '%jerusalem%' 
	or lower(person_name) like '%tel aviv%' 
--	--or lower(person_name) like '%orange, ca%' 
--	or lower(person_name) like '%hennepin%' 
--	--or lower(person_name) like '%riverside, ca%' 
--	or lower(person_name) like '%ramsey%' 
	or lower(person_address) like '%jerusalem%' 
	or lower(person_address) like '%tel aviv%' 
	or lower(person_address) like '%tel-aviv%'
	or lower(person_address) like '%tel aviv-yafo%'
	or lower(person_address) like '%yafo%'
--	--or lower(person_address) like '%orange, ca%' 
--	or lower(person_address) like '%hennepin%' 
--	--or lower(person_address) like '%riverside, ca%' 
--	or lower(person_address) like '%ramsey%' 
) 
--and 
--(person_address like '%,GB%' 
--	or lower(person_address) like '%england%'
--	or person_address like '%, GB%'
--	or person_address like '% GB %')
	--or lower(person_name) like '%,MN%')
--and (person_ctry_code = 'GB' or person_ctry_code = '')
group by appln_filing_year
--
select count(distinct appln_id)
from year14_17_address_name
where lower(person_address) like '%tel aviv%' 
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
or lower(person_address) like '%rР В РІР‚СљР вЂ™Р’В¶dermark%'
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
or lower(person_address) like '%rР В РІР‚СљР РЋРїС—Р…sselsheim%'
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
or lower(person_address) like '%wР В РІР‚СљР вЂ™Р’В¶rth %'
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
--Р В Р’В Р РЋРЎв„ўР В Р’В Р РЋРІР‚СћР В Р Р‹Р В РЎвЂњР В Р’В Р РЋРІР‚СњР В Р’В Р В РІР‚В Р В Р’В Р вЂ™Р’В°
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
lower(person_address) like '%wР В РІР‚СљР вЂ™Р’В¶rth %' --and person_address like 'CA'
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
--seul
select appln_filing_year,count(distinct appln_id)
from year14_17_address_name
where 
(
(
lower(person_address) like '%seoul%' 
--or lower(person_address) like '%seoul%'
)
)
group by appln_filing_year
--
select person_name,person_address
from year14_17_address_name
where 
(
(lower(person_address) like '%Seul%' or lower(person_address) like '%Seoul%')
)
group by person_name,person_address

--Sydney
--select *, coalesce("2014",0) + coalesce("2015",0) + coalesce("2016",0) as sum_14_16
--from (
--select 
--person_name,techn_field
--, sum(case when  appln_filing_year='2014' then count end) "2014"
--, sum(case when  appln_filing_year='2015' then count end) "2015"
--, sum(case when  appln_filing_year='2016' then count end) "2016"
--, sum(case when  appln_filing_year='2017' then count end) "2017"
--from (
select appln_filing_year
--,person_name,techn_field
,count(distinct year14_17_address_name.appln_id)
from year14_17_address_name
join tls230_appln_techn_field t230 on year14_17_address_name.appln_id=t230.appln_id
join tls901_techn_field_ipc t901 on t230.techn_field_nr=t901.techn_field_nr
where 
(
--lower(person_address) like '%sydney%' or lower(person_address) like '%yennora industrial%' or lower(person_address) like '%yarramundi - londonderry%' or lower(person_address) like '%yagoona - birrong%' or lower(person_address) like '%wyong%' or lower(person_address) like '%wyoming%' or lower(person_address) like '%woy woy - blackwall%' or lower(person_address) like '%woronora heights%' or lower(person_address) like '%woollahra%' or lower(person_address) like '%woolaware - burraneer%' or lower(person_address) like '%winston hills%' or lower(person_address) like '%windsor - bligh park%' or lower(person_address) like '%willoughby - castle cove - northbridge%' or lower(person_address) like '%wiley park%' or lower(person_address) like '%wetherill park industrial%' or lower(person_address) like '%west ryde - meadowbank%' or lower(person_address) like '%west pennant hills%' or lower(person_address) like '%west hoxton - middleton grange%' or lower(person_address) like '%wentworthville - westmead%' or lower(person_address) like '%wentworth falls%' or lower(person_address) like '%waterloo - beaconsfield%' or lower(person_address) like '%warwick farm%' or lower(person_address) like '%warriewood - mona vale%' or lower(person_address) like '%warragamba - silverdale%' or lower(person_address) like '%warnervale - wadalba%' or lower(person_address) like '%wamberal - forresters beach%' or lower(person_address) like '%waitara - wahroonga (west)%' or lower(person_address) like '%wahroonga (east) - warrawee%' or lower(person_address) like '%umina - booker bay - patonga%' or lower(person_address) like '%turramurra%' or lower(person_address) like '%tuggerah - kangy angy%' or lower(person_address) like '%toukley - norah head%' or lower(person_address) like '%toongabbie - constitution hill%' or lower(person_address) like '%the oaks - oakdale%' or lower(person_address) like '%the entrance%' or lower(person_address) like '%terrigal - north avoca%' or lower(person_address) like '%terrey hills - duffys forest%' or lower(person_address) like '%sylvania - taren point%' or lower(person_address) like '%sydney airport%' or lower(person_address) like '%sydney - haymarket - the rocks%' or lower(person_address) like '%sydenham - tempe - st peters%' or lower(person_address) like '%sutherland - kirrawee%' or lower(person_address) like '%surry hills%' or lower(person_address) like '%summerland point - gwandalan%' or lower(person_address) like '%strathfield south%' or lower(person_address) like '%strathfield%' or lower(person_address) like '%st marys - north st marys%' or lower(person_address) like '%st leonards - naremburn%' or lower(person_address) like '%st johns park - wakeley%' or lower(person_address) like '%st ives%' or lower(person_address) like '%st clair%' or lower(person_address) like '%springwood - winmalee%' or lower(person_address) like '%south hurstville - blakehurst%' or lower(person_address) like '%smithfield industrial%' or lower(person_address) like '%smithfield - wetherill park%' or lower(person_address) like '%seven hills - toongabbie%' or lower(person_address) like '%saratoga - davistown%' or lower(person_address) like '%sans souci - ramsgate%' or lower(person_address) like '%ryde%' or lower(person_address) like '%royal national park%' or lower(person_address) like '%rouse hill - beaumont hills%' or lower(person_address) like '%rosemeadow - glen alpine%' or lower(person_address) like '%roselands%' or lower(person_address) like '%rose bay - vaucluse - watsons bay%' or lower(person_address) like '%rooty hill - minchinbury%' or lower(person_address) like '%rookwood cemetery%' or lower(person_address) like '%rockdale - banksia%' or lower(person_address) like '%riverwood%' or lower(person_address) like '%riverstone - marsden park%' or lower(person_address) like '%richmond - clarendon%' or lower(person_address) like '%revesby%' or lower(person_address) like '%regents park%' or lower(person_address) like '%redfern - chippendale%' or lower(person_address) like '%randwick - south%' or lower(person_address) like '%randwick - north%' or lower(person_address) like '%quakers hill%' or lower(person_address) like '%pyrmont - ultimo%' or lower(person_address) like '%pymble%' or lower(person_address) like '%putney%' or lower(person_address) like '%punchbowl%' or lower(person_address) like '%prospect reservoir%' or lower(person_address) like '%prestons - edmondson park%' or lower(person_address) like '%potts point - woolloomooloo%' or lower(person_address) like '%port botany industrial%' or lower(person_address) like '%point clare - koolewong%' or lower(person_address) like '%pitt town - mcgraths hill%' or lower(person_address) like '%picton - tahmoor - buxton%' or lower(person_address) like '%petersham - stanmore%' or lower(person_address) like '%penrith%' or lower(person_address) like '%pennant hills - cheltenham%' or lower(person_address) like '%pendle hill - girraween%' or lower(person_address) like '%peakhurst - lugarno%' or lower(person_address) like '%parramatta - rosehill%' or lower(person_address) like '%parklea - kellyville ridge%' or lower(person_address) like '%panania - milperra - picnic point%' or lower(person_address) like '%pagewood - hillsdale - daceyville%' or lower(person_address) like '%padstow%' or lower(person_address) like '%paddington - moore park%' or lower(person_address) like '%oyster bay - como - jannali%' or lower(person_address) like '%ourimbah - fountaindale%' or lower(person_address) like '%oatley - hurstville grove%' or lower(person_address) like '%oatlands - dundas valley%' or lower(person_address) like '%northmead%' or lower(person_address) like '%north sydney - lavender bay%' or lower(person_address) like '%north ryde - east ryde%' or lower(person_address) like '%north rocks%' or lower(person_address) like '%north parramatta%' or lower(person_address) like '%normanhurst - thornleigh - westleigh%' or lower(person_address) like '%niagara park - lisarow%' or lower(person_address) like '%newtown - camperdown - darlington%' or lower(person_address) like '%newport - bilgola%' or lower(person_address) like '%neutral bay - kirribilli%' or lower(person_address) like '%narwee - beverly hills%' or lower(person_address) like '%narrabeen - collaroy%' or lower(person_address) like '%narara%' or lower(person_address) like '%mulgoa - luddenham - orchard hills%' or lower(person_address) like '%mount druitt - whalan%' or lower(person_address) like '%mount annan - currans hill%' or lower(person_address) like '%mosman%' or lower(person_address) like '%mortdale - penshurst%' or lower(person_address) like '%monterey - brighton-le-sands - kyeemagh%' or lower(person_address) like '%miranda - yowie bay%' or lower(person_address) like '%minto - st andrews%' or lower(person_address) like '%merrylands - holroyd%' or lower(person_address) like '%menai - lucas heights - woronora%' or lower(person_address) like '%mascot - eastlakes%' or lower(person_address) like '%marrickville%' or lower(person_address) like '%maroubra - west%' or lower(person_address) like '%maroubra - south%' or lower(person_address) like '%maroubra - north%' or lower(person_address) like '%manly vale - allambie heights%' or lower(person_address) like '%manly - fairlight%' or lower(person_address) like '%malabar - la perouse - chifley%' or lower(person_address) like '%macquarie park - marsfield%' or lower(person_address) like '%macquarie fields - glenfield%' or lower(person_address) like '%lurnea - cartwright%' or lower(person_address) like '%loftus - yarrawarrah%' or lower(person_address) like '%liverpool%' or lower(person_address) like '%lindfield - roseville%' or lower(person_address) like '%lilyfield - rozelle%' or lower(person_address) like '%lilli pilli - port hacking - dolans bay%' or lower(person_address) like '%lidcombe%' or lower(person_address) like '%leumeah - minto heights%' or lower(person_address) like '%lethbridge park - tregear%' or lower(person_address) like '%leichhardt - annandale%' or lower(person_address) like '%lawson - hazelbrook - linden%' or lower(person_address) like '%lane cove - greenwich%' or lower(person_address) like '%lalor park - kings langley%' or lower(person_address) like '%lakemba%' or lower(person_address) like '%lake munmorah - mannering park%' or lower(person_address) like '%kurrajong heights - ebenezer%' or lower(person_address) like '%kogarah bay - carlton - allawah%' or lower(person_address) like '%kogarah%' or lower(person_address) like '%kingswood - werrington%' or lower(person_address) like '%kingsgrove (south) - bardwell park%' or lower(person_address) like '%kingsgrove (north) - earlwood%' or lower(person_address) like '%kingsford%' or lower(person_address) like '%kincumber - picketts valley%' or lower(person_address) like '%kensington (nsw)%' or lower(person_address) like '%kellyville%' or lower(person_address) like '%katoomba - leura%' or lower(person_address) like '%kariong%' or lower(person_address) like '%jilliby - yarramalong%' or lower(person_address) like '%jamisontown - south penrith%' or lower(person_address) like '%ingleburn - denham court%' or lower(person_address) like '%illawong - alfords point%' or lower(person_address) like '%hurstville%' or lower(person_address) like '%hunters hill - woolwich%' or lower(person_address) like '%hoxton park - carnes hill - horningsea park%' or lower(person_address) like '%horsley park - kemps creek%' or lower(person_address) like '%hornsby - west%' or lower(person_address) like '%hornsby - east%' or lower(person_address) like '%homebush bay - silverwater%' or lower(person_address) like '%homebush%' or lower(person_address) like '%holsworthy military area%' or lower(person_address) like '%holsworthy - wattle grove%' or lower(person_address) like '%hinchinbrook%' or lower(person_address) like '%heathcote - waterfall%' or lower(person_address) like '%hassall grove - plumpton%' or lower(person_address) like '%haberfield - summer hill%' or lower(person_address) like '%gymea - grays point%' or lower(person_address) like '%guildford west - merrylands west%' or lower(person_address) like '%guildford - south granville%' or lower(person_address) like '%greystanes - pemulwuy%' or lower(person_address) like '%greenfield park - prairiewood%' or lower(person_address) like '%greenacre - mount lewis%' or lower(person_address) like '%green valley%' or lower(person_address) like '%granville - clyde%' or lower(person_address) like '%gosford - springfield%' or lower(person_address) like '%gorokan - kanwal - charmhaven%' or lower(person_address) like '%gordon - killara%' or lower(person_address) like '%glenwood%' or lower(person_address) like '%glenmore park - regentville%' or lower(person_address) like '%glenhaven%' or lower(person_address) like '%glendenning - dean park%' or lower(person_address) like '%glebe - forest lodge%' or lower(person_address) like '%gladesville - huntleys point%' or lower(person_address) like '%galston - laughtondale%' or lower(person_address) like '%freshwater - brookvale%' or lower(person_address) like '%frenchs forest - belrose%' or lower(person_address) like '%forestville - killarney heights%' or lower(person_address) like '%five dock - abbotsford%' or lower(person_address) like '%fairfield - west%' or lower(person_address) like '%fairfield - east%' or lower(person_address) like '%fairfield%' or lower(person_address) like '%erskineville - alexandria%' or lower(person_address) like '%erskine park%' or lower(person_address) like '%ermington - rydalmere%' or lower(person_address) like '%erina - green point%' or lower(person_address) like '%epping - north epping%' or lower(person_address) like '%engadine%' or lower(person_address) like '%emu plains - leonay%' or lower(person_address) like '%elderslie - harrington park%' or lower(person_address) like '%edensor park%' or lower(person_address) like '%eastwood - denistone%' or lower(person_address) like '%dural - kenthurst - wisemans ferry%' or lower(person_address) like '%dulwich hill - lewisham%' or lower(person_address) like '%drummoyne - rodd point%' or lower(person_address) like '%dover heights%' or lower(person_address) like '%douglas park - appin%' or lower(person_address) like '%double bay - bellevue hill%' or lower(person_address) like '%doonside - woodcroft%' or lower(person_address) like '%dee why - north curl curl%' or lower(person_address) like '%darlinghurst%' or lower(person_address) like '%croydon park - enfield%' or lower(person_address) like '%crows nest - waverton%' or lower(person_address) like '%cronulla - kurnell - bundeena%' or lower(person_address) like '%cromer%' or lower(person_address) like '%cremorne - cammeray%' or lower(person_address) like '%coogee - clovelly%' or lower(person_address) like '%condell park%' or lower(person_address) like '%concord west - north strathfield%' or lower(person_address) like '%concord - mortlake - cabarita%' or lower(person_address) like '%colyton - oxley park%' or lower(person_address) like '%cobbitty - leppington%' or lower(person_address) like '%claymore - eagle vale - raby%' or lower(person_address) like '%chullora%' or lower(person_address) like '%chittaway bay - tumbi umbi%' or lower(person_address) like '%chipping norton - moorebank%' or lower(person_address) like '%chester hill - sefton%' or lower(person_address) like '%cherrybrook%' or lower(person_address) like '%chatswood (west) - lane cove north%' or lower(person_address) like '%chatswood (east) - artarmon%' or lower(person_address) like '%centennial park%' or lower(person_address) like '%cecil hills%' or lower(person_address) like '%casula%' or lower(person_address) like '%castlereagh - cranebrook%' or lower(person_address) like '%castle hill - west%' or lower(person_address) like '%castle hill - south%' or lower(person_address) like '%castle hill - north%' or lower(person_address) like '%castle hill - east%' or lower(person_address) like '%castle hill - central%' or lower(person_address) like '%carlingford%' or lower(person_address) like '%caringbah south%' or lower(person_address) like '%caringbah%' or lower(person_address) like '%canterbury (south) - campsie%' or lower(person_address) like '%canterbury (north) - ashbury%' or lower(person_address) like '%canley vale - canley heights%' or lower(person_address) like '%campbelltown - woodbine%' or lower(person_address) like '%camden - ellis lane%' or lower(person_address) like '%cambridge park%' or lower(person_address) like '%calga - kulnura%' or lower(person_address) like '%cabramatta west - mount pritchard%' or lower(person_address) like '%cabramatta - lansvale%' or lower(person_address) like '%burwood - croydon%' or lower(person_address) like '%budgewoi - buff point - halekulani%' or lower(person_address) like '%bradbury - wedderburn%' or lower(person_address) like '%box head - macmasters beach%' or lower(person_address) like '%botany%' or lower(person_address) like '%bossley park - abbotsbury%' or lower(person_address) like '%bonnyrigg heights - bonnyrigg%' or lower(person_address) like '%bondi junction - waverly%' or lower(person_address) like '%bondi beach - north bondi%' or lower(person_address) like '%bondi - tamarama - bronte%' or lower(person_address) like '%blue mountains - south%' or lower(person_address) like '%blue mountains - north%' or lower(person_address) like '%blue haven - san remo%' or lower(person_address) like '%blaxland - warrimoo - lapstone%' or lower(person_address) like '%blacktown (west)%' or lower(person_address) like '%blacktown (south)%' or lower(person_address) like '%blacktown (north) - marayong%' or lower(person_address) like '%blacktown (east) - kings park%' or lower(person_address) like '%blackheath - megalong valley%' or lower(person_address) like '%bilpin - colo - st albans%' or lower(person_address) like '%bidwill - hebersham - emerton%' or lower(person_address) like '%bexley%' or lower(person_address) like '%berowra - brooklyn - cowan%' or lower(person_address) like '%berala%' or lower(person_address) like '%belmore - belfield%' or lower(person_address) like '%beacon hill - narraweena%' or lower(person_address) like '%bayview - elanora heights%' or lower(person_address) like '%baulkham hills (west) - bella vista%' or lower(person_address) like '%baulkham hills (east)%' or lower(person_address) like '%bateau bay - killarney vale%' or lower(person_address) like '%bass hill - georges hall%' or lower(person_address) like '%bargo%' or lower(person_address) like '%bankstown - south%' or lower(person_address) like '%bankstown - north%' or lower(person_address) like '%banksmeadow%' or lower(person_address) like '%balmain%' or lower(person_address) like '%balgowlah - clontarf - seaforth%' or lower(person_address) like '%badgerys creek%' or lower(person_address) like '%avoca beach - copacabana%' or lower(person_address) like '%avalon - palm beach%' or lower(person_address) like '%austral - greendale%' or lower(person_address) like '%auburn - south%' or lower(person_address) like '%auburn - north%' or lower(person_address) like '%auburn - central%' or lower(person_address) like '%asquith - mount colah%' or lower(person_address) like '%ashfield%' or lower(person_address) like '%ashcroft - busby - miller%' or lower(person_address) like '%arncliffe - bardwell valley%' or lower(person_address) like '%acacia gardens%' 
lower(person_address) like '%wakeley%'
--or person_name like '%Boston%'
--or person_name like '%BOSTON%'
--or person_name like '%Massachusetts%'
)
group by appln_filing_year
--,person_name,techn_field
--) x
--group by person_name,techn_field
--) y
--order by sum_14_16 desc
select appln_filing_year--,
--distinct person_name
--,person_address
--,techn_field
,count(distinct year14_17_address_name.appln_id)
from year14_17_address_name
join tls230_appln_techn_field t230 on year14_17_address_name.appln_id=t230.appln_id
join tls901_techn_field_ipc t901 on t230.techn_field_nr=t901.techn_field_nr
where 
(
--lower(person_address) like '%sydney%' or lower(person_address) like '%yennora industrial%' or lower(person_address) like '%yarramundi - londonderry%' or lower(person_address) like '%yagoona - birrong%' or lower(person_address) like '%wyong%' or lower(person_address) like '%wyoming%' or lower(person_address) like '%woy woy - blackwall%' or lower(person_address) like '%woronora heights%' or lower(person_address) like '%woollahra%' or lower(person_address) like '%woolaware - burraneer%' or lower(person_address) like '%winston hills%' or lower(person_address) like '%windsor - bligh park%' or lower(person_address) like '%willoughby - castle cove - northbridge%' or lower(person_address) like '%wiley park%' or lower(person_address) like '%wetherill park industrial%' or lower(person_address) like '%west ryde - meadowbank%' or lower(person_address) like '%west pennant hills%' or lower(person_address) like '%west hoxton - middleton grange%' or lower(person_address) like '%wentworthville - westmead%' or lower(person_address) like '%wentworth falls%' or lower(person_address) like '%waterloo - beaconsfield%' or lower(person_address) like '%warwick farm%' or lower(person_address) like '%warriewood - mona vale%' or lower(person_address) like '%warragamba - silverdale%' or lower(person_address) like '%warnervale - wadalba%' or lower(person_address) like '%wamberal - forresters beach%' or lower(person_address) like '%waitara - wahroonga (west)%' or lower(person_address) like '%wahroonga (east) - warrawee%' or lower(person_address) like '%umina - booker bay - patonga%' or lower(person_address) like '%turramurra%' or lower(person_address) like '%tuggerah - kangy angy%' or lower(person_address) like '%toukley - norah head%' or lower(person_address) like '%toongabbie - constitution hill%' or lower(person_address) like '%the oaks - oakdale%' or lower(person_address) like '%the entrance%' or lower(person_address) like '%terrigal - north avoca%' or lower(person_address) like '%terrey hills - duffys forest%' or lower(person_address) like '%sylvania - taren point%' or lower(person_address) like '%sydney airport%' or lower(person_address) like '%sydney - haymarket - the rocks%' or lower(person_address) like '%sydenham - tempe - st peters%' or lower(person_address) like '%sutherland - kirrawee%' or lower(person_address) like '%surry hills%' or lower(person_address) like '%summerland point - gwandalan%' or lower(person_address) like '%strathfield south%' or lower(person_address) like '%strathfield%' or lower(person_address) like '%st marys - north st marys%' or lower(person_address) like '%st leonards - naremburn%' or lower(person_address) like '%st johns park - wakeley%' or lower(person_address) like '%st ives%' or lower(person_address) like '%st clair%' or lower(person_address) like '%springwood - winmalee%' or lower(person_address) like '%south hurstville - blakehurst%' or lower(person_address) like '%smithfield industrial%' or lower(person_address) like '%smithfield - wetherill park%' or lower(person_address) like '%seven hills - toongabbie%' or lower(person_address) like '%saratoga - davistown%' or lower(person_address) like '%sans souci - ramsgate%' or lower(person_address) like '%ryde%' or lower(person_address) like '%royal national park%' or lower(person_address) like '%rouse hill - beaumont hills%' or lower(person_address) like '%rosemeadow - glen alpine%' or lower(person_address) like '%roselands%' or lower(person_address) like '%rose bay - vaucluse - watsons bay%' or lower(person_address) like '%rooty hill - minchinbury%' or lower(person_address) like '%rookwood cemetery%' or lower(person_address) like '%rockdale - banksia%' or lower(person_address) like '%riverwood%' or lower(person_address) like '%riverstone - marsden park%' or lower(person_address) like '%richmond - clarendon%' or lower(person_address) like '%revesby%' or lower(person_address) like '%regents park%' or lower(person_address) like '%redfern - chippendale%' or lower(person_address) like '%randwick - south%' or lower(person_address) like '%randwick - north%' or lower(person_address) like '%quakers hill%' or lower(person_address) like '%pyrmont - ultimo%' or lower(person_address) like '%pymble%' or lower(person_address) like '%putney%' or lower(person_address) like '%punchbowl%' or lower(person_address) like '%prospect reservoir%' or lower(person_address) like '%prestons - edmondson park%' or lower(person_address) like '%potts point - woolloomooloo%' or lower(person_address) like '%port botany industrial%' or lower(person_address) like '%point clare - koolewong%' or lower(person_address) like '%pitt town - mcgraths hill%' or lower(person_address) like '%picton - tahmoor - buxton%' or lower(person_address) like '%petersham - stanmore%' or lower(person_address) like '%penrith%' or lower(person_address) like '%pennant hills - cheltenham%' or lower(person_address) like '%pendle hill - girraween%' or lower(person_address) like '%peakhurst - lugarno%' or lower(person_address) like '%parramatta - rosehill%' or lower(person_address) like '%parklea - kellyville ridge%' or lower(person_address) like '%panania - milperra - picnic point%' or lower(person_address) like '%pagewood - hillsdale - daceyville%' or lower(person_address) like '%padstow%' or lower(person_address) like '%paddington - moore park%' or lower(person_address) like '%oyster bay - como - jannali%' or lower(person_address) like '%ourimbah - fountaindale%' or lower(person_address) like '%oatley - hurstville grove%' or lower(person_address) like '%oatlands - dundas valley%' or lower(person_address) like '%northmead%' or lower(person_address) like '%north sydney - lavender bay%' or lower(person_address) like '%north ryde - east ryde%' or lower(person_address) like '%north rocks%' or lower(person_address) like '%north parramatta%' or lower(person_address) like '%normanhurst - thornleigh - westleigh%' or lower(person_address) like '%niagara park - lisarow%' or lower(person_address) like '%newtown - camperdown - darlington%' or lower(person_address) like '%newport - bilgola%' or lower(person_address) like '%neutral bay - kirribilli%' or lower(person_address) like '%narwee - beverly hills%' or lower(person_address) like '%narrabeen - collaroy%' or lower(person_address) like '%narara%' or lower(person_address) like '%mulgoa - luddenham - orchard hills%' or lower(person_address) like '%mount druitt - whalan%' or lower(person_address) like '%mount annan - currans hill%' or lower(person_address) like '%mosman%' or lower(person_address) like '%mortdale - penshurst%' or lower(person_address) like '%monterey - brighton-le-sands - kyeemagh%' or lower(person_address) like '%miranda - yowie bay%' or lower(person_address) like '%minto - st andrews%' or lower(person_address) like '%merrylands - holroyd%' or lower(person_address) like '%menai - lucas heights - woronora%' or lower(person_address) like '%mascot - eastlakes%' or lower(person_address) like '%marrickville%' or lower(person_address) like '%maroubra - west%' or lower(person_address) like '%maroubra - south%' or lower(person_address) like '%maroubra - north%' or lower(person_address) like '%manly vale - allambie heights%' or lower(person_address) like '%manly - fairlight%' or lower(person_address) like '%malabar - la perouse - chifley%' or lower(person_address) like '%macquarie park - marsfield%' or lower(person_address) like '%macquarie fields - glenfield%' or lower(person_address) like '%lurnea - cartwright%' or lower(person_address) like '%loftus - yarrawarrah%' or lower(person_address) like '%liverpool%' or lower(person_address) like '%lindfield - roseville%' or lower(person_address) like '%lilyfield - rozelle%' or lower(person_address) like '%lilli pilli - port hacking - dolans bay%' or lower(person_address) like '%lidcombe%' or lower(person_address) like '%leumeah - minto heights%' or lower(person_address) like '%lethbridge park - tregear%' or lower(person_address) like '%leichhardt - annandale%' or lower(person_address) like '%lawson - hazelbrook - linden%' or lower(person_address) like '%lane cove - greenwich%' or lower(person_address) like '%lalor park - kings langley%' or lower(person_address) like '%lakemba%' or lower(person_address) like '%lake munmorah - mannering park%' or lower(person_address) like '%kurrajong heights - ebenezer%' or lower(person_address) like '%kogarah bay - carlton - allawah%' or lower(person_address) like '%kogarah%' or lower(person_address) like '%kingswood - werrington%' or lower(person_address) like '%kingsgrove (south) - bardwell park%' or lower(person_address) like '%kingsgrove (north) - earlwood%' or lower(person_address) like '%kingsford%' or lower(person_address) like '%kincumber - picketts valley%' or lower(person_address) like '%kensington (nsw)%' or lower(person_address) like '%kellyville%' or lower(person_address) like '%katoomba - leura%' or lower(person_address) like '%kariong%' or lower(person_address) like '%jilliby - yarramalong%' or lower(person_address) like '%jamisontown - south penrith%' or lower(person_address) like '%ingleburn - denham court%' or lower(person_address) like '%illawong - alfords point%' or lower(person_address) like '%hurstville%' or lower(person_address) like '%hunters hill - woolwich%' or lower(person_address) like '%hoxton park - carnes hill - horningsea park%' or lower(person_address) like '%horsley park - kemps creek%' or lower(person_address) like '%hornsby - west%' or lower(person_address) like '%hornsby - east%' or lower(person_address) like '%homebush bay - silverwater%' or lower(person_address) like '%homebush%' or lower(person_address) like '%holsworthy military area%' or lower(person_address) like '%holsworthy - wattle grove%' or lower(person_address) like '%hinchinbrook%' or lower(person_address) like '%heathcote - waterfall%' or lower(person_address) like '%hassall grove - plumpton%' or lower(person_address) like '%haberfield - summer hill%' or lower(person_address) like '%gymea - grays point%' or lower(person_address) like '%guildford west - merrylands west%' or lower(person_address) like '%guildford - south granville%' or lower(person_address) like '%greystanes - pemulwuy%' or lower(person_address) like '%greenfield park - prairiewood%' or lower(person_address) like '%greenacre - mount lewis%' or lower(person_address) like '%green valley%' or lower(person_address) like '%granville - clyde%' or lower(person_address) like '%gosford - springfield%' or lower(person_address) like '%gorokan - kanwal - charmhaven%' or lower(person_address) like '%gordon - killara%' or lower(person_address) like '%glenwood%' or lower(person_address) like '%glenmore park - regentville%' or lower(person_address) like '%glenhaven%' or lower(person_address) like '%glendenning - dean park%' or lower(person_address) like '%glebe - forest lodge%' or lower(person_address) like '%gladesville - huntleys point%' or lower(person_address) like '%galston - laughtondale%' or lower(person_address) like '%freshwater - brookvale%' or lower(person_address) like '%frenchs forest - belrose%' or lower(person_address) like '%forestville - killarney heights%' or lower(person_address) like '%five dock - abbotsford%' or lower(person_address) like '%fairfield - west%' or lower(person_address) like '%fairfield - east%' or lower(person_address) like '%fairfield%' or lower(person_address) like '%erskineville - alexandria%' or lower(person_address) like '%erskine park%' or lower(person_address) like '%ermington - rydalmere%' or lower(person_address) like '%erina - green point%' or lower(person_address) like '%epping - north epping%' or lower(person_address) like '%engadine%' or lower(person_address) like '%emu plains - leonay%' or lower(person_address) like '%elderslie - harrington park%' or lower(person_address) like '%edensor park%' or lower(person_address) like '%eastwood - denistone%' or lower(person_address) like '%dural - kenthurst - wisemans ferry%' or lower(person_address) like '%dulwich hill - lewisham%' or lower(person_address) like '%drummoyne - rodd point%' or lower(person_address) like '%dover heights%' or lower(person_address) like '%douglas park - appin%' or lower(person_address) like '%double bay - bellevue hill%' or lower(person_address) like '%doonside - woodcroft%' or lower(person_address) like '%dee why - north curl curl%' or lower(person_address) like '%darlinghurst%' or lower(person_address) like '%croydon park - enfield%' or lower(person_address) like '%crows nest - waverton%' or lower(person_address) like '%cronulla - kurnell - bundeena%' or lower(person_address) like '%cromer%' or lower(person_address) like '%cremorne - cammeray%' or lower(person_address) like '%coogee - clovelly%' or lower(person_address) like '%condell park%' or lower(person_address) like '%concord west - north strathfield%' or lower(person_address) like '%concord - mortlake - cabarita%' or lower(person_address) like '%colyton - oxley park%' or lower(person_address) like '%cobbitty - leppington%' or lower(person_address) like '%claymore - eagle vale - raby%' or lower(person_address) like '%chullora%' or lower(person_address) like '%chittaway bay - tumbi umbi%' or lower(person_address) like '%chipping norton - moorebank%' or lower(person_address) like '%chester hill - sefton%' or lower(person_address) like '%cherrybrook%' or lower(person_address) like '%chatswood (west) - lane cove north%' or lower(person_address) like '%chatswood (east) - artarmon%' or lower(person_address) like '%centennial park%' or lower(person_address) like '%cecil hills%' or lower(person_address) like '%casula%' or lower(person_address) like '%castlereagh - cranebrook%' or lower(person_address) like '%castle hill - west%' or lower(person_address) like '%castle hill - south%' or lower(person_address) like '%castle hill - north%' or lower(person_address) like '%castle hill - east%' or lower(person_address) like '%castle hill - central%' or lower(person_address) like '%carlingford%' or lower(person_address) like '%caringbah south%' or lower(person_address) like '%caringbah%' or lower(person_address) like '%canterbury (south) - campsie%' or lower(person_address) like '%canterbury (north) - ashbury%' or lower(person_address) like '%canley vale - canley heights%' or lower(person_address) like '%campbelltown - woodbine%' or lower(person_address) like '%camden - ellis lane%' or lower(person_address) like '%cambridge park%' or lower(person_address) like '%calga - kulnura%' or lower(person_address) like '%cabramatta west - mount pritchard%' or lower(person_address) like '%cabramatta - lansvale%' or lower(person_address) like '%burwood - croydon%' or lower(person_address) like '%budgewoi - buff point - halekulani%' or lower(person_address) like '%bradbury - wedderburn%' or lower(person_address) like '%box head - macmasters beach%' or lower(person_address) like '%botany%' or lower(person_address) like '%bossley park - abbotsbury%' or lower(person_address) like '%bonnyrigg heights - bonnyrigg%' or lower(person_address) like '%bondi junction - waverly%' or lower(person_address) like '%bondi beach - north bondi%' or lower(person_address) like '%bondi - tamarama - bronte%' or lower(person_address) like '%blue mountains - south%' or lower(person_address) like '%blue mountains - north%' or lower(person_address) like '%blue haven - san remo%' or lower(person_address) like '%blaxland - warrimoo - lapstone%' or lower(person_address) like '%blacktown (west)%' or lower(person_address) like '%blacktown (south)%' or lower(person_address) like '%blacktown (north) - marayong%' or lower(person_address) like '%blacktown (east) - kings park%' or lower(person_address) like '%blackheath - megalong valley%' or lower(person_address) like '%bilpin - colo - st albans%' or lower(person_address) like '%bidwill - hebersham - emerton%' or lower(person_address) like '%bexley%' or lower(person_address) like '%berowra - brooklyn - cowan%' or lower(person_address) like '%berala%' or lower(person_address) like '%belmore - belfield%' or lower(person_address) like '%beacon hill - narraweena%' or lower(person_address) like '%bayview - elanora heights%' or lower(person_address) like '%baulkham hills (west) - bella vista%' or lower(person_address) like '%baulkham hills (east)%' or lower(person_address) like '%bateau bay - killarney vale%' or lower(person_address) like '%bass hill - georges hall%' or lower(person_address) like '%bargo%' or lower(person_address) like '%bankstown - south%' or lower(person_address) like '%bankstown - north%' or lower(person_address) like '%banksmeadow%' or lower(person_address) like '%balmain%' or lower(person_address) like '%balgowlah - clontarf - seaforth%' or lower(person_address) like '%badgerys creek%' or lower(person_address) like '%avoca beach - copacabana%' or lower(person_address) like '%avalon - palm beach%' or lower(person_address) like '%austral - greendale%' or lower(person_address) like '%auburn - south%' or lower(person_address) like '%auburn - north%' or lower(person_address) like '%auburn - central%' or lower(person_address) like '%asquith - mount colah%' or lower(person_address) like '%ashfield%' or lower(person_address) like '%ashcroft - busby - miller%' or lower(person_address) like '%arncliffe - bardwell valley%' or lower(person_address) like '%acacia gardens%' 
--LOWER(person_address) LIKE '%ultimo%' OR LOWER(person_address) LIKE '%chippendale%' OR LOWER(person_address) LIKE '%pyrmont%' OR LOWER(person_address) LIKE '%surry hills%' OR LOWER(person_address) LIKE '%kings cross%' OR LOWER(person_address) LIKE '%alexandria%' OR LOWER(person_address) LIKE '%redfern%' OR LOWER(person_address) LIKE '%waterloo%' OR LOWER(person_address) LIKE '%rosebery%' OR LOWER(person_address) LIKE '%botany%' OR LOWER(person_address) LIKE '%mascot%' OR LOWER(person_address) LIKE '%paddington%' OR LOWER(person_address) LIKE '%bondi junction%' OR LOWER(person_address) LIKE '%bellevue hill%' OR LOWER(person_address) LIKE '%waverley%' OR LOWER(person_address) LIKE '%woollahra%' OR LOWER(person_address) LIKE '%bondi%' OR LOWER(person_address) LIKE '%edgecliff%' OR LOWER(person_address) LIKE '%double bay%' OR LOWER(person_address) LIKE '%rose bay%' OR LOWER(person_address) LIKE '%vaucluse%' OR LOWER(person_address) LIKE '%randwick%' OR LOWER(person_address) LIKE '%kingsford%' OR LOWER(person_address) LIKE '%kensington%' OR LOWER(person_address) LIKE '%coogee%' OR LOWER(person_address) LIKE '%pagewood%' OR LOWER(person_address) LIKE '%matraville%' OR LOWER(person_address) LIKE '%glebe%' OR LOWER(person_address) LIKE '%annandale%' OR LOWER(person_address) LIKE '%rozelle%' OR LOWER(person_address) LIKE '%leichhardt%' OR LOWER(person_address) LIKE '%balmain%' OR LOWER(person_address) LIKE '%newtown%' OR LOWER(person_address) LIKE '%erskineville%' OR LOWER(person_address) LIKE '%st peters%' OR LOWER(person_address) LIKE '%haberfield%' OR LOWER(person_address) LIKE '%five dock%' OR LOWER(person_address) LIKE '%drummoyne%' OR LOWER(person_address) LIKE '%stanmore%' OR LOWER(person_address) LIKE '%petersham%' OR LOWER(person_address) LIKE '%camperdown%' OR LOWER(person_address) LIKE '%northern beaches%' OR LOWER(person_address) LIKE '%seaforth%' OR LOWER(person_address) LIKE '%balgowlah%' OR LOWER(person_address) LIKE '%manly%' OR LOWER(person_address) LIKE '%harbord%' OR LOWER(person_address) LIKE '%collaroy%' OR LOWER(person_address) LIKE '%dee why%' OR LOWER(person_address) LIKE '%brookvale%' OR LOWER(person_address) LIKE '%narrabeen%' OR LOWER(person_address) LIKE '%warriewood%' OR LOWER(person_address) LIKE '%mona vale%' OR LOWER(person_address) LIKE '%bayview%' OR LOWER(person_address) LIKE '%newport%' OR LOWER(person_address) LIKE '%avalon%' OR LOWER(person_address) LIKE '%macarthur region%' OR LOWER(person_address) LIKE '%campbelltown%' OR LOWER(person_address) LIKE '%ingleburn%' OR LOWER(person_address) LIKE '%minto%' OR LOWER(person_address) LIKE '%narellan%' OR LOWER(person_address) LIKE '%camden%' OR LOWER(person_address) LIKE '%north shore%' OR LOWER(person_address) LIKE '%north sydney%' OR LOWER(person_address) LIKE '%milsons point%' OR LOWER(person_address) LIKE '%cammeray%' OR LOWER(person_address) LIKE '%northbridge%' OR LOWER(person_address) LIKE '%artarmon%' OR LOWER(person_address) LIKE '%crows nest%' OR LOWER(person_address) LIKE '%lane cove%' OR LOWER(person_address) LIKE '%chatswood%' OR LOWER(person_address) LIKE '%willoughby%' OR LOWER(person_address) LIKE '%roseville%' OR LOWER(person_address) LIKE '%lindfield%' OR LOWER(person_address) LIKE '%killara%' OR LOWER(person_address) LIKE '%gordon%' OR LOWER(person_address) LIKE '%pymble%' OR LOWER(person_address) LIKE '%turramurra%' OR LOWER(person_address) LIKE '%st ives%' OR LOWER(person_address) LIKE '%wahroona%' OR LOWER(person_address) LIKE '%hornsby%' OR LOWER(person_address) LIKE '%mount colah%' OR LOWER(person_address) LIKE '%mount kuring-gai%' OR LOWER(person_address) LIKE '%berowra waters%' OR LOWER(person_address) LIKE '%terrey hills%' OR LOWER(person_address) LIKE '%belrose%' OR LOWER(person_address) LIKE '%frenchs forest%' OR LOWER(person_address) LIKE '%forestville%' OR LOWER(person_address) LIKE '%mosman%' OR LOWER(person_address) LIKE '%neutral bay%' OR LOWER(person_address) LIKE '%cremorne%' OR LOWER(person_address) LIKE '%gladesville-ryde-eastwood%' OR LOWER(person_address) LIKE '%hunters hill%' OR LOWER(person_address) LIKE '%gladesville%' OR LOWER(person_address) LIKE '%ryde%' OR LOWER(person_address) LIKE '%north ryde%' OR LOWER(person_address) LIKE '%meadowbank%' OR LOWER(person_address) LIKE '%ermington%' OR LOWER(person_address) LIKE '%rydalmere%' OR LOWER(person_address) LIKE '%telopea%' OR LOWER(person_address) LIKE '%carlingford%' OR LOWER(person_address) LIKE '%beecroft%' OR LOWER(person_address) LIKE '%pennant hills%' OR LOWER(person_address) LIKE '%epping%' OR LOWER(person_address) LIKE '%eastwood%' OR LOWER(person_address) LIKE '%w. pennant hills%' OR LOWER(person_address) LIKE '%cherrybrook%' OR LOWER(person_address) LIKE '%western suburbs%' OR LOWER(person_address) LIKE '%homebush bay%' OR LOWER(person_address) LIKE '%silverwater%' OR LOWER(person_address) LIKE '%sydney markets%' OR LOWER(person_address) LIKE '%summer hill%' OR LOWER(person_address) LIKE '%ashfield%' OR LOWER(person_address) LIKE '%croydon%' OR LOWER(person_address) LIKE '%croydon park%' OR LOWER(person_address) LIKE '%burwood%' OR LOWER(person_address) LIKE '%strathfield%' OR LOWER(person_address) LIKE '%enfield%' OR LOWER(person_address) LIKE '%concord%' OR LOWER(person_address) LIKE '%rhodes%' OR LOWER(person_address) LIKE '%homebush%' OR LOWER(person_address) LIKE '%lidcombe%' OR LOWER(person_address) LIKE '%granville%' OR LOWER(person_address) LIKE '%regents park%' OR LOWER(person_address) LIKE '%auburn%' OR LOWER(person_address) LIKE '%wentworthville%' OR LOWER(person_address) LIKE '%toongabbie%' OR LOWER(person_address) LIKE '%seven hills%' OR LOWER(person_address) LIKE '%blacktown%' OR LOWER(person_address) LIKE '%parramatta-hills district%' OR LOWER(person_address) LIKE '%parramatta%' OR LOWER(person_address) LIKE '%north rocks%' OR LOWER(person_address) LIKE '%northmead%' OR LOWER(person_address) LIKE '%baulkham hills%' OR LOWER(person_address) LIKE '%castle hill%' OR LOWER(person_address) LIKE '%kellyville%' OR LOWER(person_address) LIKE '%kenthurst%' OR LOWER(person_address) LIKE '%glenorie%' OR LOWER(person_address) LIKE '%dural%' OR LOWER(person_address) LIKE '%galston%' OR LOWER(person_address) LIKE '%outer western suburbs%' OR LOWER(person_address) LIKE '%mulgoa%' OR LOWER(person_address) LIKE '%kingswood%' OR LOWER(person_address) LIKE '%castlereagh%' OR LOWER(person_address) LIKE '%penrith%' OR LOWER(person_address) LIKE '%silverdale%' OR LOWER(person_address) LIKE '%richmond%' OR LOWER(person_address) LIKE '%north richmond%' OR LOWER(person_address) LIKE '%windsor%' OR LOWER(person_address) LIKE '%kurrajong%' OR LOWER(person_address) LIKE '%erskine park%' OR LOWER(person_address) LIKE '%st marys%' OR LOWER(person_address) LIKE '%glendenning%' OR LOWER(person_address) LIKE '%quakers hill%' OR LOWER(person_address) LIKE '%new south wales%') AND  (LOWER(person_address) NOT LIKE '%melbourne%' AND LOWER(person_address) NOT LIKE '%perth%'
-- 	person_address like '%NSW%' or 
-- 	lower(person_address) like '%new south wales%'
-- 	or lower(person_address) like '%sydney%'
lower(person_address) like '%sydney%' 
or lower(person_name) like '%sydney%'
--or lower(person_address) like '%richmond%'
--or lower(person_address) like '%penrith%'
--or lower(person_address) like '%hornsny%'
--or lower(person_address) like '%compbelltown%'
--or lower(person_address) like '%fairfield%'
--or lower(person_address) like '%banktown%'
--or lower(person_address) like '%picton%'
--or lower(person_address) like '%gosford%'
--or lower(person_address) like '%parramatta%'
--or lower(person_address) like '%manly%'
--or lower(person_address) like '%chatswood%'
--) and (person_address like '%NSW%' or lower(person_address) like '%new south wales%'
)
--and (
--lower(person_address) not like 'newcastle'
-- or lower(person_address) not like 'central coast'
-- or lower(person_address) not like 'wollongong'
-- or lower(person_address) not like 'maitland'
-- or lower(person_address) not like 'tweed heads'
-- or lower(person_address) not like 'wagga wagga'
-- or lower(person_address) not like 'albury'
-- or lower(person_address) not like 'coffs harbour'
-- or lower(person_address) not like 'port macquarie'
-- or lower(person_address) not like 'tamworth'
-- or lower(person_address) not like 'canberra'
--)
--and (person_ctry_code = 'AU' or person_ctry_code = '')
group by --person_name,person_address--,
appln_filing_year
order by count desc

---
---seul
---

select --appln_filing_year--,
--distinct person_name
--,person_address
--,techn_field
--,
count(distinct year14_17_address_name.appln_id)
from year14_17_address_name
join tls230_appln_techn_field t230 on year14_17_address_name.appln_id=t230.appln_id
join tls901_techn_field_ipc t901 on t230.techn_field_nr=t901.techn_field_nr
where 
(
--lower(person_address) like '%sydney%' or lower(person_address) like '%yennora industrial%' or lower(person_address) like '%yarramundi - londonderry%' or lower(person_address) like '%yagoona - birrong%' or lower(person_address) like '%wyong%' or lower(person_address) like '%wyoming%' or lower(person_address) like '%woy woy - blackwall%' or lower(person_address) like '%woronora heights%' or lower(person_address) like '%woollahra%' or lower(person_address) like '%woolaware - burraneer%' or lower(person_address) like '%winston hills%' or lower(person_address) like '%windsor - bligh park%' or lower(person_address) like '%willoughby - castle cove - northbridge%' or lower(person_address) like '%wiley park%' or lower(person_address) like '%wetherill park industrial%' or lower(person_address) like '%west ryde - meadowbank%' or lower(person_address) like '%west pennant hills%' or lower(person_address) like '%west hoxton - middleton grange%' or lower(person_address) like '%wentworthville - westmead%' or lower(person_address) like '%wentworth falls%' or lower(person_address) like '%waterloo - beaconsfield%' or lower(person_address) like '%warwick farm%' or lower(person_address) like '%warriewood - mona vale%' or lower(person_address) like '%warragamba - silverdale%' or lower(person_address) like '%warnervale - wadalba%' or lower(person_address) like '%wamberal - forresters beach%' or lower(person_address) like '%waitara - wahroonga (west)%' or lower(person_address) like '%wahroonga (east) - warrawee%' or lower(person_address) like '%umina - booker bay - patonga%' or lower(person_address) like '%turramurra%' or lower(person_address) like '%tuggerah - kangy angy%' or lower(person_address) like '%toukley - norah head%' or lower(person_address) like '%toongabbie - constitution hill%' or lower(person_address) like '%the oaks - oakdale%' or lower(person_address) like '%the entrance%' or lower(person_address) like '%terrigal - north avoca%' or lower(person_address) like '%terrey hills - duffys forest%' or lower(person_address) like '%sylvania - taren point%' or lower(person_address) like '%sydney airport%' or lower(person_address) like '%sydney - haymarket - the rocks%' or lower(person_address) like '%sydenham - tempe - st peters%' or lower(person_address) like '%sutherland - kirrawee%' or lower(person_address) like '%surry hills%' or lower(person_address) like '%summerland point - gwandalan%' or lower(person_address) like '%strathfield south%' or lower(person_address) like '%strathfield%' or lower(person_address) like '%st marys - north st marys%' or lower(person_address) like '%st leonards - naremburn%' or lower(person_address) like '%st johns park - wakeley%' or lower(person_address) like '%st ives%' or lower(person_address) like '%st clair%' or lower(person_address) like '%springwood - winmalee%' or lower(person_address) like '%south hurstville - blakehurst%' or lower(person_address) like '%smithfield industrial%' or lower(person_address) like '%smithfield - wetherill park%' or lower(person_address) like '%seven hills - toongabbie%' or lower(person_address) like '%saratoga - davistown%' or lower(person_address) like '%sans souci - ramsgate%' or lower(person_address) like '%ryde%' or lower(person_address) like '%royal national park%' or lower(person_address) like '%rouse hill - beaumont hills%' or lower(person_address) like '%rosemeadow - glen alpine%' or lower(person_address) like '%roselands%' or lower(person_address) like '%rose bay - vaucluse - watsons bay%' or lower(person_address) like '%rooty hill - minchinbury%' or lower(person_address) like '%rookwood cemetery%' or lower(person_address) like '%rockdale - banksia%' or lower(person_address) like '%riverwood%' or lower(person_address) like '%riverstone - marsden park%' or lower(person_address) like '%richmond - clarendon%' or lower(person_address) like '%revesby%' or lower(person_address) like '%regents park%' or lower(person_address) like '%redfern - chippendale%' or lower(person_address) like '%randwick - south%' or lower(person_address) like '%randwick - north%' or lower(person_address) like '%quakers hill%' or lower(person_address) like '%pyrmont - ultimo%' or lower(person_address) like '%pymble%' or lower(person_address) like '%putney%' or lower(person_address) like '%punchbowl%' or lower(person_address) like '%prospect reservoir%' or lower(person_address) like '%prestons - edmondson park%' or lower(person_address) like '%potts point - woolloomooloo%' or lower(person_address) like '%port botany industrial%' or lower(person_address) like '%point clare - koolewong%' or lower(person_address) like '%pitt town - mcgraths hill%' or lower(person_address) like '%picton - tahmoor - buxton%' or lower(person_address) like '%petersham - stanmore%' or lower(person_address) like '%penrith%' or lower(person_address) like '%pennant hills - cheltenham%' or lower(person_address) like '%pendle hill - girraween%' or lower(person_address) like '%peakhurst - lugarno%' or lower(person_address) like '%parramatta - rosehill%' or lower(person_address) like '%parklea - kellyville ridge%' or lower(person_address) like '%panania - milperra - picnic point%' or lower(person_address) like '%pagewood - hillsdale - daceyville%' or lower(person_address) like '%padstow%' or lower(person_address) like '%paddington - moore park%' or lower(person_address) like '%oyster bay - como - jannali%' or lower(person_address) like '%ourimbah - fountaindale%' or lower(person_address) like '%oatley - hurstville grove%' or lower(person_address) like '%oatlands - dundas valley%' or lower(person_address) like '%northmead%' or lower(person_address) like '%north sydney - lavender bay%' or lower(person_address) like '%north ryde - east ryde%' or lower(person_address) like '%north rocks%' or lower(person_address) like '%north parramatta%' or lower(person_address) like '%normanhurst - thornleigh - westleigh%' or lower(person_address) like '%niagara park - lisarow%' or lower(person_address) like '%newtown - camperdown - darlington%' or lower(person_address) like '%newport - bilgola%' or lower(person_address) like '%neutral bay - kirribilli%' or lower(person_address) like '%narwee - beverly hills%' or lower(person_address) like '%narrabeen - collaroy%' or lower(person_address) like '%narara%' or lower(person_address) like '%mulgoa - luddenham - orchard hills%' or lower(person_address) like '%mount druitt - whalan%' or lower(person_address) like '%mount annan - currans hill%' or lower(person_address) like '%mosman%' or lower(person_address) like '%mortdale - penshurst%' or lower(person_address) like '%monterey - brighton-le-sands - kyeemagh%' or lower(person_address) like '%miranda - yowie bay%' or lower(person_address) like '%minto - st andrews%' or lower(person_address) like '%merrylands - holroyd%' or lower(person_address) like '%menai - lucas heights - woronora%' or lower(person_address) like '%mascot - eastlakes%' or lower(person_address) like '%marrickville%' or lower(person_address) like '%maroubra - west%' or lower(person_address) like '%maroubra - south%' or lower(person_address) like '%maroubra - north%' or lower(person_address) like '%manly vale - allambie heights%' or lower(person_address) like '%manly - fairlight%' or lower(person_address) like '%malabar - la perouse - chifley%' or lower(person_address) like '%macquarie park - marsfield%' or lower(person_address) like '%macquarie fields - glenfield%' or lower(person_address) like '%lurnea - cartwright%' or lower(person_address) like '%loftus - yarrawarrah%' or lower(person_address) like '%liverpool%' or lower(person_address) like '%lindfield - roseville%' or lower(person_address) like '%lilyfield - rozelle%' or lower(person_address) like '%lilli pilli - port hacking - dolans bay%' or lower(person_address) like '%lidcombe%' or lower(person_address) like '%leumeah - minto heights%' or lower(person_address) like '%lethbridge park - tregear%' or lower(person_address) like '%leichhardt - annandale%' or lower(person_address) like '%lawson - hazelbrook - linden%' or lower(person_address) like '%lane cove - greenwich%' or lower(person_address) like '%lalor park - kings langley%' or lower(person_address) like '%lakemba%' or lower(person_address) like '%lake munmorah - mannering park%' or lower(person_address) like '%kurrajong heights - ebenezer%' or lower(person_address) like '%kogarah bay - carlton - allawah%' or lower(person_address) like '%kogarah%' or lower(person_address) like '%kingswood - werrington%' or lower(person_address) like '%kingsgrove (south) - bardwell park%' or lower(person_address) like '%kingsgrove (north) - earlwood%' or lower(person_address) like '%kingsford%' or lower(person_address) like '%kincumber - picketts valley%' or lower(person_address) like '%kensington (nsw)%' or lower(person_address) like '%kellyville%' or lower(person_address) like '%katoomba - leura%' or lower(person_address) like '%kariong%' or lower(person_address) like '%jilliby - yarramalong%' or lower(person_address) like '%jamisontown - south penrith%' or lower(person_address) like '%ingleburn - denham court%' or lower(person_address) like '%illawong - alfords point%' or lower(person_address) like '%hurstville%' or lower(person_address) like '%hunters hill - woolwich%' or lower(person_address) like '%hoxton park - carnes hill - horningsea park%' or lower(person_address) like '%horsley park - kemps creek%' or lower(person_address) like '%hornsby - west%' or lower(person_address) like '%hornsby - east%' or lower(person_address) like '%homebush bay - silverwater%' or lower(person_address) like '%homebush%' or lower(person_address) like '%holsworthy military area%' or lower(person_address) like '%holsworthy - wattle grove%' or lower(person_address) like '%hinchinbrook%' or lower(person_address) like '%heathcote - waterfall%' or lower(person_address) like '%hassall grove - plumpton%' or lower(person_address) like '%haberfield - summer hill%' or lower(person_address) like '%gymea - grays point%' or lower(person_address) like '%guildford west - merrylands west%' or lower(person_address) like '%guildford - south granville%' or lower(person_address) like '%greystanes - pemulwuy%' or lower(person_address) like '%greenfield park - prairiewood%' or lower(person_address) like '%greenacre - mount lewis%' or lower(person_address) like '%green valley%' or lower(person_address) like '%granville - clyde%' or lower(person_address) like '%gosford - springfield%' or lower(person_address) like '%gorokan - kanwal - charmhaven%' or lower(person_address) like '%gordon - killara%' or lower(person_address) like '%glenwood%' or lower(person_address) like '%glenmore park - regentville%' or lower(person_address) like '%glenhaven%' or lower(person_address) like '%glendenning - dean park%' or lower(person_address) like '%glebe - forest lodge%' or lower(person_address) like '%gladesville - huntleys point%' or lower(person_address) like '%galston - laughtondale%' or lower(person_address) like '%freshwater - brookvale%' or lower(person_address) like '%frenchs forest - belrose%' or lower(person_address) like '%forestville - killarney heights%' or lower(person_address) like '%five dock - abbotsford%' or lower(person_address) like '%fairfield - west%' or lower(person_address) like '%fairfield - east%' or lower(person_address) like '%fairfield%' or lower(person_address) like '%erskineville - alexandria%' or lower(person_address) like '%erskine park%' or lower(person_address) like '%ermington - rydalmere%' or lower(person_address) like '%erina - green point%' or lower(person_address) like '%epping - north epping%' or lower(person_address) like '%engadine%' or lower(person_address) like '%emu plains - leonay%' or lower(person_address) like '%elderslie - harrington park%' or lower(person_address) like '%edensor park%' or lower(person_address) like '%eastwood - denistone%' or lower(person_address) like '%dural - kenthurst - wisemans ferry%' or lower(person_address) like '%dulwich hill - lewisham%' or lower(person_address) like '%drummoyne - rodd point%' or lower(person_address) like '%dover heights%' or lower(person_address) like '%douglas park - appin%' or lower(person_address) like '%double bay - bellevue hill%' or lower(person_address) like '%doonside - woodcroft%' or lower(person_address) like '%dee why - north curl curl%' or lower(person_address) like '%darlinghurst%' or lower(person_address) like '%croydon park - enfield%' or lower(person_address) like '%crows nest - waverton%' or lower(person_address) like '%cronulla - kurnell - bundeena%' or lower(person_address) like '%cromer%' or lower(person_address) like '%cremorne - cammeray%' or lower(person_address) like '%coogee - clovelly%' or lower(person_address) like '%condell park%' or lower(person_address) like '%concord west - north strathfield%' or lower(person_address) like '%concord - mortlake - cabarita%' or lower(person_address) like '%colyton - oxley park%' or lower(person_address) like '%cobbitty - leppington%' or lower(person_address) like '%claymore - eagle vale - raby%' or lower(person_address) like '%chullora%' or lower(person_address) like '%chittaway bay - tumbi umbi%' or lower(person_address) like '%chipping norton - moorebank%' or lower(person_address) like '%chester hill - sefton%' or lower(person_address) like '%cherrybrook%' or lower(person_address) like '%chatswood (west) - lane cove north%' or lower(person_address) like '%chatswood (east) - artarmon%' or lower(person_address) like '%centennial park%' or lower(person_address) like '%cecil hills%' or lower(person_address) like '%casula%' or lower(person_address) like '%castlereagh - cranebrook%' or lower(person_address) like '%castle hill - west%' or lower(person_address) like '%castle hill - south%' or lower(person_address) like '%castle hill - north%' or lower(person_address) like '%castle hill - east%' or lower(person_address) like '%castle hill - central%' or lower(person_address) like '%carlingford%' or lower(person_address) like '%caringbah south%' or lower(person_address) like '%caringbah%' or lower(person_address) like '%canterbury (south) - campsie%' or lower(person_address) like '%canterbury (north) - ashbury%' or lower(person_address) like '%canley vale - canley heights%' or lower(person_address) like '%campbelltown - woodbine%' or lower(person_address) like '%camden - ellis lane%' or lower(person_address) like '%cambridge park%' or lower(person_address) like '%calga - kulnura%' or lower(person_address) like '%cabramatta west - mount pritchard%' or lower(person_address) like '%cabramatta - lansvale%' or lower(person_address) like '%burwood - croydon%' or lower(person_address) like '%budgewoi - buff point - halekulani%' or lower(person_address) like '%bradbury - wedderburn%' or lower(person_address) like '%box head - macmasters beach%' or lower(person_address) like '%botany%' or lower(person_address) like '%bossley park - abbotsbury%' or lower(person_address) like '%bonnyrigg heights - bonnyrigg%' or lower(person_address) like '%bondi junction - waverly%' or lower(person_address) like '%bondi beach - north bondi%' or lower(person_address) like '%bondi - tamarama - bronte%' or lower(person_address) like '%blue mountains - south%' or lower(person_address) like '%blue mountains - north%' or lower(person_address) like '%blue haven - san remo%' or lower(person_address) like '%blaxland - warrimoo - lapstone%' or lower(person_address) like '%blacktown (west)%' or lower(person_address) like '%blacktown (south)%' or lower(person_address) like '%blacktown (north) - marayong%' or lower(person_address) like '%blacktown (east) - kings park%' or lower(person_address) like '%blackheath - megalong valley%' or lower(person_address) like '%bilpin - colo - st albans%' or lower(person_address) like '%bidwill - hebersham - emerton%' or lower(person_address) like '%bexley%' or lower(person_address) like '%berowra - brooklyn - cowan%' or lower(person_address) like '%berala%' or lower(person_address) like '%belmore - belfield%' or lower(person_address) like '%beacon hill - narraweena%' or lower(person_address) like '%bayview - elanora heights%' or lower(person_address) like '%baulkham hills (west) - bella vista%' or lower(person_address) like '%baulkham hills (east)%' or lower(person_address) like '%bateau bay - killarney vale%' or lower(person_address) like '%bass hill - georges hall%' or lower(person_address) like '%bargo%' or lower(person_address) like '%bankstown - south%' or lower(person_address) like '%bankstown - north%' or lower(person_address) like '%banksmeadow%' or lower(person_address) like '%balmain%' or lower(person_address) like '%balgowlah - clontarf - seaforth%' or lower(person_address) like '%badgerys creek%' or lower(person_address) like '%avoca beach - copacabana%' or lower(person_address) like '%avalon - palm beach%' or lower(person_address) like '%austral - greendale%' or lower(person_address) like '%auburn - south%' or lower(person_address) like '%auburn - north%' or lower(person_address) like '%auburn - central%' or lower(person_address) like '%asquith - mount colah%' or lower(person_address) like '%ashfield%' or lower(person_address) like '%ashcroft - busby - miller%' or lower(person_address) like '%arncliffe - bardwell valley%' or lower(person_address) like '%acacia gardens%' 
--LOWER(person_address) LIKE '%ultimo%' OR LOWER(person_address) LIKE '%chippendale%' OR LOWER(person_address) LIKE '%pyrmont%' OR LOWER(person_address) LIKE '%surry hills%' OR LOWER(person_address) LIKE '%kings cross%' OR LOWER(person_address) LIKE '%alexandria%' OR LOWER(person_address) LIKE '%redfern%' OR LOWER(person_address) LIKE '%waterloo%' OR LOWER(person_address) LIKE '%rosebery%' OR LOWER(person_address) LIKE '%botany%' OR LOWER(person_address) LIKE '%mascot%' OR LOWER(person_address) LIKE '%paddington%' OR LOWER(person_address) LIKE '%bondi junction%' OR LOWER(person_address) LIKE '%bellevue hill%' OR LOWER(person_address) LIKE '%waverley%' OR LOWER(person_address) LIKE '%woollahra%' OR LOWER(person_address) LIKE '%bondi%' OR LOWER(person_address) LIKE '%edgecliff%' OR LOWER(person_address) LIKE '%double bay%' OR LOWER(person_address) LIKE '%rose bay%' OR LOWER(person_address) LIKE '%vaucluse%' OR LOWER(person_address) LIKE '%randwick%' OR LOWER(person_address) LIKE '%kingsford%' OR LOWER(person_address) LIKE '%kensington%' OR LOWER(person_address) LIKE '%coogee%' OR LOWER(person_address) LIKE '%pagewood%' OR LOWER(person_address) LIKE '%matraville%' OR LOWER(person_address) LIKE '%glebe%' OR LOWER(person_address) LIKE '%annandale%' OR LOWER(person_address) LIKE '%rozelle%' OR LOWER(person_address) LIKE '%leichhardt%' OR LOWER(person_address) LIKE '%balmain%' OR LOWER(person_address) LIKE '%newtown%' OR LOWER(person_address) LIKE '%erskineville%' OR LOWER(person_address) LIKE '%st peters%' OR LOWER(person_address) LIKE '%haberfield%' OR LOWER(person_address) LIKE '%five dock%' OR LOWER(person_address) LIKE '%drummoyne%' OR LOWER(person_address) LIKE '%stanmore%' OR LOWER(person_address) LIKE '%petersham%' OR LOWER(person_address) LIKE '%camperdown%' OR LOWER(person_address) LIKE '%northern beaches%' OR LOWER(person_address) LIKE '%seaforth%' OR LOWER(person_address) LIKE '%balgowlah%' OR LOWER(person_address) LIKE '%manly%' OR LOWER(person_address) LIKE '%harbord%' OR LOWER(person_address) LIKE '%collaroy%' OR LOWER(person_address) LIKE '%dee why%' OR LOWER(person_address) LIKE '%brookvale%' OR LOWER(person_address) LIKE '%narrabeen%' OR LOWER(person_address) LIKE '%warriewood%' OR LOWER(person_address) LIKE '%mona vale%' OR LOWER(person_address) LIKE '%bayview%' OR LOWER(person_address) LIKE '%newport%' OR LOWER(person_address) LIKE '%avalon%' OR LOWER(person_address) LIKE '%macarthur region%' OR LOWER(person_address) LIKE '%campbelltown%' OR LOWER(person_address) LIKE '%ingleburn%' OR LOWER(person_address) LIKE '%minto%' OR LOWER(person_address) LIKE '%narellan%' OR LOWER(person_address) LIKE '%camden%' OR LOWER(person_address) LIKE '%north shore%' OR LOWER(person_address) LIKE '%north sydney%' OR LOWER(person_address) LIKE '%milsons point%' OR LOWER(person_address) LIKE '%cammeray%' OR LOWER(person_address) LIKE '%northbridge%' OR LOWER(person_address) LIKE '%artarmon%' OR LOWER(person_address) LIKE '%crows nest%' OR LOWER(person_address) LIKE '%lane cove%' OR LOWER(person_address) LIKE '%chatswood%' OR LOWER(person_address) LIKE '%willoughby%' OR LOWER(person_address) LIKE '%roseville%' OR LOWER(person_address) LIKE '%lindfield%' OR LOWER(person_address) LIKE '%killara%' OR LOWER(person_address) LIKE '%gordon%' OR LOWER(person_address) LIKE '%pymble%' OR LOWER(person_address) LIKE '%turramurra%' OR LOWER(person_address) LIKE '%st ives%' OR LOWER(person_address) LIKE '%wahroona%' OR LOWER(person_address) LIKE '%hornsby%' OR LOWER(person_address) LIKE '%mount colah%' OR LOWER(person_address) LIKE '%mount kuring-gai%' OR LOWER(person_address) LIKE '%berowra waters%' OR LOWER(person_address) LIKE '%terrey hills%' OR LOWER(person_address) LIKE '%belrose%' OR LOWER(person_address) LIKE '%frenchs forest%' OR LOWER(person_address) LIKE '%forestville%' OR LOWER(person_address) LIKE '%mosman%' OR LOWER(person_address) LIKE '%neutral bay%' OR LOWER(person_address) LIKE '%cremorne%' OR LOWER(person_address) LIKE '%gladesville-ryde-eastwood%' OR LOWER(person_address) LIKE '%hunters hill%' OR LOWER(person_address) LIKE '%gladesville%' OR LOWER(person_address) LIKE '%ryde%' OR LOWER(person_address) LIKE '%north ryde%' OR LOWER(person_address) LIKE '%meadowbank%' OR LOWER(person_address) LIKE '%ermington%' OR LOWER(person_address) LIKE '%rydalmere%' OR LOWER(person_address) LIKE '%telopea%' OR LOWER(person_address) LIKE '%carlingford%' OR LOWER(person_address) LIKE '%beecroft%' OR LOWER(person_address) LIKE '%pennant hills%' OR LOWER(person_address) LIKE '%epping%' OR LOWER(person_address) LIKE '%eastwood%' OR LOWER(person_address) LIKE '%w. pennant hills%' OR LOWER(person_address) LIKE '%cherrybrook%' OR LOWER(person_address) LIKE '%western suburbs%' OR LOWER(person_address) LIKE '%homebush bay%' OR LOWER(person_address) LIKE '%silverwater%' OR LOWER(person_address) LIKE '%sydney markets%' OR LOWER(person_address) LIKE '%summer hill%' OR LOWER(person_address) LIKE '%ashfield%' OR LOWER(person_address) LIKE '%croydon%' OR LOWER(person_address) LIKE '%croydon park%' OR LOWER(person_address) LIKE '%burwood%' OR LOWER(person_address) LIKE '%strathfield%' OR LOWER(person_address) LIKE '%enfield%' OR LOWER(person_address) LIKE '%concord%' OR LOWER(person_address) LIKE '%rhodes%' OR LOWER(person_address) LIKE '%homebush%' OR LOWER(person_address) LIKE '%lidcombe%' OR LOWER(person_address) LIKE '%granville%' OR LOWER(person_address) LIKE '%regents park%' OR LOWER(person_address) LIKE '%auburn%' OR LOWER(person_address) LIKE '%wentworthville%' OR LOWER(person_address) LIKE '%toongabbie%' OR LOWER(person_address) LIKE '%seven hills%' OR LOWER(person_address) LIKE '%blacktown%' OR LOWER(person_address) LIKE '%parramatta-hills district%' OR LOWER(person_address) LIKE '%parramatta%' OR LOWER(person_address) LIKE '%north rocks%' OR LOWER(person_address) LIKE '%northmead%' OR LOWER(person_address) LIKE '%baulkham hills%' OR LOWER(person_address) LIKE '%castle hill%' OR LOWER(person_address) LIKE '%kellyville%' OR LOWER(person_address) LIKE '%kenthurst%' OR LOWER(person_address) LIKE '%glenorie%' OR LOWER(person_address) LIKE '%dural%' OR LOWER(person_address) LIKE '%galston%' OR LOWER(person_address) LIKE '%outer western suburbs%' OR LOWER(person_address) LIKE '%mulgoa%' OR LOWER(person_address) LIKE '%kingswood%' OR LOWER(person_address) LIKE '%castlereagh%' OR LOWER(person_address) LIKE '%penrith%' OR LOWER(person_address) LIKE '%silverdale%' OR LOWER(person_address) LIKE '%richmond%' OR LOWER(person_address) LIKE '%north richmond%' OR LOWER(person_address) LIKE '%windsor%' OR LOWER(person_address) LIKE '%kurrajong%' OR LOWER(person_address) LIKE '%erskine park%' OR LOWER(person_address) LIKE '%st marys%' OR LOWER(person_address) LIKE '%glendenning%' OR LOWER(person_address) LIKE '%quakers hill%' OR LOWER(person_address) LIKE '%new south wales%') AND  (LOWER(person_address) NOT LIKE '%melbourne%' AND LOWER(person_address) NOT LIKE '%perth%'
lower(person_address) like '%seoul%' or lower(person_address) like '%yongin-si%' or lower(person_address) like '%suwon-si%' or lower(person_address) like '%seongnam-si%' or lower(person_address) like '%goyang-si%' or lower(person_address) like '%anyang-si%' or lower(person_address) like '%ansan-si%' or lower(person_address) like '%yongsan-gu%' or lower(person_address) like '%yeonsu-gu%' or lower(person_address) like '%yeongdeungpo-gu%' or lower(person_address) like '%yangpyeong-gun%' or lower(person_address) like '%yangju-si%' or lower(person_address) like '%yangcheon-gu%' or lower(person_address) like '%uiwang-si%' or lower(person_address) like '%uijeongbu-si%' or lower(person_address) like '%songpa-gu%' or lower(person_address) like '%siheung-si%' or lower(person_address) like '%seongdong-gu%' or lower(person_address) like '%seongbuk-gu%' or lower(person_address) like '%seo-gu%' or lower(person_address) like '%seodaemun-gu%' or lower(person_address) like '%seocho-gu%' or lower(person_address) like '%paju-si%' or lower(person_address) like '%osan-si%' or lower(person_address) like '%nowon-gu%' or lower(person_address) like '%namyangju-si%' or lower(person_address) like '%nam-gu%' or lower(person_address) like '%namdong-gu%' or lower(person_address) like '%mapo-gu%' or lower(person_address) like '%jungnang-gu%' or lower(person_address) like '%jung-gu%' or lower(person_address) like '%jongno-gu%' or lower(person_address) like '%hwaseong-si%' or lower(person_address) like '%hanam-si%' or lower(person_address) like '%gyeyang-gu%' or lower(person_address) like '%gwangmyeong-si%' or lower(person_address) like '%gwangju-si%' or lower(person_address) like '%gwangjin-gu%' or lower(person_address) like '%gwanak-gu%' or lower(person_address) like '%gwacheon-si%' or lower(person_address) like '%guro-gu%' or lower(person_address) like '%guri-si%' or lower(person_address) like '%gunpo-si%' or lower(person_address) like '%gimpo-si%' or lower(person_address) like '%geumcheon-gu%' or lower(person_address) like '%gangseo-gu%' or lower(person_address) like '%gangnam-gu%' or lower(person_address) like '%gangdong-gu%' or lower(person_address) like '%gangbuk-gu%' or lower(person_address) like '%eunpyeong-gu%' or lower(person_address) like '%dongjak-gu%' or lower(person_address) like '%dong-gu%' or lower(person_address) like '%dongdaemun-gu%' or lower(person_address) like '%dobong-gu%' or lower(person_address) like '%bupyeong-gu%' or lower(person_address) like '%bucheon-si%' or lower(person_address) like '%suji-gu%' or lower(person_address) like '%giheung-gu%' or lower(person_address) like '%cheoin-gu%' or lower(person_address) like '%yeongtong-gu%' or lower(person_address) like '%paldal-gu%' or lower(person_address) like '%jangan-gu%' or lower(person_address) like '%gwonseon-gu%' or lower(person_address) like '%sujeong-gu%' or lower(person_address) like '%jungwon-gu%' or lower(person_address) like '%bundang-gu%' or lower(person_address) like '%ilsanseo-gu%' or lower(person_address) like '%ilsandong-gu%' or lower(person_address) like '%deogyang-gu%' or lower(person_address) like '%manan-gu%' or lower(person_address) like '%dongan-gu%' or lower(person_address) like '%sangnok-gu%' or  lower(person_address) like '%danwon-gu%'
)
--and (person_ctry_code = 'AU' or person_ctry_code = '')
group by --person_name,person_address--,
appln_filing_year
order by appln_filing_year desc
---
---
---


---
---koln
---
select appln_filing_year,
--distinct person_name
--,person_address
--,techn_field
--,
count(distinct year14_17_address_name.appln_id)
from year14_17_address_name
join tls230_appln_techn_field t230 on year14_17_address_name.appln_id=t230.appln_id
join tls901_techn_field_ipc t901 on t230.techn_field_nr=t901.techn_field_nr
where 
(
--lower(person_address) like '%seoul%' or lower(person_address) like '%yongin-si%' or lower(person_address) like '%suwon-si%' or lower(person_address) like '%seongnam-si%' or lower(person_address) like '%goyang-si%' or lower(person_address) like '%anyang-si%' or lower(person_address) like '%ansan-si%' or lower(person_address) like '%yongsan-gu%' or lower(person_address) like '%yeonsu-gu%' or lower(person_address) like '%yeongdeungpo-gu%' or lower(person_address) like '%yangpyeong-gun%' or lower(person_address) like '%yangju-si%' or lower(person_address) like '%yangcheon-gu%' or lower(person_address) like '%uiwang-si%' or lower(person_address) like '%uijeongbu-si%' or lower(person_address) like '%songpa-gu%' or lower(person_address) like '%siheung-si%' or lower(person_address) like '%seongdong-gu%' or lower(person_address) like '%seongbuk-gu%' or lower(person_address) like '%seo-gu%' or lower(person_address) like '%seodaemun-gu%' or lower(person_address) like '%seocho-gu%' or lower(person_address) like '%paju-si%' or lower(person_address) like '%osan-si%' or lower(person_address) like '%nowon-gu%' or lower(person_address) like '%namyangju-si%' or lower(person_address) like '%nam-gu%' or lower(person_address) like '%namdong-gu%' or lower(person_address) like '%mapo-gu%' or lower(person_address) like '%jungnang-gu%' or lower(person_address) like '%jung-gu%' or lower(person_address) like '%jongno-gu%' or lower(person_address) like '%hwaseong-si%' or lower(person_address) like '%hanam-si%' or lower(person_address) like '%gyeyang-gu%' or lower(person_address) like '%gwangmyeong-si%' or lower(person_address) like '%gwangju-si%' or lower(person_address) like '%gwangjin-gu%' or lower(person_address) like '%gwanak-gu%' or lower(person_address) like '%gwacheon-si%' or lower(person_address) like '%guro-gu%' or lower(person_address) like '%guri-si%' or lower(person_address) like '%gunpo-si%' or lower(person_address) like '%gimpo-si%' or lower(person_address) like '%geumcheon-gu%' or lower(person_address) like '%gangseo-gu%' or lower(person_address) like '%gangnam-gu%' or lower(person_address) like '%gangdong-gu%' or lower(person_address) like '%gangbuk-gu%' or lower(person_address) like '%eunpyeong-gu%' or lower(person_address) like '%dongjak-gu%' or lower(person_address) like '%dong-gu%' or lower(person_address) like '%dongdaemun-gu%' or lower(person_address) like '%dobong-gu%' or lower(person_address) like '%bupyeong-gu%' or lower(person_address) like '%bucheon-si%' or lower(person_address) like '%suji-gu%' or lower(person_address) like '%giheung-gu%' or lower(person_address) like '%cheoin-gu%' or lower(person_address) like '%yeongtong-gu%' or lower(person_address) like '%paldal-gu%' or lower(person_address) like '%jangan-gu%' or lower(person_address) like '%gwonseon-gu%' or lower(person_address) like '%sujeong-gu%' or lower(person_address) like '%jungwon-gu%' or lower(person_address) like '%bundang-gu%' or lower(person_address) like '%ilsanseo-gu%' or lower(person_address) like '%ilsandong-gu%' or lower(person_address) like '%deogyang-gu%' or lower(person_address) like '%manan-gu%' or lower(person_address) like '%dongan-gu%' or lower(person_address) like '%sangnok-gu%' or  lower(person_address) like '%danwon-gu%'
--lower(person_address) like '%leichlingen%' and person_address like '%NRW%'
lower(person_address) like '%kР вЂњР’В¶ln%' or lower(person_address) like '%koln%' or lower(person_address) like '%cologne%' or lower(person_address) like '%wesseling%' or lower(person_address) like '%wermelskirchen%' or lower(person_address) like '%roesrath%' or lower(person_address) like '%pulheim%' or lower(person_address) like '%overath%' or lower(person_address) like '%odenthal%' or lower(person_address) like '%leverkusen%' or lower(person_address) like '%leichlingen (rhld.)%' or lower(person_address) like '%kuerten%' or lower(person_address) like '%koeln%' or lower(person_address) like '%kerpen%' or lower(person_address) like '%huerth%' or lower(person_address) like '%frechen%' or lower(person_address) like '%erftstadt%' or lower(person_address) like '%elsdorf%' or lower(person_address) like '%burscheid%' or lower(person_address) like '%bruehl%' or lower(person_address) like '%gladbach%' or lower(person_address) like '%bergisch%' or lower(person_address) like '%bergheim%' or lower(person_address) like  'bedburg%'
or lower(person_name) like '%kР вЂњР’В¶ln%' or lower(person_name) like '%koln%' or lower(person_name) like '%cologne%'
or lower(person_name) like '%wesseling%' or lower(person_name) like '%wermelskirchen%' or lower(person_name) like '%roesrath%' or lower(person_name) like '%pulheim%' or lower(person_name) like '%overath%' or lower(person_name) like '%odenthal%' or lower(person_name) like '%leverkusen%' or lower(person_name) like '%leichlingen (rhld.)%' or lower(person_name) like '%kuerten%' or lower(person_name) like '%koeln%' or lower(person_name) like '%kerpen%' or lower(person_name) like '%huerth%' or lower(person_name) like '%frechen%' or lower(person_name) like '%erftstadt%' or lower(person_name) like '%elsdorf%' or lower(person_name) like '%burscheid%' or lower(person_name) like '%bruehl%' or lower(person_name) like '%gladbach%' or lower(person_name) like '%bergisch%' or lower(person_name) like '%bergheim%' or lower(person_name) like 'bedburg%' 
)
--and (person_ctry_code = 'AU' or person_ctry_code = '')
group by --person_name,person_address--,
appln_filing_year
order by appln_filing_year desc
---
---
---
---
---Р В РЎвЂ™Р В РЎпїЅР РЋР С“Р РЋРІР‚С™Р В Р’ВµР РЋР вЂљР В РўвЂ�Р В Р’В°Р В РЎпїЅ-Р В Р’В Р В РЎвЂўР РЋРІР‚С™Р РЋРІР‚С™Р В Р’ВµР РЋР вЂљР В РўвЂ�Р В Р’В°Р В РЎпїЅ
--515
--1668
--1953
--1737
---
select appln_filing_year,
--distinct person_name
--,person_address
--,techn_field
--,
count(distinct year14_17_address_name.appln_id)
from year14_17_address_name
join tls230_appln_techn_field t230 on year14_17_address_name.appln_id=t230.appln_id
join tls901_techn_field_ipc t901 on t230.techn_field_nr=t901.techn_field_nr
where 
(
--lower(person_address) like '%seoul%' or lower(person_address) like '%yongin-si%' or lower(person_address) like '%suwon-si%' or lower(person_address) like '%seongnam-si%' or lower(person_address) like '%goyang-si%' or lower(person_address) like '%anyang-si%' or lower(person_address) like '%ansan-si%' or lower(person_address) like '%yongsan-gu%' or lower(person_address) like '%yeonsu-gu%' or lower(person_address) like '%yeongdeungpo-gu%' or lower(person_address) like '%yangpyeong-gun%' or lower(person_address) like '%yangju-si%' or lower(person_address) like '%yangcheon-gu%' or lower(person_address) like '%uiwang-si%' or lower(person_address) like '%uijeongbu-si%' or lower(person_address) like '%songpa-gu%' or lower(person_address) like '%siheung-si%' or lower(person_address) like '%seongdong-gu%' or lower(person_address) like '%seongbuk-gu%' or lower(person_address) like '%seo-gu%' or lower(person_address) like '%seodaemun-gu%' or lower(person_address) like '%seocho-gu%' or lower(person_address) like '%paju-si%' or lower(person_address) like '%osan-si%' or lower(person_address) like '%nowon-gu%' or lower(person_address) like '%namyangju-si%' or lower(person_address) like '%nam-gu%' or lower(person_address) like '%namdong-gu%' or lower(person_address) like '%mapo-gu%' or lower(person_address) like '%jungnang-gu%' or lower(person_address) like '%jung-gu%' or lower(person_address) like '%jongno-gu%' or lower(person_address) like '%hwaseong-si%' or lower(person_address) like '%hanam-si%' or lower(person_address) like '%gyeyang-gu%' or lower(person_address) like '%gwangmyeong-si%' or lower(person_address) like '%gwangju-si%' or lower(person_address) like '%gwangjin-gu%' or lower(person_address) like '%gwanak-gu%' or lower(person_address) like '%gwacheon-si%' or lower(person_address) like '%guro-gu%' or lower(person_address) like '%guri-si%' or lower(person_address) like '%gunpo-si%' or lower(person_address) like '%gimpo-si%' or lower(person_address) like '%geumcheon-gu%' or lower(person_address) like '%gangseo-gu%' or lower(person_address) like '%gangnam-gu%' or lower(person_address) like '%gangdong-gu%' or lower(person_address) like '%gangbuk-gu%' or lower(person_address) like '%eunpyeong-gu%' or lower(person_address) like '%dongjak-gu%' or lower(person_address) like '%dong-gu%' or lower(person_address) like '%dongdaemun-gu%' or lower(person_address) like '%dobong-gu%' or lower(person_address) like '%bupyeong-gu%' or lower(person_address) like '%bucheon-si%' or lower(person_address) like '%suji-gu%' or lower(person_address) like '%giheung-gu%' or lower(person_address) like '%cheoin-gu%' or lower(person_address) like '%yeongtong-gu%' or lower(person_address) like '%paldal-gu%' or lower(person_address) like '%jangan-gu%' or lower(person_address) like '%gwonseon-gu%' or lower(person_address) like '%sujeong-gu%' or lower(person_address) like '%jungwon-gu%' or lower(person_address) like '%bundang-gu%' or lower(person_address) like '%ilsanseo-gu%' or lower(person_address) like '%ilsandong-gu%' or lower(person_address) like '%deogyang-gu%' or lower(person_address) like '%manan-gu%' or lower(person_address) like '%dongan-gu%' or lower(person_address) like '%sangnok-gu%' or  lower(person_address) like '%danwon-gu%'
--lower(person_address) like '%leichlingen%' and person_address like '%NRW%'
lower(person_name) like '%zwijndrecht%' or lower(person_name) like '%vlaardingen%' or lower(person_name) like '%spijkenisse%' or lower(person_name) like '%schiedam%' or lower(person_name) like '%rotterdam%' or lower(person_name) like '%ridderkerk%' or lower(person_name) like '%papendrecht%' or lower(person_name) like '%oud-beijerland%' or lower(person_name) like '%krimpen aan den ijssel%' or lower(person_name) like '%hendrik-ido-ambacht%' or lower(person_name) like '%dordrecht%' or lower(person_name) like '%capelle aan den ijssel%' or lower(person_name) like '%bernisse%' or lower(person_name) like '%barendrecht%' or lower(person_name) like '%albrandswaard%' or lower(person_name) like '%alblasserdam%' or lower(person_name) like '%zaanstad%' or lower(person_name) like '%velsen%' or lower(person_name) like '%uitgeest%' or lower(person_name) like '%purmerend%' or lower(person_name) like '%ouder-amstel%' or lower(person_name) like '%hoorn%' or lower(person_name) like '%hilversum%' or lower(person_name) like '%heemstede%' or lower(person_name) like '%heemskerk%' or lower(person_name) like '%haarlemmermeer%' or lower(person_name) like '%haarlemmerliede en spaarnwoude%' or lower(person_name) like '%haarlem%' or lower(person_name) like '%diemen%' or lower(person_name) like '%bloemendaal%' or lower(person_name) like '%beverwijk%' or lower(person_name) like '%amsterdam%' or lower(person_name) like '%amstelveen%' or lower(person_name) like '%almere%'
or lower(person_address) like '%zwijndrecht%' or lower(person_address) like '%vlaardingen%' or lower(person_address) like '%spijkenisse%' or lower(person_address) like '%schiedam%' or lower(person_address) like '%rotterdam%' or lower(person_address) like '%ridderkerk%' or lower(person_address) like '%papendrecht%' or lower(person_address) like '%oud-beijerland%' or lower(person_address) like '%krimpen aan den ijssel%' or lower(person_address) like '%hendrik-ido-ambacht%' or lower(person_address) like '%dordrecht%' or lower(person_address) like '%capelle aan den ijssel%' or lower(person_address) like '%bernisse%' or lower(person_address) like '%barendrecht%' or lower(person_address) like '%albrandswaard%' or lower(person_address) like '%alblasserdam%' or lower(person_address) like '%zaanstad%' or lower(person_address) like '%velsen%' or lower(person_address) like '%uitgeest%' or lower(person_address) like '%purmerend%' or lower(person_address) like '%ouder-amstel%' or lower(person_address) like '%hoorn%' or lower(person_address) like '%hilversum%' or lower(person_address) like '%heemstede%' or lower(person_address) like '%heemskerk%' or lower(person_address) like '%haarlemmermeer%' or lower(person_address) like '%haarlemmerliede en spaarnwoude%' or lower(person_address) like '%haarlem%' or lower(person_address) like '%diemen%' or lower(person_address) like '%bloemendaal%' or lower(person_address) like '%beverwijk%' or lower(person_address) like '%amsterdam%' or lower(person_address) like '%amstelveen%' or lower(person_address) like '%almere%' 
or lower(person_name) like '%amsterdam%' or lower(person_name) like '%rotterdam%' 
or lower(person_address) like '%amsterdam%' or lower(person_address) like '%rotterdam%'  
)
--and (person_ctry_code = 'AU' or person_ctry_code = '')
group by --person_name,person_address--,
appln_filing_year
order by appln_filing_year desc
---
---
---

select appln_kind, count(*)
from tls201_appln
group by appln_kind

--MOSKVA
----rus 2016
SELECT  distinct tls201_appln.appln_id,
				tls201_appln.appln_filing_year,
                tls201_appln.appln_auth, 
                tls230_appln_techn_field.techn_field_nr,
                tls206_person.person_id, tls206_person.person_ctry_code, tls206_person.person_name, tls206_person.person_address
FROM tls201_appln 
			INNER JOIN tls207_pers_appln on tls201_appln.appln_id = tls207_pers_appln.appln_id
			INNER JOIN tls206_person on tls206_person.person_id = tls207_pers_appln.person_id
            INNER JOIN tls230_appln_techn_field on tls230_appln_techn_field.appln_id = tls201_appln.appln_id
            INNER JOIN tls901_techn_field_ipc on tls901_techn_field_ipc.techn_field_nr = tls230_appln_techn_field.techn_field_nr
WHERE appln_filing_year = 2016 AND appln_auth = 'RU' --BETWEEN 2010 AND 2018 AND appln_auth = 'RU'
				AND tls207_pers_appln.applt_seq_nr > 0
                AND tls206_person.person_ctry_code = 'RU'
--


--SELECT 
----	tls201_appln.appln_id, tls201_appln.appln_filing_year,
----	tls201_appln.appln_auth, tls230_appln_techn_field.techn_field_nr,
----	tls906_person.person_id, tls906_person.person_ctry_code, tls906_person.person_name, tls906_person.person_address,
----	tls207_pers_appln.applt_seq_nr
--count(distinct tls201_appln.appln_id)
--FROM tls201_appln
--    INNER JOIN tls207_pers_appln on tls201_appln.appln_id = tls207_pers_appln.appln_id
-- 	INNER JOIN tls906_person on tls906_person.person_id = tls207_pers_appln.person_id
--    INNER JOIN tls230_appln_techn_field ON tls230_appln_techn_field.appln_id = tls201_appln.appln_id
--WHERE 
--	tls201_appln.appln_filing_year BETWEEN 2014 AND 2017
----	AND 
----    (
----    	(LOWER(tls206_person.person_address) LIKE '%ultimo%' OR LOWER(tls206_person.person_address) LIKE '%chippendale%' OR LOWER(tls206_person.person_address) LIKE '%pyrmont%' OR LOWER(tls206_person.person_address) LIKE '%surry hills%' OR LOWER(tls206_person.person_address) LIKE '%kings cross%' OR LOWER(tls206_person.person_address) LIKE '%alexandria%' OR LOWER(tls206_person.person_address) LIKE '%redfern%' OR LOWER(tls206_person.person_address) LIKE '%waterloo%' OR LOWER(tls206_person.person_address) LIKE '%rosebery%' OR LOWER(tls206_person.person_address) LIKE '%botany%' OR LOWER(tls206_person.person_address) LIKE '%mascot%' OR LOWER(tls206_person.person_address) LIKE '%paddington%' OR LOWER(tls206_person.person_address) LIKE '%bondi junction%' OR LOWER(tls206_person.person_address) LIKE '%bellevue hill%' OR LOWER(tls206_person.person_address) LIKE '%waverley%' OR LOWER(tls206_person.person_address) LIKE '%woollahra%' OR LOWER(tls206_person.person_address) LIKE '%bondi%' OR LOWER(tls206_person.person_address) LIKE '%edgecliff%' OR LOWER(tls206_person.person_address) LIKE '%double bay%' OR LOWER(tls206_person.person_address) LIKE '%rose bay%' OR LOWER(tls206_person.person_address) LIKE '%vaucluse%' OR LOWER(tls206_person.person_address) LIKE '%randwick%' OR LOWER(tls206_person.person_address) LIKE '%kingsford%' OR LOWER(tls206_person.person_address) LIKE '%kensington%' OR LOWER(tls206_person.person_address) LIKE '%coogee%' OR LOWER(tls206_person.person_address) LIKE '%pagewood%' OR LOWER(tls206_person.person_address) LIKE '%matraville%' OR LOWER(tls206_person.person_address) LIKE '%glebe%' OR LOWER(tls206_person.person_address) LIKE '%annandale%' OR LOWER(tls206_person.person_address) LIKE '%rozelle%' OR LOWER(tls206_person.person_address) LIKE '%leichhardt%' OR LOWER(tls206_person.person_address) LIKE '%balmain%' OR LOWER(tls206_person.person_address) LIKE '%newtown%' OR LOWER(tls206_person.person_address) LIKE '%erskineville%' OR LOWER(tls206_person.person_address) LIKE '%st peters%' OR LOWER(tls206_person.person_address) LIKE '%haberfield%' OR LOWER(tls206_person.person_address) LIKE '%five dock%' OR LOWER(tls206_person.person_address) LIKE '%drummoyne%' OR LOWER(tls206_person.person_address) LIKE '%stanmore%' OR LOWER(tls206_person.person_address) LIKE '%petersham%' OR LOWER(tls206_person.person_address) LIKE '%camperdown%' OR LOWER(tls206_person.person_address) LIKE '%northern beaches%' OR LOWER(tls206_person.person_address) LIKE '%seaforth%' OR LOWER(tls206_person.person_address) LIKE '%balgowlah%' OR LOWER(tls206_person.person_address) LIKE '%manly%' OR LOWER(tls206_person.person_address) LIKE '%harbord%' OR LOWER(tls206_person.person_address) LIKE '%collaroy%' OR LOWER(tls206_person.person_address) LIKE '%dee why%' OR LOWER(tls206_person.person_address) LIKE '%brookvale%' OR LOWER(tls206_person.person_address) LIKE '%narrabeen%' OR LOWER(tls206_person.person_address) LIKE '%warriewood%' OR LOWER(tls206_person.person_address) LIKE '%mona vale%' OR LOWER(tls206_person.person_address) LIKE '%bayview%' OR LOWER(tls206_person.person_address) LIKE '%newport%' OR LOWER(tls206_person.person_address) LIKE '%avalon%' OR LOWER(tls206_person.person_address) LIKE '%macarthur region%' OR LOWER(tls206_person.person_address) LIKE '%campbelltown%' OR LOWER(tls206_person.person_address) LIKE '%ingleburn%' OR LOWER(tls206_person.person_address) LIKE '%minto%' OR LOWER(tls206_person.person_address) LIKE '%narellan%' OR LOWER(tls206_person.person_address) LIKE '%camden%' OR LOWER(tls206_person.person_address) LIKE '%north shore%' OR LOWER(tls206_person.person_address) LIKE '%north sydney%' OR LOWER(tls206_person.person_address) LIKE '%milsons point%' OR LOWER(tls206_person.person_address) LIKE '%cammeray%' OR LOWER(tls206_person.person_address) LIKE '%northbridge%' OR LOWER(tls206_person.person_address) LIKE '%artarmon%' OR LOWER(tls206_person.person_address) LIKE '%crows nest%' OR LOWER(tls206_person.person_address) LIKE '%lane cove%' OR LOWER(tls206_person.person_address) LIKE '%chatswood%' OR LOWER(tls206_person.person_address) LIKE '%willoughby%' OR LOWER(tls206_person.person_address) LIKE '%roseville%' OR LOWER(tls206_person.person_address) LIKE '%lindfield%' OR LOWER(tls206_person.person_address) LIKE '%killara%' OR LOWER(tls206_person.person_address) LIKE '%gordon%' OR LOWER(tls206_person.person_address) LIKE '%pymble%' OR LOWER(tls206_person.person_address) LIKE '%turramurra%' OR LOWER(tls206_person.person_address) LIKE '%st ives%' OR LOWER(tls206_person.person_address) LIKE '%wahroona%' OR LOWER(tls206_person.person_address) LIKE '%hornsby%' OR LOWER(tls206_person.person_address) LIKE '%mount colah%' OR LOWER(tls206_person.person_address) LIKE '%mount kuring-gai%' OR LOWER(tls206_person.person_address) LIKE '%berowra waters%' OR LOWER(tls206_person.person_address) LIKE '%terrey hills%' OR LOWER(tls206_person.person_address) LIKE '%belrose%' OR LOWER(tls206_person.person_address) LIKE '%frenchs forest%' OR LOWER(tls206_person.person_address) LIKE '%forestville%' OR LOWER(tls206_person.person_address) LIKE '%mosman%' OR LOWER(tls206_person.person_address) LIKE '%neutral bay%' OR LOWER(tls206_person.person_address) LIKE '%cremorne%' OR LOWER(tls206_person.person_address) LIKE '%gladesville-ryde-eastwood%' OR LOWER(tls206_person.person_address) LIKE '%hunters hill%' OR LOWER(tls206_person.person_address) LIKE '%gladesville%' OR LOWER(tls206_person.person_address) LIKE '%ryde%' OR LOWER(tls206_person.person_address) LIKE '%north ryde%' OR LOWER(tls206_person.person_address) LIKE '%meadowbank%' OR LOWER(tls206_person.person_address) LIKE '%ermington%' OR LOWER(tls206_person.person_address) LIKE '%rydalmere%' OR LOWER(tls206_person.person_address) LIKE '%telopea%' OR LOWER(tls206_person.person_address) LIKE '%carlingford%' OR LOWER(tls206_person.person_address) LIKE '%beecroft%' OR LOWER(tls206_person.person_address) LIKE '%pennant hills%' OR LOWER(tls206_person.person_address) LIKE '%epping%' OR LOWER(tls206_person.person_address) LIKE '%eastwood%' OR LOWER(tls206_person.person_address) LIKE '%w. pennant hills%' OR LOWER(tls206_person.person_address) LIKE '%cherrybrook%' OR LOWER(tls206_person.person_address) LIKE '%western suburbs%' OR LOWER(tls206_person.person_address) LIKE '%homebush bay%' OR LOWER(tls206_person.person_address) LIKE '%silverwater%' OR LOWER(tls206_person.person_address) LIKE '%sydney markets%' OR LOWER(tls206_person.person_address) LIKE '%summer hill%' OR LOWER(tls206_person.person_address) LIKE '%ashfield%' OR LOWER(tls206_person.person_address) LIKE '%croydon%' OR LOWER(tls206_person.person_address) LIKE '%croydon park%' OR LOWER(tls206_person.person_address) LIKE '%burwood%' OR LOWER(tls206_person.person_address) LIKE '%strathfield%' OR LOWER(tls206_person.person_address) LIKE '%enfield%' OR LOWER(tls206_person.person_address) LIKE '%concord%' OR LOWER(tls206_person.person_address) LIKE '%rhodes%' OR LOWER(tls206_person.person_address) LIKE '%homebush%' OR LOWER(tls206_person.person_address) LIKE '%lidcombe%' OR LOWER(tls206_person.person_address) LIKE '%granville%' OR LOWER(tls206_person.person_address) LIKE '%regents park%' OR LOWER(tls206_person.person_address) LIKE '%auburn%' OR LOWER(tls206_person.person_address) LIKE '%wentworthville%' OR LOWER(tls206_person.person_address) LIKE '%toongabbie%' OR LOWER(tls206_person.person_address) LIKE '%seven hills%' OR LOWER(tls206_person.person_address) LIKE '%blacktown%' OR LOWER(tls206_person.person_address) LIKE '%parramatta-hills district%' OR LOWER(tls206_person.person_address) LIKE '%parramatta%' OR LOWER(tls206_person.person_address) LIKE '%north rocks%' OR LOWER(tls206_person.person_address) LIKE '%northmead%' OR LOWER(tls206_person.person_address) LIKE '%baulkham hills%' OR LOWER(tls206_person.person_address) LIKE '%castle hill%' OR LOWER(tls206_person.person_address) LIKE '%kellyville%' OR LOWER(tls206_person.person_address) LIKE '%kenthurst%' OR LOWER(tls206_person.person_address) LIKE '%glenorie%' OR LOWER(tls206_person.person_address) LIKE '%dural%' OR LOWER(tls206_person.person_address) LIKE '%galston%' OR LOWER(tls206_person.person_address) LIKE '%outer western suburbs%' OR LOWER(tls206_person.person_address) LIKE '%mulgoa%' OR LOWER(tls206_person.person_address) LIKE '%kingswood%' OR LOWER(tls206_person.person_address) LIKE '%castlereagh%' OR LOWER(tls206_person.person_address) LIKE '%penrith%' OR LOWER(tls206_person.person_address) LIKE '%silverdale%' OR LOWER(tls206_person.person_address) LIKE '%richmond%' OR LOWER(tls206_person.person_address) LIKE '%north richmond%' OR LOWER(tls206_person.person_address) LIKE '%windsor%' OR LOWER(tls206_person.person_address) LIKE '%kurrajong%' OR LOWER(tls206_person.person_address) LIKE '%erskine park%' OR LOWER(tls206_person.person_address) LIKE '%st marys%' OR LOWER(tls206_person.person_address) LIKE '%glendenning%' OR LOWER(tls206_person.person_address) LIKE '%quakers hill%' OR LOWER(tls206_person.person_address) LIKE '%new south wales%') AND  (LOWER(tls206_person.person_address) NOT LIKE '%melbourne%' AND LOWER(tls206_person.person_address) NOT LIKE '%perth%')
---- 	)
--    AND (tls906_person.person_ctry_code = 'AU' OR tls906_person.person_ctry_code = '' )
--    AND tls207_pers_appln.applt_seq_nr > 0
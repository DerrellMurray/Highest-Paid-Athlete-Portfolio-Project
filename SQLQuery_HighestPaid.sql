use sports_portfolio_project

/** Portfolio Project -- Top 50 Highest Paid Athletes in the world  **/

/* initial look at the data */
select * 
from Highest

-- Highest paid Athlete is Neymar  lowest of top 50 is TJ Watt at 37.6M
Select *
from Highest
order by TOTAL_EARNINGS desc

-- Highest paid by sport  Basketball is LeBron James, football is Tom Brady, Roger Federer for Tennis
Select *
from Highest
order by sport, TOTAL_EARNINGS desc


--Highest on the field Revenue is Roger Canelo Alverez with 85M  lowest on field is Tiger Woods at 40K
Select *
from Highest
order by on_the_field_earnings desc


--Highest off the field Revenue  is Roger Federer with 90M  lowest on field is Ryan Ramczyk at 38.7M 
Select *
from Highest
order by off_the_field_earnings desc


---sport questions

-- which sport has highest average salary  -- Soccer at 85.6M   lowest was Mixed Martial Arts with 43M
     --not good because each sport is not represented by a stable base for comparison
select 
	sport, 
	AVG(total_earnings) as avg
from Highest
group by sport
order by AVG(total_earnings) desc


--Highest total salary by sport is basketball  $1.078B
select 
	sport, 
	sum(total_earnings) as total
from Highest
group by sport
order by sum(total_earnings) desc


--Highest off-field salary by sport is basketball  $386M
select 
	sport, 
	format(sum(OFF_THE_FIELD_EARNINGS),'c') as off_total
from Highest
group by sport
order by sum(OFF_THE_FIELD_EARNINGS) desc



-- Sport with most players in the top 50 list  --basketball at 18  the least is baseball with only 1
select
	sport,
	count(name) as cnt
from Highest
group by sport
order by count(name) desc


-- other inferred info  
-- 9 out of 14 football players are QBs
-- 1 of the 14 football players is a OT
--  only 2 females made the list and they are from Tennis






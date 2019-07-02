select concat(name , '(', substring(Occupation,1,1),')')
from OCCUPATIONS
Order by name ;
select concat('There are a total of ', count(occupation),' ', lower(occupation), 's.')
from occupations
group by occupation
Order by count(occupation), occupation;

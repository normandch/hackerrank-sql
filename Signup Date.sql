select  count(email) as 'User Number', cast(signup_time as date) as 'Signup Date'
from [NascarProd].[ods].sailthruUserprofile
group by cast(signup_time as date)
order by cast(signup_time as date) DESC;

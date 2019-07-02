/*
Enter your query here.
select a.Project_start, a.end_date
from (
*/
set sql_mode='';

select max(start_date), end_date
from
    (select start_date from Projects where start_date not in (select end_date from Projects)) a,
    (select end_date from Projects where end_date not in (select start_date from Projects)) b  
where start_date < end_date  
                                                            
group by end_date
order by datediff(end_date, max(start_date)) ASC, max(start_date) ASC

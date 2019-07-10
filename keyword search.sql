select  table_name, max(table_schema)
from information_schema.columns
where Column_name like '%page%' and table_name not like 'vw%' or table_name like '%page%' and table_name not like 'vw%'
group by table_name
order by max(table_schema);

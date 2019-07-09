select A.table_name as 'Table Name', 
       max(A.table_schema) as 'Table Schema', 
       count(column_name) as 'Column number',
       max(P.rows) as 'Row number' ,
       max(A.table_type) as 'Table Type',
       Max(B.create_date) as 'Create Date',
       Max(B.modify_date) as 'Update Date'
       
from information_schema.tables A
left join information_schema.columns C
on  C.table_name = A.table_name
left join [NascarProd].[sys].tables B
on  B.name = A.table_name
left join [NascarProd].[sys].partitions P
on P.object_ID = B.object_ID
group by A.table_name
order by max(A.table_schema),max(P.rows);







         

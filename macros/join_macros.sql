{ % macro join_macros(
  db_name, sch, table1, table2, common_column1, 
  common_column2
) % } { % 
set 
  query % } {{db_name}}.{{sch}}.{{table1}} 
  inner join {{db_name}}.{{sch}}.{{table2}} on upper({{table1}}.{{common_column1}})= upper({{table2}}.{{common_column2}}) { % endset % } {{ return (query) }} { % endmacro % }
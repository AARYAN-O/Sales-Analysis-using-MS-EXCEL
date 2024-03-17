{% macro add_column(table_name, col_name, data_type, db, sch) %}
  {% set query %}
    ALTER TABLE 
      {{ db }}.{{ sch }}.{{ table_name }}
    ADD COLUMN {{ col_name }} {{ data_type }}; 
  {% endset %}
  {% do run_query(query)%}  
{% endmacro %}

select * from department
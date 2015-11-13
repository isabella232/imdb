- view: title_base
  sql_table_name: title
  fields:
  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id
  
  - dimension: imdb_id
    type: int
    sql: ${TABLE}.imdb_id
    hidden: true
    
  - dimension: imdb_index
    sql: ${TABLE}.imdb_index
    hidden: true
    
  - dimension: kind_id
    type: int
    sql: ${TABLE}.kind_id
    hidden: true

  - dimension: title
    sql: ${TABLE}.title

  - dimension: production_year
    type: int
    sql: ${TABLE}.production_year

  - measure: count
    type: count
    drill_fields: [id, kind_of_title, title, production_year]


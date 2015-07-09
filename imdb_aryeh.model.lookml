- connection: imdb-aryeh

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: title
  view: title
  joins:
    - join: cast_info
      sql_on: ${title.id} = ${cast_info.movie_id}
      relationship: one_to_many
    - join: char_name
      sql_on: ${char_name.id} = ${cast_info.person_role_id}
      relationship: one_to_many
    - join: name
      sql_on: ${cast_info.person_id} = ${name.id}
      relationship: many_to_one

    - join: cast_info2
      from: cast_info
      sql_on: ${title.id} = ${cast_info2.movie_id}
      relationship: one_to_many
    - join: char_name2
      from: char_name
      sql_on: ${char_name2.id} = ${cast_info2.person_role_id}
      relationship: one_to_many
    - join: name2
      from: name
      sql_on: ${cast_info2.person_id} = ${name2.id}
      relationship: many_to_one

    - join: movie_keyword
      sql_on: ${title.id} = ${movie_keyword.movie_id}
      relationship: one_to_many
    - join: keyword
      sql_on: ${movie_keyword.keyword_id} = ${keyword.id}
      relationship: many_to_one
    - join: movie_pornwords
      foreign_key: title.id
    - join: movie_genre
      sql_on: ${title.id} = ${movie_genre.movie_id}
      relationship: one_to_many
    - join: movie_language
      sql_on: ${title.id} = ${movie_language.movie_id}
      relationship: one_to_many
    - join: movie_color
      sql_on: ${title.id} = ${movie_color.movie_id}
      relationship: one_to_many
    - join: movie_country_rating
      sql_on: ${title.id} = ${movie_country_rating.movie_id}
      relationship: one_to_many
    - join: movie_country_rating2
      from: movie_country_rating
      sql_on: ${title.id} = ${movie_country_rating2.movie_id}
      relationship: one_to_many
      
    - join: us_boxoffice
      sql_on: ${title.id} = ${us_boxoffice.movie_id}
      relationship: one_to_many
 

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
   FROM series
   INNER JOIN books ON series.id = books.series_id
   GROUP BY books.year HAVING series.id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
   FROM characters
   ORDER BY length(characters.motto) DESC limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.value "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM subgenres
  JOIN authors ON subgenres.id = authors.subgenres_id "
end

def select_series_title_with_most_human_characters
  "SELECT series.title
   FROM series
   JOIN characters ON series.id = characters.series_id
   WHERE species = 'human'
   ORDER BY characters.species DESC limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, SUM(character_books)
  FROM characters
  ORDER BY
  "
end

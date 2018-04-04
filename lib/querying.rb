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
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species 
  ORDER BY species DESC limit 1
   "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN subgenres ON authors.id = subgenres.id "
end

def select_series_title_with_most_human_characters
  "SELECT series.title
   FROM series
   JOIN characters ON series.id = characters.series_id
   WHERE species = 'human'
   ORDER BY characters.species DESC limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS appearances
  FROM characters
  JOIN character_books  ON characters.id = character_books.character_id
  GROUP BY characters.name ORDER BY appearances DESC;
  "
end

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.title = 'A Song of Ice and Fire' ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters WHERE length(motto) = (SELECT MAX(length(motto)) FROM characters)"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(*) AS Total_species FROM characters GROUP BY species ORDER BY Total_species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series INNER JOIN authors, subgenres ON series.author_id = authors.id AND series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  # "SELECT series.title FROM series INNER JOIN"
  "SELECT characters.species, characters.series_id, COUNT(characters.series_id) AS total FROM characters GROUP BY characters.series_id, characters.species"
  # "SELECT species, series_id FROM characters"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end

require_relative  '../config/enviroment.rb'

# create some authors
author1 = Author.new("Stephen King")
author2 = Author.new("J.K. Rowling")
author3 = Author.new("Ernest Hemingway")

# create some magazines
magazine1 = Magazine.new("Time", "News")
magazine2 = Magazine.new("Vogue", "Fashion")
magazine3 = Magazine.new("National Geographic", "Science")

# add articles to authors and magazines
author1.add_article(magazine1, "The Gunslinger")
author1.add_article(magazine1, "The Shining")
author2.add_article(magazine2, "Harry Potter and the Philosopher's Stone")
author2.add_article(magazine2, "Harry Potter and the Chamber of Secrets")
author3.add_article(magazine3, "The Old Man and the Sea")
author3.add_article(magazine3, "A Farewell to Arms")

# retrieve information using instance and class methods
puts "Author 1's name is #{author1.name}"
puts "Magazine 2's category is #{magazine2.category}"
puts "The first magazine with the name 'Time' is #{Magazine.find_by_name("Time").name}"
puts "Author 1's contributing topic areas are #{author1.topic_areas}"
puts "The titles of all articles for magazine 1 are: #{magazine1.article_titles}"
puts "Authors who have written more than 2 articles for magazine 2 are: #{magazine2.contributing_authors.map(&:name)}"


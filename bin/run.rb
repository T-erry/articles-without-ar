require_relative  '../config/enviroment.rb'

# create some authors
author1 = Author.new("Jane Smith")
author2 = Author.new("John Doe")
author3 = Author.new("Austin Foo")

# create some magazines
magazine1 = Magazine.new("Vogue", "Fashion")
magazine2 = Magazine.new("Tesla", "Technology")
magazine3 = Magazine.new("CNN", "News")

# add articles to authors and magazines
author1.add_article(magazine1, "10 Ways to Rock Your Look")
author1.add_article(magazine1,  "The Future of Sustainable Fashion")
author2.add_article(magazine2,  "The Rise of AI in Fashion")
author2.add_article(magazine2, "How to Code Your Own Chatbot")
author3.add_article(magazine3, "Breaking News: COVID Vaccines for Kids Approved")
author3.add_article(magazine3, "China provinces top list of regions at risk from climate change")

# retrieve information using instance and class methods
puts "Author 3's name is #{author3.name}"
puts "Magazine 3's category is #{magazine3.category}"
puts "The first magazine with the name 'Vogue' is #{Magazine.find_by_name("Vogue").name}"
puts "Author 3's contributing topic areas are #{author3.topic_areas}"
puts "The titles of all articles for magazine 3 are: #{magazine3.article_titles}"
puts "Authors who have written more than 2 articles for magazine 3 are: #{magazine3.contributing_authors.map(&:name)}"


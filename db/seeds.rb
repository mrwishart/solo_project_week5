require_relative('../models/author')
require_relative('../models/book')
require_relative('../models/bookauthor')
require_relative('../models/bookgenre')
require_relative('../models/genre')
require_relative('../models/wholesaler')
require('pry-byebug')

BookAuthor.delete_all()
BookGenre.delete_all()
Author.delete_all()
Genre.delete_all()
Book.delete_all()

author1 = {"first_name" => "douGLas", "last_name" => "aDAMS"}
author2 = {"first_name" => "John", "last_name" => "Lloyd"}
author3 = {"first_name" => "John", "last_name" => "Wishart"}
author4 = {"first_name" => "Roger", "last_name" => "John"}

new_author1 = Author.new(author1)
new_author2 = Author.new(author2)
new_author3 = Author.new(author3)
new_author4 = Author.new(author4)

new_author1.save
new_author2.save
new_author3.save
new_author4.save

# new_author1.delete - Used to test delete instance function

# p Author.find_by_id(new_author1.id) - Used to test find_by_id class

genre1 = {"title" => "comedy"}
genre2 = {"title" => "HoRrOr"}
genre3 = {"title" => "Sci-fi"}
genre4 = {"title" => "coding manual"}

new_genre1 = Genre.new(genre1)
new_genre2 = Genre.new(genre2)
new_genre3 = Genre.new(genre3)
new_genre4 = Genre.new(genre4)

new_genre1.save
new_genre2.save
new_genre3.save
new_genre4.save

book1 = {"title" => "Hitchhiker's Guide To The Galaxy", "description" => "1st edition version of the Hitchhiker's Guide", "edition" => "1st", "year_published" => "1979", "rrp" => "14.99"}

book2 = {'title' => "The Bible", "description" => "It's the Bible. What else do you need to know?", "edition" => "88th", "year_published" => "1879", "rrp" => "55.99"}

new_book1 = Book.new(book1)
new_book2 = Book.new(book2)

new_book1.save
new_book2.save

new_book1.add_genre(new_genre1)
new_book1.add_genre(new_genre2)
new_book1.add_genre(new_genre4)
new_book2.add_genre(new_genre3)

new_book1.add_author(new_author1)
new_book1.add_author(new_author2)
new_book2.add_author(new_author3)
new_book2.add_author(new_author4)

# bookauthor_test1 = {"book_id" => new_book1.id, "author_id" => new_author1.id}
# bookauthor_test2 = {"book_id" => new_book1.id, "author_id" => new_author2.id}
# bookauthor_test3 = {"book_id" => new_book2.id, "author_id" => new_author3.id}
# bookauthor_test4 = {"book_id" => new_book2.id, "author_id" => new_author4.id}
#
# new_bookauthor1 = BookAuthor.new(bookauthor_test1)
# new_bookauthor2 = BookAuthor.new(bookauthor_test2)
# new_bookauthor3 = BookAuthor.new(bookauthor_test3)
# new_bookauthor4 = BookAuthor.new(bookauthor_test4)
#
# new_bookauthor1.save
# new_bookauthor2.save
# new_bookauthor3.save
# new_bookauthor4.save

binding.pry
nil

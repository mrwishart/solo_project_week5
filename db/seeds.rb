require_relative('../models/author')
require_relative('../models/book')
require_relative('../models/bookauthor')
require_relative('../models/bookgenre')
require_relative('../models/genre')
require_relative('../models/wholesaler')
require('pry-byebug')

Wholesaler.delete_all()
BookAuthor.delete_all()
BookGenre.delete_all()
Author.delete_all()
Genre.delete_all()
Book.delete_all()

wholesaler1 = {"name" => "Gardeners", "address" => "123 Fake Street, London, L1 1AA", "contact_number" => "07891234123", "discount_offered" => 35.00}
wholesaler2 = {"name" => "Bernard's", "address" => "387 False Lane, Newcastle, NE1 5HX", "contact_number" => "07999112221", "discount_offered" => 45.00}

new_wholesaler1 = Wholesaler.new(wholesaler1)
new_wholesaler2 = Wholesaler.new(wholesaler2)

new_wholesaler1.save
new_wholesaler2.save


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
genre5 = {"title" => "erotic"}

new_genre1 = Genre.new(genre1)
new_genre2 = Genre.new(genre2)
new_genre3 = Genre.new(genre3)
new_genre4 = Genre.new(genre4)
new_genre5 = Genre.new(genre5)

new_genre1.save
new_genre2.save
new_genre3.save
new_genre4.save
new_genre5.save

book1 = {"title" => "Hitchhiker's Guide To C++", "description" => "1st edition version of the Hitchhiker's Guide", "edition" => "1st", "year_published" => "1979", "rrp" => "14.99", "quantity" => "55", "wholesale_id" => new_wholesaler1.id}

book2 = {'title' => "The Bible", "description" => "It's the Bible. What else do you need to know?", "edition" => "88th", "year_published" => "1879", "rrp" => "55.99", "quantity" => "1", "wholesale_id" => new_wholesaler2.id}

book3 = {"title" => "Hitchhiker's Guide To C++", "description" => "2nd edition version of the Hitchhiker's Guide", "edition" => "2nd", "year_published" => "1980", "rrp" => "14.99", "quantity" => "55", "wholesale_id" => new_wholesaler1.id}

book4 = {"title" => "Hitchhiker's Guide To C++", "description" => "4th edition version of the Hitchhiker's Guide", "edition" => "4th", "year_published" => "1982", "rrp" => "14.99", "quantity" => "55", "wholesale_id" => new_wholesaler1.id}

book5 = {"title" => "Fifty Shades of Theresa May", "description" => "The erotic memoirs of former Prime Minister", "edition" => "1st", "year_published" => "2025", "rrp" => "15.45", "quantity" => "2"}

new_book1 = Book.new(book1)
new_book2 = Book.new(book2)
new_book3 = Book.new(book3)
new_book4 = Book.new(book4)
new_book5 = Book.new(book5)

new_book1.save
new_book2.save
new_book3.save
new_book4.save
new_book5.save

new_book1.add_genre(new_genre1)
new_book1.add_genre(new_genre2)
new_book1.add_genre(new_genre4)
new_book2.add_genre(new_genre3)
new_book3.add_genre(new_genre1)
new_book3.add_genre(new_genre2)
new_book3.add_genre(new_genre4)
new_book4.add_genre(new_genre1)
new_book4.add_genre(new_genre2)
new_book4.add_genre(new_genre4)
new_book5.add_genre(new_genre5)
new_book5.add_genre(new_genre2)

new_book1.add_author(new_author1)
new_book1.add_author(new_author2)
new_book2.add_author(new_author3)
new_book2.add_author(new_author4)
new_book3.add_author(new_author1)
new_book4.add_author(new_author1)

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

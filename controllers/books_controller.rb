require('sinatra')
require('sinatra/contrib/all') if development?
also_reload('./models/*')

require_relative('../models/book')
require_relative('../models/wholesaler')
require_relative('../models/author')
require_relative('../models/bookauthor')

# INDEX

get '/books' do
  @books = Book.all()
  erb(:"books/index")
end

# NEW

get '/books/new' do
  @wholesalers = Wholesaler.all()
  @authors = Author.all()
  erb(:"books/new")
end

# CREATE

post '/books' do
  params.delete('wholesale_id') if params['wholesale_id'] == '0'
  new_book = Book.new(params)
  new_book.save
  new_book.add_authors(params['author_ids'])
  redirect to '/books'
end


# SHOW

get '/books/:id' do
  @book = Book.find_by_id(params['id'])
  erb (:"books/show")
end

# DELETE

post '/books/:id/delete' do
  @book = Book.find_by_id(params['id'])
  if @book.nil?
    redirect to '/404'
  else
    @book.delete
    redirect to '/books'
  end
end

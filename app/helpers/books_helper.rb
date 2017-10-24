module BooksHelper

  def list_authors(book)
    auth_arr = []
    book.authors.each do |author|
      auth_arr << "#{author.first_name} #{author.last_name}"
    end
    auth_arr.to_sentence
  end
end

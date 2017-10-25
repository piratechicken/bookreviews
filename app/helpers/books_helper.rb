module BooksHelper

  def list_authors(book)
    auth_arr = []
    book.authors.each do |author|
      auth_arr << "#{author.first_name} #{author.last_name}"
    end
    auth_arr.to_sentence
  end

  # Rounds to nearest 0.5
  def round_stars(average)
    (average * 2).round / 2.0  
  end

  # Formats stars
  def format_stars(book)
    average_stars = book.reviews.average(:star_rating)
    rounded_stars = round_stars(average_stars)

    rounded_stars.floor.times do |index| 
      fa_icon "star 2x", class: "book__star-rating" 
    end 

    if rounded_stars > rounded_stars.floor 
      fa_icon "star-half-o 2x", class: "book__star-rating" 
      (4 - average_stars.floor).times do |index| 
        fa_icon "star-o 2x", class: "book__star-rating" 
      end 
    else 
      (5 - rounded_stars.floor).times do |index| 
        fa_icon "star-o 2x", class: "book__star-rating" 
      end 
    end 
  end

end

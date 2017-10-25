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
    stars_arr = []

    rounded_stars.floor.times do |index| 
      stars_arr << "star 2x"
    end 

    if rounded_stars > rounded_stars.floor 
      stars_arr << "star-half-o 2x"
      (4 - average_stars.floor).times do |index| 
        stars_arr << "star-o 2x"
      end 
    else 
      (5 - rounded_stars.floor).times do |index| 
        stars_arr << "star-o 2x"
      end 
    end
     
    stars_arr
  end

end

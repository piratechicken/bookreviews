json.extract! review, :id, :user_id, :book_id, :content, :star_rating, :created_at, :updated_at
json.url review_url(review, format: :json)

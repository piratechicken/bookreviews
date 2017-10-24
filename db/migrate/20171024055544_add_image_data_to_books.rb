class AddImageDataToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :image_data, :text
  end
end

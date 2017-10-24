class CreateAuthorings < ActiveRecord::Migration[5.1]
  def change
    create_table :authorings do |t|
      t.references :book, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end

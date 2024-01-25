class CreateContributors < ActiveRecord::Migration[7.1]
  def change
    create_table :contributors do |t|
      t.references :author, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps

      t.index [ :book_id, :author_id ], unique: true
    end
  end
end

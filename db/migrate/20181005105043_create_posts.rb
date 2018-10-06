class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :book_title
      t.string :author_name_of_book
      t.string :name_of_publisher
      t.date :release_date
      t.string :article_title
      t.text :article_body
      t.string :contributor

      t.timestamps
    end
  end
end

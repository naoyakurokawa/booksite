class AddImageBook < ActiveRecord::Migration[5.2]
  def change
    add_column:posts,:image_book,:string
  end
end

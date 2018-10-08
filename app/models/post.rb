class Post < ApplicationRecord

  validates :book_title, {presence: true}

end

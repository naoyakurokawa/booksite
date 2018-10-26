class Post < ApplicationRecord

  validates :book_title, {presence: true}
  validates :user_id, {presence: true}

  belongs_to :user

end

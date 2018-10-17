class User < ApplicationRecord
  validates :name, {uniqueness:true}
  validates :email, {uniqueness:true}
  validates :password, {presence:true}
end

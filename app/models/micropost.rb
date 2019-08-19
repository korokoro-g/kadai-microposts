class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favos
  has_many :favo_users, through: :favos, source: :user
  
  validates :content, presence: true, length: { maximum:255 }
end

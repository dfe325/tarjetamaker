class Deck < ActiveRecord::Base
  has_many :cards
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true
end

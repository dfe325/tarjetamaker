class Card < ActiveRecord::Base
  belongs_to :user

  validates :word_text, presence: true
  validates :meaning_text, presence: true
end
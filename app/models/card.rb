class Card < ActiveRecord::Base
  belongs_to :user



  def next
    next_card = Card.all.where('id > ?', self.id).first
    next_card = Card.all.first if next_card.blank?
    next_card
  end

  validates :word_text, presence: true
  validates :meaning_text, presence: true
  validates :user_id, presence: true
end

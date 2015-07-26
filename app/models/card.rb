class Card < ActiveRecord::Base
  belongs_to :deck

  validates :front, presence: true, uniqueness: true
  validates :back, presence: true, uniqueness: true
  validates :deck_id, presence: true

  def next
    next_card = Card.all.where('id > ?', self.id).first
    next_card = Card.all.first if next_card.blank?
    next_card
  end

  
end

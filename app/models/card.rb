class Card < ActiveRecord::Base
  belongs_to :deck

  validates :front, presence: true
  validates :back, presence: true
  validates :deck_id, presence: true

  def next
    next_card = Card.all.where('id > ?', self.id).first
    next_card = Card.all.first if next_card.blank?
    next_card
  end
end

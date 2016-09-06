class Event < ApplicationRecord

  validates :title, presence: true

  has_and_belongs_to_many :users

  def fresh?
    self.start_time >= Time.current
  end

  def discounted_ticket_fee user
    discount = (5*self.ticket_fee)/100
    (user.present? && user.gender == 'female') ? (self.ticket_fee - discount) : self.ticket_fee
  end

end

class Event < ApplicationRecord

  validates :title, presence: true

  has_and_belongs_to_many :users

  def fresh?
    self.start_time >= Time.current
  end

end

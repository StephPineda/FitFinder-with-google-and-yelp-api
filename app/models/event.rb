class Event < ApplicationRecord
  belongs_to :gym

  scope :between, -> (start, finish) { where(event_start: start.beginning_of_day..finish.end_of_day)}
  scope :ordered, -> {order(event_start: :desc)}

  has_and_belongs_to_many :users

  def self.group_by_day
    all.group_by do |event|
      event.event_start.to_date.strftime('%Y-%m-%d')
    end
  end
end

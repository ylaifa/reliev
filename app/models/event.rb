class Event < ApplicationRecord
    validates :title, presence: true, length: { in: 4..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :moment, presence: true

    belongs_to :company
end

class Event < ApplicationRecord
    after_create :order_send

    belongs_to :company

    validates :title, presence: true, length: { in: 4..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :moment, presence: true

    private

    def order_send
        UserMailer.order_email(self).deliver_now
    end
end

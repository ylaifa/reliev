class CompanyProfile < ApplicationRecord
    validates :name, presence: true, on: :update
    validates :city, presence: true, on: :update
    validates :phone_number, presence: true, on: :update
    validates :business_line, presence: true, on: :update
    
    belongs_to :company
end

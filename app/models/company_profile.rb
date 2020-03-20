class CompanyProfile < ApplicationRecord
    validates :name, presence: true, :on => :update
    
    belongs_to :company
end

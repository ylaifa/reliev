class CompanyProfile < ApplicationRecord
    validates :name, presence: true, :on => :update
    
    belongs_to :company
    has_many :invitations, class_name: self.to_s, as: :invited_by
end

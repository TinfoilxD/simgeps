class Sponsor < ApplicationRecord
    validates :name, presence: true 
    validates :prizes, numericality: { greater_than: 0 } 
end

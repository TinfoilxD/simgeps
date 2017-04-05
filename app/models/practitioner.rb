class Practitioner < ApplicationRecord
    validates :name, presence: true, message: 'Practitioner must have a name!' 
end

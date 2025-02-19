class Employee < ApplicationRecord
    belongs_to :dog
    
    validates :first_name, presence: true 
    validates :last_name, presence: true
    validates :alias, uniqueness: true 
    validates :title, uniqueness: true

    def full_name 
        first_name + " " + last_name
    end

end

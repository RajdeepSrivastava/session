class Student < ApplicationRecord

    validates :first_name, :last_name, :city, :state, :country, :pincode, presence: true
    validates :email, presence: true, uniqueness: true

    def name
        "#{first_name} #{last_name}".strip
    end
    
    def address
        "#{city} #{state} #{country} #{pincode}".strip
    end
end


class User < ApplicationRecord
    has_many :props
    
    validates :name, presence: true
    validates :email, presence: true
    
    

end

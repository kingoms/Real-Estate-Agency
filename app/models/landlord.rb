class Landlord < ActiveRecord::Base

  has_many :tenants
  
   validates :firstname, presence: true, length: {minimum: 3, maximum: 50 }
   validates :lastname, presence: true, length: {minimum: 3, maximum: 50 }
   validates :address, presence: true, length: {minimum: 3, maximum: 50 }
   validates :phone, presence: true, length: {minimum: 7, maximum: 15 }

end

class Tenant < ActiveRecord::Base
  belongs_to :landlord
  validates :landlord_id, presence: true
end

class Contact < ApplicationRecord
  has_one :address, dependent: :destroy

  validates :email, uniqueness: true, confirmation: true
  
end

class Monster < ApplicationRecord
  validates :name, uniqueness: true ,presence: true
  has_many :victims, through: :attacks
  has_many :attacks , dependent: :destroy
  
end

class Victims < ApplicationRecord
  validates :name, uniqueness: true , presence: true
  has_many :monster, through: :attacks

  end
  
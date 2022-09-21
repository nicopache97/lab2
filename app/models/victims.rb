class Victims < ApplicationRecord
  validates :name, uniqueness: true , presence: true ;
  has_many :attacks , dependent: :destroy;
  has_many :monsters, through: :attacks

  end
  
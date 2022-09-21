class Attacks < ApplicationRecord
  belongs_to :monster;
  belongs_to :victims;
  validate :ataques_a_mayores;
 
  def ataques_a_mayores
    if ((monster.scare_level > 5) && (Date.today - victim.birthday )<6570 )
      errors.add(:attacks, message: "ataque invalido para a menores");
    end
  end

end
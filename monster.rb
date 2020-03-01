require './character'
require './message'

class Monster < Character

  def attack(brave)
    attack_message

    damage = @offense - brave.defense
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0

    damage_message(target: brave, damage: damage)
  end

end

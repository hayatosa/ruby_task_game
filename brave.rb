require './character'
require './message'


class Brave < Character

  def attack(monster)
    attack_message

    damage = @offense - monster.defense
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0

    damage_message(target: monster, damage: damage)

  end

end

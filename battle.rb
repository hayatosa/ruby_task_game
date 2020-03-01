require './brave'
require './monster'

brave = Brave.new(name:"クラウド", hp:500, offense:200, defense:150)
monster = Monster.new(name:"モルボル", hp:400, offense:250, defense:100)

  loop do
    brave.attack(monster)
    monster.attack(brave)
    break if brave.hp <= 0 || monster.hp <= 0
  end

puts "#{brave.name}は戦いに勝った" if monster.hp <= 0
puts "#{brave.name}は戦いに負けた" if brave.hp <= 0

  # エラー
  # loop do
  #   brave.attack(monster)
  #   monster.attack(brave)
  #   break if @hp < 0
  # end

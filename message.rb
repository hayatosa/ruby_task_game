def attack_message
  puts "#{@name}の攻撃"
end

def damage_message(**params)
  target = params[:target]
  damage = params[:damage]

  puts <<~EOS
  #{target.name}は#{damage}のダメージを受けた！
  #{target.name}の残りHPは#{target.hp}だ！

  EOS
end

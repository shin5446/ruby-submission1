class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "数字を入力してください。"
    puts "0:グー\n1:チョキ\n2:パー"
    player_hand = gets.to_i
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    jankens = ["グー", "チョキ", "パー"]
    if (player_hand - enemy_hand +3) %3 == 2 && player_hand < 3
    puts "あなたの手は#{jankens[player_hand]}です。相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです。"
    elsif (player_hand - enemy_hand +3) %3 == 1 && player_hand < 3
    puts "あなたの手は#{jankens[player_hand]}です。相手の手は#{jankens[enemy_hand]}です。あなたの負けです。"
    elsif (player_hand - enemy_hand +3) %3 == 0 
    
    puts "あいこです。　もう一度0〜2の数字から選んでください。"
        
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new        
       janken.pon(player.hand, enemy.hand)
       
    elsif   player_hand >= 3  
    
    puts"エラー！！　もう一度0〜2の数字から選んでください。"
     
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new        
       janken.pon(player.hand, enemy.hand)
    
           
    end
    
        
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
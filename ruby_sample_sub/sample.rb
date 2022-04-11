while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:終了する"
  num = gets.to_i

  def point_imput
    puts "1から5で評価を入力してください"
    point = gets.to_i
    while true
      if point <= 0 || point > 5
        puts "1から5で入力してください"
        point = gets.to_i
      else
        puts "コメントを入力してください"
        comment = gets
        post = "ポイント：#{point}　コメント：#{comment}"
        file = File.open("data.txt", "a")
        file.puts(post)
        file.close
        break
      end
    end
  end

  def result
    puts "これまでの結果"
    read_file = File.open("data.txt", "r")
    puts read_file.read
    read_file.close
  end

  case num
  when 1
    point_imput
    # 1が入力されたときの処理
  when 2
    result
    # 2が入力されたときの処理
  when 3
    puts "終了します"
    break
    # 3が入力されたときの処理
  else
    puts "1から3で入力してください"
    # 1~3以外が入力されたときの処理
  end
end
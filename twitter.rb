require './user'
require './tweet'
require './timeline'
require 'date'

class Twitter
  def exec
    puts "ようこそTwitterへ！"
    puts "まだつぶやきがありません\n\n"
    @timeline = Timeline.new
    self.show_menu
  end

  def show_menu
    puts "\n#{@user.name}でログイン中です\n\n" if defined? @user
    puts "何をしますか？"
    puts "1: タイムラインを見る"
    if defined? @user
      puts "2: つぶやく"
    else
      puts "2: 会員登録"
    end
    puts "3: 終了する"
    chosen_menu = gets.to_i
    self.choose_menu(chosen_menu)
  end

  def resist_user
    puts "お名前を入力してください"
    name = gets.chomp
    @user = User.new(name)
  end

  def choose_menu(chosen_menu)
    while true do
      case chosen_menu
      when 1
        @timeline.show_timeline
        self.show_menu
      when 2
        if defined? @user
          @user.tweet_content(@timeline)
          self.show_menu
        else
          self.resist_user
          self.show_menu
        end
      when 3
        exit
      else
        puts "入力された値が不正です"
        self.show_menu
      end
    end
  end
end

Twitter.new.exec

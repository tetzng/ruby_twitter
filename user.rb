class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def tweet_content(timeline)
    puts "つぶやきを入力してください"
    content = gets.chomp
    d = DateTime.now
    date = "#{d.hour}時 #{d.min}分"
    tweet = Tweet.new(content, date, self.name)
    timeline.tweets << tweet
    timeline.show_timeline
  end
end

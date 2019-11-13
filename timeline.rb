class Timeline
  def initialize
    @tweets = []
  end

  def tweets
    @tweets
  end

  def tweets=(tweets)
    @tweets = tweets
  end

  def show_timeline
    if self.tweets == []
      puts "まだ投稿がありません\n\n"
    else
      self.tweets.each do |tweet|
        puts "#{tweet.user_name} #{tweet.date}"
        puts "#{tweet.content}\n"
      end
    end
  end
end

class Tweet
  attr_accessor :content, :date, :user_name

  def initialize(content, date, user_name)
    @content, @date, @user_name = content, date, user_name
  end
end

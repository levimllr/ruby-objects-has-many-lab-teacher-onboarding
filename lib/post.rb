require "pry"

class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.total_post_count
    @@all.length
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      return self.author.name
    else
      return nil
    end
  end

end

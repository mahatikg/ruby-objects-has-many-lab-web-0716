
class Post
  attr_accessor :title, :author


  def author_name
    self.author == nil ?
    nil : self.author.name
  end

  def initialize(title)
    @title = title
  end

end

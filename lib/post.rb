class Post
  attr_reader(:author, :title)

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def author_name
    @author.nil? ? nil : @author.name
  end

end

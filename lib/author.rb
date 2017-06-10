class Author
  attr_reader :name
  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def self.post_count=(number)
    @@post_count = number
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    self.class.post_count += 1
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

end

class Author
  attr_accessor :name

  @@post_count = 0

  def self.post_count
    @@post_count
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
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post_title)
    # binding.pry
    post = Post.new(post_title)
    self.add_post(post)
  end
end
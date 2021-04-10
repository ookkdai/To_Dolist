class Task
  attr_reader :id, :title, :content
  @@count = 0
  def initialize(title:, content:)
    @title = title
    @content = content
    @id = @@count += 1
  end

  def info
    "[No.#{@id}] #{@title}:#{@content}"
  end
end

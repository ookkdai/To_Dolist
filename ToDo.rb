class ToDo
  def initialize
    @tasks = []
  end
  def add(task)
    @tasks << task
    puts "【追加】#{task.info}"
  end
  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    if @tasks.empty?
      puts "【！】 該当のidはタスクはありません"
    else @tasks.each do |task|
        puts task.info
        end
    end
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
  end
    def delete(id:)
      task = @tasks.find{ |task| task.id == id}
      if task.nil?
        puts "【!】該当idのタスクはありません。"
      else
        @tasks.delete(task)
        puts "【削除】#{task.info}"
      end
    end
end
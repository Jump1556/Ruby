class Computer
  @@users ={}
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time}."
  end
  
  def Computer.get_users 
    return @@users
  end
  
  def delete(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was deleted at #{time}."
  end
end

my_computer = Computer.new("jump",12345)
my_computer.create("task_list.txt")
my_computer.create("task.txt")
my_computer.delete("task.txt")
  
puts "User: #{Computer.get_users}"

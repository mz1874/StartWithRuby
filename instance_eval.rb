class InstanceEval

end

InstanceEval.class_eval do
  def hello
    puts "hello"
  end
end

InstanceEval.instance_eval do
  def say
    puts "hello"
  end
end

InstanceEval.say
InstanceEval.new.hello
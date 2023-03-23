$LOAD_PATH << "."
require 'time_utils'

class TestModel
  # 实例方法
  # include TimeUtils

  # 类方法
  extend TimeUtils
  #

  def show_Time
     show_current_time
  end
end

user = TestModel.new
# Include 方式
user.show_current_time
# extend 方式
TestModel.show_current_time
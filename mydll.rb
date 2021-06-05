require_relative 'mydll_common'
require_relative 'mydll_command'

include MyDLL

####################################################################################################

if __FILE__ == $PROGRAM_NAME
  MyDLL.load_lib()
  v = MyDLL::Vec2.malloc
  pp v.x, v.y
  v.x = 123
  pp v.x, v.y
  MyDLL::SetVec2(v)
  pp v.x, v.y
  pp v
  MyDLL::PrintVec2(v)
  pp v.x, v.y
  pp v
end

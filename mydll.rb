require_relative 'mydll_common'
require_relative 'mydll_command'

include MyDLL

####################################################################################################

if __FILE__ == $0 # test code snippets
  MyDLL.load_lib()
  v = MyDLL::Vec2.malloc # (123, 456)
  pp v.x, v.y
  v.x = 123
  pp v.x, v.y
  MyDLL::SetVec2(v)
  pp v.x, v.y
  pp v
  MyDLL::PrintVec2(v)
end

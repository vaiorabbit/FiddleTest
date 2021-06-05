require 'fiddle/import'

module MyDLL

  extend Fiddle::Importer

  Vec2 = struct(["float x",
                 "float y"])

  MyDLL_FUNCTIONS_ARGS_MAP[:SetVec2] = [Fiddle::TYPE_VOIDP]
  MyDLL_FUNCTIONS_RETVAL_MAP[:SetVec2] = Fiddle::TYPE_VOID
  def SetVec2(_vptr_)
    f = MyDLL::get_command(:SetVec2)
    f.call(_vptr_)
  end

  MyDLL_FUNCTIONS_ARGS_MAP[:PrintVec2] = [Fiddle::TYPE_VOIDP]
  MyDLL_FUNCTIONS_RETVAL_MAP[:PrintVec2] = Fiddle::TYPE_VOID
  def PrintVec2(_v_)
    f = MyDLL::get_command(:PrintVec2)
    f.call(_v_)
  end
end

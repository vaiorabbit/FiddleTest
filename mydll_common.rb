require 'fiddle'

module MyDLL

  MyDLL_FUNCTIONS_MAP = {}
  MyDLL_FUNCTIONS_ARGS_MAP = {}
  MyDLL_FUNCTIONS_RETVAL_MAP = {}
  @@mydll_dll = nil

  def self.load_lib(lib = nil)
    if lib == nil
      lib = 'mydll.dylib'
    end
    @@mydll_dll = Fiddle.dlopen( lib )
  end

  def self.get_command( sym )
    if MyDLL_FUNCTIONS_MAP[sym] == nil
      bind_command( sym )
    end
    return MyDLL_FUNCTIONS_MAP[sym]
  end

  def self.bind_command( sym )
    begin
      MyDLL_FUNCTIONS_MAP[sym] = Fiddle::Function.new( @@mydll_dll[sym.to_s], 
                                                    MyDLL_FUNCTIONS_ARGS_MAP[sym],
                                                    MyDLL_FUNCTIONS_RETVAL_MAP[sym] )
    rescue Exception => e
      raise RuntimeError if MyDLL_FUNCTIONS_MAP[sym] == nil
    end
  end

end

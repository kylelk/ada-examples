import ctypes
ada_module = ctypes.CDLL("lib/libada_module.dylib")
ada_module.ada_moduleinit.restype = None
ada_module.ada_moduleinit()
ada_module.say_hello.restype = None
ada_module.say_hello()

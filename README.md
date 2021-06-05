# Fiddling around Fiddle

*   Created: 2021-06-05
*   Updated: 2021-06-05

## Usage

```
$ ./dll_build.sh

$ build/Test/MyTest
x = 12.300000, y = 23.400000
r.tl = (1.000000, 2.000000)
r.br = (3.000000, 4.000000)

$ ruby mydll.rb
0.0
0.0
123.0
0.0
12.300000190734863
23.399999618530273
#<MyDLL::Vec2:0x0000000128181180
 @entity=
  #<Fiddle::CStructEntity:0x0000000117fdfd30 ptr=0x0000000117fdfd20 size=8 free=0x0000000000000000>>
x = 0.000000, y = 0.000000
12.300000190734863
23.399999618530273
#<MyDLL::Vec2:0x0000000128181180
 @entity=
  #<Fiddle::CStructEntity:0x0000000117fdfd30 ptr=0x0000000117fdfd20 size=8 free=0x0000000000000000>>
```

## Links

*   Fiddle support - a rather technical question..... #4
    *   https://github.com/vaiorabbit/ruby-imgui/issues/4
*   fiddle/NEWS.md
    *   https://github.com/ruby/fiddle/blob/ca5e6a040429172949cc3d6987996807a72723c7/NEWS.md
*   class Fiddle::CStruct
    *   https://docs.ruby-lang.org/ja/latest/class/Fiddle=3a=3aCStruct.html
*   class Fiddle::Function
    *   https://docs.ruby-lang.org/ja/latest/class/Fiddle=3a=3aFunction.html
*   Ruby fiddle define struct
    *   https://stackoverflow.com/questions/50785133/ruby-fiddle-define-struct

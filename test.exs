defmodule Test do
    defmodule Person do
        defstruct name: "", lastname: ""
    end

    def bye do
        IO.puts "Bye"
    end
end

pers = struct(Test.Person, name: "Tony", lastname: "Malto")
IO.inspect pers

defmodule Encore do
    def hello do
        IO.puts "hello"
    end

end

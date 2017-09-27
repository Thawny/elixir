defmodule M do
    def main do
        range = 1..20 |> fizzBuzz
        IO.puts range
    end

    def fizzBuzz(x) do
        cond do
            rem x,5 == 0 and rem x,3 == 0 -> IO.puts "FizzBuzz"
            rem x,5 == 0 or rem x,3 == 0 -> (
                cond do
                rem x,5 == 0 -> IO.puts "Fizz"
                rem x,3 == 0 -> IO.puts "Buzz"
                end
            )
        end

    end
end

M.main()

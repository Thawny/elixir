defmodule Devinette do
    def main do
        random = random()
        play(5, random)
    end
    
    def random do
        Enum.random(0..100)
    end

    def ask do
        IO.gets("Entrez un nombre entre 1 et 100\n")
            |> String.replace("\n","")
            |> String.to_integer
    end

    def play(0, _) do
        IO.puts "Vous avez épuisé vos chances!"
    end

    def play(counter, random) do
        answer = ask()
        cond do
            answer < random ->
                IO.puts("Trop petit")
                play(counter - 1, random)
            answer > random ->
                IO.puts("Trop grand")
                play(counter - 1, random)
            true ->
                "Je n'ai pas compris"
        end
    end

end

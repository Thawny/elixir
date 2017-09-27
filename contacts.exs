defmodule Contacts do
    defmodule Contact do
        defstruct [:firstname, :lastname]
    end

    def printContact(contact) do
        IO.puts "firstname : #{contact.firstname}, lastname : #{contact.lastname}"
    end

    def main(contacts) do
        option = IO.gets("Choisissez une option : ") |> String.replace("\n","")
        cond do
            option == "0" ->
                IO.puts "Au revoir!"
            option == "1" ->
                if contacts == [] do
                    IO.puts "Vous n'avez aucun contact enregistré"
                    main(contacts)
                else
                    for contact <- contacts, do: printContact(contact)
                    main(contacts)
                end
            option == "2" ->
                firstname = IO.gets("Entrez le prénom de votre nouveau contact : ") |> String.replace("\n","")
                lastname = IO.gets("Entrez le nom de votre nouveau contact : ") |> String.replace("\n","")
                newContact = %Contact{:firstname => firstname, :lastname => lastname}
                IO.puts "#{firstname} #{lastname} a bien été ajouté(e)"
                contactList = [newContact] ++ contacts
                main(contactList)
            true ->
                IO.puts "Je n'ai pas compris"
                main(contacts)
        end
    end
end

IO.puts "0 : quitter"
IO.puts "1 : lister les contacts"
IO.puts "2 : ajouter un contact"
Contacts.main([])

File.open("teams.txt", "w+") {|f| f.write("Twins, Astros, Mets, Tigers, Yankees"*10000)}

# r - reading
# a - appending
# w - just writing
# w+ - reading/writing
# a+ - open a file for reading and appending
# r+ - open a file for updating, both reading and writing. 

file_to_save  = File.new("other_teams.txt", "w+")

file_to_save.puts("A's, Diamondbacks, Mariners, Marlins"*10000)

file_to_save.close
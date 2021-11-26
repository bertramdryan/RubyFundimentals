string = "The quick 12 brown foxes jumped over the 10 lazy dog."

p string =~ /quick/

p string =~  /Z/i ? "Valid" : "Invalid"
p string =~  /z/ ? "Valid" : "Invalid"

p string.to_enum(:scan, /\d+/).map { Regexp.last_match}
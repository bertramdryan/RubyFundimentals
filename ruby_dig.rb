user = {
  name: "Kristine",
  favorites: {
    food: "Pizza",
    movies: "Fiddler on the roof"
  }
}

# old way
p user[:name]

# new way
p user.dig(:name)

#old way
p user[:favorites][:movies]

#new way
p user.dig(:favorites, :movies)
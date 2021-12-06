require 'rubygems'
require 'decisiontree'

attributes = ['Temp']

training = [
  [97.7, 'healthy'],
  [99.1, 'healthy'],
  [99.5, 'sick'],
  [102.5, 'crazy sick'],
  [107.5, 'dead'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

test = [98.6, 'Healthy']

decision = dec_tree.predict([98.6])

puts "Prediction #{decision}"
puts "Reality #{test.last}"
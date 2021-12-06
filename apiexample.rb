require 'rubygems'
require 'httparty'


class EdutectionalResty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com/"


  def posts
    self.class.get('/posts.json')
  end
end


edutechional_resty = EdutectionalResty.new

puts edutechional_resty.posts
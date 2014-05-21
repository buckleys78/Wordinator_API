#require 'ruby-gems'
require 'sinatra'
require 'json'

get '/:word1/:word2' do
  content_type :json
  value1 = params[:word1]
  value2 = params[:word2]
  is_anagram_pair = value1.chars.sort == value2.chars.sort
  { word_1: value1,
    word_2: value2,
    is_anagram: is_anagram_pair}.to_json
end

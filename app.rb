require('sinatra')
require('sinatra/reloader')
require('numbers_to_words')

get ('/') do
  "You're home!"
end

get('/input') do
  erb(:form1)
end

get('/converted') do
  @words_output = params.fetch('usernum').method()
  erb(:output1)
end

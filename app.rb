require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/result') do
  @output = params.fetch('sentence').find_and_replace(params.fetch('find'),params.fetch('replace'))
  erb(:result)
end

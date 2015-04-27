require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')

get ('/') do
   erb(:index)
end

get ('/result') do
  triangle_instance = Triangles.new(params.fetch('side1_length').to_i(), params.fetch('side2_length').to_i(), params.fetch('side3_length').to_i())
  @triangle_program = triangle_instance.typetriangle()
#binding.pry
  erb(:result)
end

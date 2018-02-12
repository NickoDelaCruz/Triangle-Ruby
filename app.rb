
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/Triangles')

get('/') do
  erb(:input)
end

get('/output') do
  @side1 = params.fetch("length1")
  @side2 = params.fetch("length2")
  @side3 = params.fetch("length3")
  triangle = Triangle.new(@side1, @side2, @side3)
  @string_to_display = triangle.test_triangle
  erb(:output)
end

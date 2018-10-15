#puts "Ingrese su nombre"
#puts "Ingrese el cuerpo de la publicacion"
#name =  gets.chomp 
#post =  gets.chomp
#id = gets.chomp 
#begin
require 'faraday' 
client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    #config.token_auth('0fae9c38d40af1bc721cbde483272469')
end
#end
=begin
response = client.post do |req|
    req.url '/api/v1/categories'#url para pasar el dato                   
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"category":{"name_category":"10"
                        }}'
                    
=end
#begin
response = client.get do |req|
    req.url '/api/v1/categories'#url para pasar el dato                   
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.headers['authorization']='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1Mzg4ODcwOTQsInN1YiI6MTV9.cpNYnXS4QbMNhPmqWk6a4JvGpKRnpvUL74J2RXkt4_g'
    #req.body='{"category":{"name_cate":20, "project_id":21, "rol":false}}'
  
                             
                            
end


=begin
response = client.delete do |res|
    res.url  '/api/v1/tags/1'
    res.headers['Content-Type']='application/json' #json poraplicairon
 end
=end

require 'oj'
puts Oj.load(response.body)  #imprima la respuesta de body
puts response.status

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
#=begin
response = client.put do |req|
    req.url '/api/v1/projects/9'#url para pasar el dato                   
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"project":{"name_project":"Proyecto de prueba2 ",
                         "description_project":"esta es la descripcion de un proeycto",
                         "category_id":"1 ",
                         "spectator_id":"2", 
                         "tag_ids": [4,5]
                         }}'

          
end
=begin
response = client.post do |req|
    req.url '/api/v1/tags'#url para pasar el dato                   
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"tag":{"name_tag":"contabilidad",
                         "color_tag":"#ae83b3"
                         }}'

          
end


#=end
=begin
response = client.delete do |res|
    res.url  '/api/v1/tags/1'
    res.headers['Content-Type']='application/json' #json poraplicairon
 end
=end

require 'oj'
puts Oj.load(response.body)  #imprima la respuesta de body
puts response.status

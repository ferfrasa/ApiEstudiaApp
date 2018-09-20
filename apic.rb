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
    req.url '/api/v1/appreciations'#url para pasar el dato                   
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"appreciations":{"user_id":"9",
                         "project_id":"3",
                         "rol":"false"
                        }}'
                    
=end
#begin
response = client.post do |req|
    req.url '/api/v1/appreciations'#url para pasar el dato                   
    req.headers['Content-Type']='application/json' #json poraplicairon
    req.body = '{"appreciation":{"calificacion":"1",
                                 "comentario":"interesante conferenci",
                                 "idActividad":"1",
                              "has_user_project_id":"3"    
                             }}'
                    
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

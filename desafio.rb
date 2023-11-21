require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com',443)#  uma requisicao para o site example
#para fazer chamadas https
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body) #depois utilizou  Nokogiri::HTML para parsear o documento
p = doc.at('p')
puts p.content # voce fez so do metodo at para bsucar a tag p e imprimir o se conteudo
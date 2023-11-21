require 'net/http' #preciso adicionar a biblioteca Net:HTTP

exemplo = Net::HTTP.get('example.com', '/index.html') #é feito uma
#requisicao HTTP do tipo GET para o dominio example.com, com o caminho /index.

File.open('example.html', 'w') do |line| #voce salvou a resposta dentro de uma varável
    #para depois escreve-la dentro de um arquivo.
 line.puts(exemplo) #voce utilizou File.open para um arquivo inexistente, o ruby detectou
 #isso e criouo arquivo antes de escrever as informações nele
end
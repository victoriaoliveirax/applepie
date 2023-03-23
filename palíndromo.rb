loop do

  print "Digite a primeira palavra (ou 'quit' para sair): "
  word1 = gets.chomp.downcase

  break if word1 == 'quit'

  print "Digite a segunda palavra: "
  word2 = gets.chomp.downcase

  if word2.empty?
    puts "Erro: a segunda palavra não pode ser vazia."
    next
  end

  if word1 == word2.reverse
    puts "As palavras são palíndromos uma da outra."
  else
    puts "As palavras não são palíndromos uma da outra."
  end
end

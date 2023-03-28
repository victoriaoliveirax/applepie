loop do

  print "Digite a primeira palavra (ou 'quit' para sair): "
  word1 = gets.chomp.strip.downcase

 print "Digite a segunda palavra: "
  word2 = gets.chomp.strip.downcase

break if word1 == 'quit' && word2.empty?

  if word1 == word2.reverse
    puts "As palavras são palíndromos uma da outra."
  else
    puts "As palavras não são palíndromos uma da outra."
  end
end

require 'open-uri'
require 'digest'

def baixar_livro(url)
  morro_dos_ventos_uivantes = Digest::MD5.hexdigest(url)

  if File.exist?(morro_dos_ventos_uivantes)
    puts "Recuperando arquivo do cache..."
    livro = File.read(morro_dos_ventos_uivantes)
  else
    puts "Baixando arquivo do livro..."
    livro = URI.open(url).read
    File.write(morro_dos_ventos_uivantes, livro)
  end

  return livro
end

url = "https://www.gutenberg.org/cache/epub/768/pg768.txt"
livro = baixar_livro(url)

livro = livro.gsub(/[\n\r]/, " ")
livro = livro.gsub(/[^a-zA-Z ]/, "")
livro = livro.downcase
contagem = Hash.new(0)
livro.split.each { |palavra| contagem[palavra] += 1 }

palavras_mais_utilizadas = contagem.sort_by { |_, count| -count }.first(20)

puts "As 20 palavras mais utilizadas no livro (excluindo 'the', 'and', 'or', 'a', 'an' e 'but') são:"
palavras_mais_utilizadas.each do |palavra, frequencia|
  puts "#{palavra}: #{frequencia} vezes"
end

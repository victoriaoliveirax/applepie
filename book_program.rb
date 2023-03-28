require 'open-uri'
require 'digest'

def download_book(url)
  book_file = Digest::MD5.hexdigest(url)

  if File.exist?(book_file)
    puts "Recuperando arquivo do cache..."
    book = File.read(book_file)
  else
    puts "Baixando arquivo do livro..."
    book = URI.open(url).read
    File.write(book_file, book)
  end

  return book
end

def count_words(text, exclude_words = [])
  words = text.downcase.gsub(/[^a-z\s]/, '').split(" ")
  words = words.reject { |word| exclude_words.include?(word) }

  frequency = words.group_by(&:itself).transform_values(&:count).sort_by { |word, count| -count }
  frequency.first(20)
end
url = "https://www.gutenberg.org/cache/epub/768/pg768.txt"
book = download_book(url)

book_content = download_book(url)
exclude_words = ["the", "and", "or", "a", "an", "but"]
frequency = count_words(book_content, exclude_words)

puts "As 20 palavras mais comuns no livro (excluindo #{exclude_words.join(', ')}) são:"
frequency.each { |word, count| puts "#{word}: #{count}" }
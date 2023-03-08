str = '  string     '; # Removendo os espaços iniciais e finais da string
puts str.size
str_new = str.gsub(/^\s+|\s+$/, '')
puts str_new.size
puts str_new

#

str_large = 'string   com      espaços    demais'; # Substituindo espaços múltiplos no interior da string
puts str_large.size
str_large_new = str_large.gsub(/\s{2,}/, ' ')
puts str_large_new.size
puts str_large_new
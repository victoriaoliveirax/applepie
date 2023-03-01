#Define uma struct genérica
struct Applepie
end

cherrypie = "Cherrypie" # Alocação estática
heap  = cherrypie + "2" # Alocação na memória heap
stack = Applepie.new # Alocação de um objeto na stack

puts "Endereço de memória alocado na stack: #{pointerof(stack)}"
puts "Endereço de memória alocada na heap: #{heap.as(Void*)}"
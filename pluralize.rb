def pluralize(word)
    case word
    when "ox"
      "oxen"
    when "mouse"
      "mice"
    when "box"
      "boxes"
    else
     word + "s"
    end
  end

 list = ["word", "chair", "foot","book","box", "ox", "house", "mouse"]
 lista_completa = []

list.each do |item|
    lista_completa << pluralize(item)
end

puts lista_completa
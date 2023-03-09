def pluralize(word)
    exceptions = {
        "child" => "children",
        "goose" => "geese",
        "man" => "men",
        "woman" => "women",
        "tooth" => "teeth",
        "foot" => "feet",
        "mouse" => "mice",
        "person" => "people",
        "sheep" => "sheep",
        "series" => "series",
        "species" => "species",
        "deer" => "deer",
        "photo" => "photos",
        "piano" => "pianos",
        "halo" => "halos",
        "gas" => "gases",
        "roof" => "roofs",
        "belief" => "beliefs",
        "chef" => "chefs",
        "chief" => "chiefs"}
    case word
    when *exceptions.keys
        exceptions[word]
    when /(s|ss|sh|ch|x|z|o)$/
      word + "es"
    when /(s|z)$/
        word.gsub(/(s|z)$/, '\1\1') + "es"
    when /(fe?)$/
        word.gsub(/(fe?)$/, 've') + "s"
    when /([^aeiou]y)$/
        word.gsub(/y$/,'ies')
    when /([aeiou]y)$/
        word + "s"
    when /(us)$/
        word.gsub(/us$/,'i')
    when /(is)$/
        word.gsub(/is$/, 'es')
    when /(on)$/
        word.gsub(/on$/, 'a')

    else
     word + "s"
    end
  end

 lista_principal = ["word", "chair", "foot","book","box", "ox", "house", "mouse"]
 lista_completa = []

lista_principal.each do |item|
    lista_completa << pluralize(item)
end

puts lista_completa
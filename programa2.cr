def main : Int32
    # Alocação na stack (pacote de biscoitos)
    stack_var = ["biscoito1", "biscoito2", "biscoito3"]
    stack_addr = pointerof(stack_var)
    puts "Endereço de memória do pacote de biscoitos alocado na stack: #{stack_addr}"

    # Alocação na heap (fatia de pizza)
    heap_var = "sabor de pizza"
    heap_addr = pointerof(heap_var)
    puts "Endereço de memória da fatia de pizza alocada na heap: #{heap_addr}"

    # Retorna o status de saída
    return 0
  end

  exit main
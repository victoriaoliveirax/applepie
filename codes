# Escreva um programa em qualquer linguagem que escreva a palavra "out" em STDOUT e "err" em STDERR. Chame ele de programa1 .
./programa1.rb

# Execute programa1 na linha de comando redirecionando STDOUT para o arquivo out.txt e STDERR para o arquivo err.txt.
./programa1 1>> out.txt
./programa1 2>> err.txt

# Execute programa1 de forma que ele ignore STDERR.
./programa1 2>> err.txt 1>> out.txt
./programa1 2>/dev/null

# Modifique o programa1 para ler uma linha de STDIN e imprimir em STDOUT,
echo PalavrasAleatorias | ./programa1

# Escreva um hello world.
ruby hello.rb

# Execute o hello world que você escreveu e o programa1 de forma que o output do hello world seja o input de programa1 usando um pipe | na linha de comando.
ruby hello.rb | ./programa1.rb

# Escreva um programa que execute programa1. Guardando STDOUT e STDERR de programa1 em uma variável e imprimindo em STDOUT.
ruby executor.rb /home/victoria/applepie-local/hello.rb

# Escreva um programa que execute o programa /usr/bin/false e imprima o status code dele.
ruby executor.rb /usr/bin/false 
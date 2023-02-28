- Qual a diferença entre alocar memória na stack e na heap?

> Quando escrevemos um programa, ele precisa armazenar dados na memória para executar suas tarefas. No entanto, a memória é limitada e precisamos gerenciá-la de forma eficiente para garantir que nosso programa funcione corretamente.
Existem dois lugares diferentes onde podemos armazenar esses dados: na stack e na heap. A stack é uma parte da memória que é usada para armazenar dados temporários e variáveis locais que são criadas dentro de funções. Já a heap é outra parte da memória que pode ser usada para armazenar dados maiores e mais permanentes, como objetos ou arrays.

>A diferença mais importante entre alocar memória na stack e na heap é como ela é gerenciada. Quando alocamos memória na stack, o sistema operacional automaticamente gerencia a memória para nós. Quando uma função é chamada, a memória para suas variáveis locais é alocada automaticamente na stack. E quando a função retorna, essa memória é automaticamente liberada.

>Por outro lado, na heap, precisamos gerenciar a memória manualmente. Precisamos reservar a quantidade de memória necessária e liberá-la quando não for mais necessária. Se não gerenciarmos a memória corretamente, podemos ter problemas como vazamentos de memória ou corrupção de dados.
Resumindo, alocar memória na stack é mais fácil e seguro, mas tem limitações na quantidade de memória disponível. Já alocar memória na heap é mais flexível, mas requer mais cuidado na gestão da memória para evitar problemas.

>A alocação stack é semelhante quando compramos um pacote de biscoito no mercado. Todos os biscoitos estão juntinhos em um pacote e você pode pegar qualquer um deles na hora que quiser. Na alocação stack, a memória é alocada em um bloco contínuo e o programa pode acessar qualquer posição de memória na hora que precisar.

>Já a alocação dinâmica na heap é mais parecida como pedir uma pizza. Tem que ligar pra pizzaria e fazer o pedido, e depois a pizza é entregue na sua casa. No caso da alocação dinâmica, o programa precisa pedir uma quantidade específica de memória à heap e a heap devolve um ponteiro para o começo do bloco de memória alocado.

- Escreva um programa em Crystal (ou C) que aloca algo na stack, algo na heap e imprima o endereço de memória de ambos.

> programa2.cr

- Por que o endereço de memória alocado na stack é sempre maior do que o endereço alocado na heap independente de qual memória foi alocada primeiro?

> A Stack e a Heap são áreas diferentes da memória do computador. Quando o programa começa a alocar memória na stack, ele começa pelo endereço de memória mais alto e vai descendo, enquanto que na heap ele começa pelo endereço mais baixo e vai subindo. Isso quer dizer que, mesmo que se aloque memória na heap antes da stack, o endereço de memória alocado na stack sempre será maior do que o endereço alocado na heap. É como se fossem duas "pilhas" de memória separadas, uma em cima da outra. Por isso, não importa a ordem em que se aloca a memória, a stack sempre vai ficar acima da heap.

- O que acontece se 2 processos diferentes guardarem uma variável no mesmo endereço de memória? Pesquise por virtual memory.
> O último processo a escrever na memória ‘’ganha’’ como uma Race Condition. Uma das estratégias utilizadas para evitar esse tipo de problema, o sistema operacional utiliza a virtual memory. A virtual memory é uma técnica que permite ao sistema operacional criar a ilusão de que cada processo tem acesso exclusivo a uma determinada região de memória, mesmo que na realidade essa região seja compartilhada com outros processos.
Assim, mesmo que dois processos diferentes tentem guardar uma variável no mesmo endereço de memória, o sistema operacional garante que cada processo esteja trabalhando em uma região de memória fisicamente distinta. Isso reduz os conflitos entre processos e torna o sistema operacional mais seguro e confiável.

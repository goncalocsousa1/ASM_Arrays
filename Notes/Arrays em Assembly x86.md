### Strings também não existem

Na memória, tudo é representado em hexadecimal. Um array, assim como uma string, é simplesmente uma sequência contígua de dados do mesmo tamanho na memória.

A diferença é que a string é um "array especial" que contém valores que correspondem a caracteres na tabela ASCII. Além disso, as strings frequentemente incluem um carácter especial de terminação (\0), que é usado para sinalizar o fim da sequência.
Notas adicionais sobre strings:

- Em sistemas modernos, é comum utilizar Unicode em vez de ASCII, o que pode influenciar o tamanho e a codificação da string (ex.: UTF-8, UTF-16).
- Em Assembly, as strings podem ser manipuladas diretamente através de instruções como rep movsb (cópia de blocos) ou instruções específicas para processar caracteres como lodsb.
### Alocação dinâmica de memória

![https___dev-to-uploads s3 amazonaws com_uploads_articles_s81vxvgfylw0wfcf6if7](https://github.com/user-attachments/assets/5b2466fa-4eb4-4565-a732-2f342ea82b30)


- o layout é representado como uma área na memória do computador onde temos os endereços de memória mais baixos do programa em direção aos endereços mais altos que ficam no topo
- nos endereços de memória mais baixos, temos a seção `.text`, onde já vimos que é referente ao programa em si
- depois temos a **seção de dados** que contempla os dados inicializados `.data` e a seção a seguir que representa os dados não-inicializados `.bss`
- nos endereços mais altos, temos a _stack_ do programa, que armazena metadados tais como o nome do programa, seus argumentos e qualquer informação do programa que tenha um tamanho fixo cabendo dentro da stack, bem como chamadas de funções e seus respectivos argumentos
- a stack tem um formato de _pilha_ e "cresce pra baixo", ou seja, conforme adicionamos elementos na stack, esta cresce em direção aos endereços mais baixos na memória.
#### _Heap_:

- Entre a secção de dados e a _stack_, existe uma grande área de memória, frequentemente designada como _heap_.
- O _heap_ permite alocar memória de forma dinâmica, ou seja, ao contrário da alocação estática feita na secção `.data`, aqui os dados podem crescer ou ser libertados durante a execução do programa.

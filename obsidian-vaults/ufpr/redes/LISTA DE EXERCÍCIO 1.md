1. Quais as vantagens das redes de computadores? Descreva como as redes são importantes para você e para o mundo.


2. O que é um protocolo?


3. O que é um padrão?


4. De quantas camadas consiste o histórico modelo ISO/OSI? Descreva a funcionalidade de cada camada.


5. Quais as principais diferenças do modelo ISO/OSI para o modelo TCP/IP da Internet. Faça um paralelo das camadas de cada modelo. Mostre claramente a correspondência de camadas.


6. A Camada de Sessão (L5) não está presente no modelo TPC/IP da Internet, mas conseguimos usar sua funcionalidade de _checkpoints_ no _download_ de arquivos. Explique: (A) o que permite o uso de _checkpoints_? Como é possível usar esta funcionalidade se não há Camada de Sessão?


7. Quando vc se comunica pela Internet utiliza: PDU, segmento, pacote e quadro. De quais camadas são estas unidades de transmissão de dados? Como é seu encapsulamento em uma transmissão?


8. As redes físicas podem ser classificadas em duas grandes "famílias": LAN e WAN. Explique de que se trata. Quais as 2 principais diferenças entre estas famílias?


9. Desenhe um quadro Ethernet e explique cada um dos seus campos.


10. Explique o funcionamento do protocolo de Controle de Acesso ao Meio (MAC - Medium Access Control) da Ethernet, o CSMA/CD.


11. Explique por que a rede Ethernet é uma rede probabilística.


12. Cite contextos em que o uso de redes probabilísticas é proibido, ou seja deve ser usada uma rede determinística.


13. Um endereço IP é formado de duas partes, quais são elas? Quais classes foram definidas para este endereço? Como saber qual a classe do endereço?


14. Defina os quatro tipos de comunicação: unicast, multicast, broadcast, anycast.


15. O formato dos dados em uma rede pode seguir um de dois padrões: Little Endian e Big Endian. Explique seu funcionamento. Qual dos dois é adotado pela Internet?


16. Explique como o protocolo IP faz o roteamento dos pacotes. Lembre-se de descrever os dois tipos de roteamento direto e o roteamento indireto.


17. A tabela IP é também chamada tabela de roteamento. Explique: quantas colunas tem esta tabela?


18. O que é e para que serve o protocolo ARP? Descreva seu funcionamento.


19. Explique o funcionamento do protocolo RARP.


20. Em Redes de Computadores usamos "tabelas cache" a todo momento. O que é uma tabela cache? Como vc implementaria uma tabela cache?


21. Em que situação você recomendaria a uma empresa utilizar subredes?


22. Por que é importante garantir que uma organização tenha um único net-id na Internet?


23. Considere o endereço IP **202.39.10.111** e a máscara de subrede **255.255.255.192**. Responda: qual host está sendo endereçado? Quantas subredes internas a organização possui?


24. O CIDR permitiu que a versão 4 do protocolo IP pudesse continuar a funcionar na maior parte da Internet. Quais foram os problemas que esta abordagem de endereçamento resolveu? Como é a solução CIDR?


25. O protocolo IP oferece um serviço não confiável e não orientado à conexão. O que isso significa na prática?


26. Faça um desenho do header IP, explicando o propósito de cada campo.


27. Já que o protocolo IP não tem confirmações de recebimento, por que os datagramas tem identificadores?


28. Por que é necessário fragmentar um pacote IP? Explique onde e como um pacote fragmentado é recontituído.


29. Explique como são calculados os campos _TTL_ (Time To Live) e _checksum_ do header IP.


30. Considere que a sequência de palavras 0011, 0101 e 1010 acaba de chegar da Internet, junto com o checksum 1100. Algum bit veio errado? Mostre claramente como você chegou na resposta.

31. Explique como o comando `traceroute` é implementado. Qual protocolo ele usa?


32. Quais foram os tipos de mensagem ICMP vistas em sala de aula?


33. Quando um pacote IP é descartado na rede por qualquer motivo, uma mensagem ICMP é gerada para a origem. Responda: o ICMP torna então o IP confiável? Explique.


34. Quais entidades se comunicam usando o protocolo da camada de transporte? Quais entidades se comunicam usando o protocolo da camada de rede?


35. Quando puder escolher entre TCP e UDP como protocolo de transporte é **sempre** melhor escolher o TCP, pelos serviços que oferece. Entretanto há casos em que é obrigatório o uso do UDP. Descreva as 4 situações em que você é obrigado a escolher o protocolo UDP ao invés do protocolo TCP para programar a aplicação.


36. Uma máquina da Internet pode tem em geral um único endereço IP mas recebe pacotes para vários aplicações diferentes: e-mail, Web, etc. Como é que as aplicações destinatárias são identificadas?
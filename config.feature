            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de compras da EBAC SHOP

            Cénario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu clicar no produto 
            Devo ter várias opções de cores, tamanhos e a quantidade que eu quiser
            E ao clicar no botão "Adicionar ao carrinho"
            Então o produto deve ser adicionado ao meu carrinho

            Esquema do Cénario: Deve permitir apenas 10 produtos por venda 
            Quando eu clicar no produto
            E eu inserir a <quantidade> "11", <cor> e o <tamanho>
            Devo clicar no botão "Adicionar ao carrinho"
            Então devo ver uma <mensagem> de erro informando que excedi o limite de produtos

            Exemplos:
            | cor      | tamanho | quantidade |          resultado                |
            | amarelo  |    M    |   11       | "Excedeu o limite de produtos"    |
            | vermelho |    P    |   10       | "Produtos adicionados ao carrinho"|

            Cénario: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando eu estiver no carrinho 
            E clicar no botão "Limpar"
            Então o produto é retirado do carrinho


            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer e concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC SHOP

            Esquema do Cénario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencher o <nome>, <país>, <endereço>, <cidade>, <CEP>, <telefone>, e <e-mail>
            E clicar no botão "Concluir Cadastro"
            Então devo receber uma mensagem: "Cadastro efetuado com sucesso"

            Exemplos:             
            | Nome*               | Luis da Silva   |
            | País*               | Brasil          |
            | Endereço*           | Rua XXZ, 567    |
            | Cidade*             | São Paulo       |
            | CEP*                | 12345-678       |
            | Telefone*           | 11923456789     |
            | Endereço de e-mail* | luis2@gmail.com |


            Esquema do Cénario: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando inserir o <e-mail> com formato inválido
            E clico no botão "Concluir Cadastro"
            Então devo receber uma <mensagem> de alerta informando: "formato do e-mail é inválido"

            Exemplos:
            |Endereço de e-mail |         mensagem               |
            |  inválido.com     | "formato do e-mail é inválido" |
            |   errado.com      | "formato do e-mail é inválido" |

            Cénario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando não preencho nenhum dos campos obrigatórios
            E clico no botão "Concluir Cadastro"
            Então o sistema deve exibir uma mensagem de alerta: "Obrigatório preencher os campos*"




            #language:pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero me autenticar
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "claudio@cliente.com.br"
            E a senha "cliente@123"
            Então deve ser direcionado para tela checkout

            Cenário: Autenticação inválida
            Quando eu digitar usuário "fulano@cliente.com.br"
            E a senha "cliente@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuário
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | usuario                  | senha        | mensagem                    |
            | "fulano@cliente.com.br"  | "cliente@123 | "usuário ou senha inválido" |
            | "claudio@cliente.com.br" | "erro@123    | "usuário ou senha inválido" |

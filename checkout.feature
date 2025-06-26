#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu queira finalizar minha compra

Cenário: Cadastro inválido
Quando eu não preencher os campos obritatórios
E clicar no botão "FINALIZAR COMPRA"
Então os camposobrigatórios que estiverem faltando informação devem ser tremer na tela chamando a minha atenção para preenchimento

Cenário: Cadastro com campos vazios
Quando eu não preencher algum campo não obrigatório
E clicar no botão "FINALIZAR COMPRA"
Então deve exibir a mensagem de alerta "Existem campos em branco!"

Cenário: Verificação de formato de E-mail
Quando eu digitar o usuário <usuario>
E clicar em outro campo
Então deve exibir a <mensagem>

Exemplos:
| usuario               | mensagem                       |
| "gabriel@ebac.com.br" | "Usuário verificado!"          |
| "gabriel"             | "E-mail de usuário não válido" |
| "gabriel@ebac"        | "E-mail de usuário não válido" |
| "gabriel@ebac.com"    | "E-mail de usuário não válido" |

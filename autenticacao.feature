#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida
Quando eu inserir dados de <usuario> válidos
E inserir dados de <senha> válidos
Então eu sou direcionado para a tela de checkout dos meus produtos

Exemplos:
| usuario               | senha     |
| "gabriel@ebac.com.br" | "EBAC000" |

Cenário: Usuário com dados inválidos
Quando eu digito algum dos campos com informações inválidas
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


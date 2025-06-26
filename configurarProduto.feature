#language: pt

Funcionalidade: Compra de produto
Como cliente da EBAC-SHOP
Quero configurar meu produto
Para depois inserir no carrinho

Cenário: Configurar produto
Dado que eu selecione um produto na EBAC-SHOP 
Quando eu escolher algum <tamanho> no campo "Size"
E escolher uma <cor> no campo "Color"
E escolher a quantidade desejada
Então a imagem deve ser atualizada com as características selecionadas 
E a informação sobre a disponibilidade do produto com as características selecionadas deve ser disponibilizada.

Exemplos:
| tamanho | cor      |
| "XS"    | "Blue"   |
| "XS"    | "Orange" |
| "XS"    | "Red"    |
| "S"     | "Blue"   |
| "S"     | "Orange" |
| "S"     | "Red"    |
| "M"     | "Blue"   |
| "M"     | "Orange" |
| "M"     | "Red"    |
| "L"     | "Blue"   |
| "L"     | "Orange" |
| "L"     | "Red"    |
| "XL"    | "Blue"   |
| "XL"    | "Orange" |
| "XL"    | "Red"    |

Cenário: Quantidade desejada de produtos para compra maior que 10 unidades
Dado que a soma da quantidade de produtos selecionados para compra seja maior que 10
Quando eu pressionar o botão "COMPRAR"
Então deve exibir uma mensagem dizendo "A quantidade de itens para compra superou o limite de 10 itens. Revise o seu carrinho." 
E o usuário deve ser direcionado para a página do seu carrinho

Cenário: Resetando a customização do item
Dado que eu queira iniciar a customização do item que busco
Quando eu clicar no botão "Limpar"
Então as características do produto devem voltar ao estado original

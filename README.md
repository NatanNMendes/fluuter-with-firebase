# Flutter App com Login Google, Navegação e Cartões Dinâmicos

Este repositório contém o código-fonte de um aplicativo Flutter que integra funcionalidades de login com Google, navegação entre telas com `BottomNavigationBar`, e exibição de cartões (Cards) com informações dinâmicas.

## Funcionalidades

### Tela de Login (LoginScreen)
- O usuário pode fazer login utilizando um e-mail e senha, ou com a conta do Google, utilizando o pacote `google_sign_in`.
- Após o login bem-sucedido, o usuário é redirecionado para a tela principal (`HomeScreen`).

### Tela Principal (HomeScreen)
- Exibe um conteúdo personalizado de boas-vindas, com uma imagem e opções de configuração.
- Contém uma navegação inferior (`BottomNavigationBar`) que permite alternar entre a tela inicial (Home), a tela de pesquisa e configurações.

### Tela de Cartões (CardExampleScreen)
- Exibe uma lista de cartões com informações dinâmicas, como um evento fictício de "Glass Souls' World Tour".
- Cada cartão contém um botão que, ao ser pressionado, simula a compra de ingressos.

## Navegação
- O aplicativo utiliza o `BottomNavigationBar` para permitir a navegação entre diferentes telas (Home, Pesquisar, Configurações).
- Quando o usuário seleciona uma nova aba, a tela correspondente é exibida sem navegação repetida, garantindo uma experiência de usuário eficiente.

## Dependências
- `google_sign_in`: Para integração com o login do Google.
- `Material Design`: Para a construção das interfaces gráficas.

## Estrutura do Repositório
- `login_screen.dart`: Tela de login com autenticação via Google.
- `home_screen.dart`: Tela principal com a navegação inferior.
- `card_screen.dart`: Tela com cartões de eventos simulados.
- Outros arquivos de UI: Para composição das telas e navegação.

# 📦 Projeto: CRUD de Produtos no Almoxarifado (Java Servlets & JSP)

Este projeto acadêmico foi desenvolvido como parte da disciplina de **Sistemas Web I (CBTSWE1)**, ministrada pelo professor Wellington Tuler Moraes, no Instituto Federal de Educação, Ciência e Tecnologia de São Paulo (IFSP) — Campus Cubatão. O objetivo é implementar uma aplicação web completa de CRUD (Create, Read, Update, Delete) para o gerenciamento de produtos. A aplicação utiliza **Java Servlets**, páginas **JSP** e persiste os dados temporariamente em um banco de dados em memória.

## 🎯 Objetivos

- **Interface Web**: Desenvolver telas interativas via JSP, incluindo um menu principal (`index.jsp`) que direcione o usuário ao iniciar a aplicação.
- **Persistência em Memória**: Implementar as operações de armazenamento, leitura, atualização e exclusão utilizando uma lista estática na classe `Banco.java`, que atua como o repositório de dados simulado.
- **Roteamento e Controle**: Utilizar classes Servlet específicas (`NovoProdutoServlet`, `ListaProdutosServlet`, `AlteraProdutoServlet`, etc.) para orquestrar as requisições e transitar os objetos do tipo `Produto` entre o modelo e a visualização.
- **Página de Créditos**: Desenvolver uma página exclusiva (`creditos.jsp`) para a apresentação da dupla responsável pelo desenvolvimento.

## 🛠️ Ferramentas Utilizadas

- Java (Servlets / Jakarta EE)
- JSP (JavaServer Pages) e JSTL (`jstl-1.2.jar`)
- Eclipse IDE (Dynamic Web Project)
- HTML e CSS
- Apache Tomcat (Servidor Web)
- Git e GitHub

## 🗄️ Estrutura de Dados (Em Memória)

Diferente de sistemas com persistência em SGBDs, este projeto não requer um servidor de banco de dados externo. Os dados ficam armazenados na memória da aplicação durante o tempo de execução através da classe `Banco.java`.

A entidade gerenciada é **PRODUTOS**, que conta com os seguintes atributos:

| Atributo | Tipo de Dado | Descrição |
| :--- | :--- | :--- |
| **id** | `int` | Identificador único do produto. |
| **nome** | `String` | Nome ou título do produto. |
| **unidadeCompra** | `int` | Unidade de medida para a compra do item. |
| **descrição** | `String` | Detalhamento sobre as características do produto. |
| **qtdPrevisto Mes** | `double` | Previsão de quantidade necessária por mês. |
| **precoMaxComprado** | `double` | Teto de valor pago na compra do produto. |

## 🗂️ Estrutura do Projeto

```
📁 project-storeroom-servlet/
├── 📁 src/
│   └── 📁 br/com/ifsp/tp/servlet/
│       ├── 📄 AlteraProdutoServlet.java
│       ├── 📄 Banco.java
│       ├── 📄 ListaProdutosServlet.java
│       ├── 📄 MostraProdutoServlet.java
│       ├── 📄 NovoProdutoServlet.java
│       ├── 📄 Produto.java
│       └── 📄 RemoveProdutoServlet.java
├── 📁 WebContent/
│   ├── 📁 META-INF/
│   │   └── 📄 MANIFEST.MF
│   ├── 📁 WEB-INF/
│   │   └── 📁 lib/
│   │       └── 📄 jstl-1.2.jar
│   ├── 📄 creditos.jsp
│   ├── 📄 formAlteraProduto.jsp
│   ├── 📄 formNovoProduto.jsp
│   ├── 📄 index.jsp
│   └── 📄 listaProdutos.jsp
└── 📄 README.md
```

## 🚀 Como Executar

1.  **Configuração do Ambiente (Eclipse):**
      - Clone este repositório para a sua máquina local.
      - Importe a pasta do projeto no Eclipse: `File > Import > General > Existing Projects into Workspace`.
      - Certifique-se de que o servidor **Apache Tomcat** está configurado na sua IDE e associado a este projeto (`Project Properties > Target Runtimes`).
      - A biblioteca JSTL (`jstl-1.2.jar`) já está inclusa no diretório `WEB-INF/lib`. Garanta que ela seja reconhecida no `Java Build Path`.

2.  **Iniciando a Aplicação:**
      - Como não há banco de dados externo, nenhuma configuração extra de credenciais é necessária.
      - Clique com o botão direito na página inicial `index.jsp`.
      - Selecione `Run As > Run on Server`.
      - O navegador abrirá automaticamente o menu principal do sistema de almoxarifado em `http://localhost:8080/nome-do-projeto/index.jsp`.

## 👨‍🏫 Autores

  - **Stiven Richardy Silva Rodrigues** Estudante de Análise e Desenvolvimento de Sistemas | IFSP — Campus Cubatão  
    [@Stiven-Richardy](https://github.com/Stiven-Richardy)

  - **Guilherme Mendes de Sousa** Estudante de Análise e Desenvolvimento de Sistemas | IFSP — Campus Cubatão  
    [@Guilh3rme-M3ndes](https://github.com/Guilh3rme-M3ndes)

## 📚 Referências

  - Jakarta Standard Tag Library (JSTL): https://javaee.github.io/tutorial/jsf-el.html
  - Documentação de Java Servlets: https://javaee.github.io/tutorial/servlets.html
  - Eclipse Web Tools Platform (WTP): https://eclipse.org/webtools/

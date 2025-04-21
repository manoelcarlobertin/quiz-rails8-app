puts "Limpando quizzes existentes..."
Quiz.destroy_all

puts "Criando 10 quizzes sobre Ruby on Rails..."

Quiz.create(
  titulo: "O que é o padrão MVC no Rails?",
  descricao: "Explique os componentes Model, View e Controller e como eles interagem em uma aplicação Rails [1]."
)

Quiz.create(
  titulo: "Qual a função das Migrações no Rails?",
  descricao: "Descreva o propósito das migrations e como elas são usadas para gerenciar o esquema do banco de dados [1, 3]."
)

Quiz.create(
  titulo: "O que é o Active Record?",
  descricao: "Explique o papel do Active Record na interação com o banco de dados em aplicações Rails [1, 2]."
)

Quiz.create(
  titulo: "Como definir associações entre Models no Rails?",
  descricao: "Demonstre como usar `belongs_to` e `has_many` para criar relacionamentos entre models, como entre Post e Comment [4-6]."
)

Quiz.create(
  titulo: "Qual a utilidade das Rotas no Rails?",
  descricao: "Explique como o sistema de rotas do Rails mapeia URLs para Controllers e Actions [1, 7, 8]."
)

Quiz.create(
  titulo: "O que são Gems no contexto do Rails?",
  descricao: "Descreva o que são gems e como elas podem adicionar funcionalidades a uma aplicação Rails, como o `rails-i18n` [9] ou `friendly_id` [10]."
)

Quiz.create(
  titulo: "Como utilizar o helper `link_to` nas Views?",
  descricao: "Mostre como criar links em suas views utilizando o helper `link_to` [11]."
)

Quiz.create(
  titulo: "O que é e para que serve o arquivo `Gemfile`?",
  descricao: "Explique a função do `Gemfile` e como ele gerencia as dependências da sua aplicação Rails [12]."
)

Quiz.create(
  titulo: "Como realizar buscas em Models com PostgreSQL?",
  descricao: "Descreva como implementar funcionalidades de busca utilizando o PostgreSQL e, potencialmente, gems como `pg_search` [13-15]."
)

Quiz.create(
  titulo: "Qual a importância de testar aplicações Rails?",
  descricao: "Discuta a importância dos testes (unitários, de integração, de sistema) para garantir a qualidade e a manutenção de uma aplicação Rails [5, 16]."
)

puts "10 quizzes criados com sucesso!"

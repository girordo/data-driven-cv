skills <- tribble(
  ~area, ~skills, ~detail,
  "Tecnologia", "Javascript", "Experiência com Javascript em projetos front-end usando React, Redux e Jest.",
  "Tecnologia", "Typescript", "Uso do Typescript com Prisma para acesso a bancos de dados.",
  "Tecnologia", "Elixir", "Exploração de Elixir em projetos pessoais usando Phoenix e Ecto.",
  "Tecnologia", "HTML", "Criação de páginas web semânticas e acessíveis.",
  "Tecnologia", "CSS", "Estilização de projetos usando SASS e metodologia BEM.",
  "Tecnologia", "Rust", "Aprendizado de Rust para projetos secundários.",
  "Tecnologia", "DevOps", "Experiência com Docker e integração contínua usando Jenkins.",
  "Tecnologia", "Bancos de Dados", "Trabalho com bancos de dados SQL e NoSQL.",
  "Linguagens", "Português", "Língua nativa",
  "Linguagens", "Inglês", "Fluente",
)

edu <- tribble(
  ~degree, ~startYear, ~endYear, ~inst, ~where, ~detail,
  "Bacharelado em Ciência da Computação", 2015, 2019, "Universidade Imaginária", "Cidade Fictícia, Estado Fictício, País Fictício", "Estudos em algoritmos, estruturas de dados e programação orientada a objetos.",
  "Mestrado em Engenharia de Software", 2020, 2022, "Universidade Fictícia", "Cidade Fictícia, Estado Fictício, País Fictício", "Pesquisa em desenvolvimento de software, foco em metodologias ágeis e arquiteturas escaláveis.",
)

work <- tribble(
  ~title, ~unit, ~startMonth, ~startYear, ~endMonth, ~endYear, ~where, ~detail,
  "Engenheiro de Software", "TechSoft", "Janeiro", 2020, "Dezembro", 2022, "Cidade Fictícia, Estado Fictício", "Trabalhei como parte de uma equipe no desenvolvimento de aplicativos web usando React e Redux.",
  "Desenvolvedor Full Stack", "WebTech", "Março", 2018, "Novembro", 2019, "Cidade Fictícia, Estado Fictício", "Participei do desenvolvimento de um aplicativo full stack utilizando Node.js, React e MongoDB.",
  "Estagiário de Desenvolvimento", "ByteCorp", "Julho", 2017, "Dezembro", 2017, "Cidade Fictícia, Estado Fictício", "Ganhei experiência prática trabalhando em projetos de desenvolvimento de software.",
)

honors <- tribble(
  ~area, ~accomplishment, ~year, ~where, ~detail,
  "Reconhecimento Acadêmico", "Melhor Aluno de Computação", 2019, "Universidade Imaginária", "Premiado por excelência acadêmica na área de Computação.",
  "Competição de Programação", "1º Lugar em Algoritmos", 2018, "Evento de Programação Fictício", "Conquista do primeiro lugar na competição de programação de algoritmos.",
)

projects <- tribble(
  ~area, ~accomplishment, ~year, ~where, ~detail,
  "Desenvolvimento de Software", "Sistema de Gerenciamento de Tarefas", 2022, "TechSoft", "Liderança na criação de um sistema de gerenciamento de tarefas usando React e Redux.",
  "Desenvolvimento de Software", "Plataforma de E-Commerce", 2021, "Empresa Fictícia", "Participação na equipe de desenvolvimento de uma plataforma de comércio eletrônico.",
)

certifications <- tribble(
  ~area, ~accomplishment, ~year, ~where, ~detail,
  "Certificações Profissionais", "Certificação em React", 2021, "Plataforma de Ensino Online Fictícia", "Obtenção da certificação em React para comprovar habilidades na biblioteca.",
  "Certificações Profissionais", "Certificação em Docker", 2020, "Plataforma de Ensino Online Fictícia", "Conquista da certificação em Docker para demonstrar conhecimentos em contêineres.",
)
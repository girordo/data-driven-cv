work <- tribble(
  ~title, ~unit, ~startMonth, ~startYear, ~endMonth, ~endYear, ~where, ~detail,
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Trabalhando como Engenheiro Frontend utilizando React e seu ecossistema (CRA, Next.js, usando ES6+, React Hooks, React Query, Redux, Context API, Jest, RTL e nosso sistema de design)",
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Mantive o código geral, mantendo todas as bibliotecas atualizadas",
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Desenvolvendo novas funcionalidades seguindo os padrões de código da empresa e as melhores práticas. Iterado através do SCRUM a partir do quadro usando Zenhub, Jira e Monday para gerenciamento",
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Refatorando componentes antigos para ES6+ (de componentes de classe para componentes funcionais).",
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Criei um guia de testes unitários para ajudar a equipe.",
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Desenvolvi novos testes unitários e melhorei a porcentagem de cobertura de testes",
  "Engenheiro Frontend", "Spocket", "Julho", 2022, "Presente", NA, "Canadá - Remoto", "Implementei um novo pipeline de CI/CD usando Github Actions, AWS S3 e Cloudfront",
  "Engenheiro de Software", "Dasa", "Abril", 2021, "Julho", 2022, "São Paulo - Remoto", "Trabalhei como Engenheiro Frontend com React (usando ES6+, React Hooks, Context API, React Testing Library e Ant Design).",
  "Engenheiro de Software", "Dasa", "Abril", 2021, "Julho", 2022, "São Paulo - Remoto", "Desenvolvi novas funcionalidades e corrigi bugs iterados através do SCRUM a partir do quadro usando Jira.",
  "Engenheiro de Software", "Dasa", "Abril", 2021, "Julho", 2022, "São Paulo - Remoto", "Refatorei componentes antigos para ES6+ (de componentes de classe para componentes funcionais), melhorando a DX do nosso sistema de design",
  "Engenheiro de Software", "Dasa", "Abril", 2021, "Julho", 2022, "São Paulo - Remoto", "Criei um padrão de código baseado nas melhores práticas da comunidade",
  "Engenheiro de Software", "Dasa", "Abril", 2021, "Julho", 2022, "São Paulo - Remoto", "Criei novos testes unitários e melhorei a cobertura de testes do código para 80% (padrões da empresa)",
  "Engenheiro de Software", "Dasa", "Abril", 2021, "Julho", 2022, "São Paulo - Remoto", "Melhorei o pipeline de CI/CD usando Jenkins, reduzindo problemas e tempo de processamento (redução de 30%)",
  "Engenheiro Full Stack", "Softwrap", "Agosto", 2020, "Abril", 2021, "São Paulo - Remoto", "Trabalhei com React e React Native, Node.js, Firebase e Docker",
  "Engenheiro Full Stack", "Softwrap", "Agosto", 2020, "Abril", 2021, "São Paulo - Remoto", "Fui responsável por coordenar uma equipe específica para o desenvolvimento de um aplicativo híbrido usando React Native e Firebase para vales-refeição de uma empresa divulgada",
  "Engenheiro Full Stack", "Softwrap", "Agosto", 2020, "Abril", 2021, "São Paulo - Remoto", "Liderei uma equipe de 3 desenvolvedores",
  "Engenheiro Full Stack", "Softwrap", "Agosto", 2020, "Abril", 2021, "São Paulo - Remoto", "Ajudei e ensinei os desenvolvedores menos experientes",
  "Engenheiro Full Stack", "Softwrap", "Agosto", 2020, "Abril", 2021, "São Paulo - Remoto", "Criei um aplicativo React Native perfeitamente alinhado para a prestação de contas de empresas de contabilidade",
  "Engenheiro Full Stack", "SmartEnvios", "Fevereiro", 2020, "Junho", 2020, "Ribeirão Preto", "Trabalhei como Engenheiro Full Stack com React, Gatsby, TailwindCSS, Node.js, PostgreSQL, MongoDB e Docker",
  "Engenheiro Full Stack", "SmartEnvios", "Fevereiro", 2020, "Junho", 2020, "Ribeirão Preto", "Criei o site da empresa usando Gatsby e TailwindCSS",
  "Engenheiro Full Stack", "SmartEnvios", "Fevereiro", 2020, "Junho", 2020, "Ribeirão Preto", "Desenvolvi crawlers usando Node.js, Puppeteer e Cheerio para web scraping.",
  "Engenheiro Full Stack", "SmartEnvios", "Fevereiro", 2020, "Junho", 2020, "Ribeirão Preto", "Implantei no LightSail, fazendo upload dos dados de câmbio para o S3 e registrando todas as operações no PostgreSQL.",
  "Engenheiro Full Stack", "SmartEnvios", "Fevereiro", 2020, "Junho", 2020, "Ribeirão Preto", "O processo de monitoramento foi feito usando PM2 e a implantação desse serviço relacionado.",
)

edu <- tribble(
  ~degree, ~startYear, ~endYear, ~inst, ~where, ~detail,
  "Bacharelado em Informática Biomédica", 2012, 2020, "Universidade de São Paulo", "Ribeirão Preto, São Paulo, Brasil", "Durante o meu Bacharelado em Informática Biomédica, trabalhei como pesquisador estagiário em bioinformática",
  "Bacharelado em Informática Biomédica", 2012, 2020, "Universidade de São Paulo", "Ribeirão Preto, São Paulo, Brasil", "Adquiri experiência em análise de dados usando R, mais especificamente ggplot2, tidyr, dplyr, pacotes do bioconductor (como limma e GEOQuery), e a criação de dashboards usando Shiny.",
  "Bacharelado em Informática Biomédica", 2012, 2020, "Universidade de São Paulo", "Ribeirão Preto, São Paulo, Brasil", "Também cursei disciplinas como Algoritmos e Estruturas de Dados, Programação Orientada a Objetos, Bancos de Dados e SQL, Aprendizado de Máquina, Sistemas Operacionais e Sistemas Distribuídos.",
  "Bacharelado em Informática Biomédica", 2012, 2020, "Universidade de São Paulo", "Ribeirão Preto, São Paulo, Brasil", "Aprendi o básico de C, C++, Java e R.",
)

skills <- tribble(
  ~area, ~skills, ~detail,
  "Tecnologia", "Javascript", "Minha linguagem de programação nativa. Meu primeiro contato foi em 2013, mas comecei a trabalhar alguns anos depois disso.",
  "Tecnologia", "Javascript", "Trabalho há mais de 6 anos. Tenho lidado com isso no front-end com React, usando styled-components, Ant Design, TailwindCSS para estilização.",
  "Tecnologia", "Javascript", "Para gerenciamento de estado, uso Context API, Redux, Redux Toolkit (RTK), Zustand.",
  "Tecnologia", "Javascript", "Também utilizei React Query da Tanstack para gerenciamento de estado assíncrono.",
  "Tecnologia", "Javascript", "Utilizo axios e fetch API para consumir diferentes backends",
  "Tecnologia", "Javascript", "Para testes unitários, utilizo React Testing Library (RTL) e Jest",
  "Tecnologia", "Javascript", "Tenho trabalhado com Next.js usando SSR e ISR",
  "Tecnologia", "Javascript", "Utilizei Gatsby para projetos de blog e SSG.",
  "Tecnologia", "Javascript", "Tenho usado Node.js para backend com Express, NestJS e Fastify, apenas por diversão e para fins de aprendizado",
  "Tecnologia", "Javascript", "Criei scrapers e crawlers usando Puppeteer e Cheerio.",
  "Tecnologia", "Javascript", "Sempre seguindo as melhores práticas do ES6+.",
  NA, "Typescript", "Utilizo Zod para validação de esquemas",
  NA, "Typescript", "Para lidar com bancos de dados, utilizo Prisma (usado com Next.js, NestJS e Fastify)",
  NA, "Typescript", "Em algumas ocasiões, trabalho com kysely e drizzle",
  NA, "Typescript", "Costumava usar vite em projetos com Typescript",
  NA, "Elixir", "Uma das minhas linguagens secundárias para projetos pessoais",
  NA, "Elixir", "Utilizo Phoenix para criar APIs e LiveView para projetos fullstack.",
  NA, "Elixir", "Lidando com bancos de dados relacionais e não relacionais usando Ecto.",
  NA, "Elixir", "Utilizando as ferramentas de análise de código: credo e dialyxir.",
  NA, "HTML", "Tenho usado HTML seguindo as melhores práticas com semântica e o guia de acessibilidade (a11y) para criar aplicativos web semânticos e acessíveis.",
  NA, "CSS", "Tenho usado CSS puro (Vanilla CSS) ou SASS como pré-processador, trabalhando com a metodologia BEM e seguindo as melhores práticas para um CSS bem estruturado e bonito.",
  NA, "Rust", "Linguagem secundária para criar projetos pessoais",
  NA, "Rust", "Usando a runtime tokio para assincronicidade",
  NA, "Rust", "Usando frameworks como actix-web, axum, gotham e tide",
  NA, "Rust", "Utilizando ORMs sqlx e diesel",
  NA, "R", "Usando pacotes do Bioconductor como limma e GEOQuery.",
  NA, "R", "Manipulação e visualização de dados usando ggplot2, tidyr, dplyr",
  NA, "R", "Integrações com bancos de dados relacionais e não relacionais.",
  NA, "R", "Criação de painéis (dashboards) usando aplicativos Shiny.",
  NA, "Linux", "Entusiasta de software livre desde 2004. Tudo o que eu queria era fazer algumas chamadas telefônicas gratuitas e isso me levou ao Linux e outras coisas como shell scripting.",
  NA, "DevOps", "Trabalhei com virtualização usando Docker.",
  NA, "DevOps", "Integração contínua e implantação contínua com Jenkins, CircleCI, Github Actions.",
  NA, "DevOps", "Cloudflare, Netlify e Vercel para projetos pessoais.",
  NA, "DevOps", "Utilizo SonarQube para avaliação da qualidade do código e Fortify para garantir a segurança do código.",
  NA, "DevOps", "Trabalhei usando GCP. Atualmente, trabalho com AWS (EC2, S3, Cloudfront, LightSail, Amplify)",
  NA, "Bancos de Dados", "Relacionais como PostgreSQL",
  NA, "Bancos de Dados", "Não relacionais como MongoDB",
  NA, "Bancos de Dados", "Trabalhei com Firebase em alguns projetos e Supabase para projetos pessoais",
  "Linguagens", "Português", "Falante nativo",
  NA, "Inglês", "Nível C1",
)

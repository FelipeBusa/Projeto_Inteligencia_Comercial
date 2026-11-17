# 📊 Projeto de Inteligência Comercial | Olist Brazilian E-Commerce

## Cenário Empresarial Fictício

Uma empresa brasileira de comércio eletrônico deseja aprimorar sua gestão comercial por meio da análise de dados, identificando oportunidades de crescimento, avaliando o desempenho das vendas e compreendendo o comportamento dos clientes.

Nesse cenário, atuando como Analista de Dados com foco em Inteligência Comercial, o objetivo é transformar dados transacionais em informações estratégicas que apoiem a tomada de decisão das lideranças comerciais.

A análise será desenvolvida utilizando a base pública **Olist Brazilian E-Commerce Dataset**, que reúne informações de pedidos, clientes, produtos, vendedores, pagamentos e avaliações de compras realizadas no comércio eletrônico brasileiro.

### Problemas de Negócio
O projeto busca responder às seguintes questões:
- Quais regiões e estados apresentam os melhores resultados comerciais?
- Quais produtos e categorias geram maior faturamento?
- Quais vendedores apresentam melhor desempenho?
- Quais clientes reduziram sua frequência de compra?
- Como evoluem o faturamento e o volume de pedidos ao longo dos meses?
- Quais categorias e regiões apresentam oportunidades de crescimento?
- Quais clientes apresentam potencial de recuperação?
- Quais fatores podem estar relacionados ao cancelamento ou à não conclusão dos pedidos?
- Como está a evolução dos principais indicadores comerciais?

## Objetivos do Projeto
- Desenvolver um processo estruturado de extração, transformação e carregamento de dados (ELT);
- Construir uma estrutura analítica em banco de dados relacional;
- Aplicar técnicas de análise exploratória para identificar padrões e oportunidades comerciais;
- Desenvolver indicadores de desempenho (KPIs) para acompanhamento dos resultados;
- Construir dashboards gerenciais utilizando Power BI;
- Transformar os resultados das análises em insights e recomendações para o negócio.

## Etapas do Projeto
**1. Entendimento do Negócio (Business Understanding)**  
Definição do cenário empresarial, identificação dos problemas comerciais, objetivos da análise e indicadores necessários para apoiar a tomada de decisão.

**2. Extração e transformação dos dados (ELT)**  
Coleta dos arquivos da base Olist, avaliação da qualidade dos dados, tratamento de inconsistências e organização das informações para análise.

**3. Banco de dados e modelagem**  
Estruturação das tabelas, definição dos relacionamentos, construção de consultas SQL e desenvolvimento de um modelo analítico adequado às necessidades do negócio.

**4. Análise exploratória (EDA)**  
Investigação dos dados utilizando Python, Pandas e bibliotecas de visualização, identificando padrões, sazonalidades, tendências, anomalias e oportunidades comerciais.

**5. Business Intelligence**  
Desenvolvimento de dashboards no Power BI, com indicadores, filtros, comparativos temporais e análises gerenciais.

**6. Insights e recomendações** 
Interpretação dos resultados, identificação de oportunidades e elaboração de recomendações estratégicas fundamentadas nos dados.

## Indicadores comerciais (KPIs)

| Indicador | Descrição |
|---------|----------|
| Faturamento | Receita gerada pelos pedidos |
| Crescimento (%) | Variação do faturamento em relação ao período anterior |
| Ticket médio | Valor médio por pedido |
| Volume de vendas | Quantidade de pedidos e itens comercializados |
| Performance de vendedores | Resultado comercial por vendedor |
| Clientes ativos | Clientes que realizaram compras no período |
| Frequência de compra | Recorrência de compras dos clientes |
| Mix de produtos | Diversidade de produtos comercializados |
| Performance regional | Resultados por região e estado |
| Taxa de cancelamento | Proporção de pedidos cancelados |
| Taxa de recompra | Percentual de clientes que realizaram novas compras |
| Prazo de entrega | Tempo entre a compra e a entrega do pedido| 

> **Observação:** indicadores como atingimento de metas e margem de contribuição poderão ser incorporados em etapas futuras, caso sejam construídas bases complementares com dados simulados ou informações adicionais.

## Tecnologias e ferramentas
- **Python:** extração, manipulação e análise de dados;  
- **Pandas e NumPy:** tratamento e processamento dos dados;  
- **SQL:** consultas, transformação e análise dos dados;  
- **PostgreSQL:** armazenamento e estruturação do banco de dados;  
- **Power BI:** visualização de dados e construção de dashboards;  
- **Git e GitHub:** versionamento e documentação do projeto.

## Fonte de dados
**Olist Brazilian E-Commerce Dataset** 
Base pública disponibilizada pela Olist no Kaggle, contendo informações de aproximadamente 100 mil pedidos realizados entre 2016 e 2018.
Fonte: [Kaggle – Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

## Resultados esperados
Ao final do projeto, espera-se desenvolver uma solução analítica de Inteligência Comercial capaz de:
- Consolidar informações comerciais em uma estrutura analítica;
- Monitorar indicadores de desempenho;
- Identificar tendências e oportunidades de crescimento;
- Avaliar o comportamento de clientes e vendedores;
- Apoiar decisões estratégicas por meio de análises orientadas a dados.

## Status do projeto
🚧 Em desenvolvimento
import 'package:enemize/palavras_giradas/models/charada.dart';
import 'package:enemize/shared/models/card_de_estudo.dart';

List<Charada> bancoDeDados = [
  geoEquador,
  geoInverno,
  geoLegenda,
  geoPeriodo,
  geoRotacao,
  histEscrita,
  histEsparta,
  histMedicas,
  histPlantas,
  histRegadio,
];

Charada geoPeriodo = Charada(
  pergunta: 'Tempo que um planeta leva para completar uma volta ao redor do Sol.',
  resposta: 'Período',
  disciplina: 'Geografia',
  card: CardDeEstudo(
    titulo: 'Translação',
    conteudo: '''Translação é o movimento da Terra ao redor do Sol, responsável pelas estações do ano. 
O tempo necessário para completar uma órbita recebe o nome de período. 
No caso da Terra, esse período dura aproximadamente 365 dias, 5 horas, 48 minutos e 45 segundos, formando o ano trópico. Como esse tempo não é exato em dias inteiros, ocorre um acúmulo de horas ao longo dos anos. 
O ano bissexto é adotado para corrigir essa diferença, acrescentando um dia ao mês de fevereiro a cada quatro anos.''',
    disciplina: 'Geografia',
  ),
);

Charada geoRotacao = Charada(
  pergunta: 'Movimento da Terra que a faz girar em torno do seu próprio eixo, com duração de 24 horas.',
  resposta: 'Rotação',
  card: CardDeEstudo(
    titulo: 'Rotação',
    conteudo: '''Rotação é o movimento da Terra em torno de seu próprio eixo, com duração aproximada de 24 horas. 
É realizada de oeste para leste, o que faz o Sol aparentar nascer no leste e se pôr no oeste. 
Esse movimento é responsável pela sucessão dos dias e das noites. 
Ao girar, diferentes partes do planeta são iluminadas pelo Sol enquanto outras permanecem na sombra. 
A rotação também fundamenta a divisão dos fusos horários no mundo.''',
    disciplina: 'Geografia',
  ),
  disciplina: 'Geografia',
);

Charada geoInverno = Charada(
  pergunta:
      'Iniciado em dezembro no hemisfério Norte e em junho no Sul, os dias são mais curtos e as noites mais longas.',
  resposta: 'Inverno',
  card: CardDeEstudo(
    titulo: 'Solstício',
    conteudo:
        '''Solstício é o momento em que os raios solares incidem perpendicularmente sobre um dos trópicos, resultando na maior diferença entre a duração do dia e da noite.  
Em junho, ocorre no Trópico de Câncer, iniciando o verão no hemisfério Norte e o inverno no Sul.  
Em dezembro, ocorre no Trópico de Capricórnio, marcando o início do verão no hemisfério Sul e do inverno no Norte.''',
    disciplina: 'Geografia',
  ),
  disciplina: 'Geografia',
);

Charada geoEquador = Charada(
  pergunta: 'Linha do (?): divide o planeta nos hemisférios Norte e Sul; principal paralelo, latitude zero.',
  resposta: 'Equador',
  card: CardDeEstudo(
    titulo: 'Linha do Equador',
    conteudo:
        '''Principal paralelo da Terra, corresponde à latitude zero e divide o planeta nos hemisférios Norte e Sul.  
Marca a faixa de maior incidência solar ao longo do ano, característica da zona intertropical.  
Nessa região localizam-se formações como as florestas tropicais, a exemplo da Amazônia.  
Outros paralelos importantes delimitam zonas climáticas: os Trópicos de Câncer e Capricórnio e os Círculos Polares Ártico e Antártico.''',
    disciplina: 'Geofrafia',
  ),
  disciplina: 'Geografia',
);

Charada geoLegenda = Charada(
  pergunta: 'Elemento do mapa que explica o significado de cores, símbolos e convenções.',
  resposta: 'Legenda',
  card: CardDeEstudo(
    titulo: 'Elementos Cartográficos',
    conteudo: '''Os elementos cartográficos são componentes que permitem a leitura e a interpretação dos mapas.  
O título indica o tema ou o assunto representado.  
A legenda explica o significado das cores, símbolos e convenções utilizadas.  
A escala expressa a relação proporcional entre o espaço real e sua representação.  
A orientação indica as direções, geralmente com a referência do Norte.''',
    disciplina: 'Geografia',
  ),
  disciplina: 'Geografia',
);

Charada histEscrita = Charada(
  pergunta: 'Marca a transição da pré-história, permitindo registro, controle e organização da vida social.',
  resposta: 'Escrita',
  card: CardDeEstudo(
    titulo: 'Pré-história',
    conteudo: '''A pré-história refere-se ao período anterior ao surgimento da escrita, mas não à ausência de história.
Esse termo hoje é questionado, pois ignora sociedades sem escrita, mas culturalmente complexas. 
O estudo desse período é feito principalmente pela arqueologia, por meio de vestígios materiais.''',
    disciplina: 'História',
  ),
  disciplina: 'História',
);

Charada histPlantas = Charada(
  pergunta: 'Domesticação de (?): marcou a Revolução Agrícola, permitiu a sedentarização e uma explosão demográfica.',
  resposta: 'Plantas',
  card: CardDeEstudo(
    titulo: 'Revolução Agrícola',
    conteudo: '''A Revolução Agrícola ocorreu no Neolítico com a domesticação de plantas e animais. 
Esse processo permitiu a sedentarização humana, com a formação das primeiras aldeias. 
A produção de alimentos levou ao crescimento populacional, caracterizando uma explosão demográfica. 
O excedente agrícola possibilitou a divisão do trabalho e maior complexidade social. 
Muitas plantas domesticadas nesse período formam a base da alimentação humana atual. 
Essas mudanças marcaram uma das transformações mais importantes da história humana.''',
    disciplina: 'História',
  ),
  disciplina: 'História',
);

Charada histRegadio = Charada(
  pergunta:
      'Civilizações de (?): organizadas ao longo de grandes rios, dependentes do controle de suas cheias e vazões.',
  resposta: 'Regadio',
  card: CardDeEstudo(
    titulo: 'Civilizações Hidráulicas',
    conteudo:
        '''As civilizações hidráulicas desenvolveram-se às margens de grandes rios, como o Egito no rio Nilo e a Mesopotâmia entre os rios Tigre e Eufrates.
O controle das cheias por meio de canais e diques de irrigação permitiu a agricultura de regadio.
Esse sistema garantiu produção agrícola regular, excedentes e o crescimento do comércio e dos centros urbanos.
A necessidade de organizar obras hidráulicas fortaleceu o poder político e administrativo nessas regiões.''',
    disciplina: 'História',
  ),
  disciplina: 'História',
);

Charada histEsparta = Charada(
  pergunta: 'Pólis grega marcada pelo militarismo, disciplina rígida e educação voltada para a guerra.',
  resposta: 'Esparta',
  card: CardDeEstudo(
    titulo: 'Esparta',
    conteudo: '''Esparta foi uma cidade-estado localizada na região da Lacônia, na Grécia Antiga. 
Sua sociedade era fortemente militarizada e valorizava a disciplina e a obediência. 
A educação espartana preparava os cidadãos para a guerra desde a infância. 
Politicamente, possuía um governo oligárquico, com dois reis e o Conselho de Anciãos. 
A economia baseava-se na agricultura, sustentada pelo trabalho dos hilotas, servos sob o domínio do Estado. 
Esparta rivalizou com Atenas na Guerra do Peloponeso.''',
    disciplina: 'História',
  ),
  disciplina: 'História',
);

Charada histMedicas = Charada(
  pergunta: 'Guerras (?) entre gregos e persas que marcaram o período clássico da Grécia.',
  resposta: 'Médicas',
  card: CardDeEstudo(
    titulo: 'Guerras Médicas',
    conteudo: '''As Guerras Médicas foram conflitos entre as cidades-Estado gregas e o Império Persa. 
O nome “médicas” deriva dos medos, povo que integrava o império persa. 
O conflito começou com a Revolta da Jônia e a tentativa persa de expandir seu domínio sobre a Grécia. 
Batalhas como Maratona, Termópilas e Salamina marcaram o confronto. 
A vitória grega fortaleceu Atenas, que liderou a Liga de Delos. 
Esse processo contribuiu para o auge do Período Clássico.''',
    disciplina: 'História',
  ),
  disciplina: 'História',
);

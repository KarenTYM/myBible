//
//  Perguntas.swift
//  myBible
//
//  Created by Fabio Makihara on 02/03/21.
//

import Foundation


let quisArray:[Pergunta] = [Pergunta(numDaPergunta: 1,
                                     pergunta: "Qual o nome e a idade da pessoa mais velha mencionada na Bíblia?",
                                     respA: "Enos, viveu 905 anos",
                                     respB: "Noé, viveu 990 anos",
                                     respC: "Matusalém, viveu 969 anos",
                                     respD: "Rainha Ester, viveu 859 anos",
                                     respCerta: "C",
                                     comentario: "Matusalém (ou Metusalém) viveu 969 anos. Ele era filho de Enoque, que andou com Deus e foi o avô de Noé."),
                            Pergunta(numDaPergunta: 2,
                                    pergunta: "Qual desses não teve o seu nome mudado na Bíblia?",
                                    respA: "Sara",
                                    respB: "Pedro",
                                    respC: "Jacó",
                                    respD: "Davi",
                                    respCerta: "D",
                                    comentario: "Davi não teve seu nome mudado. Sara era Sarai (Gn.17:15), Jacó tornou-se Israel (Gn. 32.28) e Pedro era Simão (João 1:42)"),
                            Pergunta(numDaPergunta: 3,
                                    pergunta: "Qual dos nomes de Deus Moisés deveria dar aos israelitas, quando falasse de quem tinha lhe enviado?",
                                    respA: "Elohim",
                                    respB: "El Shadday",
                                    respC: "Eu sou o que sou",
                                    respD: "Eu sou o Senhor",
                                    respCerta: "C",
                                    comentario: "'Eu sou o que Sou' foi a resposta dada por Deus a Moisés, quando perguntou sobre o Seu nome. Cf. Êxodo 3:13-14."),
                            Pergunta(numDaPergunta: 4,
                                    pergunta: "Sobre Samuel, o que não é verdade?",
                                    respA: "Sua mãe se chamava Ana",
                                    respB: "Ungiu 3 reis de Israel: José, Saul e Davi",
                                    respC: "Sucedeu o profeta Eli",
                                    respD: "Teve uma visão enquanto ainda era muito novo",
                                    respCerta: "B",
                                    comentario: "O profeta Samuel ungiu a Saul e Davi como reis de Israel. José não foi rei. Foi governador no Egito muitos anos antes."),
                            Pergunta(numDaPergunta: 5,
                                    pergunta: "Que animal falou com Balaão?",
                                    respA: "jumenta",
                                    respB: "camelo",
                                    respC: "cordeiro",
                                    respD: "pomba",
                                    respCerta: "A",
                                    comentario: "O Senhor fez a jumenta falar com Balaão quando este ia ao encontro de Balaque para amaldiçoar o povo de Deus em troca de riquezas. Cf. Números 22:28"),
                            Pergunta(numDaPergunta: 6,
                                    pergunta: "Enquanto pastor de ovelhas, Davi protegeu seu rebanho de dois animais perigosos. Quais?",
                                    respA: "serpente e dromedário",
                                    respB: "urso e leão",
                                    respC: "cobra e lobo",
                                    respD: "urso e escorpião",
                                    respCerta: "B",
                                    comentario: "Um leão e um urso foram os animais que Davi matou. Cf. 1 Samuel 17:34-37"),
                            Pergunta(numDaPergunta: 7,
                                    pergunta: "Quando bebê, como Moisés foi salvo do decreto infanticida do Faraó?",
                                    respA: "Foi levado às pressas para fora do Egito",
                                    respB:"Foi escondido dentro de uma caverna",
                                    respC: "Foi colocado num cesto e lançado no rio",
                                    respD: "Foi levado ao templo para servir a Deus",
                                    respCerta: "C",
                                    comentario: "Moisés foi colocado num cestinho e deixado à beira rio. A filha do Faraó viu e adotou-o como seu filho."),
                            Pergunta(numDaPergunta: 8,
                                    pergunta: "Quantos eram os discípulos mais próximos de Jesus?",
                                    respA: "12",
                                    respB: "11",
                                    respC: "10",
                                    respD: "13",
                                    respCerta: "A",
                                    comentario: "Jesus escolheu 12 discípulos que costumavam acompanhá-lo durante todo o seu ministério. Cf. Lucas 6:12-16"),
                            Pergunta(numDaPergunta: 9,
                                    pergunta: "Complete o versículo: 'Porque Deus tanto amou o mundo...",
                                    respA: "que deu o seu Filho Unigênito, para que todo o que nele crer não pereça, mas tenha a vida eterna.' João 3:16",
                                    respB: "que enviou seu filho ao mundo, para que o mundo fosse salvo por ele. Jo. 6:16",
                                    respC: "ao ponto de sermos chamados filhos seus, e de fato somos. 1 Jo. 3:1",
                                    respD: "que veio para o que era seu, mas o seus não o receberam. Jo. 1:11",
                                    respCerta: "A",
                                    comentario: "'Porque Deus tanto amou o mundo que deu o seu Filho Unigênito, para que todo o que nele crer não pereça, mas tenha a vida eterna.' João 3:16"),
                            Pergunta(numDaPergunta: 10,
                                    pergunta: "Qual o nome da ilha onde João escreveu o livro de Apocalipse?",
                                    respA: "Creta",
                                    respB: "Malta",
                                    respC: "Patmos",
                                    respD: "Pérgamo",
                                    respCerta: "C",
                                    comentario: "Na ilha de Patmos, João teve a visão do que acontecerá no final dos tempos. Cf. Apocalipse 1:9"),
                            Pergunta(numDaPergunta: 11,
                                    pergunta: "Qual o nome do jardim plantado por Deus para o 1º casal criado?",
                                    respA: "Jardim do Getsêmani",
                                    respB: "Rosa de Sarom",
                                    respC: "Jardim do Éden",
                                    respD: "Paraíso",
                                    respCerta: "C",
                                    comentario: "Jardim localizado no Éden. Esse foi o lugar preparado por Deus para Adão e Eva quando foram criados. Cf. Gênesis 2:8"),
                            Pergunta(numDaPergunta: 12,
                                    pergunta: "Em quais livros da Bíblia é narrada a história do nascimento de Jesus?",
                                    respA: "Gênesis e Salmos",
                                    respB: "Mateus e Marcos",
                                    respC: "Hebreus e Apocalipse",
                                    respD: "Mateus e Lucas",
                                    respCerta: "D",
                                    comentario: "O nascimento de Jesus é contado nos Evangelhos de Mateus e Lucas, no início do Novo Testamento. Cf. Mateus 1 e 2; Lucas 2"),
                            Pergunta(numDaPergunta: 13,
                                    pergunta: "Quantos casais humanos entraram na arca de Noé?",
                                    respA:"4",
                                    respB: "1",
                                    respC: "6",
                                    respD: "3",
                                    respCerta: "A",
                                    comentario: "4 casais de pessoas entraram na Arca, além dos pares de vários animais. Foram eles: Noé e sua esposa, seus 3 filhos, Sem , Cão e Jafé e suas respectivas esposas. Cf. Gênesis 7:13"),
                            Pergunta(numDaPergunta: 14,
                                    pergunta: "Qual dos discípulos negou a Jesus?",
                                    respA: "Judas Iscariotes",
                                    respB: "João",
                                    respC:"Pedro",
                                    respD:"Bartolomeu",
                                    respCerta: "C",
                                    comentario: "Pedro negou a Jesus por  por 3 vezes. Quando Jesus foi preso no Getsêmani, Pedro fugiu  e seguia-O de longe mas quando indagado, negou que conhecia o Senhor. Cf. Marcos 14:66-72."),
                            Pergunta(numDaPergunta: 15,
                                    pergunta: "Qual o nome da cidade fundada por Caim, depois que saiu da presença de Deus?",
                                    respA: "Sodoma",
                                    respB:"Gomorra",
                                    respC: "Enoque",
                                    respD: "Canaã",
                                    respCerta: "C",
                                    comentario: "Depois de ter saído da presença de Deus, Caim edificou uma cidade e colocou o nome de seu primeiro filho: Enoque. Cf. Gênesis 4:16-17"),
                            Pergunta(numDaPergunta: 16,
                                    pergunta: "Deus mandou que Abraão olhasse para o quê, quando lhe fez uma promessa?",
                                    respA: "Para o arco-íris no céu, símbolo da aliança com Abraão",
                                    respB:"Para a areia do mar, para que contasse os grãos de areia, se pudesse",
                                    respC: "Para as estrelas do céu, para que as contasse, se pudesse",
                                    respD: "Para a floresta da terra prometida, para contar as árvores frutíferas",
                                    respCerta: "C",
                                    comentario: "Deus mandou contar as estrelas do céu, se é que ele poderia contá-las, como uma ilustração da grande descendência que daria a Abraão através de Isaque."),
                            Pergunta(numDaPergunta: 17,
                                    pergunta: "Judas traiu a Jesus por qual valor?",
                                    respA: "30 moedas de prata",
                                    respB: "100 moedas de ouro",
                                    respC: "50 moedas de prata",
                                    respD: "30 moedas de ouro",
                                    respCerta: "A",
                                    comentario: "Pelo preço de 30 moedas de prata, Judas fez um pacto com os principais sacerdotes para entregar Jesus."),
                            Pergunta(numDaPergunta: 18,
                                    pergunta: "Quem eram os dois irmãos de Moisés?",
                                    respA: "Esaú e Jacó",
                                    respB: "Miriã e Arão",
                                    respC: "Josué e Calebe",
                                    respD: "Priscila e Áquila",
                                    respCerta: "B",
                                    comentario: "Miriã (ou Miriam) e Arão (Aarão) eram os irmãos de Moisés. Cf. Êxodo 15:20-21 e Êxodo 6:16-20."),
                            Pergunta(numDaPergunta: 19,
                                    pergunta: "Quem foi o juiz hebreu que Dalila seduziu para entregar ao exército filisteu?",
                                    respA: "Sansão",
                                    respB: "Salomão",
                                    respC:"Samuel",
                                    respD: "Saul",
                                    respCerta: "A",
                                    comentario: "Sansão sofreu uma emboscada da amante Dalila e lhe revelou o segredo de nunca ter cortado o cabelo antes. Cf. Juízes 16:18-20"),
                            Pergunta(numDaPergunta: 20,
                                    pergunta: "Como e onde aconteceu a conversão de Paulo?",
                                    respA: "Foi chamado enquanto pescava junto de outros pescadores, no mar da Galiléia",
                                    respB: "Teve um sonho à noite, enquanto dormia na cidade de Tarso",
                                    respC: "Durante a pregação das Escrituras, na Sinagoga em Jerusalém",
                                    respD: "Teve uma visão depois de cair do cavalo, perto de Damasco",
                                    respCerta: "D",
                                    comentario: "Paulo quando ia em direção a Damasco perseguindo os cristãos, viu uma resplandecente luz que o fez cair. Jesus falou com ele e desse momento em diante se converteu a Cristo."),
                            Pergunta(numDaPergunta: 21,
                                    pergunta: "A Bíblia é composta por quantos livros?",
                                    respA:"67",
                                    respB:"65",
                                    respC: "66",
                                    respD: "68",
                                    respCerta: "C",
                                    comentario: "A Bíblia é uma coletânea composta por 66 livros, que foram escritos em hebraico, aramaico e grego e vai de Gênesis a Apocalipse."),
                            Pergunta(numDaPergunta: 22,
                                    pergunta: "Qual o significado original da palavra 'Bíblia'?",
                                    respA: "Bíblia é o plural de 'biblos' do grego e significa livros",
                                    respB: "Bíblia significa 'palavra escrita' no hebraico",
                                    respC: "Bíblia era o nome hebraico das pedras dos 10 Mandamentos, por isso foi adotada no conjunto dos livros",
                                    respD:"Bíblia é uma homenagem aos primeiros tradutores, que eram chamados 'Biblianos'",
                                    respCerta: "A",
                                    comentario: "A palavra Bíblia' originou-se a partir do grego, referindo-se ao conjunto de livros sagrados. Os livros eram escritos em folhas de papiro na forma de rolos ou pergaminhos."),
                            Pergunta(numDaPergunta: 23,
                                    pergunta: "De acordo com 2 Timóteo 3:16, toda a Escritura é:",
                                    respA: "ditada por Deus, letra por letra",
                                    respB:"baseada nos sonhos dos profetas e apóstolos",
                                    respC: "inspirada por Deus e útil para seus propósitos",
                                    respD: "transcrita por anjos para ensinar aos homens",
                                    respCerta: "C",
                                    comentario: "Toda a Escritura é inspirada por Deus e útil para o ensino, para a repreensão, para a correção e para a instrução na justiça. (2 Timóteo 3:16)"),
                            Pergunta(numDaPergunta: 24,
                                    pergunta: "A Bíblia é dividida em:",
                                    respA: "3 partes:  Pentateuco, livros históricos e Evangelhos",
                                    respB: "2 partes: Antigo Testamento e Novo Testamento",
                                    respC: "3 partes: Velho Testamento, Salmos e Novo Testamento",
                                    respD: "2 partes: Livros da Lei e Apocalipse",
                                    respCerta: "B",
                                    comentario: "A Bíblia é dividida em Antigo e Novo Testamentos, uma separação dos livros escritos antes e depois de Jesus Cristo. O Velho Testamento é formado por 39 livros e vai de Gênesis a Malaquias. O Novo Testamento é composto de 27 livros e vai de Mateus até Apocalipse."),
                            Pergunta(numDaPergunta: 25,
                                    pergunta: "Como a Bíblia foi escrita?",
                                    respA: "Ao longo do ministério de Jesus, os discípulos foram escrevendo todos os livros",
                                    respB: "Durante aproximadamente 100 anos, um grupo de 70 profetas escreveram a Bíblia",
                                    respC:"PatDurante 5 séculos a Bíblia foi escrita por 70 escribas e 12 apóstolosmos",
                                    respD: "PérgAo longo de 1600 anos, 40 autores diferentes escreveram toda a Bíblia",
                                    respCerta: "D",
                                    comentario: "A Bíblia foi escrita ao longo de mais ou menos 1.600 anos (de 1500 a.C. a meados de 100 d.C.) em línguas diferentes, por aproximadamente 40 autores, em épocas diferentes, com estilos e gêneros literários variados."),
                            Pergunta(numDaPergunta: 26,
                                    pergunta: "Qual é o tema central da Bíblia?",
                                    respA: "Os heróis da fé e seus milagres sobrenaturais",
                                    respB: "Jesus Cristo",
                                    respC:"A importância de buscar a Deus para ter uma vida longa e próspera ",
                                    respD:"As vitórias e a glória de personagens importantes, como o rei Davi, Moisés e outros",
                                    respCerta: "B",
                                    comentario: "O tema central bíblico consiste na pessoa de Jesus Cristo, para o qual tudo converge. Desde Gênesis até Apocalipse todos os livros apontam para Deus, na pessoa de Jesus, o autor da Salvação dos homens (Lucas 24:27, 44-45; Atos 10:43)."),
                            Pergunta(numDaPergunta: 27,
                                    pergunta: "Qual é o menor versículo da Bíblia? ",
                                    respA: "João 11:35",
                                    respB: "Ester 8:9",
                                    respC: "Êxodo 20:13",
                                    respD: "Jó 3:2",
                                    respCerta: "D",
                                    comentario: "Considerando o número de caracteres em nosso idioma, Jó 3:2 é o menor: 'Disse Jó:' - (versão Almeida Revista Atualizada -ARA),  ou 'dizendo: (Nova Versão Internacional-NVI), contendo apenas 7 caracteres."),
                            Pergunta(numDaPergunta: 28,
                                    pergunta: "Qual é o maior e o menor capítulos da Bíblia?",
                                    respA: "O maior capítulo é de Isaías 66 e o menor capítulo é Salmo 2 ",
                                    respB: "O maior é o Salmo 119 e o menor é o Salmo 117",
                                    respC: "O maior capítulo é Lamentações de Jeremias 3  e o menor é 2ª carta de João",
                                    respD: "O maior é o Salmo 150 e o menor é Judas 1",
                                    respCerta: "B",
                                    comentario: "De acordo com os originais, o Salmo 119 é o mais extenso capítulo de toda a Bíblia. Trata-se de um salmo didático, formado por acróstico do alfabeto hebraico e possui 176 versículos. Já o menor capítulo é o Salmo 117. Trata-se de um hino de louvor ao Senhor, com 2 versos apenas."),
                            Pergunta(numDaPergunta: 29,
                                    pergunta: "Das seguintes afirmações qual não é a correta?",
                                    respA: "A Bíblia foi o 1º livro impresso no mundo, sendo a partir daí o mais traduzido e vendido",
                                    respB:"O Antigo Testamento possui 39 livros e o Novo Testamento é composto por 27",
                                    respC: "A Bíblia também é conhecida como 'Palavra de Deus', 'Verdade' e 'Sagradas Escrituras",
                                    respD:"Moisés foi o autor com menos livros escritos em toda a Bíblia",
                                    respCerta: "D",
                                    comentario: "Moisés escreveu o Pentateuco (Gênesis, Êxodo, Levítico, Números e Deuteronômio), sendo o maior autor no Antigo Testamento. Houve vários autores com apenas 1 livro escrito. O autor que escreveu mais livros na Bíblia foi o apóstolo Paulo, com 13 livros no Novo Testamento. "),
                            Pergunta(numDaPergunta: 30,
                                    pergunta: "A Bíblia foi escrita em quais línguas originais?",
                                    respA: "siríaco, hebraico e latim",
                                    respB: "hebraico, aramaico e grego",
                                    respC: "aramaico, persa e grego",
                                    respD: "hebraico, macedônio e aramaico",
                                    respCerta: "B",
                                    comentario: "HEBRAICO (a língua predominantemente falada em Israel nos tempos do AT), ARAMAICO (era um conjunto de dialetos, assimilados ao hebraico, com qual também foram escritos alguns trechos bíblicos) e GREGO (língua adotada em Israel durante as conquistas de Alexandre 1º, com a qual o NT foi escrito - Grego koinê)."),
                            Pergunta(numDaPergunta: 31,
                                    pergunta: "Quem é Jesus Cristo?",
                                    respA: "Um dos profetas judeus, muito importante",
                                    respB: "Um Mestre sábio que ensinou tudo sobre o amor",
                                    respC: "Jesus é o Filho do Deus Vivo, o prometido Salvador do mundo",
                                    respD: "Um guru curandeiro que ajudou muita gente no passado",
                                    respCerta: "C",
                                    comentario: "Jesus é o Filho de Deus. O Messias prometido por Deus desde a antiguidade para salvar a todos os que creem. Cf. Mat. 16:15-16; João 11:27"),
                            Pergunta(numDaPergunta: 32,
                                    pergunta: "Qual o nome da cidade onde Jesus nasceu?",
                                    respA: "Nazaré",
                                    respB: "Belém",
                                    respC: "Jerusalém",
                                    respD: "Galiléia",
                                    respCerta: "B",
                                    comentario: "Jesus nasceu em Belém da Judéia. Cf. Mateus 2:1. Muito antes já havia sido profetizado que o Cristo nasceria em Belém, uma cidade na região de Judá. Cf. Miquéias 5:2"),
                            Pergunta(numDaPergunta: 33,
                                    pergunta: "Com que idade Jesus começou seu ministério?",
                                    respA: "Com aproximadamente 30 anos",
                                    respB: "Com aproximadamente 18 anos",
                                    respC:"Com aproximadamente 12 anos",
                                    respD: "Com aproximadamente 7 anos",
                                    respCerta: "A",
                                    comentario: "Jesus iniciou seu ministério com cerca de 30 anos. Cf. Lucas 3:23. Entre os judeus por volta dessa idade é que um homem era considerado maduro."),
                            Pergunta(numDaPergunta: 34,
                                    pergunta: "Quais devem ser as 3 atitudes dos seguidores de Jesus?",
                                    respA: "Mude de vida, ajude aos necessitados e aprenda a perdoar",
                                    respB: "Arrependa-se, consagre-se, e leia toda a bíblia",
                                    respC: "Siga-lhe, oferte todos seus recursos e pregue a multidões",
                                    respD: "Negue-se a si mesmo, tome a sua cruz diariamente e siga-lhe",
                                    respCerta: "D",
                                    comentario: "Jesus dizia a todos que se alguém o quisesse acompanhar deveria a si mesmo se negar, tomar a sua cruz e segui-Lo. Cf. Lucas 9:23-26"),
                            Pergunta(numDaPergunta: 35,
                                    pergunta: "Sobre Jesus é ERRADO dizer:",
                                    respA: "Jesus pecou em poucas situações.",
                                    respB: "Jesus Cristo é Deus.",
                                    respC: "Jesus foi 100% humano.",
                                    respD: "Jesus ressuscitou ao 3º dia.",
                                    respCerta: "A",
                                    comentario: "Jesus nunca pecou. A bíblia é muito clara ao dizer que Ele é perfeito e impecável. Cf. Hebreus 4:15, 2ª Pedro 2:22"),
                            Pergunta(numDaPergunta: 36,
                                    pergunta: "Qual foi o primeiro milagre de Jesus?",
                                    respA:"Curou o cego Bartimeu à beira de um caminho",
                                    respB: "Andou sobre as águas e também fez Pedro andar",
                                    respC: "Multiplicou pães e peixes para uma multidão",
                                    respD: "Transformou a água em vinho numa festa de casamento",
                                    respCerta: "D",
                                    comentario: "O 1º milagre de Jesus foi a transformação da água em vinho. Em Caná da Galiléia, numa boda de casamento, Jesus fez este sinal e muitos creram nele. Cf. João 2:1-11"),
                            Pergunta(numDaPergunta: 37,
                                    pergunta: "Segundo Jesus, quais são os mandamentos mais importantes da Bíblia?",
                                    respA: "Não matar e guardar o sábado.",
                                    respB: "Amar a Deus sobre todas as coisas e amar ao próximo como a si mesmo.",
                                    respC: "Obedecer a Deus cumprindo os 10 mandamentos e batizar",
                                    respD: "Buscar o Reino de Deus e fazer justiça",
                                    respCerta: "B",
                                    comentario: "Jesus disse que o maior mandamento é: Ame ao Senhor, o seu Deus, de todo o seu coração, de toda a sua alma e de todo entendimento e de todas as suas forças. E o segundo é este: Ame os seu próximo como a si mesmo. Cf. Marcos 12:29-31"),
                            Pergunta(numDaPergunta: 38,
                                    pergunta: "O nome de Jesus é o nome acima de todo os nomes (Fp. 2:9). Cristo significa:",
                                    respA: "O sobrenome que Jesus recebeu da família de José, seu pai terreno.",
                                    respB: "'Ungido', 'consagrado do grego, equivalente a 'Messias' no hebraico.",
                                    respC: "Um nome da família de Maria que Jesus recebeu na infância.",
                                    respD: "Um título hebraico que significa: Rei dos judeus.",
                                    respCerta: "B",
                                    comentario: "Cristo é o título derivado do grego que significa o 'Ungido, consagrado, equivalente a Messias, do hebraico. Com o tempo, unido a Jesus deu a forma de nome próprio do Senhor Jesus Cristo.9"),
                            Pergunta(numDaPergunta: 39,
                                    pergunta: " Jesus ensinou várias parábolas para ilustrar o Reino de Deus. Dessas, qual fala sobre o perdão de Deus?",
                                    respA: "Parábola do Joio e do trigo",
                                    respB: "Parábola das Dez virgens",
                                    respC: "Parábola do Filho Pródigo",
                                    respD: "Parábola do Bom Samaritano",
                                    respCerta: "C",
                                    comentario: "A Parábola do Filho Pródigo nos ensina que Deus, o Pai, ama e perdoa. Ele vai ao encontro do filho que estava perdido, o traz de volta e se alegra pelo seu retorno."),
                            Pergunta(numDaPergunta: 40,
                                    pergunta: "Que sinais aconteceram enquanto Jesus estava na cruz?",
                                    respA: "Pessoas foram curadas; terremoto dividiu a terra; eclipse lunar",
                                    respB: "O sol escureceu; o véu do templo se rasgou; houve terremoto e rochas se partiram",
                                    respC: "O centurião se converteu, um dos ladrões crucificados ressuscitou, o véu do templo se rasgou",
                                    respD: "O tempo parou por 3 horas, pessoas foram curadas, mortos ressuscitaram nos sepulcros",
                                    respCerta: "B",
                                    comentario: "Houve 3 horas de escuridão (de meio dia até às 15h); o véu do templo se rasgou de alto a baixo e houve um terremoto partindo as rochas. Cf. Mateus 27:45-51.")]




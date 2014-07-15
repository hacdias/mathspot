-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Abr-2014 às 23:31
-- Versão do servidor: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mathpocket`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `name`, `user`, `pass`) VALUES
(1, 'Henrique Dias', 'teste', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Álgebra'),
(4, 'Estatística'),
(2, 'Geometria'),
(1, 'Números');

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Extraindo dados da tabela `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `category`) VALUES
(1, 'Amplitude', '<p>Consiste na diferen&ccedil;a entre o maior e menor valores de um <a href="/?title=conjuntos_de_numeros">conjunto de n&uacute;meros</a>.</p>\r\n', 'Estatística'),
(2, 'Amplitude interquartil', '<p>A <strong>Amplitude interquartil</strong> &eacute; a diferen&ccedil;a entre o 3&ordm; e o 1&ordm; quartil de um conjunto de n&uacute;meros.</p>\r\n', 'Estatística'),
(3, 'Ângulos', '<p>Um <strong>&acirc;ngulo</strong> &eacute; a zona de um plano criada atrav&eacute;s da colis&atilde;o de duas <a href="/item/semirreta" style="line-height: 1.6;">semirretas</a> que possuem uma <a href="/item/origem" style="line-height: 1.6;">origem</a> em comum, denominada <a href="/item/vertice" style="line-height: 1.6;">v&eacute;rtice</a>. A abertura do &acirc;ngulo &eacute; medida em radianos ou graus. Este conceito &eacute; deveras importante, ocupando um grande lugar na Geometria euclideana.&nbsp;</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulo-agudo.png" style="height:91px; width:100px" />&nbsp;Na imagem &nbsp;ao lado, est&aacute; representado a amarelo um &acirc;ngulo.</p>\r\n', 'Geometria'),
(4, 'Ângulos Alternos Internos', '<p><strong>&Acirc;ngulos Alternos Internos</strong> s&atilde;o &acirc;ngulos congruentes que t&ecirc;m <strong>diferentes </strong>v&eacute;rtices e est&atilde;o em lados <strong>diferentes </strong>da reta que interseta duas outras retas <strong>paralelas</strong>. Os &acirc;ngulos assinalados a vermelho na imagem seguinte s&atilde;o deste tipo:</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-alternos-internos.png" style="height:166px; width:319px" /></p>\r\n', 'Geometria'),
(5, 'Ângulos Complementares', '<p><strong>&Acirc;ngulos Complementares</strong> s&atilde;o pares de &acirc;ngulos cuja soma das amplitudes de ambos &eacute; <strong>90&ordm;</strong>. Os &acirc;ngulos representados na seguinte imagem s&atilde;o complementares:</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-complementares.png" style="height:178px; width:232px" /></p>\r\n', 'Geometria'),
(6, 'Ângulos Externos de um triângulo', '<p>A soma dos <strong>&acirc;ngulos externos de um tri&acirc;ngulo</strong> &eacute; sempre de 360&ordm;. Estes s&atilde;o os &acirc;ngulos formados pelas semirretas iniciadas em cada v&eacute;rtice do tri&acirc;ngulo que passam pelo ponto seguinte no tri&acirc;ngulo. V&ecirc; o seguinte exemplo:</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-externos-triangulo.png" style="height:276px; width:526px" /></p>\r\n', 'Geometria'),
(7, 'Ângulos internos de um quadrilátero', '<p>Os <strong><a href="/item/angulos">&acirc;ngulos</a> internos de um quadril&aacute;tero</strong> s&atilde;o todos os &acirc;ngulos formados pelos lados do quadril&aacute;tero. A sua soma &eacute; sempre <strong>360&ordm;</strong>.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-internos-quadrado.png" style="height:147px; width:146px" /></p>\r\n', 'Geometria'),
(8, 'Ângulos internos de um triângulo', '<p>Os<strong> &acirc;ngulos internos de um <a href="/item/triangulo">tri&acirc;ngulo</a></strong> s&atilde;o todos os &acirc;ngulos formados pelos lados do tri&acirc;ngulo dentro da &aacute;rea do mesmo. A sua soma &eacute; sempre <strong>180&ordm;</strong>.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-internos-triangulo.png" style="height:133px; width:137px" /></p>\r\n', 'Geometria'),
(9, 'Ângulos Suplementares', '<p><strong>&Acirc;ngulos Suplementares</strong>&nbsp;s&atilde;o pares de &acirc;ngulos cuja soma das amplitudes de ambos &eacute; <strong>180&ordm;</strong>. Os &acirc;ngulos representados na seguinte imagem s&atilde;o suplementares:</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-suplementares.png" style="height:137px; width:295px" /></p>\r\n', 'Geometria'),
(10, 'Ângulos Verticalmente Opostos', '<p><strong>&Acirc;ngulos Verticalmente Opostos</strong> s&atilde;o &acirc;ngulos com o mesmo v&eacute;rtice e os lados de um prolongam-se nos lados do outro. Os &acirc;ngulos s&atilde;o congruentes.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/angulos-vert-opostos.png" style="height:137px; width:274px" /></p>\r\n', 'Geometria'),
(11, 'Área de um círculo', '<p>A <strong>&aacute;rea de um c&iacute;rculo</strong> &eacute; dada pelo produto entre o raio ao quadrado e o <a href="/item/pi">Pi</a>.&nbsp;<img alt="" src="/imgs/geometria/formulas/area-circulo.png" style="height:18px; width:69px" /></p>\r\n\r\n<p><img alt="" src="/imgs/geometria/circulo.png" style="height:210px; width:210px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Geometria'),
(12, 'Área de um quadrado', '<p>A <strong>&aacute;rea de um <a href="/item/quadrado">quadrado</a></strong> &eacute; dada pelo comprimento do lado ao quadrado.&nbsp;<img alt="" src="/imgs/geometria/formulas/area-quadrado.png" style="height:18px; width:54px" /></p>\r\n\r\n<p><img alt="" src="/imgs/geometria/quadrado-lado.png" style="height:215px; width:229px" /></p>\r\n', 'Geometria'),
(13, 'Área de um retângulo', '<p>A <strong>&aacute;rea de um ret&acirc;ngulo</strong> &eacute; o produto entre a largura e o comprimento do mesmo, logo&nbsp;<img alt="" src="/imgs/geometria/formulas/area-retangulo.png" style="height:14px; line-height:1.6; width:75px" />.</p>\r\n', 'Geometria'),
(15, 'Área do paralelogramo', '<p>A<strong> &aacute;rea de um &nbsp;<a href="/item/paralelogramo">paralelogramo</a></strong> calcula-se da mesma forma que a &aacute;rea do ret&acirc;ngulo, logo&nbsp;<img alt="" src="/imgs/geometria/formulas/area-retangulo.png" style="height:14px; line-height:1.6; width:75px" />.</p>\r\n', 'Geometria'),
(16, 'Áreas', '<p>&Aacute;reas s&atilde;o medidas que medem conte&uacute;dos bidimensionais, ou seja, de superf&iacute;cies. Clica nos itens abaixo para saberes mais acerca de cada uma.</p>\r\n\r\n<ul>\r\n	<li><a href="/item/area-de-um-circulo">&Aacute;rea de um C&iacute;rculo</a></li>\r\n	<li><a href="/item/area-de-um-quadrado">&Aacute;rea de um quadrado</a></li>\r\n	<li><a href="/item/area-de-um-retangulo">&Aacute;rea de um ret&acirc;ngulo</a></li>\r\n	<li><a href="/item/area-de-um-triangulo">&Aacute;rea de um tri&acirc;ngulo</a></li>\r\n	<li><a href="/item/area-do-paralelogramo">&Aacute;rea de um paralelogramo</a></li>\r\n</ul>\r\n', 'Geometria'),
(17, 'Classificação de Ângulos', '<p>Os <a href="/item/angulos">&acirc;ngulos</a> podem classificar-se em v&aacute;rios tipos:</p>\r\n\r\n<p><strong>&Acirc;ngulo Agudo</strong> -&gt; Quando a sua abertura &eacute; menor que 90&ordm;.<br />\r\n<strong>&Acirc;ngulo Reto</strong> -&gt; Quando a sua abertura &eacute; de, exatamente, 90&ordm;<br />\r\n<strong>&Acirc;ngulo Obtuso</strong> -&gt; Quando a sua abertura &eacute; maior de 90&ordm;.<br />\r\n<strong>&Acirc;ngulo Raso</strong> -&gt; Quando a sua abertura &eacute; de, exatamente, 180&ordm;.</p>\r\n', 'Geometria'),
(18, 'Classificação de equações', '<p>As&nbsp;<strong>equa&ccedil;&otilde;es&nbsp;</strong>podem classificar-se em v&aacute;rios tipos:</p>\r\n\r\n<p><img alt="" src="/imgs/algebra/classificacao_equacoes.png" style="height:160px; width:460px" /></p>\r\n\r\n<ul>\r\n	<li>Para uma equa&ccedil;&atilde;o ser&nbsp;<strong>imposs&iacute;vel</strong>, esta n&atilde;o pode ter solu&ccedil;&otilde;es.</li>\r\n	<li>Para uma equa&ccedil;&atilde;o ser <strong>poss&iacute;vel determinada</strong>, deve ter uma ou mais solu&ccedil;&otilde;es.</li>\r\n	<li>Para uma equa&ccedil;&atilde;o ser <strong>poss&iacute;vel indeterminada</strong>, deve ter uma infinidade de solu&ccedil;&otilde;es. Isto ocorre quando a resolu&ccedil;&atilde;o da equa&ccedil;&atilde;o termina com <em>0x = 0</em>.</li>\r\n</ul>\r\n', 'Álgebra'),
(19, 'Classificação de quadriláteros', '<p>Os <strong>quadril&aacute;teros </strong>classificam-se atrav&eacute;s das suas propriedades. Existem os seguintes tipos de quadril&aacute;teros:</p>\r\n\r\n<ul>\r\n	<li><a href="/item/papagaio">Papagaio</a></li>\r\n	<li><a href="/item/trapezio">Trap&eacute;zio</a></li>\r\n	<li><a href="/item/paralelogramo">Paralelogramo</a></li>\r\n	<li><a href="http://item/retangulo">Ret&acirc;ngulo</a></li>\r\n	<li><a href="/item/losango">Losango</a></li>\r\n	<li><a href="/item/quadrado">Quadrado</a></li>\r\n</ul>\r\n\r\n<p><strong>Clica sobre cada um para saberes mais acerca do mesmo.</strong></p>\r\n', 'Geometria'),
(20, 'Classificação de Triângulos', '<p>A<strong> classifica&ccedil;&atilde;o de <a href="/item/triangulo">tri&acirc;ngulos</a></strong> pode ser feita em duas vertentes: quanto aos <strong>lados </strong>ou qua ndo aos <strong>&acirc;ngulos</strong>. Na tabela abaixo pode ser encontrada esta classifica&ccedil;&atilde;o.</p>\r\n\r\n<h2><strong>Quando aos lados</strong></h2>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>Equil&aacute;tero</strong></p>\r\n\r\n			<p style="text-align:center">Os 3 lados s&atilde;o congruentes</p>\r\n			</td>\r\n			<td style="text-align:center"><img alt="" src="/imgs/geometria/triangulo-equilatero.png" style="height:90px; width:101px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>Is&oacute;sceles</strong></p>\r\n\r\n			<p style="text-align:center">Tem no m&iacute;nimo 2 lados congruentes</p>\r\n			</td>\r\n			<td style="text-align:center"><img alt="" src="/imgs/geometria/triangulo-isosceles.png" style="height:247px; width:133px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>Escaleno</strong></p>\r\n\r\n			<p style="text-align:center">Todos os lados s&atilde;o diferentes</p>\r\n			</td>\r\n			<td style="text-align:center"><img alt="" src="/imgs/geometria/triangulo-escaleno.png" style="height:133px; width:145px" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>Quando aos &acirc;ngulos</strong></h2>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>Rect&acirc;ngulo</strong></p>\r\n\r\n			<p style="text-align:center">Tem 1 &acirc;ngulo reto</p>\r\n			</td>\r\n			<td style="text-align:center"><img alt="" src="/imgs/geometria/triangulo-retangulo.png" style="height:169px; width:119px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center">\r\n			<p><strong>Acut&acirc;ngulo</strong></p>\r\n\r\n			<p>Todos os &acirc;ngulos s&atilde;o agudos</p>\r\n			</td>\r\n			<td style="text-align:center"><img alt="" src="/imgs/geometria/triangulo-acutangulo.png" style="height:100px; width:164px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center">\r\n			<p><strong>Obtus&acirc;ngulo</strong></p>\r\n\r\n			<p>Tem 1 &acirc;ngulo Obtuso</p>\r\n			</td>\r\n			<td style="text-align:center"><img alt="" src="/imgs/geometria/triangulo-obtusangulo.png" style="height:103px; width:304px" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Geometria'),
(21, 'Conjuntos de Números', '<p><img id="numbers_conj" src="/imgs/numeros/conjunto_numeros.png" /> Os n&uacute;meros est&atilde;o divididos em v&aacute;rios conjuntos. Estes s&atilde;o:<br />\r\n<br />\r\n<img class="small" src="/imgs/numeros/n.png" /> - <a href="/?title=numeros_naturais">N&uacute;meros Naturais</a><br />\r\n<img class="small" src="/imgs/numeros/z.png" /> - <a href="/?title=numeros_inteiros">N&uacute;meros Inteiros</a><br />\r\n<img class="small" src="/imgs/numeros/q.png" /> - <a href="/?title=numeros_racionais">N&uacute;meros Racionais</a><br />\r\n<a href="/?title=numeros_irracionais">N&uacute;meros Irracionais</a><br />\r\n<img class="small" src="/imgs/numeros/a.png" /> - <a href="/?title=numeros_algebricos">N&uacute;meros Alg&eacute;bricos</a><br />\r\n<a href="/?title=numeros_transcendentes">N&uacute;meros Transcendentes</a><br />\r\n<img class="small" src="/imgs/numeros/r.png" /> - <a href="/?title=numeros_reais">N&uacute;meros Reais</a><br />\r\n<img class="small" src="/imgs/numeros/i.png" /> - <a href="/?title=numeros_imaginarios">N&uacute;meros Imagin&aacute;rios</a><br />\r\n<img class="small" src="/imgs/numeros/c.png" /> - <a href="/?title=numeros_complexos">N&uacute;meros Complexos</a><br />\r\n<br />\r\nA representa&ccedil;&atilde;o destes conjuntos pode ser personalizada. Ao escrevermos <img class="small" src="/imgs/numeros/z+.png" />, estou-me a referir a todos os n&uacute;meros inteiros positivos. Quando escrevemos <img class="small" src="/imgs/numeros/n0.png" /> referimo-nos aos n&uacute;meros naturais incluindo o 0.<br />\r\n<br />\r\n<strong>Clica nos itens para saberes mais!</strong></p>\r\n', 'Números'),
(22, 'Contradomínio', '<p>O contradom&iacute;nio de uma <a href="/?title=funcoes">fun&ccedil;&atilde;o</a> s&atilde;o todos os elementos pertencentes ao conjunto de chegada, ou seja, &agrave;s <strong>imagens</strong>, representados por <img src="/imgs/y.png" />.</p>\r\n', 'Álgebra'),
(23, 'Critérios de congruência de triângulos', '<p>A constru&ccedil;&atilde;o de um tri&acirc;ngulo congruente a outro n&atilde;o implica sabermos todos os &acirc;ngulos e todos os lados do outro tri&acirc;ngulo. Basta sabermos 3 itens para descobrirmos os restantes &acirc;ngulos/lados. Os&nbsp;<strong>crit&eacute;rios de congru&ecirc;ncia de tri&acirc;ngulos&nbsp;</strong>est&atilde;o aqui para nos ajudar. Existem tr&ecirc;s, como podes ver:</p>\r\n\r\n<ul>\r\n	<li><strong>Crit&eacute;rio LLL (lado/lado/lado)</strong></li>\r\n</ul>\r\n\r\n<p>Dois tri&acirc;ngulos s&atilde;o congruentes entre eles se os tr&ecirc;s lados forem congruentes.</p>\r\n\r\n<ul>\r\n	<li><strong>Crit&eacute;rio LAL (lado/&acirc;ngulo/lado)</strong></li>\r\n</ul>\r\n\r\n<p>Dois tri&acirc;ngulos s&atilde;o congruentes se tiverem dois lados e o &acirc;ngulo por eles formado congruentes.</p>\r\n\r\n<ul>\r\n	<li><strong>Crit&eacute;rio ALA (&acirc;ngulo/lado/&acirc;ngulo)</strong></li>\r\n</ul>\r\n\r\n<p>Dois tri&acirc;ngulos s&atilde;o congruentes se tiverem, de um para outro, um lado congruente e os &acirc;ngulos a ele adjacentes tamb&eacute;m congruentes.</p>\r\n', 'Geometria'),
(24, 'Cubos Perfeitos', '<p>Cubos perfeitos s&atilde;o n&uacute;meros cuja <a href="/?title=raiz_cubica">raiz c&uacute;bica</a> &eacute; um n&uacute;mero inteiro. Exemplo: <img src="/imgs/numeros/3r9.png" /></p>\r\n', 'Números'),
(25, 'Domínio', '<p>O dom&iacute;nio de uma <a href="/?title=funcoes">fun&ccedil;&atilde;o</a> s&atilde;o todos os elementos pertencentes ao conjunto de partida, ou seja, os <strong>objetos</strong>, representados por <img src="/imgs/x.png" />.</p>\r\n', 'Álgebra'),
(26, 'Equação', '<p>Uma <strong>equa&ccedil;&atilde;o&nbsp;</strong>&eacute; uma igualdade entre duas express&otilde;es num&eacute;ricas em que existe um valor desconhecido - a inc&oacute;gnita - v&ecirc; o exemplo seguinde de uma equa&ccedil;&atilde;o de 1&ordm; grau e sua resolu&ccedil;&atilde;o:</p>\r\n\r\n<p><img alt="" src="/imgs/algebra/3x=6.png" style="height:118px; width:117px" /></p>\r\n', 'Álgebra'),
(27, 'Equações equivalentes', '<p><strong><a href="/item/equacao">Equa&ccedil;&otilde;es</a> equivalentes</strong> s&atilde;o equa&ccedil;&otilde;es que t&ecirc;m um cojunto-solu&ccedil;&atilde;o igual. Por exemplo,&nbsp;<em>3x = 6&nbsp;</em>e&nbsp;<em>4x = 8&nbsp;</em>s&atilde;o equivalentes pois 2 &eacute; a solu&ccedil;&atilde;o de ambas.</p>\r\n', 'Álgebra'),
(28, 'Escalas', '<p>As <strong>escalas</strong> traduzem a <a href="/?title=razao">raz&atilde;o</a> entre o tamanho real de uma figura e o tamanho em que esta est&aacute; representada.</p>\r\n', 'Álgebra'),
(29, 'Expressão Algébrica', '<p>As <strong>express&otilde;es alg&eacute;bricas</strong> s&atilde;o express&otilde;es que relacionam objetos e imagens com vari&aacute;veis. S&atilde;o comummente utilizadas em sequ&ecirc;ncias.</p>\r\n', 'Álgebra'),
(30, 'Extremos', '<p>Consiste no maior e menor valor de um conjunto de n&uacute;meros.</p>\r\n', 'Estatística'),
(31, 'Frequência Absoluta', '<p>Consiste no n&uacute;mero de vezes que um determinado dado &eacute; repetido</p>\r\n', 'Estatística'),
(32, 'Frequência Relativa', '<p>&Eacute; a percentagem do n&uacute;mero de vezes que um determinado dado &eacute; repetido. &Eacute; dado pelo quociente entre a <a href="`/?title=frequencia_absoluta`">frequ&ecirc;ncia absoluta</a> e o total de dados.</p>\r\n', 'Estatística'),
(33, 'Função Linear', '<p>Uma <strong>fun&ccedil;&atilde;o linear</strong> (ou fun&ccedil;&atilde;o de <a href="/item/proporcionalidade-direta">proporcionalidade direta</a>) &eacute; uma fun&ccedil;&atilde;o definida pela express&atilde;o&nbsp;<img alt="" src="/imgs/algebra/funcao-linear.png" style="height:18px; line-height:1.6; width:58px" />&nbsp;ou&nbsp;<img alt="" src="/imgs/algebra/funcao-linear2.png" style="height:21px; line-height:1.6; width:85px" />&nbsp;(simbolizam o mesmo). O gr&aacute;fico de uma fun&ccedil;&atilde;o linear passa pela origem ou seja, passa pelo conjunto de pontos (0, 0).</p>\r\n\r\n<p><img alt="" src="/imgs/algebra/func_linear.png" style="height:446px; width:402px" /></p>\r\n', 'Álgebra'),
(34, 'Funções', '<p>Fun&ccedil;&otilde;es s&atilde;o correspond&ecirc;ncias entre dois conjuntos, X e Z, em que cada elemento de cada conjunto est&aacute; associado a <strong>um</strong> elemento do outro conjunto. A fun&ccedil;&atilde;o f dos conjuntos X e Z representa-se da seguinte forma:<br />\r\n<br />\r\n<img src="/imgs/algebra/fab.png" /></p>\r\n', 'Álgebra'),
(35, 'Gráfico de caule-e-folhas', '<p>Um gr&aacute;fico de <strong>caule-e-folhas</strong> (tamb&eacute;m &nbsp;conhecido por diagrama de caule-e-folhas) &eacute; um gr&aacute;fico que ajuda na representa&ccedil;&atilde;o gr&aacute;fica de n&uacute;meros. Considera o seguinte conjunto de n&uacute;meros e o seu respetivo diagrama de caule-e-folhas.</p>\r\n\r\n<p><strong>N&uacute;meros </strong>= {4, 15, 26, 28, 30, 56, 59, 100, 101}</p>\r\n\r\n<p><strong>Diagrama</strong></p>\r\n\r\n<table cellpadding="1" cellspacing="1" style="width:100px">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:right">0|</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:right">1|</td>\r\n			<td>5</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:right">2|</td>\r\n			<td>6 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:right">3|</td>\r\n			<td>0</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:right">5|</td>\r\n			<td>6 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:right">10|</td>\r\n			<td>0 1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Estatística'),
(36, 'Histograma', '<p>Um&nbsp;<strong>histograma&nbsp;</strong>&eacute; um gr&aacute;fico em que os dados est&atilde;o &nbsp;agrupados em classes com a mesma amplitude. O gr&aacute;fico conta com barras adjacentes, como pode ver:</p>\r\n\r\n<p><img alt="" src="/imgs/estatistica/histograma.png" style="height:539px; width:536px" /></p>\r\n', 'Estatística'),
(37, 'Losango', '<p>O <strong>Losango </strong>&eacute; uma figura geom&eacute;trica com quatro lados (quadril&aacute;tero). Os seus 4 lados s&atilde;o <strong>congruentes</strong>.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/losango.png" style="height:300px; width:200px" /></p>\r\n', 'Geometria'),
(38, 'Média', '<p>&Eacute; um valor obtido somando todos os dados e dividindo o resultado pelo n&uacute;mero de dados.</p>\r\n', 'Estatística'),
(39, 'Mediana', '<p>A <strong>mediana </strong>de um conjunto de dados ordenados de forma crescente ou decrescentes &eacute; o dado que ocupa a posi&ccedil;&atilde;o central se existir um n&uacute;mero de dados impar. Por outro lado, se existir um n&uacute;mero de dados par, a mediana &eacute; a <a href="/item/media">m&eacute;dia</a> dos dois valores centrais do conjunto.</p>\r\n', 'Estatística'),
(40, 'Medidas de Dispersão', '<p>Dentro da estat&iacute;stica existem v&aacute;rias medidas que est&atilde;o classificadas em diversas categorias. A <strong><a href="/item/amplitude">amplitude</a>&nbsp;</strong>e a&nbsp;<strong><a href="/item/amplitude-interquartis">amplitude interquartis</a>&nbsp;</strong>s&atilde;o medidas de dispers&atilde;o</p>\r\n', 'Estatística'),
(41, 'Medidas de Localização', '<p>Dentro da estat&iacute;stica existem v&aacute;rias medidas que est&atilde;o classificadas em diversas categorias. A&nbsp;<strong>m&eacute;dia, mediana, moda&nbsp;</strong>e&nbsp;<strong>quartis&nbsp;</strong>s&atilde;o medidas de localiza&ccedil;&atilde;o. Dentro das medidas de localiza&ccedil;&atilde;o ainda se localizam as medidas de localiza&ccedil;&atilde;o central: a <strong>m&eacute;dia </strong>e a <strong>mediana</strong>.</p>\r\n', 'Estatística'),
(43, 'Moda', '<p>&Eacute; o dado que surge com mais vezes.</p>\r\n', 'Estatística'),
(44, 'Modelo de Pólya', '<p>O<strong> Modelo de P&oacute;lya</strong> foi criado por&nbsp;George P&oacute;lya, um professor de Matem&aacute;tica da Universidade de Stanford. Em 1945 G.P&oacute;lya publicou um livro chamado <em>Como resolver problemas</em>.</p>\r\n\r\n<p>Este livro fala de passos que devemos ter em conta quando estamos a resolver um problema. Na tabela seguinte podes observ&aacute;-los:</p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="1" rowspan="5">\r\n			<p style="text-align:right"><strong>Compreens&atilde;o</strong></p>\r\n\r\n			<p style="text-align:right"><strong>do Problema</strong></p>\r\n			</td>\r\n			<td>No problema, o que &eacute; pedido?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Que dados nos s&atilde;o fornecidos?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Existem condi&ccedil;&otilde;es? Se sim, quais?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A informa&ccedil;&atilde;o fornecida &eacute; suficiente?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Faz um desenho escolhendo uma nota&ccedil;&atilde;o adequada.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="1" rowspan="4">\r\n			<p style="text-align:right"><strong>Establecimento</strong></p>\r\n\r\n			<p style="text-align:right"><strong>de um plano</strong></p>\r\n			</td>\r\n			<td>Alguma vez viste este problema ou semelhante?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Se sim, podes utilizar o mesmo m&eacute;todo de resolu&ccedil;&atilde;o?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fizeste utiliza&ccedil;&atilde;o de todos os dados?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Que estrat&eacute;gias s&atilde;o poss&iacute;veis na resolu&ccedil;&atilde;o deste problema?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:right"><strong>Execu&ccedil;&atilde;o do plano</strong></p>\r\n			</td>\r\n			<td>Coloca o teu plano em a&ccedil;&atilde;o, verificando sempre cada passo que d&aacute;s.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="1" rowspan="4">\r\n			<p style="text-align:right"><strong>Verifica&ccedil;&atilde;o</strong></p>\r\n			</td>\r\n			<td>&Eacute; poss&iacute;vel verificar o resultado obtido?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Se sim, ele est&aacute; de acordo com os dados do problema?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Poder-se-ia chegar ao resultado atrav&eacute;s de outro caminho?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>O m&eacute;todo utilizado pode ser utilizado noutros problemas?</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Álgebra'),
(45, 'Módulo ou Valor Absoluto', '<p>Ou m&oacute;dulo ou valor absoluto &eacute; a dist&acirc;ncia do ponto que o representa &agrave; origem. Representa-se por |x| que quer dizer &quot;m&oacute;dulo de x&quot;.<br />\r\n<br />\r\n<img src="/imgs/numeros/moduloe.png" /></p>\r\n', 'Números'),
(46, 'Números Algébricos', '<p><img class="left" src="/imgs/numeros/a.png" /> Todos os n&uacute;meros que s&atilde;o solu&ccedil;&atilde;o de <a href="/?title=equacao_polinomial">equa&ccedil;&otilde;es polinomiais</a>.<br />\r\n<br />\r\nInclui todos os n&uacute;meros racionais e alguns irracionais.</p>\r\n', 'Números'),
(47, 'Números Complexos', '<p><img class="left" src="/imgs/numeros/c.png" /> Os N&uacute;meros Complexos s&atilde;o todos os n&uacute;meros reais e imagin&aacute;rios.<br />\r\n<br />\r\nPodem ser fruto de opera&ccedil;&otilde;es entre reais e imagin&aacute;rios, por exemplo.</p>\r\n', 'Números'),
(48, 'Números Imaginários', '<p><img class="left" src="/imgs/numeros/i.png" /> Todos os n&uacute;meros que ao quadrado resultam num n&uacute;mero negativo.<br />\r\n<br />\r\nN&uacute;meros imagin&aacute;rios s&atilde;o imaginados: se colocarmos na calculadora a raiz quadrada de -9 esta ir-nos-&agrave; apresentar um erro por&eacute;m, podemos imaginar que o resultado seria -3.</p>\r\n', 'Números'),
(49, 'Números Inteiros', '<p>Todos os n&uacute;meros inteiros (n&atilde;o decimais) positivos, negativos e 0.<br />\r\n<br />\r\nConjunto = {...-3, -2, -1, 0, 1, 2, 3...}</p>\r\n', 'Números'),
(50, 'Números Irracionais', '<p>Todos os n&uacute;meros que n&atilde;o s&atilde;o racionais, como o <img class="small" src="/imgs/numeros/pi.png" /> , por exemplo.</p>\r\n', 'Números'),
(51, 'Números Naturais', '<p><img class="left" src="/imgs/numeros/n.png" /> Todos os n&uacute;meros inteiros (n&atilde;o decimais) a partir de 1 (inclusive).<br />\r\n<br />\r\nConjunto = {1, 2, 3...}</p>\r\n', 'Números'),
(52, 'Números Racionais', '<p><img class="left" src="/imgs/numeros/q.png" /> Todos os n&uacute;meros que podem ser criados atrav&eacute;s da divis&atilde;o de dois n&uacute;meros inteiros (excepto 0). S&atilde;o escritos sobre a forma de <a href="/?title=fracoes">fra&ccedil;&otilde;es</a>.<br />\r\n<br />\r\n<strong>Q</strong> vem de &quot;quociente&quot;. Conjunto = {...3/2, 1/2...}</p>\r\n', 'Números'),
(53, 'Números Reais', '<p><img class="left" src="/imgs/numeros/r.png" /> Os N&uacute;meros Reais s&atilde;o todos os n&uacute;meros racionais e irracionais podendo ser positivos, negativos ou zero.<br />\r\n<br />\r\nInclui todos os n&uacute;meros alg&eacute;bricos e transcendentes.</p>\r\n', 'Números'),
(54, 'Números Transcendentes', '<p>Todos os n&uacute;meros que n&atilde;o s&atilde;o alg&eacute;bricos, como o <img class="small" src="/imgs/numeros/pi.png" /> , por exemplo.</p>\r\n', 'Números'),
(55, 'Papagaio', '<p>O <strong>papagaio </strong>&eacute; um quadril&aacute;tero com os dois pares de lados consecutivos congruentes.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/papagaio.png" style="height:300px; width:200px" /></p>\r\n', 'Geometria'),
(56, 'Paralelogramo', '<p>Um <strong>paralelogramo </strong>&eacute; um quadril&aacute;tero cujos lados opostos s&atilde;o paralelos.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/paralelogramo.png" style="height:300px; width:300px" /></p>\r\n', 'Geometria'),
(57, 'Percentagem', '<p>A compara&ccedil;&atilde;o entre um n&uacute;mero e 100 chama-se <strong>percentagem</strong>. Dizendo que 95% do p&atilde;o &eacute; massa, estou referindo que em cada 100g de p&atilde;o existe 95g de massa, por exemplo.</p>\r\n', 'Álgebra'),
(58, 'Potências', '<p>Uma <strong>pot&ecirc;ncia</strong> &eacute; constitu&iacute;da por em expoente e uma base. <img src="/imgs/numeros/5^3.png" /> tem como base 5 e expoente 3. Essa pot&ecirc;ncia significa <em> 5 x 5 x 5</em> logo &eacute; igual a 15. Sempre que a base for positiva, o resultado ser&aacute; sempre positivo.</p>\r\n', 'Números'),
(59, 'Potências com Expoente Ímpar e Base Negativa', '<p>Todas as pot&ecirc;ncias com <strong>expoente &iacute;mpar e base negativa</strong> t&ecirc;m resultado negativo.</p>\r\n', 'Números'),
(60, 'Potências com Expoente Par e Base Negativa', '<p>Todas as pot&ecirc;ncias com <strong>expoente par e base negativa</strong> t&ecirc;m resultado positivo.</p>\r\n', 'Números'),
(61, 'Potências de potência', '<p>Uma pot&ecirc;ncia de pot&ecirc;ncia &eacute; quando temos uma pot&ecirc;ncia elevada a um n&uacute;mero. Para a resolvermos multiplicamos os expoentes. Exemplo: <img src="/imgs/numeros/potdepot.png" /></p>\r\n', 'Números'),
(62, 'Produto de dois números com o mesmo sinal', '<p>O <strong>produto de dois n&uacute;meros com o mesmo sinal</strong> &eacute; um n&uacute;mero positivo igual ao produto dos <a href="`/?title=modulo-ou-valor-absoluto`">m&oacute;dulos</a> dos fatores.</p>\r\n', 'Números'),
(63, 'Produto de dois números de sinais contrários', '<p>O <strong>produto de dois n&uacute;meros com sinais contr&aacute;rios</strong> &eacute; um n&uacute;mero negativo igual ao produto dos <a href="/?title=modulo-ou-valor-absoluto">m&oacute;dulos</a> dos fatores.</p>\r\n', 'Números'),
(64, 'Produto de potências com a mesma base', '<p>Para efetuar o produto de pot&ecirc;ncias com a mesma base, adicionamos os expoentes, mantendo a base. Exemplo: <img src="/imgs/numeros/pdpcamb.png" /></p>\r\n', 'Números'),
(65, 'Produto de potências com o mesmo expoente', '<p>Para efetuar o produto de pot&ecirc;ncias com o mesmo expoente, multiplicamos as bases, mantendo o expoente. Exemplo: <img src="/imgs/numeros/pdpcome.png" /></p>\r\n', 'Números'),
(66, 'Proporcionalidade Direta', '<p>Se a <a href="/?title=razao">raz&atilde;o</a> entre duas grandezas for sempre constante, pode-se dizer que as grandezas s&atilde;o <strong>diretamente proporcionais</strong>. A essa constante chama-se <strong>constante de proporcionalidade direta</strong>.</p>\r\n', 'Álgebra'),
(67, 'Propriedade Associativa (da Multiplicação)', '<p><img src="/imgs/numeros/propsmulti/propassociativa.png" /><br />\r\n<br />\r\nA <strong>Propriedade associativa da multiplica&ccedil;&atilde;o</strong> consiste na associa&ccedil;&atilde;o de elementos.<br />\r\nExemplo: <em>3 x (4 x 5) = (3 x 4) x 5</em></p>\r\n', 'Números'),
(68, 'Propriedade Comutativa (da Multiplicação)', '<p><img src="/imgs/numeros/propsmulti/propcomutativa.png" /><br />\r\n<br />\r\nA <strong>Propriedade comutativa da multiplica&ccedil;&atilde;o</strong> consiste na comuta&ccedil;&atilde;o de elementos.<br />\r\nExemplo: <em>3 x 4 = 4 x 3</em></p>\r\n', 'Números'),
(69, 'Propriedade Distributiva da Multiplicação em Relação à Adição', '<p><img src="/imgs/numeros/propsmulti/propdistributivamultad.png" /><br />\r\n<br />\r\nExemplo: <em>4 x (5 + 3) = 4 x 5 + 4 x 3</em></p>\r\n', 'Números'),
(70, 'Propriedade do Elemento Absorvente (da Multiplicação)', '<p><img src="/imgs/numeros/propsmulti/propelementoabs.png" /><br />\r\n<br />\r\nA <strong>Propriedade do elemento absorvente da multiplica&ccedil;&atilde;o</strong> diz que o 0 &eacute; o elemento absorvente da mesma ou seja, tudo o que &eacute; multiplicado por este vai resultar 0.<br />\r\nExemplo: <em>4 x 0 = 0</em></p>\r\n', 'Números'),
(71, 'Propriedade do Elemento Neutro (da Multiplicação)', '<p><img src="/imgs/numeros/propsmulti/propelementoneu.png" /><br />\r\n<br />\r\nA <strong>Propriedade do elemento neutro da multiplica&ccedil;&atilde;o</strong> diz que o 1 &eacute; o elemento neutro da mesma ou seja, tudo o que &eacute; multiplicado por este vai dar o valor original.<br />\r\nExemplo: <em>4 x 1 = 4</em></p>\r\n', 'Números'),
(72, 'Propriedades da Multiplicação', '<p>A multiplica&ccedil;&atilde;o conta com diversas propriedades que auxiliam a multiplica&ccedil;&atilde;o.</p>\r\n\r\n<p><a href="/?title=propriedade-comutativa-da-multiplicacao">Propriedade comutativa</a></p>\r\n\r\n<p><img src="/imgs/numeros/propsmulti/propcomutativa.png" style="line-height:1.6" /></p>\r\n\r\n<p><a href="/?title=propriedade-associativa-da-multiplicacao">Propriedade associativa</a></p>\r\n\r\n<p><img src="/imgs/numeros/propsmulti/propassociativa.png" /></p>\r\n\r\n<p><a href="/?title=propriedade-do-elemento-neutro-da-multiplicacao">Propriedade do Elemento Neutro</a></p>\r\n\r\n<p><img src="/imgs/numeros/propsmulti/propelementoneu.png" /></p>\r\n\r\n<p><a href="/?title=propriedade-do-elemento-absorvente-da-multiplicacao">Propriedade do Elemento Absorvente</a></p>\r\n\r\n<p><img src="/imgs/numeros/propsmulti/propelementoabs.png" /></p>\r\n\r\n<p><a href="/?title=propriedade-distributiva-da-multiplicacao-em-relacao-a-adicao">Propriedade Distributiva da Multiplica&ccedil;&atilde;o em Rela&ccedil;&atilde;o &agrave; Adi&ccedil;&atilde;o</a></p>\r\n\r\n<p><img src="/imgs/numeros/propsmulti/propdistributivamultad.png" /></p>\r\n\r\n<p>Clica nos itens para saberes mais acerca de cada propriedade!</p>\r\n', 'Números'),
(73, 'Propriedades dos paralelogramos', NULL, 'Geometria'),
(74, 'Quadrado', '<p>Um <strong>quadrado </strong>&eacute; um <a href="/item/paralelogramo">paralelogramo</a> com os quatro &acirc;ngulos e quatro lados congruentes. Todos os seus &acirc;ngulos s&atilde;o retos.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/quadrado.png" style="height:200px; width:200px" /></p>\r\n', 'Geometria'),
(75, 'Quadrados Perfeitos', '<p>Quadrados perfeitos s&atilde;o n&uacute;meros cuja <a href="/?title=raiz_quadrada">raiz quadrada</a> &eacute; um n&uacute;mero inteiro. Exemplo: <img src="/imgs/numeros/r25.png" /></p>\r\n', 'Números'),
(76, 'Quartis', '<p>Os <strong>quartis </strong>dividem os dois conjuntos formados pela mediana, calculando-se da mesma forma que a mediana quando o conjunto de dados &eacute; par.</p>\r\n', 'Estatística'),
(77, 'Quociente de dois números com  o mesmo sinal', '<p>O <strong>quociente de dois n&uacute;meros com o mesmo sinal</strong> &eacute; um n&uacute;mero positivo.</p>\r\n', 'Números'),
(78, 'Quociente de dois números com sinais diferentes', '<p>O <strong>quociente de dois n&uacute;meros com diferentes sinais</strong> &eacute; um n&uacute;mero negativo.</p>\r\n', 'Números'),
(79, 'Quociente de potências com a mesma base', '<p>Para efetuar a divis&atilde;o de pot&ecirc;ncias com a mesma base, subtra&iacute;mos os expoentes, mantendo a base. Exemplo: <img src="/imgs/numeros/qdpcamb.png" /></p>\r\n', 'Números'),
(80, 'Quociente de potências com o mesmo expoente', '<p>Para efetuar a divis&atilde;o de pot&ecirc;ncias com o mesmo expoente, divid&iacute;mos as bases, mantendo o expoente. Exemplo: <img src="/imgs/numeros/qdpcome.png" /></p>\r\n', 'Números'),
(81, 'Raiz Cúbica', '<p>A <strong>Raiz C&uacute;bica</strong> do n&uacute;mero <em>z</em> &eacute; o n&uacute;mero positivo que, ao cubo (elevado a 3), resulta <em>z</em>. Exemplo: <img src="/imgs/numeros/3r125.png" /></p>\r\n', 'Números'),
(82, 'Raiz Quadrada', '<p>A <strong>Raiz Quadrada</strong> do n&uacute;mero <em>z</em> &eacute; o n&uacute;mero positivo que, ao quadrado (elevado a 2), resulta <em>z</em>. Exemplo: <img src="/imgs/numeros/r100.png" /></p>\r\n', 'Números'),
(83, 'Razão', '<p>As <strong>raz&otilde;es</strong> s&atilde;o representadas atrav&eacute;s de fra&ccedil;&otilde;es que permitem comparar dois n&uacute;meros, denominados termos, calculando o quociente entre eles. Pode representar-se da seguinte forma, onde <em>a</em> e <em>b</em> s&atilde;o os valores:<br />\r\n<br />\r\n<img src="/imgs/algebra/razao.png" /></p>\r\n', 'Álgebra'),
(84, 'Retângulo', '<p><strong>Rect&acirc;ngulos</strong> s&atilde;o <a href="/item/paralelogramo">paralelogramos</a> com &nbsp;os quatro &acirc;ngulos internos congruentes e rectos.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/retangulo.png" style="height:300px; width:200px" /></p>\r\n', 'Geometria'),
(85, 'Reta Numérica', '<p>A representa&ccedil;&atilde;o dos n&uacute;meros pode ser efetuada atrav&eacute;s de uma <strong>reta num&eacute;rica</strong>, onde os n&uacute;meros s&atilde;o apresentados num &uacute;nico ponto ou eixo. O ponto &quot;0&quot; chama-se <strong>origem</strong>.<br />\r\n<br />\r\n<img src="/imgs/numeros/retanumerica.png" /></p>\r\n', 'Números'),
(86, 'Sequências de Números', '<p>Sequ&ecirc;ncias num&eacute;ricas s&atilde;o listas de n&uacute;meros com um determinado padr&atilde;o. A cada n&uacute;mero pertencente &agrave; sequ&ecirc;ncia chamamos <strong>termo da sequ&ecirc;ncia</strong>.</p>\r\n', 'Álgebra'),
(87, 'Termo Geral', '<p>O <strong>termo geral</strong> de uma <a href="/?title=sequencias_de_numeros">sequ&ecirc;ncia de n&uacute;meros</a> &eacute; a express&atilde;o alg&eacute;brica que define a lei originadora dos n&uacute;meros da sequ&ecirc;ncia. Na sequ&ecirc;ncia {3, 6, 9...}, o termo geral &eacute; <em>3n</em>, onde <em>n</em> &eacute; a posi&ccedil;&atilde;o em que se encontra o valor.</p>\r\n', 'Álgebra'),
(88, 'Termos da Sequência', '<p>Os termos da sequ&ecirc;ncia s&atilde;o todos os n&uacute;meros pertencentes a uma <a href="/?title=sequencias_de_numeros">sequ&ecirc;ncia num&eacute;rica</a>.</p>\r\n', 'Álgebra'),
(89, 'Trapézio', '<p>Um <strong>trap&eacute;zio </strong>&eacute; um quadril&aacute;tero que tem pelo menos um par de lados opostos paralelos.</p>\r\n\r\n<p><img alt="" src="/imgs/geometria/trapezio.png" style="height:200px; width:300px" /></p>\r\n', 'Geometria'),
(90, 'Triângulo', '<p>O <strong>Tri&acirc;ngulo</strong> &eacute; uma figura geom&eacute;trica com 3 lados. Exemplo:<br />\r\n<img src="/imgs/geometria/triangulo.png" /><br />\r\n<br />\r\nMais sobre tri&acirc;ngulos:<br />\r\n<br />\r\n- <a href="/?title=area-de-um-triangulo">&Aacute;rea de um tri&acirc;ngulo</a><br />\r\n- <a href="/?title=classificacao-de-triangulos">Classifica&ccedil;&atilde;o de Tri&acirc;ngulos</a><br />\r\n- <a href="/?title=angulos-internos-de-um-triangulo">&Acirc;ngulos Internos</a><br />\r\n- <a href="/?title=angulos-externos-de-um-triangulo">&Acirc;ngulos Externos</a><br />\r\n- <a href="/?title=criterios-de-congruencia-de-triangulos">Crit&eacute;rios de Congru&ecirc;ncia de Tri&acirc;ngulos</a></p>\r\n', 'Geometria'),
(91, 'Área de um triângulo', '<p>A <strong>&aacute;rea de um tri&acirc;ngulo</strong> &eacute; dada pelo produto entre a base e a altura a dividir por dois, logo&nbsp;<img alt="" src="/imgs/geometria/formulas/area-triangulo.png" style="height:41px; width:63px" />, onde&nbsp;<em>h&nbsp;</em>&eacute; a altura.</p>\r\n', 'Geometria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`) VALUES
(1, 'h', 'hacdias', '30164554'),
(2, 'aaaa', 'ab', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

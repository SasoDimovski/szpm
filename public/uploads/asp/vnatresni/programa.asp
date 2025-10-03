
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/vnatresni.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионираните работници од Органите за внатрешни работи </title>
<!-- InstanceEndEditable -->

<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<script type="text/javascript" src="../js/main.js"></script>
<link href="../styles.css" rel="stylesheet" type="text/css" />
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-SFG2N54M33"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-SFG2N54M33');
</script>
<link href="zdruzenie.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="heder">&nbsp;</td>
    <td class="heder" width="980"><div class="logo" onClick="window.location='../vnatresni/'">Здружение на пензионираните работници од органите за внатрешни работи на Република Македонија</div></td>
    <td class="heder">&nbsp;</td>
  </tr>
  </table>
  <div class="meni">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td width="750"><table width="980" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="90" align="center"><a href="index.asp">За нас</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="130" align="center"><a href="organizacija.asp">Организација</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="110" align="center"><a href="programa.asp">Програма</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="150" align="center"><a href="dokumenti.asp">Документи</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="90" align="center"><a href="kontakt.asp">Контакт</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="90" align="center"><a href="../mak/">СЗПМ</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td align="center">&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  </table>
  </div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td width="980"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="naslov">&nbsp;</td>
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>ПРОГРАМА</strong><!-- InstanceEndEditable --></td>
        <td class="naslov">&nbsp;</td>
      </tr>
      <tr>
        <td width="200" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
        <tr>
            <td>
            <%
sub ispisi_mesec(datum)
Select Case month(datum)
	Case 1
	response.write "јануари"
	Case 2
	response.write "февруари"
	Case 3
	response.write "март"
	Case 4
	response.write "април"
	Case 5
	response.write "мај"
	Case 6
	response.write "јуни"
	Case 7
	response.write "јули"
	Case 8
	response.write "август"
	Case 9
	response.write "септември"
	Case 10
	response.write "октомври"
	Case 11
	response.write "ноември"
	Case 12
	response.write "декември"
end select
end sub

            
call openRekset(rs_vesti)

sql="SELECT top 1 * FROM novosti where kategorija=2 ORDER BY datum desc"

rs_vesti.Open sql ,konStr,1,1

%>
<div class="vesnik_najnov_kontejner">
<div class="vesnik_najnov_tekst">најнов весник</div>
  <div class="vesnik_najnov"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank"><img src="../vesnik/<%=rs_vesti("slika")%>" width="170" height="231"alt="<%=rs_vesti("naslov")%>" /></a></div>
  <div class="vesnik_najnov_tekst"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank">број <%=rs_vesti("naslov")&", "%><%ispisi_mesec(rs_vesti("datum"))%></a></div>
  <div class="vesnik_najnov_tekst"><a href="../mak/vesnik_penzioner_plus.asp"><strong>архива на сите броеви</strong></a></div>
</div>
<%call closeRekset(rs_vesti)%>
</td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td>
            <%
call openRekset(rs_vesti)

sql="SELECT top 1 * FROM novosti where kategorija=3 ORDER BY datum desc"

rs_vesti.Open sql ,konStr,1,1

%>
<div class="vesnik_najnov_kontejner">
  <div class="vesnik_najnov"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank"><img src="../vesnik/<%=rs_vesti("slika")%>" width="170" height="231"alt="<%=rs_vesti("naslov")%>" /></a></div>
  <div class="vesnik_najnov_tekst"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank"><%=rs_vesti("naslov")%></a></div>
  <div class="vesnik_najnov_tekst"><a href="../mak/vesnik_penzioner_plus.asp"><strong>архива на сите броеви</strong></a></div>
</div>
<%call closeRekset(rs_vesti)%>
</td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td>
            <%
call openRekset(rs_vesti)

sql="SELECT top 1 * FROM novosti where kategorija=4 ORDER BY datum desc"

rs_vesti.Open sql ,konStr,1,1

%>
<div class="vesnik_najnov_kontejner">
  <div class="vesnik_najnov"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank"><img src="../vesnik/<%=rs_vesti("slika")%>" width="170" height="231" alt="<%=rs_vesti("naslov")%>" /></a></div>
  <div class="vesnik_najnov_tekst"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank"><%=rs_vesti("naslov")%></a></div>
  <div class="vesnik_najnov_tekst"><a href="../mak/vesnik_penzioner_plus.asp"><strong>архива на сите броеви</strong></a></div>
</div>
<%call closeRekset(rs_vesti)%>
</td>
          </tr>
        </table>
          <div class="modul crven">
            <div class="modul_naslov">Страници на здруженија</div>
            <div class="modul_sodrzina zdruzenija">
              <form name="form" id="form">
                <select name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)">
                  <option>Избери здружение</option>
                  <%
			  call openRekset(rs_zdruzenija)
rs_zdruzenija.Open "SELECT * FROM zdruzenija where aktivno=1 ORDER BY zdruzenie asc" ,konStr,1,1

while not rs_zdruzenija.EOF
%>
                  <option value="../<%=rs_zdruzenija("link")%>/"><%=rs_zdruzenija("zdruzenie")%></option>
                  <%
rs_zdruzenija.MoveNext
wend

call closeRekset(rs_zdruzenija)

%>
                </select>
              </form>
            </div>
            <div class="modul_dno"></div>
          </div></td>
        <td valign="top" class="kelija_sodrzina"><!-- InstanceBeginEditable name="sodrzina" -->
          <h3 align="center"><strong>ПРОГРАМА ЗА 2016 ГОДИНА</strong></h3>
          <p>Здружението&nbsp; на&nbsp; пензионираните работници од Органите за  внатрешни работи на Р.Македонија-Скопје, односно неговите&nbsp; органи и тела, Комисиите за спорт, култура,&nbsp; здравство, рекреација и&nbsp; активот на жени членки на здружениението во  текот на 2016 година својата активност ќе ја усмерат на следните моменти и  прашања и тоа:<strong><u> </u></strong></p>
          <p>Оваа година се навршуваат 70 години од  пензионерското организирање &nbsp;во Република  Македонија.Тоа значи дека оваа година е ЈУБИЛЕЈНА година и во тој контекс&nbsp; повеќе активности ќе бидат планирани и  спроведувани за одбележување на истиот и тоа преку целата година.Јубилејните  активности ќе ги планира и реализира СЗПМ,но секако и преку Здруженијата на пензионери  членки&nbsp; во СЗПМ каде што сме и ние.</p>
          <p>Во врска јубилејните активности&nbsp; СЗПМ предвидува одржување РЕВИЈА на песни и  ора на ниво на Балкан&nbsp; во Скопје, во  нејзина организација во кое секако и нашето здружение со активности ќе биде  вклучено.  Ваква&nbsp; културна манифестација&nbsp; на пензионери досега не е одржана никаде, што значи дека Скопје односно  СЗПМ се први во организирање на истата и ако успешно заврши, тоа ќе биде сигурен патоказ за  соработка&nbsp; помеѓу пензионерските  здруженија на Балканот.</p>
          <p>Ќе се следи и дава непосреден придонес како и подршка на иницијативи на  СЗПМ и СЗП на Град Скопје, што се во интерес на обезбедување поквалитетен  пензионерски живот и грижа за постарите членови во македонското општество како  што се, изградба на домови за стари лица, правна заштита на имот, на лични и  заеднички права и стандардот на пензионерите.</p>
          <p><strong><u>Комисија  за статут и други правни прашања</u></strong>, Ќе бидат следени и проучувани прописите од  областа на пензиското и инвалидско осигурување, социјално здравствената саштита  како и другите прописи од кои произлегуваат права и обврски за здружението и  членството. Во овој контекс ќе се пружа правна, стручно-административна и  техничка&nbsp; помош на членството во  здружението во остварување на нивните права во сите области од општественото  живеење кога за тоа ќе има потреба.</p>
          <p>Постојана грижа &nbsp;на здружението се пензионерите - членови кои оствариле  пензија по општите услови односно според Законот за ПИОМ - lex generelis од 1994 година кои се со многу ниски пензиски  примања во споредба со оние кои имаат остварено право на пензија според Законот  за внатрешни работи пред 1994 година и оние после 2010 година. Таа разлика е  огромна&nbsp; и здружението упорно ќе  настојува оваа неправда да биде надмината.</p>
          <p>И оваа година&nbsp;  како и до сега&nbsp; ќе се работи на  остварување на контролно-надзорната функција над законитоста&nbsp; врз севкупното работење на здружението и  неговите органи и тела.<br />
            <strong>&nbsp;</strong> <br />
            Ќе се работи на остварување на споственичкиот  статус на просториите&nbsp; во кој е сместено  здружението и во тој контекс ќе се следат активностите на МВР за регулирање на  сопственоста&nbsp; на земјиштето во кое се  изградени бараките. </p>
          <p>Постојана активност на здружението ќе биде во  придобивање на членство во Здружението&nbsp; преку разни форми на дејствување.  Посебна активност ова година ќе биде, сите лица вработени во МВР кои ќе заминат  во пензија автоматски да бидат регистрирани како членови во нашето здружение а  не во здруженијата по место на живеење.</p>
          <p>            Соработката со МВР и Македонскиот полициски  синдикат ќе продолжи, но ќе се работи на нивно проширување и подобрување. Во  овој контекс ќе се подобрува и соработката и со СЗПМ и СЗП на Град Скопје во  сите свери од пензионерското живеење. Исто така во овој контекс ќе се следи и  активноста на Одборот на регистрираната организација (ОРО) за солидарен  фонд-посмртна помош и членарина при СЗПМ, сврзани со сервисирање и контрола на  солидарниот фонд-посмртна помош од страна на Фондот на&nbsp; ПИОМ и со утврдувањето на износите за задршка  на средствата за таа намена и како се трошат преостанатите средства.</p>
          <p>Ќе се работи на&nbsp;  соработката која беше воспоставена со Пензионерското здружение од  поранешни вработени во Сојузен секретаријат за внатрешни работи во Белград, која  поради болест на претседателот на ова здружение, контактите изостанаа поради  што иако договорена не се реализира нивната посета во Скопје.&nbsp; </p>
          <p><strong><u>Комисија  за спорт</u></strong>, Ова комисија активностите во програмската за 2016 година воглавном ги има  планирано и насочено&nbsp; за припреми и  учество на 21-те Регионални и Државни&nbsp;  пензионерски спортски&nbsp; натпревари и  игри, кои оваа година&nbsp; ќе се одржат во  Скопје односно Радовиш, а домаќин на регионалните натпревари ќе биде ЗП Ѓорче  Петров. Покрај ова активност ова комисија ќе работи&nbsp; и на пронаоѓање на&nbsp; &nbsp;&nbsp;пензионери-спортисти,&nbsp; кои ќе бидат вклучени &nbsp;&nbsp;во постојните но и во ново  воспоставените&nbsp; спортски дисциплини&nbsp; предвидени во Правилникот за спортски игри  донесен од СЗПМ. Ќе работи и на проширување на спортските активности со  организирање на&nbsp; спортски&nbsp; натпревари со други здруженија&nbsp; од нашиот регион&nbsp; како и други со здруженија од Републиката со  кои нашето здружение има соработка.</p>
          <p> <strong><u>Комисијата  за култура</u></strong>&nbsp; својата активност во ова година ќе ја  насочи во правец на формирање на фолклорна и пеачка група во здружението, &nbsp;кои треба да настапат со свои точки на  регионалните и републички ревии на ора и песни а кои се во организација на СЗПМ  во Скопје.Ќе работи и на збогатување на културно забавниот живот на нашето  членство, преку организирање на заеднички посети на значајни културно-уметнички  настани во градот Скопје и сл. Покрај ова, ќе зема активно учество&nbsp; и во организирање и на прослави&nbsp; од интерес на членството на здружението.</p>
          <p> <strong><u>Комисијата  за здравство и социјална грижа</u></strong><strong> </strong>својата активност и оваа  година ќе ја остварува на начин како што тоа го правеше и досега, со нагласок  дека тоа ќе го чини по ангажирано и по често. Ќе партиципира во планирење и  реализација на активности на комисиите во здружението, посебно на комисиите за  спорт и за рекреација.            </p>
          <p><strong><u>Комисијата за рекреација</u></strong> како ново формирана комисија во ова година  ќе треба по самостојно да ги извршува своите обврски во организирањето на  патувања, во кој дел треба да бидат активни и членивите на комисијата. Покрај  ова комисија ќе работи и на изнаоѓање и спроведување на нови содржини на  рекреативни активности кои би се остварувале во Скопје и неговата околина.<strong></strong><br />
            Оваа година се планира да бидат посетени следните градови и знаменитости во  Републиката и надвор од неа: Молика - Битола, Пониква - Кочани, Попова Шапка-Тетово,  Струга, Дебар, Маврово, Дојран, &nbsp;Радовиш,  Куманово, Злетово. Ќе бидат организирани патувања и во странство и тоа во  Бугарија: Софија, Рилски Манастир, Благоев Град и Сандански; Грција: Солун и  Кукуш; Турција: Истамбул и Србија: Власинско Езеро.</p>
          <p> <strong><u>Активот на пензионерки</u></strong> во здружението ќе продолжи со својата  активност за воспоставување на пријателски односи и соработка со активите на пензионерки  во здруженијата пензионерски во Скопје и во Републиката, а ќе соработува и со  сите комисии во нашето здружение како и до сега.<strong></strong></p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50%"><p>Скопје<br />
      03.03.2016 год    </p>    </td>
    <td><p>П Р Е Т С Е Д А Т Е Л<br />
      Спирко Николовски, с.р.    </p></td>
    </tr>
</table>
          
        <!-- InstanceEndEditable --></td>
        <td width="200" valign="top"><!-- InstanceBeginEditable name="desno" -->
<div class="modul">
            <div class="modul_naslov">Инфо</div>
            <div class="modul_sodrzina">
              <%
call openRekset(rs_izvestai)
rs_izvestai.Open "SELECT top 5 * FROM novosti where kategorija=1 ORDER BY datum desc, id desc" ,konStr,1,1

while not rs_izvestai.EOF
%>
<span class="datum"><%=rs_izvestai("datum")%></span>
<a class="naslov_glaven" href="../mak/zapis.asp?id=<%=rs_izvestai("id")%>"><%=rs_izvestai("naslov")%></a><br />
<br /><%
rs_izvestai.MoveNext
wend

call closeRekset(rs_izvestai)
%>
            </div>
            <div class="modul_dno"><a href="../mak/lista.asp?kat=1">повеќе...</a></div>
          </div><!-- InstanceEndEditable -->
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td><a href="http://www.mtsp.gov.mk/" target="_blank"><img src="../images/ministerstvo_trud.gif" width="194" height="51" border="0" /></a></td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td><a href="http://www.piom.com.mk/" target="_blank"><img src="../images/fpiom.gif" width="194" height="89" border="0" /></a></td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td><a href="http://www.fzo.org.mk/" target="_blank"><img src="../images/fzo.jpg" width="194" height="76" border="0" /></a></td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td><a href="http://moh.gov.mk/" target="_blank"><img src="../images/zdravstvo.gif" width="194" height="89" border="0" /></a></td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td><a href="http://www.ssm.org.mk/" target="_blank"><img src="../images/ssm.gif" width="194" height="89" border="0" /></a></td>
          </tr>
          <tr>
            <td><img src="../images/pix.gif" width="1" height="5" /></td>
          </tr>
          <tr>
            <td><a href="http://www.ckrm.org.mk/Default.aspx" target="_blank"><img src="../images/crven_krst.gif" width="194" height="128" border="0" /></a></td>
          </tr>
      </table></td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr class="meni">
    <td>&nbsp;</td>
    <td align="right" class="ankor">изработено од <a href="http://www.medium3.mk" class="ankor">Medium 3</a></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>

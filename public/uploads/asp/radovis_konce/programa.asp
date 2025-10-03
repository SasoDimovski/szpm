
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/radovis.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери  Радовиш и Конче</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../radovis_konce/'"></div><div class="logo" onClick="window.location='../radovis_konce/'">Здружение на пензионери <strong>Радовиш и Конче</strong></div></td>
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
          <h2 align="center">ПРОГРАМА
            <br />
            ЗА РАБОТА НА ОРГАНИТЕ И ТЕЛАТА НА 
ЗП РАДОВИШ И КОНЧЕ 
ЗА 2020 ГОДИНА </h2>

            <p>Програмските  активности на ЗПОРК ги сочинуваат активностите на органите и телата на  здружението и тоа: Собранието, Извршниот одбор, Надзорниот одбор, Комисиите  формирани од Собранието и Извршниот одбор, Активот на жени, а секако тука  спаѓаат и активностите на стручната служба на Здружението. </p>
            <p><strong>              I. Собранието  во текот на 2020 година, ќе ги има следните активности: </strong></p>
            <ol>
              <li>&nbsp;Усвојување  на програмата за работа на ЗПОРК за 2020 година (рок декември 2019 година). </li>
              <li>&nbsp;Усвојување  на финансовиот план на ЗПОРК за 2020 година, на предлог на Извршниот орган.  Рок-Декември 2019 година. </li>
              <li>&nbsp;Усвојување  на годишниот извештај за работата на ЗПОРК-на предлог на Извршниот  одбор.-Рок-Март 2020 година. </li>
              <li>&nbsp;Усвојување  на завршната сметка на Здружението за 2019 година, по предлог на Извршниот  одбор-рок Јануари - Март 2020 година. </li>
              <li>&nbsp;Усвојување  на Извештајот на Надзорниот одбор-рок Јануари-Март- 2020 година. </li>
            </ol>
            <p><strong>II. Извршниот  одбор на ЗПОРК на своите седници во 2020 година, ќе ги донесува своите одлуки, решенија и други акти кои  произлегуваат од тековното работење согласно Статутот на Здружението, а ќе ги спроведува и одлуките и заклучоците донесени од  Собранието на Здружението.</strong></p>
            <p>Во 2020  година Извршниот одбор ќе  донесува одлуки за тековно и инвестиционо одржување на објектите и основните  средства на Здружението, а во согласност со средствата издвоени во финансовиот  план, односно во согласност со финансовите можности на Здружението и потребата  од одржување на основните средства.<br />
              Извршниот  одбор во 2020 година ќе  остварува соработка со општините Радовиш и Конче, со Црвениот Крст на РСМ-00  Радовиш, Домот за народно здравје и со одделни  невладини организации, со цел за помагање на  стари изнемоштени лица-пензионери и подобрување на условите за нивен подобар  живот.<br />
              Во 2020  година ќе продолжи соработката  со Здруженијата не пензионери од Републиката, а ќе се воспостави и со нови здруженија надвор од Републиката.<br />
            Ќе се  воспостави соработка со некоја од лабораториите  за испитување на шеќер; холестерол и триглицериди за пензионерите, како и ќе се подобри грижата за болните и изнемоштени пензионери.</p>
            <p><strong>III. Надзорниот  одбор во текот на 2020 година перманентно ќе го следи работењето на Собранието  и Извршниот одбор, со присуство на нивните седници, а по потреба ќе одржува и  седници за разгледување на одделни прашања од материјално финансиско работење  на здружението како и спроведување на одредбите од Статутот на Здружението.</strong></p>
            <p><strong>IV.&nbsp;Комисиите  формирани од страна на Собранието и Извршниот одбор во текот на 2020 година, ќе се ангажираат, секоја во својата област на  дејствување, за реализирање на статутарните и програмските активности на  Здружението.</strong></p>
            <p><strong>КОМИСИЈА ЗА  СПОРТ И РЕКРЕАЦИЈА </strong></p>
            <p> Спортот и  рекреацијата се важен дел од животот не секое лице, а посебно во пензионерските  денови. <br />
              Здружението  на пензионерите на општините Радовиш и Конче, своите активности за здраво  стареење ќе ги остварува преку  Комисијата за спорт и рекреација.<br />
              За таа цел,  уште во почетокот на 2020 година (најкасно до 15 февруари) ќе го распише  огласот за пријавување на пензионерите за поодделните спортски дисциплини, а потоа ќе изврши утврдување на  листата на пензионери по одделните спортски дисциплини.<br />
              Во април или  мај се планира одржување на пролетен пензионерски пешачки марш, до дестинација  што дополнително ќе се утврди, а  од 01.05. - 10.05.2020 година, ќе ги одржи  општинските натпревари и ќе изврши селекција  на спортистите по дисциплини (доколку ги има повеќе пријавени).<br />
              На крајот на  Мај или почетокот на Јуни, со спортистите ќе учествува на Регионалните пензионерски спортски  натпревари, а во почетокот на Септември, ќе  учествува на Републичките пензионерски спортски натпревари, доколку наши  спортисти освојат први места на регионалните спортски натпревари.<br />
              На 20-ти  Септември, ќе ја одржи на манифестацијата &bdquo;Пензионери на велосипеди&quot;, а на  крајот од годината ќе избере и  прогласи и спортист на годината.<br />
            За  стимулирање на спортистите се предвидени и пригодни парични награди, за оние  што ќе освојат медал на  Регионални или Републички спортски натпревари.</p>
            <p><strong> КОМИСИЈА ЗА  ЗДРАВСТВО И ХУМАНИТАРНИ АКТИВНОСТИ </strong></p>
            <p> На почетокот  на годината ќе распише оглас за покривање на дел од трошоците за бањско -  климатско лечење и оглас за хуманитарни пакети по повод Велигденските празници.  По разгледување на пристигнатите пријави, ќе состави листи на пензионери на кои ќе им бидат покриени дел од трошоците за бањско-климатско  лечење и листа на пензионери за Велигденски хуманитерни пакети.<br />
              Во текот на  2020 год. ќе воспостави соработка со Црвен крст на РСМ - ОО Радовиш, ЈЗУ ЗД  Радовиш и со одделни невладини организации со цел помагање на стари изнемоштени  лица-пензионери, за нивните потреби, а со цел да се подобрат услови за нивниот  живот. Исто така ќе ја подобри соработката со Комисиите за здравство од другите  ЗП од Републиката, а ќе се  направат обиди за воспоставување на соработка и со нови здруженија надвор од  РСМ.<br />
            Во 2020 год. Комисијата  ќе воспостави соработка со  некоја од лабораториите за испитување на шеќер, холестерол и триглицериди, мерење на притисок на  пензионерите, а ќе ја подобри и грижата за  болни и изнемоштени пензионери, со можност да се организираат домашни посети.</p>
            <p>Во соработка  со Активот на жени и Претседателите на Ограноците, кон крајот на годината ќе изврши посета на стари изнемоштени  пензионери за кои нема кој да се грижи и на истите ќе им се поделат пригодни подароци, а исто така ќе изврши  посета на здружението на деца со посебни потреби &bdquo;Порака&quot; и Домот за  престој на стари лица, и на истите ќе им  подари пригодни подароци.</p>
            <p><strong> КОМИСИЈА ЗА  КУЛТУРНО ЗАБАВЕН ЖИВОТ </strong></p>
            <p> Културно  забавниот живот на пензионерите од нашето Здружение се остварува преку  активноста на Комисијата за културно забавен живот. <br />
              Богатата програма на Комисијата за културно забавен живот,  ќе започне на почетокот на годината, кога ќе ја одбележи Нова Година по стариот  календар, а потоа ќе ги  реализира сите традиционални манифестации како&nbsp;&nbsp;&nbsp; Благцето  на баба - Велес, Свети Трифун - 
              Кавадарци, Свети Ѓорѓи Кратовски- Кратово, учество на Струмичкиот карневал -  Струмица, прослава на Денот на жените 8-ми Март, учество на Зелникот на баба во  Пробиштип, и на сите други од интерес на пензионерите од нашето Здружение, а во  средината на месец Јули ќе учествува во  организацијата на нашата манифестација-средба во природа на Ораовичко  Манастирче. Со Фолклорната група ќе земеме  Учество на Регионална ревија на песни, музика и игри, а доколку сме успешни ќе  учествуваме и на Републичката Ревија на песни, музика  и игри.<br />
              Во 2020  година се планира формирање и афирмација на Драмската секција &bdquo;Пензионер&quot;,  со алтернативен настап &bdquo;Радовишки маабети&quot;, а се планира и настап на  &bdquo;Радовишко културно лето&quot;. Се планира и формирање на пејачката група. <br />
              Во  програмските активности на Комисијата за културно забавен живот, секако за  одбележување е настапот на меѓународниот фестивал во с. Радуил- Р. Бугарија, за  кој се планира да стане традиционален.<br />
            Покрај овие  планирани програмски активности Комисијата за културно забавен живот при ЗПОРК,  ќе ги реализира и активностите  што ќе се јават во текот на годината, како што  се учество на смотри, манифестации и меѓународни фестивали.</p>
            <p><strong> КОМИСИЈА ЗА  СТАНОВИ И РАБОТА СО КЛУБОВИТЕ</strong></p>
            <p> Во својата  програма за работа во 2020 година, Комисијата за станови и работа со клубовите,  има предвидено навистина голем број на активности. <br />
              Покрај  редовната грижа за тековно одржување на пензионерските станови и постојните  клубови, во 2020 година планира да се отворат и нови пензионерски клубови, за  што најголеми изгледи има во с.Ињево, а има предлог да се отвори пензионерски  клуб и во с.Злеово. <br />
              Во 2020  година се планира да се изврши обновување на целиот покрив од Пензионерскиот  дом, како и реновирање на Клубот на пензионерите во Радовиш. <br />
              Во својата  програма за 2020 година Комисијата за станови и работа со клубовите, планира да  ја обнови одводната мрежа од зградата на Пензионерскиот дом, која мрежа (во  новиот дел)поминува и низ управните простории каде прокиснува) и санитарниот  јазол на Клубот. <br />
            Исто така во  2020 година е планирано да се обнови и фасадата од источната страна на Пензионерскиот дом, за што веќе се направени и консултации со архитект.</p>
            <p><strong> АКТИВ НА ЖЕНИ</strong></p>
            <p> Активот на  жени при ЗПОРК-Радовиш, како посебно тело кое се грижи за вклучување на  жените-пензионери во активности од интерес на жените пензионери, во богатата  програма за работа во 2020 година, ги има планирано следните активности: <br />
              Во почетокот  на месец јануари 2020 година, ќе изврши посета на стари изнемоштени пензионери, да се  поразговара за нивните проблеми и да им се подарат пригодни Новогодишни и  Божиќни подароци, а во периодот од месец Јануари до месец Март 2020 година, вклучување на жени  пензионерки-волонтери, за изработка на чорапи, шалови и др. рачни изработки,  кои ќе се подарат во добротворни цели.<br />
              За  Велигденските празници-при изработката на Велигденските пакети, активно  вклучување на Активот на жени со вапсување на јајца и донирање на стари лица, а  ќе се вклучи и во одбележување  на меѓународниот ден на мајката со посета на стари лица (мајки), како и во  одбележување на Светскиот ден на срцето на 29.09.2019  година. <br />
            На 01.10.2019  година, одбележување на денот на стари лица- пензионери над 80 години, а на  17-ти Октомври, ќе го одбележи Меѓународниот ден на сиромаштијата. </p>
            <p><strong>V.&nbsp;ОДБОРИ НА  ОГРАНОЦИТЕ </strong></p>
            <p>Здружението  на пензионерите на општините Радовиш и Конче, е организирано преку дејствување  во 9 Ограноци. <br />
            Преку  Ограноците ќе се дејствува за  ангажирање на поголем број пензионери во активностите на Здружението, а тоа ќе се остварува со посредна комуникација преку членовите на  секој Огранок во Извршниот одбор и Собранието, како и непосредно со  комуникација помеѓу органите на Здружението и самите пензионери.</p>
            <p><strong>VI.&nbsp;СОРАБОТКА СО  ОРГАНИТЕ И ТЕЛАТА НА СЗПМ И СО ДРУГИТЕ ЗДРУЖЕНИЈА </strong></p>
            <p>Соработката  со органите и телата на СЗПМ-Скопје, во 2020 година ќе се одвива како и досега преку посредна и непосредна комуникација, како и со организирање и учество во заеднички проекти.<br />
              Непосредната  комуникација ќе се одвива преку  нашиот член во Собранието на СЗПМ, а посредната со доставување на Записници и  Одлуки за решавање на прашања од заеднички интерес, како што се спортски  манифестации, културни настани и др.<br />
              Соработката  со другите Здруженија од Републиката и во 2020 <br />
              година  останува како една од најмасовните активности на Здружението. Оваа соработка  посебно се манифестира при организирањето на масовните дружења во природа;  масовните спортски натпревари како од регионален, така и од републички  карактер. <br />
            Во таа насока  нашето Здружение ќе се потруди  оваа соработка уште повеќе да ја збогати со организирање на меѓу-општински дружења и одржување на спортски натпревари.</p>
            <p><strong>VII. НАДЗОРЕН ОДБОР </strong></p>
            <p>Надзорниот  одбор, како и досега, така и во 2020 година, ќе го следи и  контролира финансиското и материјалното работење на Здружението. <br />
              Во таа насока  ќе поднесува извештај до Извршниот одбор и Собранието, и ќе врши контрола на  завршната сметка за 2019 година. <br />
            Надзорниот  одбор ќе ја следи примената на Статутот, Програмата за работа и Финансовиот  план на Здружението. </p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="45%">ЗПОРК-Радовиш<br />
      Бр.  0201-383/2<br />
      26.12.2019  г.<br /></td>
    <td>Претседател на Здружението на пензионери на  општините Радовиш и Конче, <br />
        Митко Стефанов</td>
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

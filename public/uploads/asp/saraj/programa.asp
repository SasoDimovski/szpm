
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/saraj.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Сарај</title>
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Прилеп</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../saraj/'"></div>--><div class="logo" onClick="window.location='../saraj/'">Здружение на пензионери <strong>Сарај</strong></div></td>
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
          <h3 align="center"><strong>Програма <br />
За работа на Здружението на пензионерите на општина Сарај во 2016 год.</strong></h3>
<p>Здружението на  пензионерите на општина Сарај, 2016-та година ја започнува со својот трет  мандат со органи и тела освежени со нови членови. Изминатите два мандата и покрај  тоа што како релативно младо здружение беа многу успешни<em>.&nbsp; </em>Изминатите мандати на  здружението ќе му послужат за да 2016 година биде уште по успешна. Поголемиот  дел активностите на здружението и во 2016 година ќе бидат продолжување на тие  од изминатите години проширувајќи ги и надградувајќи ги нив. <strong></strong><br />
Носители на  програмските активности и во 2016 година ќе бидат органите и телата на  здружението. За оваа година, се планираат следните активности:<br />
<strong>1. Собранието  на здружението</strong>, во текот на годината ќе одржи две седници. Едната при крајот на месец  февруари на кое ќе треба да се разгледуваат и усвојуваат актите: Извештајот за  работа на Здружението, Финансискиот извештај, Извештајот на Надзорниот одбор,  Завршната сметка (овие за 2015 година), како и Финансискиот план&nbsp; и Програмата за 2016 година. Втората седница  ќе ја одржи при крајот на годината на кое ќе треба евентуално да се прави Ребаланс  на буџетот за 2016 година и Временото финансирање за првите три месеци на  наредната година. По потреба ќе одржи и трета седница.<strong></strong><br />
<strong>2. Извршниот  одбор</strong> како извршен орган, носител на повеќе активности, своите седници ќе ги одржи по  потреба. Ќе се ангажира за успешно остварување на Програмата за работа, ќе ги  подготвува материјалите за Собранието, Завршната сметка, Финансискиот план,  Извештајот за работата на органите и телата на здружението, Програмата за  работа на органите и телата на здружението. Ќе се ангажира за правилната  примена и остварување на правата на пензионерите кои произлегуваат од соодветните  Закони. Ќе се ангажира за афирмација на здружението со цел успешно остварување  на задачите на здружението во интерес на пензионерите, постигнување на  резултати во работата и поголема одговорност на органите и телата и членовите.  Понатамошна афирмација на ограноците и воспоставување на по чести контакти со  нив. <strong></strong><br />
Ќе се ангажира за отворање на  Клубот &ndash; Центар за дневен престој на пензионерите како и правилната  организација на неговата работа. Ќе се ангажира седиштето на здружението да  биде на територија на здружението со цел да биде по блиску до членството. Ќе се  ангажира и понатаму секогаш за транспарентност на органите и телата на  здружението.<strong></strong><br />
3. <strong>Надзорниот одбор</strong> како орган на здружението, и&nbsp; во 2016 година, освен финансиското работење,  ќе ја следи целокупната работа на здружението со цел таа да биде во согласност  со нормативните акти. Тој, по потреба ќе изготви и писмен извештај за финансиската  состојба на приходите-расходите и тие ќе ги престави пред органите на здружението  со цел тие да се применуваат правилно и транспарентно.<strong></strong><br />
4<strong>. Статутарната Комисија</strong> ќе ја усогласи Статутот на здружението во  согласност со Законот за пензионерско организирање кој е на процедура да се  донесе во ораните на СЗПМ. Ќе интервенира и на други одредби на Статутот, таму  каде ќе констатира дека е потребно.<strong></strong><br />
5<strong>. Комисијата за спорт и спортски активности</strong> на здружението ќе  изготви своја Програма за своите активности. Ќе ги организира локалните  спортски активности,&nbsp; учеството на  регионалните спортски активности како и по можност и на тие на 21 републички.  Во оваа насока ќе се грижи за подобра подготовка на овие натпревари како и за  помасовното учество на пензионерите од здружението. <br />
<strong>6. Комисија  за екскурзии, рекреација и културно забавен живот, </strong>Комисија ќе изготвува програма за  еднодневни екскурзии во Македонија и Косово како и три дневна екскурзија во  Албанија за посета на историски места. Ќе се организира и групно летување на  море во Албанија.<strong></strong><br />
&nbsp;Ќе се учествува на 14-ти регионална Ревија на  песна музика и игри, на Балканскиот фолклорна Ревија во Скопје (ако ќе се  одржи), на мултиетничката&nbsp; традиционална  средба која се одржува секоја година во спортскиот рекреативен центар во Сарај,  средба која се одржува по повод&nbsp; денот на  пензионерите 20 септември и др.<br />
<strong>7. На  здравството и социјалните прашања</strong> исто така ќе му се посвети внимание бидејќи тоа е  најпотребно&nbsp; за третата доба. Носител на  овие активности ќе биде Комисијата за здравство и социјални прашања. Ќе се  организираат предавања со теми за здравјето. Со помош на Црвениот Крст на  Македонија, ќе се организира мерење на притисокот, шеќерот и маснотиите во  крвта. Ќе се води грижа за изнемоштените во домашни услови.<strong></strong><br />
<strong>8. Информирањето  и во 2016 година</strong> ќе се направи со помош на структурите во здружението, преку претседателите  на ограноците кои присуствуваат во работата на органите и телата на  здружението,&nbsp; преку писмени соопштенија  кои ќе се истакнуваат на видни места. Добро информирање ќе се направи и преку  весникот &bdquo;Пензионер плус&bdquo;, додатокот &bdquo;Пензионерски видици&bdquo; во весникот &bdquo;Нова Македонија&bdquo;,  како и преку додатокот за пензионерите во весникот &bdquo;КОХА&bdquo;. Оваа година,  информирањето ќе се прави и преку ВЕБ потстраницата на нашето здружение во ВЕБ  страницата на СЗПМ, како и преку Билтени кои ги издава СЗПМ.<strong></strong><br />
<strong>9. Во 2016  година, ќе се продлабочува соработката</strong> со локалната самоуправа Сарај,  како и локалните јавни претпријатија. Соработката секако ќе продолжува со  Сојузот на здруженија на пензионери на Македонија каде здружението е членка,  како и со Сојузот на здруженијата на градот Скопје, каде во овие две сојузи на  здруженија, нашето здружение има претставник во нивните Собранија. Започнатата  добра соработка во извештајниот период, ќе продолжи уште по добро со Црвениот  крст на Македонија. Ќе продолжи соработката и со средствата за информирање како  печатените така и електронските. Ќе продолжи соработката и со сродните  здруженија а посебно со тие од регионот.<strong></strong><br />
<strong>10. Ќе се  вложат максимални напори</strong> за да во 2016 година, <strong>Активот на жените</strong> во здружението да биде по активна&nbsp; со разни форми како: учество на екскурзии, на  предавања, спортски натпревари, Ревијали и др.<strong></strong><br />
<strong>11. Ќе им  се посвети поголемо внимание</strong> на <strong>соработката со  ограноците</strong>&nbsp; на здружението.  Раководство на здружението, ќе учествува повремено во работата на Одборите на  ограноците како и средба со другите членови во нив каде ќе се разгледуваат  Извештаи и други документи на здружението.<br />
<strong>12. Во 2016  година, ќе се организира работата вo Дневниот центар</strong> за пензионерите на Здружението  со разни активности.<br />
<strong>13.&nbsp; Здружението, во 2016 година ќе се ангажира</strong> и за други активности  кои во текот на годината ќе се појават како потребни.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
              <td width="55%">&nbsp;</td>
              <td><p><strong>Од Извршен одбор на ЗП Сарај</strong></p></td>
              </tr>
</table>
<h3 align="center"><strong>P r o g r a m</strong><br />
  <strong>P&euml;r pun&euml;n e Shoqat&euml;s s&euml; pensionist&euml;ve t&euml; komun&euml;s Saraj  p&euml;r vitin 2016</strong></h3>
<p>Shoqata e  pensionist&euml;ve t&euml; komun&euml;s Saraj, vitin 2016 e fillon me mandatin e tret&euml; me  organe dhe trupa t&euml; freskuara me an&euml;tar&euml; t&euml; rinj. Dy mandatet e kaluara, edhe  pse si shoqat&euml; relativisht e re ishin mjaft&euml; t&euml; suksesshme. Ajo p&euml;rvoj&euml;  shoqat&euml;s do t'i sh&euml;rbej q&euml; viti 2016 t&euml; jet&euml; edhe m&euml; e&nbsp; suksessh&euml;m. Pjesa m&euml; e madhe e aktiviteteve  t&euml; shoqat&euml;s edhe n&euml; vitin 2016 do jen&euml; vazhdim i aktiviteteve t&euml; vitit paraprak  duke i zgjeruar ato dhe duke i mbi nd&euml;rtuar.<br />
  Bart&euml;s t&euml;  aktiviteteve programore edhe n&euml; vitin 2016 do t&euml; jen&euml; organet dhe trupat e  shoqat&euml;s. P&euml;r k&euml;t&euml; vit, planifikohen k&euml;to aktivitete:<br />
  <strong>1. Kuvendi i shoqat&euml;s,</strong> brenda vitit do t&euml; mbaj dy mbledhje. Nj&euml;r&euml;n mbledhje kah fundi i muajit  shkurt n&euml; t&euml; cil&euml;n do t&euml; duhet t&euml; shqyrtohen dhe aprovohen dokumentet: Raporti  p&euml;r pun&euml;n e Shoqat&euml;s, Raporti financiar, Raporti i K&euml;shillit mbik&euml;qyr&euml;s,  Llogaria p&euml;rfundimtare (k&euml;to p&euml;r vitin 2015), si dhe Plani financiar dhe  Programi p&euml;r pun&euml; n&euml; vitin 2016 etj. Mbledhjen e dyt&euml; do ta mbaj&nbsp; kah fundi i vitit kur do t&euml; duhet  eventualisht t&euml; b&euml;j Rebalancin e buxhetit p&euml;r vitin 2016 dhe financimin e  p&euml;rkohsh&euml;m p&euml;r tre muajt e par&euml; t&euml; vitit t&euml; ardhsh&euml;m. Sipas nevoj&euml;s, do t&euml; mbaj  edhe mbledhje t&euml; tret&euml;.<br />
  <strong>2. K&euml;shilli ekzekutiv,</strong> si organ ekzekutiv, mbart&euml;s i shum&euml; aktiviteteve, mbledhjet e veta do&nbsp; t'i mbaj sipas nevoj&euml;s. Do t&euml; angazhohet p&euml;r  realizimin e suksessh&euml;m t&euml; Programit p&euml;r pun&euml;, do t'i p&euml;rgatis mbledhjet p&euml;r  Kuvend, Llogarin&euml; p&euml;rfundimtare, Planin financiar, Raportin p&euml;r pun&euml;n e  organeve dhe trupave t&euml; shoqat&euml;s, Programin p&euml;r pun&euml;n e organeve dhe trupave t&euml;  shoqat&euml;s. Do t&euml; angazhohet p&euml;r aplikimin e drejt&euml; dhe t&euml; t&euml;r&euml;sish&euml;m t&euml; t&euml;  drejtave t&euml; pensionist&euml;ve q&euml; dalin nga Ligjet p&euml;rkat&euml;se. Do t&euml; angazhohet p&euml;r  afirmimin e Shoqat&euml;s me q&euml;llim t&euml; realizimit m&euml; t&euml; suksessh&euml;m t&euml; detyrave n&euml;  interes t&euml; pensionist&euml;ve, arritje rezultatesh n&euml; pun&euml; dhe p&euml;r p&euml;rgjegj&euml;si m&euml; t&euml;  madhe t&euml; organeve, trupave dhe an&euml;tar&euml;ve. Afirmimi i m&euml;tejm&euml; i deg&euml;ve dhe v&euml;nia  e kontakteve m&euml; t&euml; shpeshta me ata. Hapja e Klubit-Q&euml;ndrimit ditor t&euml;  pensionist&euml;ve. Do t&euml; angazhohet q&euml; selia e Shoqat&euml;n&nbsp; t&euml; jet&euml; n&euml; territor t&euml; shoqat&euml;s me q&euml;llim q&euml;  t&euml; jet&euml; m&euml; af&euml;r an&euml;tar&euml;ve. Do t&euml; angazhohet gjithnj&euml; p&euml;r transparenc&euml; n&euml; pun&euml;n  e organeve dhe trupave t&euml; shoqat&euml;s etj.&nbsp; <br />
  <strong>3. K&euml;shilli mbik&euml;qyr&euml;s</strong> si organ i Shoqat&euml;s, edhe n&euml; vitin 2016, p&euml;rve&ccedil; pun&euml;s financiare, do t&euml;  p&euml;rcjell&euml; edhe mbar&euml; pun&euml;n me q&euml;llim q&euml; ajo t&euml; jet&euml; n&euml; pajtim me aktet  normative shoqat&euml;s. Ai, sipas nevoj&euml;s do t&euml; p&euml;rgatis edhe Raport me shkrim p&euml;r  situat&euml;n financiare, t&euml; hyrat-t&euml; dalat dhe ato do t'i prezantoj&nbsp; para organeve t&euml; shoqat&euml;s me q&euml;llim q&euml; ato t&euml;  p&euml;rdoren n&euml; m&euml;nyr&euml; t&euml; drejt&euml; dhe <br />
  transparente.&nbsp;&nbsp;&nbsp; <br />
  <strong>4.  Komisioni p&euml;r Statut</strong> do t&euml; b&euml;j p&euml;rshtatjen e Statutit t&euml; shoqat&euml;s n&euml; pajtim me  Ligjin p&euml;r organizimin pensionist i cili &euml;sht&euml; n&euml; procedur&euml; p&euml;r aprovim n&euml;  organet e LShPM. Do t&euml; intervenoj&euml; edhe n&euml; dispozita tjera t&euml; Statutit, atje ku  do t&euml; konstatohet se &euml;sht&euml; e nevojshme.<br />
  <strong>5.  Komisioni p&euml;r sport</strong> dhe aktivitete sportive i shoqat&euml;s do t&euml; p&euml;rgatis programin e vet p&euml;r k&euml;to  aktivitete. Do t'i organizoj&euml; aktivitetet sportive lokale. Do t&euml; marr&euml; pjes&euml; na  aktivitete sportive regjionale dhe mund&euml;sisht n&euml; ato t&euml; 21-tat republikane. N&euml;  k&euml;t&euml; drejtim, do t&euml; b&euml;het p&euml;rpjekje p&euml;r p&euml;rgatitjet m&euml; t&euml; mira n&euml; k&euml;to gara si  dhe n&euml; pjes&euml;marrje m&euml; masive t&euml; pensionist&euml;ve t&euml; shoqat&euml;s. <br />
  <strong>6.  Komisioni p&euml;r ekskursione, rekreacion dhe jet&euml;n kulturore-zbavit&euml;se,</strong> do t&euml; p&euml;rgatis program  p&euml;r aktivitete. Do t&euml; organizohen ekskursione nj&euml;ditore&nbsp; n&euml; Maqedoni dhe Kosov&euml; si dhe ekskursion 2-3  ditor n&euml; Shqip&euml;ri, p&euml;r vizit&euml; t&euml; vendeve historike. Do t&euml; organizohet edhe  verim grupor n&euml; bregdetin shqiptar.<br />
  Do t&euml; merret pjes&euml; n&euml; Revyalin e  14-t&euml; regjional t&euml; k&euml;ng&euml;ve, muzik&euml;s dhe valleve, n&euml; Revyalin folklorik  ballkanik n&euml; Shkup (n&euml;se do t&euml; mbahet), n&euml; takimin multietnik tradicional q&euml; do  t&euml; mbahet n&euml; Qendr&euml;n rekreative sportive n&euml; Saraj me rastin e dit&euml;s s&euml;  pensionist&euml;ve 20 shtatori etj.<br />
  <strong>7. Sh&euml;ndet&euml;sis&euml;  dhe &ccedil;&euml;shtjeve sociale</strong> po ashtu do tu jepet r&euml;nd&euml;si e posa&ccedil;me pasi q&euml; kjo mosh&euml;  e tret&euml; m&euml; s&euml; shumti ka nevoj&euml; p&euml;r t&euml;. Bart&euml;s i aktiviteteve do t&euml; jet&euml;  Komisioni p&euml;rkat&euml;s. Do t&euml; mbahen ligj&euml;rata me tema nga sh&euml;ndet&euml;sia. N&euml;  bashk&euml;punim me Kryqin e kuq t&euml; Maqedonis&euml;, do t&euml; kontrollohet tensioni, sheqeri  dhe yndyra n&euml; gjak si dhe do t&euml; ket&euml; p&euml;rkujdesje sh&euml;ndet&euml;sore n&euml; kushte  sht&euml;piake.<br />
  <strong>8.  Informimi edhe n&euml; vitin 2016</strong> do t&euml; b&euml;het p&euml;rmes strukturave n&euml; Shoqat&euml;, p&euml;rmes  kryetar&euml;ve t&euml; deg&euml;ve t&euml; cil&euml;t marrin pjes&euml; n&euml; mbledhjet e organeve drejtuese.  Do&nbsp; t&euml; b&euml;het edhe p&euml;rmes shpalljeve me  shkrim t&euml; cilat do t&euml; vihen n&euml; vende t&euml; dukshme. Informim i mir&euml; do t&euml; b&euml;het  edhe p&euml;rmes gazet&euml;s &ldquo;Penzioner plus&rdquo;, shtojc&euml;s &ldquo;Penzionerski vidici&rdquo; n&euml; gazet&euml;n  &ldquo;Nova Makedonia&rdquo; si dhe p&euml;rmes faqes shtojc&euml; p&euml;r pensionist&euml;t n&euml; gazet&euml;n  &ldquo;Koha&rdquo;. K&euml;t&euml; vit, informimi do t&euml; b&euml;het edhe p&euml;rmes WEB n&euml;n faqes s&euml; shoqat&euml;s  ton&euml; n&euml; LShPM,&nbsp; si dhe p&euml;rmes Biltenave  q&euml; boton LShPM.<br />
  <strong>9. N&euml; vitin  2016 do t&euml; thellohet bashk&euml;punimi</strong> me Pushtetin e vet&euml;qeverisjes lokale n&euml; Saraj, si  dhe sip&euml;rmarrjet publike n&euml; nivel&nbsp; lokal.  Bashk&euml;punimi do t&euml; vazhdoj edhe me Lidhjen e shoqatave t&euml; pensionist&euml;ve t&euml;  Maqedonis&euml; ku shoqata &euml;sht&euml; an&euml;tare, si dhe me Lidhjen e shoqatave pensioniste  t&euml; qytetit t&euml; Shkupit. N&euml; k&euml;to dy Lidhje shoqatash, shoqata jon&euml; ka p&euml;rfaq&euml;sues  n&euml; Kuvendet e tyre. Bashk&euml;punimi i mir&euml; filluar vitin e kaluar do t&euml; vazhdoj  dhe do t&euml; thellohet edhe m&euml; mir&euml; me Kryqin e kuq t&euml; Maqedonis&euml;.<br />
  Do t&euml; bashk&euml;punohet me mjetet e  informimit si ato t&euml; shtypit po ashtu edhe ato elektronike. Bashk&euml;punimi do t&euml;  vazhdoj edhe me shoqatat pensioniste simotra sidomos ato t&euml; regjionit, si dhe  me Organizata dhe shoqata humanitare.<br />
  <strong>10. Do t&euml;  b&euml;het p&euml;rpjekje maksimale</strong> q&euml; n&euml; vitin 2016 <strong>Aktivi  i grave</strong> n&euml; shoqat&euml; t&euml; jet&euml; m&euml; aktiv p&euml;rmes formave t&euml; ndryshme: pjes&euml;marrje  n&euml; ekskursione, ligj&euml;rata, gara sportive, Revyale etj.<br />
  <strong>11. Kujdes  m&euml; i madh do t'i kushtohet bashk&euml;punimit me deg&euml;t</strong> e shoqat&euml;s. Drejtues t&euml; shoqat&euml;s  do t&euml; marrin pjes&euml; n&euml; takimet e K&euml;shillave t&euml; deg&euml;ve dhe takime tjera me  an&euml;tar&euml;t n&euml; deg&euml; ku do t&euml; shqyrtohen raporte dhe akte t&euml; shoqat&euml;s. <br />
  <strong>12. Do t&euml; organizoj  pun&euml;n p&euml;r aktivitete t&euml; ndryshme</strong> n&euml; Qendr&euml;n p&euml;r q&euml;ndrim ditor t&euml; pensionist&euml;ve. <br />
  <strong>13.  Shoqata, n&euml; vitin 2016 do t&euml; angazhohet </strong>edhe n&euml; aktivitete t&euml; tjera t&euml;  cilat brenda vitit do t&euml; paraqiten si t&euml; nevojshme.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="55%">&nbsp;</td>
    <td><p><strong>Nga K&euml;shilli ekzekutiv&nbsp; ZP Saraj</strong></p></td>
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

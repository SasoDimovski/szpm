
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/karpos.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Карпош</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../karpos/'"></div><div class="logo" onClick="window.location='../karpos/'">Здружение на пензионери <strong>Карпош</strong></div></td>
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
          <p align="center"><strong>ПРОГРАМА</strong><br />
            <strong>за работа на Здружението на пензионери Карпош-Скопје</strong> <strong>за 2015 година</strong></p>
          <p>Собранието на Здружението на пензионери Карпош Скопје и  неговиот Извршен одбор во 2015 година својата активност ќе ја насочат кон  остварување на целите и задачите на Здружението утврдени во Статутот на  Здружението, Деловникот за работа на Собранието и Извршниот одбор, како и  активности кои ја унапредуваат социјално-хоманитарната страна во заштитата на  пензионерската популација и обврските што произлегуваат од позитивните прописи од  областа на социјалната заштита и пензиското и инвалидското осигурување.</p>
          <p> <strong>АКТИВНОСТИ НА СОБРАНИЕТО И ИЗВРШНИОТ  ОДБОР НА ЗДРУЖЕНИЕТО</strong></p>
          <p><strong><u>А. ИНИЦИЈАТИВИ</u></strong></p>
          <p>Покренување на иницијатива до:</p>
          <ol start="1" type="1">
            <li>Министерството       за правда за донесување посебен&nbsp; Закон за уредување на начинот и       постапката за организирање на пензионерите во&nbsp; Република Македонија;</li>
            <li>Министерството       за труд и социјална политика и локалната самоуправа за:<br />
              -изградба на пензионерски домови,<br />
              -изградба на клубови за пензионери,<br />
              -изградба на домови за дневен престој на пензионери.</li>
            <li>Фондот       за пензиско и инвалидско осигурување за вонредно усогласување на пензиите.</li>
            <li>Хуманитарни       активности
              <ul>
                <li>Давање  на повеќе корисници на еднократна парична&nbsp; помош и друг вид солидарна  помош.</li>
                <li>Посета на поголем број на  пензионери со повеќе планирани финансиски средства во Финансискиот план за 2015  година.</li>
                <li>Поголемо учество на Комисијата  за здравство и социјална помош на Извршниот &nbsp;&nbsp;одбор како и активно вклучување на&nbsp;  Активот на пензионерки на ЗП Карпош.</li>
                <li>Изготвување Оперативен план за  реализација на горе наведените активности.</li>
              </ul>
              </li>
          </ol>
          <p><strong><u>Б. АКТИВНОСТИ НА СОБРАНИЕТО</u></strong><u><br />
    </u>Во тековната 2015 година Собранието на Здружението се  предвидува да одржи две седници, а по потреба може и повеќе седници и тоа:</p>
          <ol start="1" type="1">
            <li><strong>Првата       седница ќе се одржи во месец февруари</strong> или март на која ќе се разгледуваат:<br />
              -Извештајот за работа на Извршниот одбор во 2014 година;<br />
              -Завршната сметка на приходите и расходите на Здружението за 2014 година;<br />
              -Информација за условите во кои работат ограноците на пензионерите од       Здружението на пензионери Карпош,<br />
              -Разгледување и давање мислења по актите, иницијативите и предлозите       добиени од ресорните министерства, Фондот за пензиско и инвалидско       осигурување и Советот односно Градоначалникот на општина Карпош (оваа       задача ќе биде применета во текот на целата година).</li>
            <li><strong>Втората       седница ќе се одржи во месец декември</strong> на       која ќе се разгледуваат:<br />
              -Предлог-Програмата за работа на Здружението за 2016 година (Собранието,       Извршниот одбор и неговите комисии),<br />
              -Предлог-Финансиски план за приходите и расходи на Здружението за 2016       година,<br />
              -Други материјали по потреба.</li>
          </ol>
          <p><strong><u>В. ДРУГИ АКТИВНОСТИ ВО ТЕКОВНОТО  РАБОТЕЊЕ</u></strong></p>
          <p>            Во овој дел на <strong>Програмата за работа во 2015 година,</strong> се предвидуваат  активности кои произлегуваат од редовното тековно работење на Здружението и  тоа:</p>
          <ol start="1" type="1">
            <li><strong>Посебна       грижа за остварување на приходите на Здружението </strong>и правилно располагање со нив преку наменското       користење на истите и благовремено исполнување на обврските према       заедницата, корисниците на пензија и другите субјекти во согласност со       позитивните прописи, Статутот и другите акти на Здружението.</li>
            <li><strong>Поблиска       соработка со Советот и Градоначалникот на општина Карпош, </strong>заради остварување на заеднички интереси. Тука       првенствено се мисли на создавање услови за работа на ограноците и давање       на локација за изградба на пензионерски дом во Општина Карпош.</li>
            <li><strong>Координирање       на активностите на ограноците </strong>и       нивно меѓусебно поврзување заради подобро функционирање и остварување на       активностите. Тука пред се с&egrave; мисли на соодветната соработка со други       здруженија и невладини организации, како и формирање на мобилни групи при       ограноците за помош на пензионерите согласно предвидените трансакциски       сметки.</li>
            <li><strong>Редовно       следење</strong> на исплатата на пензиите и нивно       благовремено усогласување.</li>
            <li><strong>Преземање       на сите расположливи средства </strong>до       СЗПМ за навремено и без закинување на бројот на корисници на пензија, да       ни ја доставува месечната членарина.</li>
            <li><strong>Ќе       продолжат активностите во ограноците</strong> на       Здружението околу <strong>формирање на матичната евиденција</strong> на пензионерите       што ќе претставува основа за изготвување на социјалната карта на       пензионерите од општина Карпош.</li>
            <li><strong>Организирање       на одмор во објектите</strong> на Фондот       за пензиско и инвалидско осигурување и во Рекреативниот центар на       пензионерите во Катланово, бројот на членови што ќе користат ваков вид на       одмор го утврдува со посебен акт (одлука) по ограноци, на Здружението на       пензионери.</li>
            <li><strong>Заради       рекреација на пензионерите ќе се организираат еднодневни излети низ       Републиката</strong> во зависност од расположливите       средства и интерес на пензионерите;</li>
            <li><strong>Одржување       на меѓусебни средби со други Здруженија</strong>;</li>
            <li><strong>Организирање       и спроведување на спортски активности.</strong> Спортските активности содржат повеќе дисциплини и ќе се спроведуваат врз       основа на Одлуката на Извршниот одбор и Програма на Комисијата за спорт, и       тоа:<br />
              а)натпревари помеѓу ограноците на Здружението;<br />
              б)натпреварување на ниво на регион;<br />
              в)натпреварување на републичко ниво.</li>
            <li><strong>Социјалната       политика и здравствената заштита</strong> на       пензионерите ќе се остварува преку:<br />
              а)посети на болни, тешки семејни несреќи од различен вид, посета на стари       лица;<br />
              б)давање на еднократна помош, согласно критериумите утврдени со посебна       одлука на Извршниот одбор;<br />
              в)соработка со здравствени и хуманитарни организации,<br />
              г)организирање на трибини од областа на здравствената заштита.</li>
            <li><strong>Организирање       на трибини</strong> за определени прашања по потреба       и во зависност од интересот на пензионерите.</li>
            <li><strong>Учество       во одбележување на значајни датуми</strong> и       настани од нашето минато.</li>
            <li><strong>Други       тековни и актуелни прашања по потреба.</strong></li>
          </ol>
          <p>Активностите од оваа Програма ќе ги  реализира Извршниот одбор на Здружението и неговите тела. Потребните средства  за остварување на оваа Програма ќе се предвидат и обезбедат со финансискиот  план на приходите и расходите на Здружението за 2015 година.</p>
          <p> <strong>Програмата </strong>е отворена и ќе бидат извршени сите активности кои ќе  произлезат од тековното работење, актуелни прашања и други активности од  интерес на Здружението.</p>
          <p> <strong>Програмата </strong>влегува во сила со денот на донесувањето, а ќе се применува  од 1 јануари 2015 година.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="45%">17.12.2014  год.<br />
      Скопје</td>
    <td><p>Извршен Одбор на ЗП Карпош<br />
Претседател<strong> Трајко Савески</strong></p></td>
    </tr>
</table>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <br />
  <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp; </p>
<h2>&nbsp;</h2>
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
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.mtsp.gov.mk/" target="_blank"><img src="../images/ministerstvo_trud.gif" alt="" width="194" height="51" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.piom.com.mk/" target="_blank"><img src="../images/fpiom.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.fzo.org.mk/" target="_blank"><img src="../images/fzo.jpg" alt="" width="194" height="76" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://moh.gov.mk/" target="_blank"><img src="../images/zdravstvo.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.ssm.org.mk/" target="_blank"><img src="../images/ssm.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.ckrm.org.mk/Default.aspx" target="_blank"><img src="../images/crven_krst.gif" alt="" width="194" height="128" border="0" /></a></td>
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

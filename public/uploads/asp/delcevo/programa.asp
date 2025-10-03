
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/delcevo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Делчево</title>
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

  gtag('config','G-SFG2N54M33');
</script>
<link href="zdruzenie.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="heder">&nbsp;</td>
    <td class="heder" width="980"><div class="logo" onClick="window.location='../delcevo/'">Здружение на пензионери <strong>Делчево</strong></div></td>
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
          <p>Врз основа на  член 19 став 1 точка 3 ос Статутот на здружението на старосни, семејни, инвалидско  и други пензионери на општина Делчево, Собранието на Здружението на седницата  одржана на ___________2020 година донесе</p>
          <h2 align="center"><strong>П Р О Г Р А М А</strong></h2>
          <h3 align="center"><strong>За работа на здружението на старосни, семејни, инвалидско  и други пензионери на општина Делчево за 2020 година</strong>          </h3>
          <p> Со оваа Програма ќе се реализираат  активностите од областа на пензионерското организирање, значењето од  извршувањето на активностите на здружението и соработка со останатите  здруженија членки на СЗПМ. <br />
   Средствата за реализација на програмата се  обезбедуваат согласно Статутот на здружението, а планирани со финансискиот план  на Здружението. <br />
   Во реализацијата на оваа програма ќе  учествуваат сите комисии и работни тела на собранието на здружението на  пензионери на општина Делчево. <br />
   Основните принципи врз основа на кои се заснова  оваа програма односно активноста на Здружението на пензионери е слободно  искажување и давање на мислење за прашања од интерес на корисниците на пензија,  поведување на иницијативи, активно учество во градење и креирање на начинот на  работење на здружението. <br />
   При спроведувањето на програмата да се имаат  во предвид принципите на одговорност, остварливост, инклузивност, оптимизација  како и поефикасно спроведување на задачите од оваа програма. За успешна  реализација на програмата може да се подготвуваат и оперативни програми. <br />
   Со оваа програма се предвидува соработка со  СЗПМ, ПИОМ, Локална самоуправа, Црвен крст и со други невладини организации и  фондации. <br />
   Во тековната 2020 година, Здружението на  пензионери Делчево како непартиска, невладина, непрофитабилна организација, здружение  и мултиетничка асоцијација, самостојна во организирање и остварување на целите,  интересите и дејностите ќе ги реализира следните активности и задачи:<br />
            - Во текот на месец јануари е предвидено средба со  Градоначалникот на Општина Делчево со изнесување на проблемите на пензионерите  со минимални пензии, проблеми од областа на инфраструктурата, кои ги засегаат пензионерите  а се во надлежност на локалната самоуправа, одредени активности кои се во  надлежност на локалната самоуправа, а да земат учество и пензионерите од нашето  здружение. <br />
            - Средба со претставници на Црвениот крст  за договарање на активности од страна на лекари за предавања и совети за  пензионерите од областа на здружението, за бесплатно мерење ма крвен притисок и  шеќер во крвта. <br />
            - Средба со претседателите на сите 14 ограноци, со покана  до истите да соработуваат со Здружението на пензионерите, во смисла на давање  иницијативи, изнесување на проблеми- а се со цел подобрување на животниот  стандардна пензионерите по месните организации. <br />
            - Одржување на Новогодишна забава за корисниците на пензија  со новогодишна лотарија. <br />
            - Во текот на месец февруари, одржување седница на Извршен  одбор и на надзорен одбор со разгледување и усвојување на извештајот за  работењето во 2019 година, Програмата за работа во тековната 2020 година, усвојување  на Завршната сметка за 2019 година. <br />
            - Во месец март, одржување на отчетно собрание на  Здружението на пензионери Делчево. <br />
            - Одржување на чајанка по повод 8-ми март, во организација  на Активот на жени. <br />
            - Средби со претставници на здруженијата од регионот заради  размена на искуства, договарање на заеднички хуманитарни активности меѓу  здруженијата и други невладини организации. <br />
            - Во текот на месец април активности околу подготовките за  настап на музичката ревија на песни, музика и групи која се одржува во месец  мај а со цел натамошно унапредување на овие културни манифестации. <br />
            - Во договор со Здравниот дом Делчево се планира посета од  медицински лица на пензионерите од Делчево со давање совети од областа на  медицината и воедно бесплатно мерење на крвен притисок и шеќер во крв. Исто  така ќе се организираат и повремени посети во руралните средини од страна на  медицински лица. <br />
            - Следење, ангажирање и давање поддршка на СЗПМ на  заложбата за изградба на старински домови во нашиот регион. <br />
            - Преземање активности за воведување на пензионерска  социјална карта на ЗП Делчево. <br />
            - Подготовки за настап на регионалните спортски натпревари  и настојување на што помасовна вклученост на пензионерите во сите спортски  дисциплини. . <br />
            - Организирање пензионерски средби и други видови на  активности во насоки на здрав активен пензионерски живот. <br />
            - На покани од Здруженија на пензионери организирање на  посета на манастирски комплекси со цел пензионерско дружење со пензионери од  разни краеви на државата. <br />
            - Организирање на еднодневни екскурзии во земјава и  странство. <br />
            - Вклучување на пензионерите во зачувување на животната  средина преку еколошки активности организирани од ЗП Делчево, здруженија на  екологисти и локална самоуправа. <br />
            - Здружението на пензионери ќе земе активно учество на сите  покани од Локалната самоуправа за чествување на сите државни и општински  празници. <br />
            - Денот на пензионерите 20 септември ќе биде одбележен на соодветен  и достоен начин. <br />
            - Во текот на месец март ќе се одржат вонредни избори за  делегат во собранието од месен огранок с. Габрово поради смрт на досегашниот  делегат. <br />
            - Доколку обезбедиме пласман на регионалните спортски  натпревари ќе земеме активно учество и на Републичките спортски игри. <br />
            - На крајот на годината ќе се организира новогодишна забава  со скромен новогодишен коктел. <br />
   Програмата ќе биде доставена до делегатите на  собранието на ЗП Делчево на усвојување. <br />
            Оваа програма е  од јавен карактер и во текот на годината може да се надополнува и изменува.          </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
    <td width="55%"> </td>
    <td> Претседател на ЗП Делчево<br />
 Голубинка Анастасова</td>
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
    <td align="right" class="ankor">изработено од <a href="http://www.medium3.mk" target="_blank" class="ankor">Medium 3</a></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>

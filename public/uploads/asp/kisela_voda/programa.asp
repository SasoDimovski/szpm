
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/kisela_voda.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери  Кисела Вода</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../kisela_voda/'">Здружение на пензионери <strong>Кисела Вода</strong></div></td>
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
          <p align="center"><strong>П Р О Г Р А М А</strong></p>
            <p align="center"><strong>ЗА РАБОТА НА ИЗВРШЕН  ОДБОР ЗА 2024 ГОДИНА НА ЗДРУЖЕНИЕТО НА &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ПЕНЗИОНЕРИ &bdquo;КИСЕЛА ВОДА&ldquo;</strong><strong> </strong><strong>-</strong><strong> </strong><strong>СКОПЈЕ</strong>            </p>
            <p>Со Програмата за  работа на Извршниот одбор за 2024 година ќе се реализираат сите задачи, цели и  активности кои произлегуваат од актите на Здружението како и од законските и  други-подзаконски акти.</p>
            <p>Со планираните  облици на организирано делување Здружението ќе овозможи создавање на подобри  услови за живот на пензионерите на сите полиња од пензионерското живеење.            </p>
            <p align="center"><strong>Програмските цели и  задачи на Извршниот одборт за 2024 година кои ќе се реализираат преку:</strong>            </p>
            <p><strong>1.Подобрување на животниот стандард,  социјалната и здравствената заштита на пензионерите</strong></p>
            <p>- Ќе бидат следени  законските прописи за остварување на правата на пензионерите со покренување на  иницијативи пред надлежните државни органи, преку СЗПМ, за подобрување на  стандардот на нашите пензионери во рамките на државните економски можности.  Преку локалната самоуправа ќе се иницираат прашањата за изградба на  пензионерски дом, отворање на клубови, помош при реализација на активности од  културно-забавниот, спортскиот и рекреативниот живот на пензионерите. Како и  секоја година и во 2024 година ќе биде &nbsp;предвидена  и ревија на игри и песни во организација на СЗПМ, локалната самоуправа и др.</p>
            <p>- Ќе продолжи  соработката со Црвениот крст на Македонија, особено со Општинскиот Црвен крст  &bdquo;Кисела Вода&ldquo;, како и со локалната самоуправа &ndash; општините на чија територија  живеат нашите пензионери.</p>
            <p>- Активностите за  подобрување на здравствената заштита на пензионерите ќе бидат континуирани.  Преку СЗПМ, кој како пензионерска организација е надлежен да соработува со  надлежните републички ресорни институции, ќе покренуваме иницијативи за  подобрување на здравствената заштита на нашите пензионери.</p>
            <p>- Во соработка со  општините каде Здружението има ограноци и клубови, Здружението ќе се ангажира и  залага за давање посебна нега на членови на Здружението од ранливите категории  кои имаат потреба од тоа. </p>
            <p>- Ќе се продолжи со  партиципација на финансиски средства од страна на Здружението со помош на  пензионерите со мали пензии и праќање на одмор во Рекреативниот центар Негорски  Бањи. </p>
            <p>-Ќе се продолжи со  пракса доделување на социјална помош на пензионери со ниски пензии.            </p>
            <p><strong>2. Подобрување на животот на пензионерите преку  реализација на организирани активности</strong></p>
            <p>&nbsp;Со Програмата се предвидени разни активности  на пензионерите со кои ќе им се овозможи подобрување на општата психофизичка и  здравствена состојба. Ќе им се овозможи меѓусебно дружење, со што ќе си ги  збогатат своите активности и пополнат своето слободно време., преку фолклор,  спорт и други активности.</p>
            <p>Со оваа програма,  во 2024 година се планираат:</p>
            <p>- разни спортски  активности;</p>
            <p>- учество во разни  ревии на песни, музика и игри;</p>
            <p>- организирање на  заеднички културно-забавни програми, посета на драмски &nbsp;&nbsp;&nbsp;&nbsp;претстави, изложби и други културно-забавни  манифестации;</p>
            <p>- организирање на  екскурзии и еднодневни излети, како и посета на значајни &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;историски, културни, туристички и други  места со платен превоз;</p>
            <p>- организирање на  хуманитарни акции од секаков вид;</p>
            <p>- организирање на  контролни прегледи за проверка на шеќер во крвта и крвниот притисок;</p>
            <p>- организирање на  средби-дружења од секаков вид во организација на Активот на пензионерките на  Здружението;</p>
            <p>&nbsp;&nbsp;Целта  на програмата е да се зголеми обемот и да се збогатат содржините на  активностите со што пензионерите ќе имаат подобар живот во пензионерските  денови.</p>
            <p>Спортско-рекреативните  активности ќе ги реализираме преку целата</p>
            <p>година. Комисијата  за спорт и рекреација иако поради пандемијата апстинираше, оваа година, ќе биде  активна и ќе ги организира спортските натпревари по дисциплини во текот на  годината со што, во 2024 година се очекува постигнување на &nbsp;резултати на ова поле во однос на минатата  година. </p>
            <p>Културно-забавниот  живот на пензионерите треба да се практикува преку целата година. Ќе се  планираат разни манифестации во соработка со Здруженијата од град Скопје и од  Републиката како и со локалната самоуправа и на тој начин ќе се организираат  заеднички настани и дружења.            </p>
            <p>&nbsp;<strong>3.  Финансирање на планирани активности&nbsp; со  Финансов план и со програмата за работа на Извршниот одбор за 2024 година </strong></p>
            <p>Програмата за  работа на Извршниот одбор за 2024 год. ги опфаќа задачите, целите и  активностите кои произлегуваат од  актите на Здружението како и од други подзаконски акти.Активностите на  Здружението предложени со оваа програма за 2024 год. се многубројуни,  различни во реализирањето и обемни, поточно истите произлегуваат од разни  иницијативи, визии на пензионерите кои се регулираат преку комисиите, Извршниот одбор и  Собранието. Основна цел на сето погоре наведено е создавање на подобри услови  за живот, рекреација, а сето ова да биде пропратено со рамномерно,  подеднакво и домаќинско трошење на средствата. Програмските цели и  задачи зацртани во програмата за работа на Извршниот одбор на  Здружението за 2024 год. ќе бидат реализирани преку работата и програмите на:</p>
            <ul>
                <li>Извршен одбор</li>
                <li>Комисија за спорт и рекреација</li>
                <li>Комисија за културно-забавен живот</li>
                <li>Активот на жени-пензионерки</li>
        </ul>
            <p>Оваа програма е од отворен карактер и може да се  дополнува, збогатува.            </p>
            <p><strong>4.Соработка со локалната самоуправа и со други  пензионерски организации</strong></p>
            <p>Се планира и  наредната година да продолжи соработката со локалната самоуправа. Ќе се  залагаме соработката &nbsp;да се продлабочи,  бидејќи согласно законот за  локална самоуправа општината има обврска да помага да се грижи за пензионерите  од својата општина, во што и успева како организирање на грижа за стари и  изнемоштени пензионери кои имаат потреба од тоа. Наредната година ќе  се залагаме Локалната самоуправа да посвети поголемо внимание на  создавање на услови за работа на ограноците, односно обезбедување на  услови за трајно решение за нивно користење, бидејќи клубовите се места  каде пензионерите поминуваат дел од слободното време, во меѓусебно дружење и  информирање со што се релаксираат и во еден таков амбиент забораваат на  секојдневните проблеми и годините што натежнале. </p>
            <p>Како и секоја  година и во 2024 по повод одбележувањето на Денот на општината се  предвидува реализација на Манифестацијата наречена &bdquo;Коријада&ldquo; со голем хепенинг и  хуманитарна акција каде се вклучува и Здружението на пензионери на  Општина Кисела Вода со своите ограноци.            </p>
            <p><strong>5. Информирање на јавноста и пензионерите од нашето  Здружение</strong></p>
            <p><strong>&nbsp;</strong>И во 2024  год. ќе продолжиме со информирањето на членовите-пензионери на&nbsp;нашето здружение, што е од големо значење,  бидејќи пензионерите имаат потреба од навремена, вистинска, транспарентна и  целосна информација за нашите активности што се работи на ниво на Собрание,  на Извршен одбор и пошироко. Колку е ова информирање од големо значење  покажува весникот &bdquo;Пензионер&nbsp;плус&ldquo; и &bdquo;Коха&ldquo;, кој значително придонесува за  доброто работење да допре до&nbsp;поголем број на пензионери. Информирањето и во  2024 год. ќе продолжи преку&nbsp;весникот &bdquo;Пензионер плус&ldquo;, &bdquo;Коха&ldquo; и други  медиуми. </p><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="45%"> </td>
    <td>Претседател на С.О ЗП &ldquo;Кисела  Вода&rdquo;<br />
        Момчило Петровиќ</td>
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


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/sveti_nikole.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Свети Николе</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../sveti_nikole/'">Здружение на пензионери <strong>Свети Николе</strong></div></td>
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
          <p>Врз основа на член 16 став 3 од статутот на здружението  на пензионерите на општина Свети Николе се донесува следната          </p>
          <h3 align="center"><strong>П Р О Г Р А М А</strong><br />
            <strong>за работа на органите и телата на ЗП Свети Николе за 2016 година</strong></h3>
          <p>Програмските определби и насоки за  работата на Собранието во наредниот период непосредно произлегуваат од  утврдените насоки, начела и цели во Статутот и другите акти на здружението на  пензионери. Во основа тие го одразуваат континуитетот на досегашното работење  на Здружението, а произлегуваат од општествените промени и состојби и од  секојдневните потреби на членството. Врз основа на оваа програма ќе се  изготвуваат годишните програми за работа во кои ќе се утврдуваат поактуелните и <br />
поприоритетни прашања за успешно  остварување на предвидените активности.</p>
          <p><strong>1. СЛЕДЕЊЕТО И РАЗГЛЕДУВАЊЕТО НА ЗАКОНСКИТЕ ПРОПИСИ ОД </strong><br />
  <strong>ОБЛАСТА НА ПЕНЗИСКОТО И ЗДРАВСТВЕНОТО ОСИГУРУВАЊЕ</strong><br />
            Комисијата за статутарни и правни  прашања и Извршниот одбор по потреба ќе работат на:<br />
            - Усогласување на нормативните акти со  Статутот на Здружението и Законот за здруженија и фондации, како и соодветни  интервенции во нормативата што ќе произлегуваат од најавениот нов Закон за  пензиско организирање - Изготвување на соодветно потребни акти, деловници,  правилници, одлуки и сл.<br />
            - Утврдување на одредени ставови, мислења  и насоки по одредени прашања од формално правна регулатива во однос на  донесувањето на одредени <br />
            одлуки или препораки</p>
          <p> <strong>2. ФИНАНСИСКО МАТЕРИЈАЛНО РАБОТЕЊЕ НА ЗДРУЖЕНИЕТО</strong><br />
            - Разгледување и усвојување на  завршните пресметки и финансиските &nbsp;планови<br />
            - Повремени извештаи за остварувањето  на приходите и расходите во одредени периоди од годината<br />
            - Информации за укажаните потреби од  материјално-финансиски карактер за <br />
            одржувањето на клубовите на пензионери  и други инвестициони и тековни потреби за здружението<br />
            - Информации за договорените односи во  снабдувањето на пензионерите со огревно дрво, цени, пласман, плаќање и други  прашања поврзани со оваа проблематика<br />
            - Разгледување и усвојување на извештаи  на Надзорниот одбор, пописни комисии и други повремени одбори или комисии за  разрешување на одредени тековни прашања и проблеми во здружението</p>
          <p> <strong>3. УНАПРЕДУВАЊЕ НА ЗДРАВСТВЕНАТА И СОЦИЈАЛНАТА ЗАШТИТА </strong><br />
            <strong>НА ПЕНЗИОНЕРИТЕ</strong> <br />
            - Организирање на предавања од областа  на здравствената и социјалната заштита на пензионерите<br />
            - Организирање на бесплатен лекарски  преглед &ndash; мерење на крвен притисок, шеќер, прегледи на очен лекар и сл.<br />
            - Учество со средства за превоз за  бањско лекување и партиципација во трошоците утврдени со одлука на Извршниот  одбор<br />
            - Во соработка со Црвениот крст ќе се превземаат  активности за помош на посебно загрозени пензионери, нивни посети и доделување  на материјална помош<br />
            - Следење на проблематиката со  снабдувањето на лекови и предлагање на мерки</p>
          <p> <strong>4. ФОНД ЗА СОЛИДАРНОСТ И ПОМОШ</strong><br />
            - И во постојните услови и односи на  исплатата на погребнината преку фондот на ПИОМ, ќе се исплаќаат средства за  оваа намена на пензионерите кои во изминатите години уплатувале соодветен износ<br />
            - Одборот за солидарност ќе одобрува  средства за еднократна помош во висина на средствата утврдени со финансов план</p>
          <p> <strong>5. СПОРТСКО &ndash; РЕКРЕАТИВНИ АКТИВНОСТИ</strong><br />
            - Преку надлежностите на Комисијата за  спортско рекреативни активности ќе се остваруваат подготовките и организирањето  на :<br />
            - Меѓу пензионерски натпревари за избор  на учесници во натпреварите<br />
            - Ангажирање на поголем број на  пензионери учесници и активисти за реализација на активностите<br />
            - Организирањето на активностите за  одмор и рекреација ќе се остварува во организирани групи &ndash; еднодневни патувања,  излети, викенд одмори и посети на културно-историски знаменитости и туристички  места во Републиката и можност надвор од неа<br />
            - Организирано дружење и средби со  пензионери од други здруженија поврзани со одредени празнувања, свечености и  собири</p>
          <p> <strong>6. КУЛТУРНО &ndash; ЗАБАВЕН ЖИВОТ</strong><br />
            -Во сите активности на планот на  културно забавниот живот Здружението ќе работи на покренување иницијативи и  поддршка на пројавеното во оваа област<br />
            -Ќе се подржува учеството на  Регионалните и Републичките настапи на наши изведувачи на народни песни, ора и  свирки<br />
            -Комисијата поинтензивно ќе работи на  проширувањето на видовите на активности од областа на културата и уметноста.</p>
          <p> <strong>7.ИНФОРМИРАЊЕ</strong><br />
            Информирањето на пензионерите од  Општината ќе се остварува преку соодветни соопштенија на огласната табла,  локалните информативни средства, пензионерскиот печат и написите од  соработниците на печатот.</p>
          <p> <strong>8. АКТИВ НА ПЕНЗИОНЕРКИ</strong><br />
            Со посебна програма ќе се утврдуваат  активностите на Активот на жени &ndash; пензионерки. Во текот на остварувањето  активности сестрано ќе се подржуваат манифестациите, собирите, свеченостите,  прославите и соработката со здруженијата во рамките на регионот и републиката.</p>
          <p> <strong>9.</strong><strong> Соработка на Здружението со Локалната  самоуправа, други здруженија, Сојузот на здруженијата на пензионери на  Македонија, ПИОМ и работни и невладини организации.</strong></p>
          <p><strong>10. Учество на Здружението на пензионери во  активностите поврзани со одбележување на значајни локални и државни празници,  свечено одбележување на 20 Септември - денот на пензионерите</strong></p>
          <p>Составен дел на Програмата се и  програмите на органите и телата што годишно посебно се изготвуваат. </p>
          <p>Програмата е отворена за нови предлози и  активности.          </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
    <td width="55%"> </td>
    <td><p>Никола Атанасов <br />
      Претседател на ЗП Свети Николе</p></td>
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

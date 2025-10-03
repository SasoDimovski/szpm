
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/stip_karbinci.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери на Штип</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../stip_karbinci/'"></div>--><div class="logo" onClick="window.location='../stip_karbinci/'">Здружение на пензионери <strong>Штип</strong></div></td>
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
        <td width="110" align="center"><a href="dokumenti.asp">Документи</a></td>
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
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>Организациска структура</strong><!-- InstanceEndEditable --></td>
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
          <table width="100%" class="dijagram">
            <tr>
    <td colspan="3">Собрание</td>
    </tr>
  <tr>
    <td width="33%">Извршен одбор</td>
    <td width="33%">Надзорен одбор</td>
    <td width="33%">Статутарна  комисија</td>
  </tr>
  </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="50%">Комисија  за културно забавен живот</td>
              <td>Комисија  за спорт и рекреација</td>
            </tr>
            <tr>
              <td>Комисијата  за економија и стандард</td>
              <td>Пописна комисија</td>
            </tr>
            <tr>
              <td colspan="2">Актив на пензионерки</td>
              </tr>
            </table>
          <br />
<br />

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="31%" align="center" valign="top"><img src="netkov.jpg" width="110" height="160" /></td>
    <td width="1%" align="center"> </td>
    <td width="31%" align="center"><img src="donev.jpg" alt="" width="110" height="160" /></td>
    <td width="1%" align="center"> </td>
    <td width="31%" align="center"><img src="jakovlev.jpg" alt="" width="110" height="160" /></td>
    </tr>
  <tr>
    <td align="center" valign="top"><p>Нетков Ристе претседател на ЗП &ndash; Штип </p></td>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top"><p>Донев Јордан потпретседател на ЗП-Штип</p></td>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top"><p>Јаковлев Димитар секретар на ЗП-Штип</p></td>
    </tr>
</table>
          <p>ЗП Штип има 13 ограноци и 7 Клубови на  пензионери.</p>
          <h2>Здружение на пензионери Штип во периодот 2019-2023 година</h2>
<h3>СОБРАНИЕ НА ЗП ШТИП </h3>
<table width="100%" border="0">
  <tr>
    <td width="50%" valign="top"><ol>
         <li>Нетков Ристе</li>
         <li>Деспотов Илија</li>
         <li>Станчев Трајче</li>
         <li>Малинов Петре</li>
         <li>Јанинков Трајче</li>
         <li>Трајков Благој</li>
         <li>Јорданов Раде</li>
         <li>Димитар Јаковљев</li>
         <li>Јордан Донев</li>
         <li>Поповски Бошко</li>
         <li>Бочварска Владанка</li>
         <li>Ристов Трајан</li>
         <li>Смолик Момчило</li>
         <li>Џонова Марија</li>
         <li>Кангалов Никола</li>
    </ol></td>
    <td valign="top"><ol start="16">
      <li>Ордев Радојко</li>
      <li>Шалева Стојка</li>
      <li>Папаров Димитар</li>
      <li>Кошавалиска Ана</li>
      <li>Јаневски Панајот</li>
      <li>Рибарски Димитар</li>
      <li>Ристов Стојанче</li>
      <li>Дошева Душанка</li>
      <li>Георгиев Мите</li>
      <li>Кире Стоилковски</li>
      <li>Славе Крстев</li>
      <li>Павле Насев</li>
      <li>Тодор Јанев</li>
      <li>Љупчо Кудев</li>
      <li>Ташев Мијалче</li>
    </ol></td>
    </tr>
</table>
<!--<p align="center"><img src="Stip---izvrsen-odbor.jpg" alt="" width="520" height="347" /></p>
-->          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><ol>
                   <li>Нетков Ристе</li>
                   <li>Деспотов Илија</li>
                   <li>Станчев Трајче</li>
                   <li>Јанинков Трајче</li>
                   <li>Јорданов Раде</li>
                   <li>Димитар Јаковлев</li>
                   <li>Јордан Донев</li>
                   <li>Бочварска Владанка</li>
                   <li>Смолик Момчило</li>
              </ol></td>
              <td valign="top"><ol start="10">
                <li>Џонова Марија</li>
                <li>Кангалов Никола</li>
                <li>Шалева Стојка</li>
                <li>Јаневски Панајот</li>
                <li>Димитар Рибарски</li>
                <li>Дошева Душанка</li>
                <li>Стоилковски Кире</li>
                <li>Славе Крстев</li>
                <li>Тодор Јанев</li>
                <li>Папаров Димитар</li>
              </ol></td>
            </tr>
          </table>
          <h3>Надзорен Одбор          </h3>
          <ol>
            <li>Балов Мијалче </li>
            <li>Денков Ванчо</li>
            <li>Горѓиева Весна          </li>
          </ol>
          <h3>Статутарна Комисија          </h3>
          <ol>
            <li>Јордан Донев </li>
            <li>Ристов Трајан</li>
            <li>Тодор Јанев          </li>
          </ol>
          <h3>Комисија За Економија И Стандард          </h3>
          <ol>
            <li>Јаневски Панајот</li>
            <li>Деспотов Илија</li>
            <li>Јорданов Раде</li>
            <li>Станчев Трајче</li>
            <li>Ордев Радојко          </li>
          </ol>
          <h3>Комисија За Културно Забавен Живот          </h3>
          <ol>
            <li>Поповски Боше</li>
            <li>Јанинков Трајче</li>
            <li>Дошева Душанка</li>
            <li>Џонова Марија</li>
            <li>Павле Насев</li>
            <li>Малинов Петре          </li>
          </ol>
          <h3>Комисијата За Спорт          </h3>
          <ol>
            <li>Смолик Момчило</li>
            <li>Папаров Димитар</li>
            <li>Кангалов Никола</li>
            <li>Стоилковски Кире</li>
            <li>Георгиев Мите </li>
            <li>Шалева Стојка</li>
          </ol>
          <h3>Актив на жени</h3>
          <ol>
            <li>Бочварска Владанка</li>
            <li>Шалева Стојка</li>
            <li>Кошавалиска Ана</li>
          </ol>
          <h3>&nbsp;</h3>
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

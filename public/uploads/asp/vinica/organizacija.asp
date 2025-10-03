
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/vinica.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Виница</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../prilep/'"></div>--><div class="logo" onClick="window.location='../vinica/'">Здружение на пензионери <strong>Виница</strong></div></td>
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
    <td height="39" colspan="3">Собрание</td>
    </tr>
  <tr>
    <td width="33%">Извршен одбор</td>
    <td width="33%">Надзорен одбор</td>
    <td width="33%">Одбор  за статут</td>
    </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="25%">Комисија за културно-уметнички  самодејности</td>
              <td width="25%">Комисија за спорт</td>
              <td width="25%">Комисија за одмор  и рекреација</td>
              </tr>
            <tr>
              <td>Комисија за информирање  и издавачка дејност</td>
              <td>Комисија за здравство  и социјална дејност</td>
              <td>Секцијата на жени</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="24%" align="center"><img src="Pretsedatel-Pavlina-Angelevska.jpg" alt="" width="110" height="160" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="24%" align="center">&nbsp;</td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="24%" align="center">&nbsp;</td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="24%" align="center">&nbsp;</td>
              </tr>
            <tr>
              <td align="center" valign="top"><strong><em>Павлина Ангелoвска</em></strong>,
                Претседател </td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top">&nbsp;</td>
              </tr>
      </table>

          
          <h2>СОБРАНИЕ НА ЗП виница  - ИЗБОРИ 2023 ГОДИНА</h2>
          <ol>
              <li><!--<p align="center"><img src="Izvrsen-odbor.jpg" alt="" width="520" height="333" /><br />
  <strong><em>Извршен одбор</em></strong></p>-->
                  Симо Велинов-огранок Јакимово</li>
              <li>Симеон Петров-огранок Истибања</li>
              <li>Стојко Митковски &ndash;огранок Истибања</li>
              <li>Златан Ристов-огранок Трсино</li>
              <li>Митко Сиколов-огранок Градец</li>
              <li>Ванчо Михајлов-огранок Блатец, Лаки и Липец</li>
              <li>Бранко Ефтимов &ndash;огранок Блатец,Лаки и Липец</li>
              <li>Младен Лазаров-огранок Драгобрашта</li>
              <li>Лазо Пецов-огранок Блатец, Лаки и Липец</li>
              <li>Драги Ристов-огранок Исток Виница</li>
              <li>Нада Димитрова-огранок Исток Виница</li>
              <li>Јован Алексов-огранок Исток Виница</li>
              <li>Ѓеновева Ристова &ndash;огранок Исток Виница</li>
              <li>Филимон Митев-огранок Исток Виница</li>
              <li>Киро Коцев-огранок Исток Виница</li>
              <li>Димитри Колишев &ndash;огранок Запад Виница</li>
              <li>Павлинка Ангеловска &ndash;огранок Запад Виница-Председател на Собрание</li>
              <li>Јован Гошев-огранок Запад Виница</li>
              <li>Стојмир Арсов-огранок Запад Виница</li>
              <li>Владо Ристов &ndash;огранок Запад Виница</li>
              <li>Блаже Арсов-огранок Запад Виница</li>
              <li>Здравко Стојанов-огранок Исток Виница</li>
              <li>Сабри Велиов &ndash;огранок Запад Виница<br />
              </li>
          </ol>
          <h2><strong>ИЗВРШЕН ОДБОР</strong></h2>
          <ol>
              <li>Павлинка Ангеловска  &ndash;Председател на ИО</li>
              <li>Симо Велинов</li>
              <li>Митко Соколов</li>
              <li>Бранко Ефтимов</li>
              <li>Ванчо Михајлов</li>
              <li>Јован Гошев</li>
              <li>Димитри Колишев</li>
              <li>Стојмир Арсов</li>
              <li>Киро Коцев</li>
              <li>Јован Алексов</li>
              <li>Филимон Митев</li>
          </ol>
          <h2>СТАТУТАРНА КОМИСИЈА</h2>
          <ol>
              <li>Ванчо Михајлов-председател</li>
              <li>Зафир Зафиров</li>
              <li>Благој Филипов</li>
          </ol>
          <h2>НАДЗОРЕН ОДБОР </h2>
          <ol>
              <li>Ружа Гоцевска</li>
              <li>Оливера Иванова</li>
              <li>Панче Атанасов</li>
          </ol>
          <h2>КОМИСИЈА ЗА ПОПИС</h2>
          <ol>
              <li>Симо Велинов</li>
              <li>Јован Гошев</li>
              <li>Стојмир Арсов</li>
          </ol>
          <h2>КОМИСИЈА ЗА ЕКОНОМИЈА</h2>
          <ol>
              <li>Павлинка Ангеловска &ndash;председател</li>
              <li>Бранко Ефтимов</li>
              <li>Симо Велинов</li>
              <li>Јован Гошев</li>
          </ol>
          <h2>КОМИСИЈА ЗА КУЛТУРНО ЗАБАВЕН ЖИВОТ</h2>
          <ol>
              <li>Димитар Колишев-председател</li>
              <li>Мијалчо  Гаврилов</li>
              <li>Нада Димитрова </li>
              <li>Геновева Ристова</li>
              <li>Киро Коцев</li>
          </ol>
          <h2>КОМИСИЈА ЗА СПОРТ</h2>
          <ol>
              <li>Симо Велинов-председател</li>
              <li>Мијалчо Ефремов</li>
              <li>Филимон Митев</li>
              <li>Јован Алексов</li>
              <li>Боривоје Јованов</li>
              <li>Димитар Симов</li>
          </ol>
          <h2>ПРЕДСЕДАТЕЛ НА АКТИВ НА ЖЕНИ</h2>
          <p>Ѓеновева Ристова</p>
          <h2>КОМИСИЈА ЗА ЗДРАВСТВО </h2>
          <ol>
              <li>Билјана Спасова-председател</li>
              <li>Д-Р Јован Манчевски</li>
              <li>Драги Стојанов</li>
          </ol>
          <h2>ПРЕДСЕДАТЕЛИ НА ОГРАНОЦИТЕ</h2>
          <ol>
              <li>Огранок Исток-Мијалче Гаврилов</li>
              <li>Огранок Запад-Мијалчо Ефремов</li>
              <li>Огранок Градец-Стоица Цонев</li>
              <li>Огранок Истибања-Јаким Тасков</li>
              <li>Огранок Блатец, Лаки И Липец-Васко Филипов</li>
              <li>Огранок Јакимово-Ристо Алексов</li>
              <li>Огранок Трсино и Трстија-Стоил Спасов</li>
              <li>Огранок Драгобрашта &ndash;Љупчо Илиев<br />
              </li>
          </ol>
          <h2>&nbsp;</h2>
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

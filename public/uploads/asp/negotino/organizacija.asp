
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/negotino.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Неготино</title>
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Неготино</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../negotino/'"></div>--><div class="logo" onClick="window.location='../negotino/'">Здружение на пензионери <strong>Неготино</strong></div></td>
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
    <td width="33%">Статутарна Комисија</td>
    </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија за култура и забавен живот</td>
              <td width="33%">Комисија за спорт и рекреација</td>
              <td width="33%"><p>Комисија  за здравство</p></td>
              </tr>
            </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="33%" align="center"><img src="Vanco-Ristov-pretsedatel.jpg" alt="" width="110" height="161" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="33%" align="center"><img src="Nada Solakova-sekretar.JPG" alt="" width="110" height="161" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><strong>Ванчо Ристов </strong>&ndash; претседател</td>
              <td width="1%" align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong>Нада Солакова </strong>&ndash; секретар</td>
              </tr>
      </table>
          <h2>Собрание на ЗП Неготино</h2>

          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><ol>
                  <li>Ванчо Ристов &ndash; Претседател</li>
                  <li>Нада Солакова</li>
                  <li>Ванчо Иванов</li>
                  <li>Загорка Кирова</li>
                  <li>Васо Петров</li>
                  <li>Марија Ристова</li>
                  <li>Марика Цветкова</li>
                  <li>Лилјана Караева</li>
                  <li>Вера Бакарова</li>
                  <li>Сане Сарафов</li>
                  <li>Мирослава Петрова</li>
              </ol>                  </td>
              <td valign="top"><ol start="12">
                  <li>Јордан Камендолиев </li>
                  <li>Радмила Леова</li>
                  <li>Ордан Најдов</li>
                  <li>Атанас Мицев</li>
                  <li>Тодор Костов</li>
                  <li>Душко Јовановиќ</li>
                  <li>Благој Пановски </li>
                  <li>Драгиша Златковиќ</li>
                  <li>Србољуб Вранковиќ</li>
                  <li>Миле Дамјанов</li>
              </ol>                  </td>
            </tr>
          </table>
          <h2><strong>ИЗВРШЕН ОДБОР</strong></h2>
<!--          <p><a href="ZA-GOLEMO-IO-c.jpg" target="_blank"><img src="ZA-GOLEMO-IO-c.jpg"/></a></p><br /><br />
-->          
<ol>
    <li>Ванчо Ристов - Претседател</li>
    <li>Никола Николов </li>
    <li>Томе Капетанов </li>
    <li>Нада Солакова </li>
    <li>Драги Митрев </li>
    <li>Јован Грозданов </li>
    <li>Ангел Јанев </li>
    <li>Митко Јанев </li>
    <li>Ирфан Куртишев</li>
</ol>
<h2>Надзорен Одбор</h2>
          <ol>
              <li>Василчо&nbsp;Иванов -&nbsp;Претседател</li>
              <li>Трајче Јанчев</li>
              <li>Доменика Пендева</li>
          </ol>
          <h2>Статутарна Комисија</h2>
          <ol>
              <li>Трајче Тасев &ndash; Претседател</li>
              <li>Бранко Јанев </li>
              <li>Герасим Мантев <br />
              </li>
          </ol>
          <h2>Комисија за култура и забавен живот</h2>
          <ol>
              <li>Цандо  Соколов </li>
              <li>Блага Џолева </li>
              <li>Гоце Најдов </li>
          </ol>
          <h2><strong>Комисија за економија, стандард и инвестиции</strong></h2>
          <ol>
              <li>Нечева Љиљана </li>
              <li>Ликарски Васко </li>
              <li>Коле Петров</li>
          </ol>
          <h2><strong>Комисија за спорт и рекреација</strong></h2>
          <ol>
              <li>Јордан Камендолиев</li>
              <li>Ордан Најдов</li>
              <li>Ѓоко Крстев</li>
          </ol>
          <h2><strong>Комисија за стамбени прашања</strong></h2>
          <ol>
              <li>Бранко Димов </li>
              <li>Вера Бакарева </li>
              <li>Трајан Петковски <br />
              </li>
          </ol>
          <h2><strong>Комисија за план и анализа</strong></h2>
          <ol>
              <li>Сузана Михајловска </li>
              <li>Нада Бојаџиева </li>
              <li>Благоја Пановски<br />
              </li>
              
          </ol>
          <h2><strong>Комисија за здравство</strong></h2>
          <ol>
              <li>Донка Ставрова&nbsp;</li>
              <li>Нада Иванова </li>
              <li>Билјана Цветковска </li>
              </ol>
          <h2>Комисија за работи со жени</h2>
          <ol>
              <li>Миросава Петрова </li>
              <li>Марија Ристова </li>
              <li>Велика Панова <br />
              </li>
          </ol>
          <h2><strong>Комисија за награди и признанија</strong></h2>
          <ol>
              <li>Ратка Леова </li>
              <li>Јанко Трајков </li>
              <li>Душко Јованов<br />
              </li>
          </ol>
          <h2>Комисија  за основни средства и инвентар          </h2>
          <ol>
              <li>Пиштолов Диме </li>
              <li>Вранковиќ Србо </li>
              <li>Тошо Костов </li>
          </ol>
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


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
    <td width="33%">Актив на пензионерки</td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија за статут и правно економски прашања</td>
              <td width="33%">Комисија за културно забавен живот</td>
              <td width="33%">Комисија за спорт и рекреација</td>
              </tr>
            <tr>
              <td>Комисија за станбени односи &nbsp;и работа со клубови</td>
              <td>Комисија за здравство &nbsp;</td>
              <td>Комисија за хуманитарни активности</td>
              </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="33%"><img src="Mite-Stefanov-pretsedatel-na-ZP-Radovis-i-Konche.jpg" width="130" height="172" /></td>
              <td width="1%">&nbsp;</td>
              <td width="33%" align="center"><img src="AngelDimanov_radovis.jpg" width="130" height="172" /></td>
              <td width="1%">&nbsp;</td>
              <td align="right"><img src="blagajnik-Slave-Ristov.JPG" width="130" height="172" /></td>
            </tr>
            <tr>
              <td valign="top"><p>МИТКО СТЕФАНОВ-Претседател Собрание и на Извршен одбор на  Здружението</p></td>
              <td valign="top">&nbsp;</td>
              <td valign="top"><p>АНГЕЛ ДИМАНОВ-Секретар на Здружението</p></td>
              <td valign="top">&nbsp;</td>
              <td valign="top">Славе Ристов, <br />
                Благајник</td>
            </tr>
        </table>
          <h2>Собрание</h2>
<!--          <p><img src="sobranie.JPG" alt="" width="520" height="262" /></p>
-->          <table width="100%" border="0">
  <tr>
    <td width="50%" valign="top"><ol>
      <li>Митко Стефанов-Претседател на Собрание&nbsp;&nbsp;&nbsp;&nbsp; </li>
      <li>&nbsp;Златка  Чачарова</li>
      <li>Георги Андреев</li>
      <li>Костадин Ѓозев</li>
      <li>Јордан Теохарев</li>
      <li>Стојче Манолев</li>
      <li>Билјана Илиевска</li>
      <li>Иванчо Долдуров</li>
      <li>Костадинка Николова</li>
      <li>Панко Дамјански</li>
      <li>Јованче Ставрушев</li>
      <li>Злата Димова</li>
      <li>Васе Василев</li>
      <li>Димитар Ристов</li>
      <li>Ванчо Николов</li>
      <li>Лилјана Младеновска</li>
      <li>Зорка Јованова</li>
    </ol></td><td><ol start="18">
      <li>Рамадани Ука Бајрам</li>
      <li>Ванчо Србаков</li>
      <li>Олга Ефтимова</li>
      <li>Шекерина Јакимова</li>
      <li>Ленче Петрова</li>
      <li>Ристо Крстев</li>
      <li>Јордан Михаилов</li>
      <li>Петре Атанасов</li>
      <li>Илија Илиев</li>
      <li>Боро Николов</li>
      <li>Петар Иванов</li>
      <li>Симеон Спасов</li>
      <li>Златко Василев</li>
      <li>Камче Атанасов</li>
      <li>Атанас Ристов</li>
      <li>Ибраим Вејселов</li>
      <li>Здраве Спасов</li>
      <li>Стефан Василев</li>
    </ol></td></tr></table>
<h2>Извршен Одбор</h2>
<!--          <p><img src="Izvrsen-odbor.JPG" width="520" height="328" /></p>
-->          <ol>
            <li>Митко  Стефанов- Претседател на Извршен одбор</li>
            <li>Костадин  Ѓозев</li>
            <li>Стојче  Манолев</li>
            <li>Иванчо  Долдуров</li>
            <li>Јованче  Ставрушев</li>
            <li>Рамадани  Ука Бајрам</li>
            <li>Олга  Ефтимова</li>
            <li>Ибраим  Вејселов</li>
            <li>Камче  Атанасов</li>
            <li>Петре  Иванов и</li>
            <li>Петар  Атанасов</li>
</ol>
<h2>Надзорен Одбор</h2>
          <ol>
            <li>Тимчо  Дамбов-Претседател на Надзорен одбор</li>
            <li>Зујца  Маринкова и</li>
            <li>Душко  Черкезов          </li>
          </ol>
          <h2><strong>Комисија за статут и  правно-економски прашања и попис</strong></h2>
          <ol>
            <li>Камчев  Благој-претседател на Комисијата</li>
            <li>Стојчев  Јован и</li>
            <li>Атанас  Ѓоргиев          </li>
          </ol>
          <h2><strong>Комисија за спорт и рекреација</strong></h2>
          <ol>
            <li>Ѓеорги  Андреев-Претседател на Комисијата</li>
            <li>Илија  Трајанов</li>
            <li>Димитар  Јованов</li>
            <li>Стојан  Ангелов и </li>
            <li>Јордан  Теохарев          </li>
          </ol>
          <h2><strong>Комисија за културно-забавен  живот</strong></h2>
          <ol>
            <li>Павлина  Кошевец-Претседател на Комисијата</li>
            <li>Ванчо  Данаилов</li>
            <li>Стојанчо  Лукаров</li>
            <li>Васил  Василев и</li>
            <li>Славе  Николов          </li>
          </ol>
          <h2><strong>Комисија за здравство и  хуманитарни активности</strong></h2>
          <ol>
            <li>Миле  Левков-Претседател на Комисијата</li>
            <li>Здраве  Атанасов</li>
            <li>Благица  Долдурова</li>
            <li>Димитар  Ристов и</li>
            <li>Јордан  Христов          </li>
          </ol>
          <h2><strong>Комисија за станбени односи и  работа со клубови</strong></h2>
          <ol>
            <li>Славе  Ристов &ndash; Претседател на Комисијата</li>
            <li>Илија  Свирков</li>
            <li>Благој  Јашков</li>
            <li>Јонче  Филиповски и </li>
            <li>Златко  Василев          </li>
          </ol>
          <h2><strong>Актив на пензионерки</strong></h2>
          <ol>
            <li>Злата  Димова &ndash; Претседател на Активот</li>
            <li>Златка  Чачарова</li>
            <li>Невенка  Поцкова</li>
            <li>Костадинка  Николова</li>
            <li>Верка  Стевкова</li>
            <li>Лимонка  Ристова</li>
            <li>Ематуела  Мехмети</li>
            <li>Ефтерпи  Димитрова и </li>
            <li>Трајанка  Петрова          </li>
          </ol>
          <h2><strong>ОГРАНОЦИ</strong></h2>
          <p>ПРВИ ОГРАНОК-РАДОВИШ</p>
          <ol>
            <li>Благој  Камчев &ndash; Претседател</li>
            <li>Панче  Шукриев-заменик и</li>
            <li>Илија  Трајанов</li>
          </ol>
          <p>ВТОР  ОГРАНОК-РАДОВИШ</p>
          <ol>
            <li>Виолета  Станковиќ-Претседател</li>
            <li>Атанас  Ѓоргиев-заменик и </li>
            <li>Слободан  Савевски</li>
          </ol>
          <p>ТРЕТ  ОГРАНОК-РАДОВИШ</p>
          <ol>
            <li>Петруш  Стефанов-Претседател</li>
            <li>Јован  Станболиски-заменик</li>
            <li>Фроска  Божинова</li>
          </ol>
          <p>ЧЕТВРТИ  ОГРАНОК-РАДОВИШ</p>
          <ol>
            <li>Софка  Стевкова-Претседател</li>
            <li>Ѓеогри  Ташков-заменик</li>
            <li>Фатиме  Шенгова</li>
          </ol>
          <p>ПЕТТИ  ОГРАНОК-РАДОВИШ</p>
          <ol>
            <li>Лимонка  Ристова-Претседател</li>
            <li>Стојче  Костадинов-заменик</li>
            <li>Илија  Гоцевски</li>
          </ol>
          <p>ШЕСТИ  ОГРАНОК-ИЊЕВО</p>
          <ol>
            <li>&nbsp;Крсто Ристов &ndash; Претседател</li>
            <li>Станој  Андонов &ndash; заменик и</li>
            <li>Димитар  Трајков</li>
          </ol>
          <p>СЕДМИ  ОГРАНОК-ОРАОВИЦА</p>
          <ol>
            <li>Васил  Василев- Претседател</li>
            <li>Глигор  Маринков &ndash; заменик и </li>
            <li>Ефтим  Пуреовски</li>
          </ol>
          <p>ОСМИ  ОГРАНОК-ПОДАРЕШ</p>
          <ol>
            <li>Бојчо  Митев-Претседател</li>
            <li>Митко  Христов-замени и </li>
            <li>Николчо  Ѓоргиев</li>
          </ol>
          <p>ДЕВЕТИ  ОГРАНОК-КОНЧЕ</p>
          <ol>
            <li>Пено  Илиев-Претседател</li>
            <li>Младен  Тодоров &ndash; заменик и </li>
            <li>Стефан  Василев          </li>
          </ol>
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

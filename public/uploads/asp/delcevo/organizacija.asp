
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
    <td width="33%">Актив на жени</td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија  за статут  и правни прашања </td>
              <td width="33%">Комисија за спорт  и рекреација</td>
              <td width="33%">Комисија  за здравство</td>
              </tr>
            <tr>
              <td>Комисија  за култура</td>
              <td>Комисија  за  еднократна  парична помош </td>
              <td>Комисија  за тендери</td>
            </tr>
            <tr>
              <td>Комисија  за попис</td>
              <td>Комисија  за екологија</td>
            </tr>
          </table>
          <br />

			
          <!--<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="50%" align="center"><img src="Nikola Atanasoski pretsedatel na Sobranieto.JPG" alt="" width="139" height="195" /></td>
              <td width="1%" align="center"></td>
              <td width="50%" align="center"><img src="organizacija_clip_image006.jpg" alt="" width="142" height="189" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><strong><em>Никола Атанасоски</em></strong>, <br />
                Претседател на  собрание</td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"><strong><em>Глигор Ангелески</em></strong>, <br />
                Претседател  на ИО </td>
              </tr>
            <tr>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              </tr>
            <tr>
              <td align="center"><img src="Dimche-Trajkoski-sekretar-na-ZP-Krushevo.jpg" alt="" width="142" height="189" /></td>
              <td align="center" valign="top"></td>
              <td align="center"><img src="organizacija_clip_image008.jpg" alt="" width="140" height="191" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><strong><em>Димче Трајкоски</em></strong>, <br />
                Секретар на ИО</td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"><strong><em>Пандора  Димеска</em></strong>, <br />
                Сметководител</td>
              </tr>
          </table>-->
          <!--<p align="center"><img src="Sobranie-na-ZP-Krusevo.jpg" alt="" width="520" height="283" /><br />
            <strong><em>Собрание на Здружението</em></strong><br /></p>-->
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="32%"><img src="Delcevo-pretsedatel-primarius-d-r-Violeta-Andonova(16)_.jpg" width="116" height="180" /></td>
              <td width="1%"></td>
              <td width="32%"><img src="Aleksandar-Arsov-sekretar.jpg" width="116" height="180" /></td>
              <td width="1%"></td>
              <td width="32%" align="right"><img src="DIMITAR-KOSTADINOV-delegat-vo-SZPM-.jpg" width="116" height="180" /></td>
            </tr>
            <tr>
              <td valign="top">д-р Виолета Андонова - претседател</td>
              <td valign="top"></td>
              <td valign="top">Димитар Арсов - секретар</td>
              <td valign="top"></td>
              <td valign="top">Димитар Костадинов  - делегат во СЗПМ</td>
            </tr>
          </table>
          <h3><strong>С О Б Р А Н И Е</strong></h3>
			<table><tr>
			  <td width="50%">1. д-р Виолета Андонова -  претседател<br />
			    2. Стоичов Сребран&nbsp;<br />
			    3. Цоневски Младен<br />
			    4. Колевски Kоце<br />
			    5. Петровски Јордан<br />
			    6. Ѓоргиевски Павле<br />
			    7. Петровски Димитар<br />
			    8. Домитровски Методи<br />
			    9. Дамјановска Надица<br />
			    10. &nbsp;Рибаков Тасин<br />
			    11. Георгиевски Георги<br />
			    12. Арсова Виолета<br />
			    13. Арсов Димитар<br />
			    14. Георгиевски Митко<br />
			    15. Мемедов Алија</td><td>			      16. Цурев Никола<br />
			      17. Петровски Љубе<br />
			      18. Богдановски Стојанче<br />
			      19. Џабирска Нада<br />
			      20. Илиевски Тоше<br />
			      21. Десподов Арсенко<br />
			      22. Златковски Богдан<br />
			      23. Радисавов Георги<br />
			      24. Гошев Живко<br />
			      25. Георгиевски Спасе<br />
			      26. Узунски Трајан<br />
			      27. Зафиров Кирил<br />
			      28. Димитров Љупчо<br />
			      29. Стојковска Сузана<br />
			      30. Иванов Иван<br />
			      31. Иванов Костадин</td></tr></table>
			<p> </p>
          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          <p align="center"><img src="Izvrsen-Delcevo.jpg" alt="" width="520" style="float: none" />
<p>1. &nbsp;д-р Виолета Андонова - претседател<br />
  2. &nbsp;Димитровски Љупчо<br />
  3. &nbsp;Радисавов Ѓорги<br />
  4. &nbsp;Џабирска Нада<br />
  5. &nbsp;Георгиевски Ѓорги<br />
  6. &nbsp;Колевски Kоце<br />
  7. &nbsp;Арсова Виолета<br />
  8. &nbsp;Богдановски Стојанче<br />
  9. &nbsp;Петровски Љубе<br />
  10. Петровски Димитар<br />
  11. &nbsp;Дамјановска Надица</p>
<h3>Членови на  надзорен одбор:</h3>
<p> 1. &nbsp;Петровски Љупчо - претседател<br />
  2. &nbsp;Ивановска Здравка<br />
  3. &nbsp;Златковски Стоил</p>
<h3>Комисија за  статут и правни прашања:</h3>
<p> 1. &nbsp;Митев Трајан - претседател<br />
  2. &nbsp;Стојчевски Славе&nbsp;<br />
  3. &nbsp;Кушовски Ефтим</p>
<h3>Членови во  активот на жени:</h3>
<p> 1. &nbsp;Горгиева Верка - претседател<br />
  2. &nbsp;Спасевска Снежана<br />
  3. &nbsp;Димитровска Јаворка<br />
  4. &nbsp;Анакиева Лозенка<br />
  5. &nbsp;Стојковска Ана</p>
<h3>Комисија за  спорт и рекреација:</h3>
<p> 1. &nbsp;Мишев Војо - претседател<br />
  2. &nbsp;Цурев Никола<br />
  3. &nbsp;Георгиев Станко</p>
<h3>Комисија за  култура:</h3>
<p> 1. &nbsp;Георгиевски Георгија - претседател <br />
  2. &nbsp;Николовски Љупчо<br />
  3. &nbsp;Симоновски Мирко </p>
<h3>Комисија за здравство:</h3>
<p> 1. &nbsp;Арсова Виолета - претседател<br />
  2. &nbsp;Стоичов Сребран<br />
  3. &nbsp;Гошев Живко</p>
<h3>Комисија за  еднократна парична помош:</h3>
<p> 1. &nbsp;Петровски Миле - претседател<br />
  2. &nbsp;Колевски Гоце<br />
  3. &nbsp;Ристовски Ефрем </p>
<h3>Комисија за  тендери:</h3>
<p> 1. &nbsp;Велинов Миле - претседател<br />
  2. &nbsp;Георгиев Митко<br />
  3. &nbsp;Узунски Спиро</p>
<h3>Комисија за  попис:</h3>
<p> 1. &nbsp;Јовановска Мирјана-претседател<br />
  2. &nbsp;Петровски Јордан</p>
<h3>Комисија за  екологија:</h3>
<p> 1. &nbsp;Aнгелов Ванчо -претседател<br />
  2. &nbsp;Крстевски Методи<br />
  3. &nbsp;Георгиевски Киро</p>
<h3>Претседатели на  ограноци:</h3>
<p> 1. &nbsp;  Mилково Брдо - Арсов Никола<br />
  2. &nbsp; Ново  Делчево - Георгиев Станко<br />
  3. &nbsp; Први  реон -&nbsp; Дулгерски Славчо<br />
  4. &nbsp; Втори  реон - Петровска Горјанка<br />
  5. &nbsp;Трети реон - Николовски Мишо<br />
  6. &nbsp;с. Sвегор - Златкова Иванка<br />
  7. &nbsp;с. Тработивиште - Толевски Видо<br />
  8. &nbsp;с Габрово - Ефтимовски Цветко<br />
  9. &nbsp;с Вирче - Стојановски Миле<br />
  10. с. Стамер -  Пешовски Мирко<br />
  11. &nbsp;с. Разловци - Џаџовски Ѓорги<br />
  12. &nbsp;с. Драмче - Цоневски Ефрем<br />
  13. &nbsp;с. Бигла, Илијово и Турија - Илиев Блаже&nbsp;<br />
  14. &nbsp;с. Град - Мингарова Сухеја</p>
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
    <td align="right" class="ankor">изработено од <a href="http://www.medium3.mk" target="_blank" class="ankor">Medium 3</a></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/strumica.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Струмица</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../strumica/'"></div>--><div class="logo" onClick="window.location='../strumica/'">Здружение на пензионери <strong>Струмица</strong></div></td>
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
        <td width="110" align="center"><a href="programa.pdf" target="_blank">Програма</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="120" align="center"><a href="dokumenti.asp">Документи</a></td>
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
    <td colspan="4">Собрание</td>
    </tr>
  <tr>
    <td width="33%">Извршен одбор</td>
    <td width="33%">Одбор за надзор и  контрола</td>
    <td width="33%">Комисија за статут и  правни прашања</td>
  </tr>
  </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија за материјална  помош</td>
              <td width="33%">Социјална и здравствена  заштита</td>
              <td width="33%">Комисија за  културно-забавен живот</td>
              </tr>
            <tr><td>Комисија за спорт и  рекреација</td>            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
    <td width="32%" align="center"><img src="Pretsedatel-na-sobranie-Strumica.jpg" width="110" height="160" /></td>
    <td align="center"></td>
    <td width="32%" align="center"><img src="Dance-Daskalovska---pretsedatel-na-IO-1.jpg" alt="" width="110" height="160" /></td>
    <td align="center"> </td>
    <td width="32%" align="center"><img src="Mome-Lazarevski---administrator.jpg" alt="" width="110" height="160" /></td>
    </tr>
  <tr>
    <td align="center" valign="top">Борис Василев, <br />
      претседател на Собрание</td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"> Данче Даскаловска,<br />
      претседател на Извршен одбор</td>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top">Моме Лазаревски,<br /> 
      администратор
</td>
    </tr>
</table>
          <!--<p align="center"><img src="Rakovodstvoto na zdruzenieto.JPG" alt="" width="520" height="334" /><br />
            <strong><em>раководството на Здружението</em></strong></p>
          <p align="center"><img src="Sobranie na ZP Debar i Centar Zupa.JPG" alt="" width="520" height="390" /><br />
            <strong><em>Собрание</em></strong></p>-->
          <h3>СОБРАНИЕ</h3>
          <table width="100%" border="0">
            <tr>
    <td width="50%" valign="top"><p>1. Борис Василев &ndash; претседател<br />
2. Данче Даскаловска<br />
3. Роза Малинова<br />
4. Томе Атанасов<br />
5. Мите Заев<br />
6. Христо Арапов<br />
7. Нада Николова<br />
8. Костадинка Витанова<br />
9. Јован Пачемски<br />
10. Павлина Камчева<br />
11. Андон Туфекчиев<br />
12. Вера Протогерова<br />
13. Костадин Костадинов<br />
14. Слободан Великов<br />
15. Ване Димитров<br />
16. Страхил Лазаров<br />
17. Моме Лазаревски<br />
18. Трајанка Ангелова<br />
19. Соња Чурлинова<br />
20. Анкица Танева<br />
21. Ѓорѓи Младенов<br />
22. Ратко Силавски<br />
23. Тодор Партенов<br />
24. Митко Глигоров<br />
25. Бранко Достинов<br />
26. Душко Ќосев<br />
27. Гонца Палазова<br />
28. Глигор Стојанов<br />
29. Симо Вангелов<br />
30. Никола Андонов<br />
31. Марија Танчева</p></td>
    <td valign="top"><p>32. Асан Јусеинов<br />
33. Љупчо Андонов<br />
34. Иван Стоименов<br />
35. Пенчо Иванов<br />
36. Васе Гогов<br />
37. Наке Милушев<br />
38. Ѓорги Трајков<br />
39. Ратка Муканова<br />
40. Ванчо Колев<br />
41. Ило Спасов<br />
42. Дончо Андонов<br />
43. Делчо Ѓоргиев<br />
44. Веска Пецановска<br />
45. Васил Глигоров<br />
46. Ванчо Андонов<br />
47. Јанко Атанасов<br />
48. Асен Томов<br />
49. Трајанка Ставрева<br />
50. Душко Веселинов<br />
51. Митко Трајков<br />
52. Андреј Динев<br />
53. Ѓорге Стојанов<br />
54. Живко Жежовски<br />
55. Ванѓа Пенева<br />
56. Надица Панајотова<br />
57. Велика Коцева<br />
58. Ѓорѓи Христов<br />
59. Иљо Малинов<br />
60. Никола Илиев<br />
61. Јордан Гајдов</p></td>
    </tr>
</table>
          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          <table width="100%" border="0">
            <tr>
    <td width="50%" valign="top"><p>1. Данче Даскаловска &ndash; претседател<br />
2. Томе Атанасов<br />
3. Ристо Арапов<br />
4. Нада Николова<br />
5. Андон Туфекчиев<br />
6. Аница Танева<br />
7. Ѓорѓи Младенов<br />
8. Бранко Достинов</p></td>
    <td valign="top"><p>9. Симо Вангелов<br />
10. Ванчо Колев<br />
11. Иљо Спасов<br />
12. Ѓорѓи Христов<br />
13. Ванѓа Пенева<br />
14. Иван Стојменов<br />
15. Ванчо Андонов</p></td>
    </tr>
</table>
          <h3>ОДБОР ЗА НАДЗОР И КОНТРОЛА</h3>
          <p>1. Никола Дончев &ndash; претседател<br />
              2. Цонка Шарламанова<br />
              3. Совче Манолева</p>
<h3>КОМИСИЈА ЗА СТАТУТ И ПРАВНИ ПРАШАЊА</h3>
          <p>1. Саветка Кучукова - претседател<br />
              2. Роза Делева<br />
              3. Васил Глигоров</p>
<h3>КОМИСИЈА ЗА МАТЕРИЈАЛНА ПОМОШ, СОЦИЈАЛНА И ЗДРАВСТВЕНА  ЗАШТИТА</h3>
          <p>1. Тимо Данчев &ndash; претседател<br />
              2. Васил Тунев<br />
              3. Голубина Мицева<br />
              4. Дончо Стојанов</p>
<h3>КОМИСИЈА ЗА КУЛТУРНО-ЗАБАВЕН ЖИВОТ</h3>
          <p>1. Киро Донев &ndash; претседател<br />
              2. Ванѓа Пенева<br />
              3. Весна Пецанова<br />
              4. Убавка Врешкова<br />
              5. Митко Спасов</p>
<h3>КОМИСИЈА ЗА СПОРТ И РЕКРЕАЦИЈА</h3>
          <p>1. Слободан Великов &ndash; претседател<br />
              2. Киро Арабаџиев<br />
              3. Горан Божинкочев<br />
              4. Слободан Ангелов<br />
              5. Никола Андонов</p>
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

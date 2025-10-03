<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/kriva_palanka.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Крива Паланка и Ранковце</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../kriva_palanka/'"></div><div class="logo" onClick="window.location='../kriva_palanka/'">Здружение на пензионери <strong>Крива Паланка и Ранковци</strong></div></td>
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
              <td colspan="2">Собрание</td>
            </tr>
            <tr>
              <td width="50%">Надзорен одбор</td>
              <td width="">Извршен  одбор</td>
            </tr>
          </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Статутарна комисија</td>
              <td width="33%">Комисија  за спорт и рекреација</td>
              <td width="33%">Комисија за култура и информирање </td>
              </tr>
            <tr>
                <td>Комисија за здравствена и социјално-хуманитарна  заштита</td>
                <td><p>Комисија за информирање и издавачка дејност </p></td>
              <td width="33%" >Актив на пензионерки</td>
              </tr>
          </table>
          <p>Ограноци: </p>
          <ol>
            <li>Крива Паланка, </li>
            <li>Ранковце, </li>
            <li>Петралица, </li>
            <li>Мождињак</li>
            <li>Дубровница, </li>
            <li>Жидилово</li>
            </ol>
          <p>&nbsp;</p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="25%"><img src="Trajca-Davidovski-K-Palanka-pretsedatel-na-ZP-i-IO.jpg" alt="" width="110" height="155" /></td>
              <td width="1%"></td>
              <td width="25%"><img src="Veselin-Stojanovski-K-Palanka-pretsedatel-na-Sobranie.jpg" alt="" width="110" height="155" /></td>
              <td width="1%"> </td>
              <td width="25%"><img src="Dushko-Stamboliski--sekretar.jpg" alt="" width="110" height="155" /></td>
              </tr>
            <tr>
              <td>Трајча Давидовски - претседател на ЗП и ИО</td>
              <td></td>
              <td>Веселин Стојановски - претседател на собрание</td>
              <td> </td>
              <td>Душко Стамболиски - секретар</td>
              </tr>
  </table>
<!--          <p><img src="sobranie_.jpg" alt=""  /></p>
--><h2>Членови на Собранието</h2>
          <ol>
            <li>Веселин Стојановски - претседател</li>
            <li>Анка Стојановски</li>
            <li>Александар Антовски</li>
            <li>Благој Николовски</li>
            <li>Благородна Цветковска</li>
            <li>Борис Алексовски</li>
            <li>Бранко Ивановски</li>
            <li>Велин Стојановски</li>
            <li>Владо Тодоровски</li>
            <li>Добри Јовановски</li>
            <li>Добри Прокоповски</li>
            <li>Душко Стамболиски</li>
            <li>Иван Стојчевски</li>
            <li>Јованче Симоновски</li>
            <li>Љуба Ангеловска</li>
            <li>Миле Петров</li>
            <li>Марица Николовска</li>
            <li>Мирче Пешевски</li>
            <li>Нада Јакимовска</li>
            <li>Стаменка Марковска</li>
            <li>Стојан Младеновски</li>
            <li>Стојко Миленковски</li>
            <li>Трајча Давидовски          <!--<p><img src="Izvrsen-odgor.jpg" alt="" /></p>-->          </li>
          </ol>
          <h2>Членови на Извршен одбор</h2>
          <ol>
            <li>Трајча Давидовски - претседател</li>
            <li>Анка Стојановска</li>
            <li>Благој Николовски</li>
            <li>Благородна Цветковска</li>
            <li>Добри Јовановски</li>
            <li>Душко Стамболиски</li>
            <li>Јованче Симоновски</li>
            <li>Љуба Ангеловска</li>
            <li>Марица Николовска</li>
            <li>Стаменка Марковска</li>
            <li>Стојан Младеновски</li>
          </ol>
          <h2>Работни тела на собранието </h2>
          <h2>Надзорен  одбор </h2>
          <p>Зорица Цветковска<br />
            Марга Мазаковска<br />
            Добринка Ангеловска          </p>
          <h2>Статутарна  комисија </h2>
          <p>Стојча Димовски<br />
            Иван Стојчевски<br />
            Стојко Велковски</p>
          <h2>Работни  тела на Извршен одбор </h2>
          <h2>Комисија  за здравство и социјално хуманитарна помош </h2>
          <p>Сократ Марковски<br />
            Чедо Марковски<br />
            Мустафов Осман</p>
          <h2>Комисија  за спорт и рекреација </h2>
          <p>Драги Петровски<br />
Шана Георгиевска<br />
Миле Ампов</p>
          <h2>Комисија  за култура и информирање </h2>
          <p>Љупчо Николовски<br />
            Славица Вучевска<br />
            Драги Младеновски</p>
          <h2>Комисија за информирање и издавачка дејност </h2>
            <p>Благоротка  Стојчевска <br />
                Љубица  Стојчевска <br />
                Катица  Борисовска</p>
          <h2><strong>Актив на жени </strong></h2>
          <p>            Анка Стојановска <strong>- </strong>претседател</p>
<h2>Ограноци на ЗП Крива Паланка </h2>
          <p>Огранок  „Лев Брег“ - претседател-Јованче  Симоновски<br />
            Огранок „Десен  Брег“ - претседател-Стојан Младеновски<br />
            Огранок „Жидилово“ - председател-Мирче  Пешевски<br />
            Огранок „Дубровница“ - претседател-Борис  Алексовски<br />
            Огранок „Конопница“ - претседател-Миле  Петров<br />
            Огранок „Мождивњак“ - претседател-Александар  Антовски<br />
            Огранок „Петра  лица“ - претседател-Добри Јовановски<br />
            Огранок „Ранковце“ - претседател-Стојко  Миленковски</p>
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

<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/demir_hisar.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Демир Хисар</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../demir_hisar/'"></div><div class="logo" onClick="window.location='../demir_hisar/'">Здружение на пензионери <strong>Демир Хисар</strong></div></td>
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
              <td width="20%">Комисија за статут и правни прашања</td>
              <td width="20%">Комисија  за спорт</td>
              <td width="20%">Комисија за културно забавен живот </td>
              </tr>
            <tr>
              <td colspan="3">Актив на пензионерки</td>
              </tr>
          </table>
          <p align="center"> </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="25%"><img src="Kirilo-Blazevski.jpg" alt="" width="120" height="181" /></td>
              <td width="1%"></td>
              <td width="25%"><img src="Pere-Petrevski-pretsedatel.jpg" alt="" width="120" height="181" /></td>
              <td width="1%"> </td>
              <td width="25%"><img src="Boris-Najdovski---sekretar-na-ZP-Demir-Hisar.jpg" alt="" width="120" height="181" /></td>
              <td width="1%"> </td>
              <td width="25%"><img src="Ivan-Korunovski-delegat-vo-SZPM.jpg" alt="" width="120" height="181" /></td>
              </tr>
            <tr>
              <td>Кирило  Блажевски - претседател</td>
              <td></td>
              <td>Пере  Петревски - претседател на надзорен одбор</td>
              <td> </td>
              <td>Борис Најдовски - секретар</td>
              <td> </td>
              <td>Иван Коруновски - делегат во СЗПМ</td>
              </tr>
          </table>
          <p><img src="Sobranie-na-ZP-D-Hisar.jpg" alt="" width="520" height="406" /></p>
<h2>Членови на Собранието на ЗП <strong>Демир Хисар</strong></h2>
          <p>   Кирило Блажевски<br />
  Зоре Груевски <br />
  Борис Нечевски<br />
  Благица Богоевска<br />
  Василе Здравевски<br />
  Томе Милевски<br />
  Зоре Трпчевски<br />
  Божин Спасевски<br />
  Иванчо Стојановски<br />
  Вецко Џамбазовски<br />
  Пера Китановска<br />
  Ило Брајановски<br />
  Кале Солунчевски<br />
  Вецко Спировски<br />
  Веле Пољанковски<br />
  Здравко Огненовски<br />
  Радослав Пупунчевски<br />
  Драге Богоевски<br />
  Живко Боримечковски<br />
  Пецо Коштревски<br />
  Верка Лозановска</p>
          <p><img src="Izvrsen-odbor.jpg" alt="" width="520" height="519" /></p>
          <h2>Членови на Извршен одбор на ЗП <strong>Демир Хисар</strong></h2>
          <p>         Василе Здравевски <br />
         Томе Милевски<br />
          Веле Пољанковски<br />
          Благица Богоевска<br />
          Вецко  Спировски<br />
          Верка Лозановска<br />
          Зоре Трпчевски<br />
          Живко  Боримечковски</p>
          <h2><strong>Членови на Надзорен одбор</strong></h2>
          <p>Пере Петревски<br />
            Љубо Трајановски<br />
            Живко Јоновски</p>
          <h2><strong>Актив на пензионерки</strong></h2>
          <p>Благица Богоевска - претседател<br />
            Верка Лозановска<br />
            Виолета Петревска<br />
            Бонда Гаревска<br />
            Душанка Цветковска<br />
            Дана Бојаџиева<br />
            Ванка Шоклевска</p>
          <h2> <strong>Комисија  за статутарно-правни прашања</strong></h2>
          <p>            Кирило Блажевски - претседател<br />
            Василе Здравевски<br />
            Пера Китановска</p>
          
          <h2><strong>Комисија за културно- забавен живот</strong></h2>
          <p>            Зоран Стевановски - претседател<br />
            Благица Богоевска<br />
            Благоја Дамчевски</p>
          
          <h2><strong>Комисија за спорт и рекреација</strong></h2>
          <p>            Пере Петревски - претседател<br />
            Благоја Петревски<br />
            Благоја Богоевски  </p><h2><strong>Ограноци</strong></h2>
          <ol>
            <li>Демир Хисар  <strong></strong></li>
            <li>с. Смилево (с.Обедник)   <strong></strong></li>
            <li>с. Стругово (с.Загориче и  с.Утово)  <strong></strong></li>
            <li>с. Кутретино и Суводол   <strong></strong></li>
            <li>с. Слепче   <strong></strong></li>
            <li>с. Вардино <strong></strong></li>
            <li>с. Граиште (с.Белче, с.Бараково)<strong></strong></li>
            <li>с. Единаковци<strong></strong></li>
            <li>с. Света<strong></strong></li>
            <li>с. Журче<strong></strong></li>
            <li>с. Сладуево<strong></strong></li>
            <li>с. Прибилци (с. Н. Село, с.Растојца,  с.Ракитница, с.Кочишта)<strong></strong></li>
            <li>с. Сопотница (с.Радово)<strong></strong></li>
            <li>с. Жван<strong></strong></li>
            <li>с. Доленци (с.Брезово, с.Зашле,  с.Г. и М.Илино, с.Базерник, с.Бабино,  с.Велмевци) <strong></strong></li>
            <li>с. Вирово (с.Мренога)<strong></strong></li>
            <li>с. Слоештица </li>
            </ol>
          <h2>СПИСОК НА ПРЕТСЕДАТЕЛИ НА ОГРАНОЦИ ВО ДЕМИР ХИСАР</h2>
          <table cellspacing="0" cellpadding="0" width="100%">
            <tr>
              <td >огранок Демир Хисар</td>
              <td >претсед. Кирило Блажевски</td>
            </tr>
            <tr>
              <td> с.    Кутретино и Суводол</td>
              <td>Илија Димитриовски</td>
            </tr>
            <tr>
              <td> с.    Жван</td>
              <td>Борис Најдовски</td>
            </tr>
            <tr>
              <td> с.    Доленци</td>
              <td>Верка Лозановска</td>
            </tr>
            <tr>
              <td> с.    Вирово</td>
              <td>Здравко Огненовски</td>
            </tr>
            <tr>
              <td> с.    Слоештица</td>
              <td>Веле Пољанковски</td>
            </tr>
            <tr>
              <td> с.    Сопотница</td>
              <td>Љубо Трајановски</td>
            </tr>
            <tr>
              <td> с.    Журце</td>
              <td>Иванчо Стојановски</td>
            </tr>
            <tr>
              <td> с.    Прибилци</td>
              <td>Флорин Петревски</td>
            </tr>
            <tr>
              <td> с.    Единаковци</td>
              <td>Алексо Темелковски</td>
            </tr>
            <tr>
              <td> с.    Смилево</td>
              <td>Илија Геневски</td>
            </tr>
            <tr>
              <td> с.    Света</td>
              <td>Симе Ѓоргиовски</td>
            </tr>
            <tr>
              <td> с.    Вардино</td>
              <td>Сандо Лозановски</td>
            </tr>
            <tr>
              <td> с.    Белче</td>
              <td>Симе Трајковски</td>
            </tr>
            <tr>
              <td> с.    Стругово</td>
              <td>Симе Степановски</td>
            </tr>
            <tr>
              <td> с.    Слепче</td>
              <td>Иван Коруновски</td>
            </tr>
            <tr>
              <td> с.    Граиште</td>
              <td>Глигур Велевски</td>
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

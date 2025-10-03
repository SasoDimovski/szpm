
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/struga.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Струга</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../struga/'"></div>--><div class="logo" onClick="window.location='../struga/'">Здружение на пензионери <strong>Струга</strong><br />
Shoqata e Pensionist&#235;ve <strong>Strug&#235;</strong></div></td>
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
    <td width="50%">Извршен одбор</td>
    <td width="50%">Надзорен одбор</td>
  </tr>
  </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Статутарно-правна  комисија </td>
              <td width="33%">Комисија за здравствена  заштита</td>
              </tr>
            <tr>
              <td>Актив на пензионерки</td>
              <td>Комисија за културно -  забавен живот </td>
            </tr>
            <tr><td>Комисија за спорт и рекреација </td>
              <td> </td>
              </tr>
          </table>
          <p></p>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="24%" align="center"><img src="minir-mamudi.jpg" alt="" width="110" height="160" /></td>
    <td width="1%" align="center"></td>
    <td width="24%" align="center"><img src="Mirko-Trposki-pretsedatel-na-ZP-Struga-.jpg" width="110" height="160" /></td>
    <td width="1%" align="center"> </td>
    <td width="24%" align="center" valign="top"><img src="Jovan-Poposki-sekretar.jpg" alt="" width="110" height="160" /></td>
    <td width="1%" align="center" valign="top">&nbsp;</td>
    <td align="center" valign="top"><img src="Resul-Bektesi-delegat-vo-SZPM.jpg" alt="" width="110" height="160" /></td>
    </tr>
  <tr>
    <td align="center" valign="top">Минир Мамуди, <br />
      Потпретседател       на Извршен одбор    </td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top">Милорад Трпоски, <br />
      Претседател на ЗП  Струга       и на Извршен одбор</td>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top">Јован Попоски,<br />
      Секретар</td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top">Ресул Бектеши,<br />
        Член на Собрание      и на Реп.Из.одбор </td>
    </tr>
  <tr>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
  </tr>
  <tr>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"> </td>
  </tr>
  <tr>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"></td>
  </tr>
  <tr>
      <td align="center" valign="top"> </td>
      <td align="center" valign="top"></td>
      <td align="center" valign="top"> </td>
      <td align="center" valign="top"></td>
      <td align="center" valign="top"></td>
      <td align="center" valign="top"></td>
      <td align="center" valign="top"> </td>
  </tr>
</table>
          <p align="center"><img src="Sobranie Struga.jpg" alt="" style="float: none"/><br />
            <strong><em>Собрание</em></strong></p>
<h2>СОБРАНИЕ</h2>
          <p><strong>Делегати за Собранието на Здружението на пензионери Струга избрани за мандатниот период од  2023 до 2027 год.</strong></p>
<table width="100%" border="0">
  <tr>
    <td width="55%" valign="top"><ol>
        <li>Сафет Хоџа</li>
        <li>Ѓорѓи Танески</li>
        <li>Лазареска екисавета</li>
        <li>Бебекоски Слопбодан</li>
        <li>Бектеши фикрие </li>
        <li>Исмаили Идри </li>
        <li>Пејоски Зкатан</li>
        <li>Мамуди Минир</li>
        <li>Кузманоска Павлина</li>
        <li>Мемети Ајрадин</li>
        <li>Јованоска Лубица</li>
        <li>Шпреса Хоџа</li>
        <li>Иваноски Фонче</li>
        <li>Даути Хурем</li>
        <li>Зиба Каим</li>
        <li>Јованоски Јоиван</li>
        <li>Митрески Митре</li>
    </ol>        <br />      </td>
    <td valign="top"><ol start="18">
        <li>Ацкова Мимоза</li>
        <li>Богданоски Александар</li>
        <li>Мартиноски Илија</li>
        <li>Ќура Занула</li>
        <li>Винаца Васфи</li>
        <li>Велјаноски Кире</li>
        <li>Стојкоски Темпо</li>
        <li>Голабоски Стефан</li>
        <li>Богданоски Цветан</li>
        <li>Илиески Делче</li>
        <li>Мендух Кица</li>
        <li>Неат Дервиши</li>
        <li>Пупалоски Симун</li>
        <li>Мацески Боге</li>
        <li>Ајро Евзи</li>
        <li>Профилоски Разме</li>
        <li>Бектеши Ресул</li>
    </ol>        </td>
    </tr>
</table>
<p align="center"><img src="Izvresen odbor 2024.jpg" alt="" style="float: none" /><br />
            <strong><em>Извршен одбор</em></strong></p>
          <h2><strong>ИЗВРШЕН ОДБОР</strong></h2>
          <ol>
              <li>Трпоски Милорад &ndash; претседател </li>
              <li>Мамуди Минир - потпретседател</li>
              <li>Елисавета Лазареска </li>
              <li>Дурмиши Неат</li>
              <li>Кузманоска Павлина </li>
              <li>Пејоски Злоатан </li>
              <li>Богданоски Цветан</li>
              <li>Даути Хурем</li>
              <li>Исмаили Идри</li>
              <li>Ајро Евзи</li>
              <li>Бебекоски Слободан</li>
              <li>Бектеши Фикрие</li>
              <li>Врангелоски Гоце</li>
          </ol>
          <h2><strong>Претседатели на Месни  ограноци</strong></h2>
<ol>
    <li>Голабоски Стефан &ndash; прв реон</li>
    <li>Врангелоски Гоце &ndash; втор реон</li>
    <li>Миоски Ристо &ndash; трет реон </li>
    <li>Новаковиќ Слободан - четврти реон</li>
    <li>Мартиноски Илија - Мислешево</li>
    <li>Мендух Кица &ndash; Делогожда, Ливада,Корошишта, Поум и Мислодежда</li>
    <li>Бектеши Џеладин &ndash; Велешта, Добовјани, Горно и Долно Татеши, Октиси и  Долна Белица</li>
    <li>Климоски Благоја &ndash; Драслајца, Ложани, Биџево и Морпишта</li>
    <li>Нонески Владо &ndash; Езерски Лозја</li>
    <li>Ајро Евзи &ndash; Радолишта, Заграчани, Франгово и Калишта</li>
    <li>Богданоски Цветан - Луково</li>
    <li>Пупалоски Симон - Раджда</li>
</ol>
<h2>НАДЗОРЕН ОДБОР</h2>
          <ol start="1" type="1">
              <li>Клчимоски Благоја - претседател</li>
                <li>Мануди Џеват</li>
                <li>Ацкова Мимоза</li></ol>
<!--          <p align="center"><img src="Rakovodstvo na Aktiv na penzionerki na ZP Struga.jpg" alt="" width="520" height="336" style="float: none" /></p><p>
            <strong><em>Раководство на Актив на пензионерки</em></strong></p>
-->          <h2>АКТИВ НА ПЕНЗИОНЕРКИ</h2>
          <ol>
            <li>Елисавета  Лазареска-претседател</li>
            <li>Павлина Кузманоска-потпретседател</li>
            <li>Нада Чоторошкоска- секретар</li>
          </ol>
          <h2>Комисија за Статут и правни работи </h2>
          <ol start="1" type="1">
            <li>Бектеши Фикрије &ndash;       претседател</li>
            <li>Илиески Делчо &ndash; член</li>
            <li>Иваноски Фонче &ndash; член</li>
          </ol>
          <h2>Комисија за здравство и здравствена заштита</h2>
          <ol start="1" type="1">
            <li>Др. Богданоски       Александар &ndash; претседател</li>
            <li>Др. Ашталкоска Полина       &ndash; член</li>
            <li>Др. Ќура Зенула - член</li>
          </ol>
          <h2>Комисија за културно &ndash; забавен живот </h2>
          <ol>
              <li>Турикашески Ристо - претседател</li>
                <li>Јованоска Луба - член</li>
                <li>Матоски Ристо - член</li>
                <li>Хоџа Шпреса - член</li>
                <li>Калајџиеска Оливера - член</li>
          </ol>
<h2>Комисија за спорт и рекреација</h2>
<ol start="1" type="1">
    <li>Попоски Јован - претседател</li>
    <li>Зиба Гафур - член </li>
    <li>Солакоски Арсе - член</li></ol>
<p></p>
<p></p>
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

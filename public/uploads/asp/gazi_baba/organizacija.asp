
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/gazi_baba.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери  Гази Баба</title>
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
    <td class="heder" width="980">
    <div class="logo" onClick="window.location='../gazi_baba/'">Здружение на пензионери <strong>Гази Баба</strong></div> </td>
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
          </div>
        </td>
        <td valign="top" class="kelija_sodrzina"><!-- InstanceBeginEditable name="sodrzina" -->
          <table width="100%" class="dijagram">
            <tr>
              <td colspan="4">Собрание</td>
            </tr>
            <tr>
              <td width="25%">Извршен одбор</td>
              <td width="25%">Надзорен одбор</td>
              <td width="25%">Комисија за Статут и правни работи</td>
              <td width="25%">Актив на пензионерки</td>
            </tr>
          </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="25%">Комисија за здравство</td>
              <td width="25%">Комисија за културно-забавен живот</td>
              <td width="25%"><p>Комисија за спорт и рекреација </p></td>
              <td width="25%">Комисија  за хуманитарна помош</td>
            </tr>
            <tr>
              <td>Комисија  за информирање</td>
              <td>Комисија  за надоместоци</td>
              <td>Комисија  за излети</td>
              <td>Комисија  за ограноци</td>
            </tr>
            <tr>
              <td>Комисија  за клубови</td>
              <td>Комисија  за попис</td>
              
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="25%"><img src="Stojna-Todorovska-pretsedatel-na-ZP-Gazi-Baba.jpg" width="110" height="132" /></td>
              <td width="1%"></td>
              <!--<td width="25%" align="center"><img src="Atanas Kutlesovski zamenik pretsedatel na na IO na ZP gazi Baba 3-1.jpg" width="110" height="132" /></td>-->
              <td width="1%"></td>
              <td width="25%" align="right"><img src="Ana Gorgieva -pretsedatel na sobranie na ZP Gazi Baba 1-1.jpg" width="110" height="132" /></td>
              <td width="1%"></td>
              <td width="25%" align="right"><img src="Mitko-Karchev--sekretar-blagajnik-1.jpg" width="110" height="132" /></td>
            </tr>
            <tr>
              <td valign="top">Стојна Тодоровска&ndash; Претседател на ИО на ЗП &bdquo;Гази Баба&ldquo;</td>
              <td valign="top"></td>
              <!--<td valign="top">Атанас  Кутлешовски &ndash; Заменик претседател на ИО</td>-->
              <td valign="top"></td>
              <td valign="top">Ана  Ѓоргиева &ndash; претседател на Собрание</td>
              <td valign="top"></td>
              <td valign="top">Митко Карчев &ndash; секретар и благајник</td>
            </tr>
      </table>
          <h2><strong>Членови на собрание мандат 2023-2027 Год.</strong>          </h2>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
              <tr><td width="50%" valign="top">1.Ристо Сетинов-Трубарево<br />
                2.Никола Ѓутчинов-Трубарево<br />
                3.Боре Митковсло-Триангла<br />
                4.Ѓорѓе Андонов-Триангла<br />
                5.Зорка Алексовска-Петровац<br />
                6.Трајан Петрушевски-Стајковци<br />
                7.Панче Николов-Ченто<br />
                8.Стево Арсовски-Ченто<br />
                9.Мичо Ангеловски-Ченто 2</td>
            <td valign="top">10.Ѓуре Стефковски-Стајковци<br />
                  11.Петре Цветковски-Автокоманда<br />
                  12.Владо Стојановски-Автокоманда<br />
                  13.Драге Стојковски-Ченто 1<br />
                  14.Димче Кралев-Ченто 1<br />
                  15.Снежана Ѓурева-Железара<br />
                  16.Душко Николовски-Железара<br />
                  17.Ленка Милошевска-Хиподром<br />
                  18.Трајанка Дошевска-Хиподром</td>
          </tr>
      </table>
          <h2>Членови на извршен одбор мандат од 2023 до 2027 г.<br />
          </h2>
          <p><img src="Gazi-Baba.jpg" alt="" /></p>
<!--<p><img src="Gazi Baba Izvrsen Odbor.jpg" width="520" height="342" /></p>-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
      <tr>
        <td width="50%" valign="top">1.Стојна Тодоровска - Претседател<br />
              2.Ристо Наумовски-Автокоманда<br />
              3.Владимир Славески-Железара<br />
              4.Боро Спасовски-Ченто 2<br />
              5.Блажо Спасовски-Ј.Сандански<br />
              6.Трајан Стојчев-Стајковци</td>
        <td valign="top">7.Гани Рахмани--Арачиново<br />
              8.Драги Јовановски-Хиподром<br />
              9.Миќица Гаич-Петровец<br />
              10.Аница Поповска -Ченто 1<br />
              11.Никола Ѓурчиев-Трубарево</td>
      </tr>
    </table>
<h2><strong>Надзорен одбор за мандат 2023-2027 год.</strong></h2>
<p>1.Виолета Костова-Претседател<br />
    2.Лена Милошевска-Член<br />
    3.Боро Спасовски-Член</p>
<h2>Членови на претседатели на ограноци мандат 2023 до 2027 г.</h2>
<p>1.Мирјана Смилевска-Триангла<br />
    2.Магдалена Спировска-Автокоманда<br />
    3.Драѓе Стоилковски-Ченто 2<br />
    4.Петар Андонов- Ченто 1.<br />
    5.Ана Ѓорѓиева-Хиподром<br />
    6.Божин Лазаревич-Трубарево<br />
    7.Ќазим Лимани-Арачиново<br />
    8.Драгица Димитриевска-Стајковци<br />
    9.Милка Младеновска-Петровец<br />
    10.Петруш Спасовски-Ј.Сандански<br />
    11.Перо Петров-Железара</p>
<h2>Ангажирани во клубовите </h2>
<p>1. Милован Митич-Триангла<br />
    2.Дане Васев-Трубарево<br />
    3.Слободан Конев-Хиподром<br />
    4.Стефан Ристовски-Ченто<br />
    5.Златка Балковска-Железара<br />
    6.Стојан Јорданов-Ј.Сандански<br />
    7.Живорад Трајкович-Огњанци<br />
    8.Љубе Богоевски-Петровац<br />
    9.Драгица Трајановска-Атвокоманда<br />
    10.Цветанка Цветановска-Стајковци<br />
    11.Благоја Дојчиновски-Катланово</p>
<h2>Комисија за надоместоци 2023 до 2027 год.</h2>
<p>1.Аница Поповска-Претседател<br />
    2.Панче Николовски-Член<br />
    3.Петре Цветановски-Член</p>
<h2>Комисија за здравство и хуманитарна помош</h2>
<p>1. Ристо Наумовски- Претседател<br />
    2.Марика Каранфиловска-Лекар-Член<br />
    3.Евица Јовановска Мед.Лице-Член</p>
<h2>Комисија за излети и рекреација 2023-2027 год.</h2>
<p>1. Блажо Спасовски-Претседател<br />
    2.Драге Стоилковски-Член<br />
    3.Боре Митковски8-Член</p>
<h2>Комисија за спорт и рекреација</h2>
<p>1.Јово Митровски-Претседател<br />
    2.Милан Јовановски-Член<br />
    3.Милка Младеновска-Член</p>
<h2>Комисија за културно -забавен живот</h2>
<p>1. Магдалена Спировска-Претседател<br />
    2.Вангелица Стипцарова-Член<br />
    3.Драгица Трајанова-Член</p>
<h2>Комисија за статутарни и правни прашања 2023-2027 год.</h2>
<p>1.Славко Стојанов-Претседател<br />
    2.Роза Пејковска-Член<br />
    3.Трајанка Дошевска-Член</p>
<h2>Делегати во собрание на сзпм  од 2023-2027 год.</h2>
<p>1.Стојна Тодоровска<br />
    2.Блажо Спасовски</p>
<h2>Делегати за собрание на сзпм</h2>
<p>1.Миладин Јовчевски<br />
    2.Аница Поповска<br />
    3.Никола Ѓурчевски</p>
<h2>Преседавач на собрание </h2>
<p>1. Боре Митковски<br />
</p>
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

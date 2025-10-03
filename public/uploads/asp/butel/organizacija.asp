
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/butel.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Бутел</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../butel/'"></div><div class="logo" onClick="window.location='../butel/'">Здружение на пензионери <strong>Бутел</strong></div></td>
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
                <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
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
              <td width="33%">Статутарна комисија</td>
              </tr>
          </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="20%">Комисија за здравство  и социјална заштита</td>
              <td width="20%">Комисија за односи со јавноста</td>
              <td width="20%">Комисија за посета за болни и изнемоштени лица</td>
              <td width="20%">Комисија за спорт и рекреација</td>
              <td width="20%">Актив на пензионерки</td>
            </tr>
          </table>
          <p><strong>Здружението на пензионери од Општината Бутел</strong><strong> </strong>е организирано во 8  ограноци: Скопје Север, Бутел 2, Живко Брајковски, Радишани, Љубанци ,  Св.&nbsp;Климент Охридски, Визбегово и Чучер Сандево&nbsp; а во функција се 6 клуба на пензионери во  ограноците на Скопје Север, Бутел 2, Живко Брајковски,&nbsp; Село Љубанци, Радишани и Св.&nbsp;Климент  Охридски. <br />
            Во Здружението на  пензионери од Општината Бутел активно и со успех работи и Активот на  пензионерки особено на културен и хуманитарен план.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="23%"><img src="Pretsedatel-Ljupcho-Dimovski.JPG" width="120" height="155" /></td>
    <td width="1%"> </td>
    <td width="23%" align="center"><img src="Ljupco-Atanasovski-Sobranie.jpg" width="110" height="155" /></td>
    <td width="1%"> </td>
    <td width="23%" align="center"><img src="Natalija-Vasilevska-Nadzoren-Organ.jpg" width="110" height="155" /></td>
    <td width="1%"> </td>
    <td width="23%" align="right"><img src="Ljubica-Petrusevska,-sekretar.jpg" width="110" height="155" /></td>
    </tr>
  <tr>
    <td valign="top"> Љупчо Димовски,  Претседател на ЗП Бутел и на Извршен Одбор</td>
    <td valign="top"> </td>
    <td valign="top">Љупчо Атанасовски, Претседател на Собрание</td>
    <td valign="top"> </td>
    <td valign="top"><p align="center">Наталија Василевска,<br />
      Претседател  на Надзорен Одбор</p></td>
    <td valign="top"> </td>
    <td valign="top"><p align="center">Љубица Петрушевска,<br />
      Секретар</p></td>
    </tr>
</table>
          <h2>Собрание</h2>
          <p><img src="Butel sobranie.JPG" /></p>
          <p><strong>ЧЛЕНОВИ НА СОБРАНИЕ НА ЗП БУТЕЛ:</strong></p>
          <ol>
            <li>Љупчо  Димовски</li>
            <li>Љупчо  Атансовски</li>
            <li>Љубица  Петрушевска</li>
            <li>Јанко  Јанков</li>
            <li>Здравко  Митревски</li>
            <li>Благоја  Сурловски</li>
            <li>Мирко  Оџовски</li>
            <li>Слободан  Анѓелковски</li>
            <li>Јован  Атансовски</li>
            <li>Драгица Младеновска</li>
            <li>Цветан  Јаневски</li>
            <li>Трајче  Фидановски</li>
            <li>Стојко  Стајковски</li>
            <li>Серафим  Младеновски</li>
            <li>Живко  Каевски</li>
            <li>Стефан  Василевски</li>
            <li>Гацо  Веселинов</li>
            <li>Суљо  Ѓерлек</li>
            <li>Јадранска  Илиевска</li>
            <li>Блажо  Стојановски</li></ol>
<h2>Извршен одбор</h2>
          <p><img src="Butel Izvrsen odgor.jpg"  /></p>
          <ol>
              <li>Љупчо  Димовски</li>
              <li>Борис  Тарчуговски</li>
              <li>Страхил  Тапчановски</li>
              <li>Петре  Зенговски</li>
              <li>Јелица  Златановска</li>
              <li>Десанка  Василевска
          </li></ol>
          <p>&nbsp;</p>
<h2>Надзорен Одбор</h2>
          <ol>
              <li>Васка Груевска</li>
              <li>Јован Атанасовски</li>
              <li>Магдалена Николовска</li>
          </ol>
          <h2><strong>АКТИВ НА ПЕНЗИОНЕРКИ </strong></h2>
            <ol>
                <li>Милица  Маневска            </li>
            </ol>
            <h2><strong>КОМИСИЈА ЗА ЗДРАВСТВО И СОЦИЈАЛНА ЗАШТИТА </strong></h2>
            <ol>
                <li>Лепа Трајкова</li>
                <li>Лидија Славковиќ</li>
                <li>Десанка Василевска            </li>
            </ol>
            <h2><strong>КОМИСИЈА ЗА ОДНОСИ СО ЈАВНОСТА </strong></h2>
            <ol>
                <li>Љубица  Петришевска            </li>
            </ol>
            <h2><strong>КОМИСИЈА ЗА СПОРТ И РЕКРЕАЦИЈА </strong></h2>
            <ol>
                <li>Љупчо Атанасовки</li>
                <li>Борче Стојановски</li>
                <li>Страхил Тапчановски            </li>
            </ol>
            <h2><strong>КОМИСИЈА ЗА СТАРИ, БОЛНИ И  ИЗНЕМОШТЕНИ ЛИЦА </strong></h2>
            <ol>
                <li>Нада  Манасиевска</li>
                <li>Борче  Трачуговски</li>
                <li>Петре  Зенговски</li>
            </ol>
            <h2>Ограноци во Пензионери на општина  Бутел &ndash; Скопје </h2>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top">Огранок    Љубанци </td>
                    <td valign="top">Борче    Тарчуговски </td>
                </tr>
                <tr>
                    <td valign="top">Огранок    Радишани </td>
                    <td valign="top">Јодан Павлов </td>
                </tr>
                <tr>
                    <td valign="top">Огранок    Св. Климент Охридски </td>
                    <td valign="top">Нада Манасиева </td>
                </tr>
                <tr>
                    <td valign="top">Огранок    Живко Брајковски </td>
                    <td valign="top">Вељо    Димовски </td>
                </tr>
                <tr>
                    <td valign="top">Огранок    Визбегово </td>
                    <td valign="top">Злате    Црвчевски </td>
                </tr>
                <tr>
                    <td valign="top">Огранок Чучер    Сандево </td>
                    <td valign="top">Стојко    Левајковски </td>
                </tr>
            </table>
<h2>Клубови во ограноци:</h2>
          <p>Скопје &ndash; Север<br />
            Бутел 2<br />
            Живко Брајковски<br />
            Љубанци<br />
            Радишани и <br />
            Св.&nbsp;Климент Охридски</p>
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

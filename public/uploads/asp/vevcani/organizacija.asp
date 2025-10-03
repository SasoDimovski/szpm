
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/vevcani.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Вевчани</title>
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Вевчани</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../vevcani/'"></div>--><div class="logo" onClick="window.location='../vevcani/'">Здружение на пензионери <strong>„Матица наша“ Вевчани</strong></div></td>
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
              <td width="25%">Статутарно-правна комисија </td>
              <td width="25%">Комисија за здравство и социјална заштита</td>
              <td width="25%">Комисија за култура,спорт и рекреација</td>
              </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="32%" align="center"><img src="jovan-lazoroski.jpg" alt="" width="110" height="160" /></td>
              <td width="1%" align="center"></td>
              <td width="32%" align="center"><img src="VITOMIR-KOSTOJCINOSKI-PRET.NA-IZVR.jpg" alt="" width="110" height="160" /></td>
              <td width="1%" align="center"></td>
              <td align="center" valign="top"><img src="milenko-kukoski.jpg" alt="" width="110" height="160" /></td>
              </tr>
            <tr>
              <td align="center" valign="top">Јован Лазороски &ndash; претседател на собранието<br /></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top">Витомир Костојчиноски &ndash; претседател на ИО и на ЗП</td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top">Миленко Кукоски &ndash; секретар </td>
              </tr>
            <tr>
              <td align="center" valign="top"> </td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              </tr>
            <tr>
              <td align="center" valign="top"> </td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              </tr>
            <tr>
              <td align="center" valign="top"> </td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              </tr>
            <tr>
              <td align="center" valign="top"> </td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              </tr>
            <tr>
              <td align="center" valign="top"> </td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              </tr>
            <tr>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"></td>
            </tr>
            <tr>
              <td align="center" valign="top"><img src="elka-radinoska.jpg" alt="" width="110" height="160" /></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"><img src="JOVAN-AVRAMOSKI-PRETS.jpg" alt="" width="110" height="160" /></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top">&nbsp;</td>
              </tr>
            <tr>
              <td align="center" valign="top">Елка Радиноска &ndash; актив на пензионерки</td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top">Јован Аврамоски &ndash; претседател на комисијата за спорт и рекреација<br /></td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top">&nbsp;</td>
              </tr>
            <tr>
              <td align="center" valign="top"> </td>
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
            </tr>
          </table>
          <h2>СОБРАНИЕ</h2>

          <p align="center"><img src="DELEGATI-VO-SOBRANIETO(1).jpg" alt=""  /><strong><em>Собрание</em></strong></p><br />
            
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top">
                <ol>
                  <li>Јован Лазороски &ndash; претседател</li>
                  <li> Симун Кукоски </li>
                  <li> Методија Чочороски </li>
                  <li> Сандре Русески </li>
                  <li> Јован Аврамоски </li>
                  <li> Винограда Настоска </li>
                  <li> Аргил Мукоски </li>
                  <li> Витомир Костојчин Оски</li>
                  <li> Живко Мурџески </li>
                </ol>                </td>
              <td valign="top">
                <ol start="8">
                  <li>Љубе Бубаноски</li>
                  <li> Љубе Бебекоски </li>
                  <li> Елка Радиноска</li>
                  <li> Лимпе Радиноски </li>
                  <li> Ѓоко Мурџески</li>
                  <li> Насто Парталоски</li>
                  <li> Миљана Чочороска</li>
                  <li> Секула Баткоски</li>
                </ol></td>
            </tr>
          </table>
          <p align="center"><img src="IZVR.ODBOR.jpg" alt="" /><br />
  <strong><em>Извршен одбор</em></strong></p>
          <h2><strong>ИЗВРШЕН ОДБОР</strong>          </h2>
          <ol>
            <li>Витомир Костојчиноски - Претседател</li>
            <li>Јован Аврамоски </li>
            <li>Сандре Русески</li>
            <li>Елка Радиноска </li>
            <li>Алимпие Радиноски</li>
            <li>Ѓорѓија Мурџески </li>
            <li>Насто Парталоски</li>
          </ol>
          <h2>НАДЗОРЕН ОДБОР</h2>
<p>1.ЧОЧОРОСКИ   МЕТОДИЈА - ПРЕТСЕДАТЕЛ</p>
<p>2.ЉУБЕ   БУБАНОСКИ                  </p>
<p>3.ЖИВКО МУРЏЕСКИ</p>
<h2><strong>ДЕЛЕГАТ  ВО СОБРАНИЕТО НА СЗПМ</strong></h2>
<p>ВИТОМИР КОСТОЈЧИНОСКИ</p>
<h2><strong>КОМИСИЈА  ЗА СПОРТ И РЕКРЕАЦИЈА </strong></h2>
<p>ЈОВАН АВРАМОСКИ - ПРЕТСЕДАТЕЛ</p>
<h2> </h2>
<p> </p>
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


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/sveti_nikole.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Свети Николе</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../sveti_nikole/'">Здружение на пензионери <strong>Свети Николе</strong></div></td>
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
    <td width="33%">Комисија за статут и правно-економски прашања</td>
    </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="50%">Комисија  за спорт и рекреација</td>
              <td width="50%">Комисија за културно-забавен живот</td>
              </tr>
            <tr>
              <td>Комисија за здравство и хуманитарни активности</td>
              <td>Актив на пензионерки</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
              <tr>
                  <td width="25%" align="center"><img src="SV-nikole-Sterjo-Gorgiev-prets-na-ZP-SV-Nikole-.jpg" alt="" width="110" height="170" /></td>
                  <td align="center"></td>
                  <td width="25%" align="center"><img src="SV-Nikole-Kirco-Kostov-delegat-vo-sobranie-na-SZPM.jpg" alt="" width="110" height="170" /></td>
                  <td align="center"></td>
                  <td width="25%" align="center"><img src="SV-Nikole-Lidija-Vasileva-sekretar-na-zp-sv-nikole.jpg" alt="" width="110" height="170" /></td>
                  <td align="center"></td>
                  <td align="center"><img src="SV-Nikole-Viktorija-Paneva-pret-na-Aktiv-na-zeni-na-zp-sv-nikole.jpg" alt="" width="110" height="170" /></td>
                  </tr>
              <tr>
                  <td align="center" valign="top">Штерјо Ѓоргиев &ndash;  Преставник на ЗП и на ИО</td>
                  <td align="center" valign="top"></td>
                  <td align="center" valign="top">Кирче Костов &ndash;  Преставник на  Здружението во Сојузот на пензионери на Македонија</td>
                  <td align="center" valign="top"></td>
                  <td align="center" valign="top">Лидија Василева &ndash;  Секретар на ЗП</td>
                  <td align="center" valign="top"></td>
                  <td align="center" valign="top">Викторија Панева - претседател на Актив на жени</td>
                  </tr>
      </table>
      <!--<p align="center"><img src="Sobranie.jpg" alt="" width="520" height="286" /><br />
            <strong><em>Собрание на Здружението</em></strong></p>-->
          
          <h2><strong>СОБРАНИЕ</strong></h2>
          <!--<img src="Sobranie.jpg" alt="" width="520" height="275" />-->
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><ol>
                  <li>Штерјо Ѓоргиев </li>
                  <li>Ленче  Јанчева</li>
                  <li>Викторија Панева</li>
                  <li>Ангел Миланов</li>
                  <li>Штерјо Димов</li>
                  <li>Дока Спасова</li>
                  <li>Ванчо Насков</li>
                  <li>Илчо Јанчев</li>
                  <li>Лидија Василева</li>
                  <li>Благица  Ѓоргиева</li>
                  <li>Павлина Гачева</li>
                  <li>Благој Мишев                  </li>
              </ol></td>
              <td valign="top"><ol>
                  <li>Кире Костов</li>
                  <li>Мишо Савев</li>
                  <li>Драгица Митева</li>
                  <li>Стојан Костадинов</li>
                  <li>Пепа Ѓоргиева</li>
                  <li>Душко Зафиров</li>
                  <li>Благоје Миланов</li>
                  <li>Стојадин Богдановиќ</li>
                  <li>Русе  Смилевски</li>
                  <li>Лепа  Клетниковска</li>
                  <li>Љилјана Тодорова                  </li>
              </ol>                  <p>&nbsp;</p></td>
            </tr>
          </table>
          <!--<p align="center"><img src="Slika-za-web-Izvrsen-odbor-i-pretsedateli-na-komisii.jpg" alt="" width="488" height="185" /><br />
  <strong><em>Извршен одбор</em></strong></p>-->
          <h2>ИЗВРШЕН ОДБОР</h2>
          <p>1. Штеријо Ѓоргиев - претседател<br />
              2. Лидија Василева - секретар<br />
              3. Илчо Јанчев<br />
              4. Викторија Панева<br />
              5. Кире Костов<br />
              6. Благој  Миланов<br />
              7. Благој Мишев</p>
          <h2>НАДЗОРЕН ОДБОР</h2>
          <p>1. Благица  Ѓоргиева  - Претседател <br />
              2. Пепа Ѓоргиоска - Член<br />
              3. Мишо Савев - Член</p>
          <h2>КОМИСИЈА ЗА СТАТУТ И ПРАВНО-ЕКОНОМСКИ ПРАШАЊА</h2>
          <p>1. Лидија Василева &ndash; Претседател <br />
              2. Драгица Митева &ndash; Член<br />
              3. Пепа  Ѓоргиоска &ndash; Член</p>
          <h2>Преставник од ЗП Св Николе во СЗПМ</h2>
          <p>Кирче Костов</p>
          <h2>КОМИСИЈА ЗА СПОРТ И РЕКРЕАЦИЈА</h2>
          <ol>
              <li>Кирче Костов - претседател,</li>
              <li>Борче Ѓоргиев - член</li>
              <li>Ангел Малинов - член          </li>
          </ol>
          <h2>КОМИСИЈА ЗА КУЛТУРНО-ЗАБАВЕН ЖИВОТ</h2>
          <ol>
              <li>Благој Мишев - претседател</li>
              <li>Биљана Панева - член</li>
              <li>Драгица Митева - член          </li>
          </ol>
          <h2>КОМИСИЈА ЗА ЗДРАВСТВО И ХУМАНИТАРНИ работи и помош</h2>
          <p>1.  Дока Спасова - претседател<br />
    2. Павлина Гачева - член<br />
    3. Драгица Миланова - член</p>
          <h2>АКТИВ НА ПЕНЗИОНЕРКИ</h2>
          <p>Претседател &ndash; Викторија  Панева        </p>
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

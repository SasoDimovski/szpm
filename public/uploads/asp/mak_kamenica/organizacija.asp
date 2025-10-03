
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/mak_kamenica.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Македонска Каменица</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../mak_kamenica/'"></div><div class="logo" onClick="window.location='../mak_kamenica/'">Здружение на пензионери <strong>Македонска Каменица</strong></div></td>
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
    <td width="33%">ИЗВРШЕН ОДБОР</td>
    <td width="33%">КОМИСИЈА ЗА КОНТРОЛА И НАДЗОР</td>
    <td width="33%">СТАТУТАРНА КОМИСИЈА</td>
  </tr>
  </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="50%">КОМИСИЈА  ЗА СПОРТ</td>
              <td>КОМИСИЈА  ЗА КУЛТУРЕН-ЗАБАВЕН ЖИВОТ</td>
            </tr>
            <tr>
              <td>КОМИСИЈА ЗА ЗДРАВСТВО </td>
              <td>КОМИСИЈА  ЗА РАБОТА СО ПРАВНИ СУБЈЕКТИ</td>
            </tr>
            <tr>
              <td>КОМИСИЈА  ЗА ПОПИС</td>
              <td>КОМИСИЈА  ЗА РАСХОДИ</td>
            </tr>
            <tr>
              <td colspan="2">АКТИВ НА ПЕНЗИОНЕРКИ</td>
              </tr>
            </table>
          <br />
<br />

<table width="60%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="50%" align="center" valign="top"><img src="Javorka-Sokolovska-pretsed-na-ZP-Mak.-Kamenica.jpg" width="110" height="160" /></td>
    <td align="center"></td>
    <td width="50%" align="center"><img src="Ilo Spasevski sekretar na Mak Kamenica.jpg" alt="" width="110" height="160" /></td>
    </tr>
  <tr>
    <td align="center" valign="top">Јаворка Соколовска - претседател</td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top">Ило Спасевски - секретар</td>
    </tr>
</table>
          <h3>Собрание</h3>
<!--          <p><img src="Sobranie-na-M.jpg" alt="" width="520" height="326" /></p>-->
<table width="100%" border="0">
  <tr>
    <td width="50%" valign="top"><p>1.  ЈАВОРКА СОКОЛОВСКА &ndash; Претседател<br />
        2.  ПЕРО МИТРЕВСКИ<br />
        3.  ДРАГАН ЈОВАНОВСКИ<br />
        4.  СТАНКО ДИМИТРОВСКИ<br />
        5.  ВАНЧО НИКОЛОВСКИ<br />
        6.  МЕТОДИЈА АНГЕЛОВСКИ<br />
        7.  ДРАГИ АНАКИЕВСКИ<br />
        8.  СЛАВЧО СТОЈЧЕВСКИ<br />
        9.  ДУШКО ТОДОРОВСКИ<br />
        10. ИЛО ЃОРЃИЕВСКИ<br />
        11. МИТКО РИСТОВСКИ</p></td>
    <td valign="top"><p>12. ПАНЧЕ КОСТЕВСКИ<br />
        13. СТАНКО СТОЈМЕНОВСКИ<br />
        14. ВАНЧО РИСТОВСКИ<br />
        15. КОСТЕ НИКОЛОВСКИ<br />
        16. СТОЈНЕ ПЕТРОВСКИ<br />
        17. СТАНИСЛАВ СТОЈАНОВСКИ<br />
        18. ЈЕЛИЦА АНГЕЛОВА<br />
        19. ЛЕНКА ЏЕВАЛЕКОВА<br />
        20. СЛАВЕ ЗЛАТКОВСКИ<br />
        21. СТОЈАНКА КОСТАДИНОВА</p></td>
    </tr>
</table>
<!--
<p align="center"><img src="Izvrsen-odbor-M-Kamenica.jpg" alt="" width="520" height="261" /><br />
            <strong><em>Извршен одбор</em></strong></p>
-->
          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          
            <p>1. ЈАВОРКА СОКОЛОВСКА &ndash; Претседател на ИО<br />
                2. ВАНЧО НИКОЛОВСКИ<br />
                3. ЈЕЛИЦА АНГЕЛОВА<br />
                4. СТАНКО ДИМИТРОВСКИ<br />
                5. ДРАГАН ЈОВАНОВСКИ<br />
                6. ПАНЧЕ КОСТЕВСКИ<br />
                7. СТАНКО СТОЈМЕНОВСКИ<br />
            </p>
            <h3>ОГРАНОК СЕЛО САСА</h3>
            <p> 1. ПЕРО ПАУНОВСКИ  (Претседател на Огранок)</p>
            <h3>ДЕЛЕГАТ ВО СОБРАНИЕ НА СЗПМ</h3>
            <p>ЈАВОРКА СОКОЛОВСКА</p>
            <h3>КОМИСИЈА ЗА КОНТРОЛА И НАДЗОР</h3>
            <p> 1. СТОЈЧЕ ГОЦЕВСКИ  -Претседател на комисија<br />
                2. ЗАФИР СТАМЕНКОВСКИ- Член<br />
                3. СПИРО СТОЈКОВСКИ- Член</p>
            <h3> СТАТУТАРНА КОМИСИЈА</h3>
            <p> 1. БЛАШКА ГРБИЌ - Претседател на комисија<br />
                2. СЛАВЧО СТОЈЧЕВСКИ - Член<br />
                3. ЃОРЃИ АНТОВСКИ - Член</p>
            <h3> КОМИСИЈА ЗА СПОРТ</h3>
            <p> 1. ВЛАДО СТАМЕНКОВСКИ - Претседател<br />
                2. ВИДО ВЕЛИНОВСКИ - Член<br />
                3. БОРЕ ВЕЛИНОВСКИ - Член</p>
            <h3> КОМИСИЈА ЗА КУЛТУРЕН-ЗАБАВЕН ЖИВОТ</h3>
            <p> 1. СТАНКО ДИМИТРОВСКИ - Претседател на комисија<br />
                2. БОРО ВЕЛИНОВСКИ -Член<br />
                3. ТРАЈАН ЃОРЃИЕВСКИ - Член</p>
            <h3> КОМИСИЈА ЗА РАБОТА СО ПРАВНИ СУБЈЕКТИ</h3>
            <p> 1. ЈАВОРКА СОКОЛОВСКА - Претседател на комисија<br />
                2. ВАНЧО ОГНАНОВСКИ - Член<br />
                3. МЕТОДИЈА АНГЕЛОВСКИ - Член</p>
            <h3> КОМИСИЈА ЗА ЗДРАВСТВО</h3>
            <p> 1. БЛАШКА СТОИМЕНОВА-Претседател на комисија<br />
                2. ЛЕНКА ЏЕВАЛЕКОВА - Член<br />
                3. КОСТЕ НИКОЛОВСКИ - Член</p>
            <h3>                КОМИСИЈА ЗА ПОПИС</h3>
            <p> 1. МИРОПА ИВАНОВА - Претседател на комисија<br />
                2. ТИМЕ СТАМЕНКОВСКИ - Член<br />
                3. ЛУБЕ ВЕЛИНОВСКИ - Член</p>
            <h3> КОМИСИЈА ЗА РАСХОДИ</h3>
            <p> 1. ЦАРКА ИВАНОВА - Претседател на комисија<br />
                2. ПАВЛЕ ЗАХАРИЕВСКИ - Член<br />
                3. БОРЕ ДИМИТРОВСКИ - Член<br />
            </p>
            <h3 align="">&nbsp;</h3><!-- InstanceEndEditable --></td>
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


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/gevgelija.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->

<title>Здружение на пензионери Гевгелија</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../gevgelija/'">Здружение на пензионери <strong>Гевгелија</strong></div></td>
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
    <td width="50%">Извршен одбор</td>
    <td>Надзорен одбор</td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија за  Статутарни и правни прашања</td>
              <td width="33%">Комисија за Здравство  и социјална грижа</td>
              <td width="33%">Комисија за  станбен  и деловен простор</td>
              </tr>
            <tr>
              <td>Комисија за култура</td>
              <td>Комисија за спорт и  рекреација</td>
              <td>Активот на пензионерки</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="33%"><img src="Popov-Dimitar-pret-na-ZP.jpg" width="110" height="160" /></td>
              <td width="1%"></td>
              <td width="33%"><img src="Dinev-Slobodan-na-sobranie.jpg" alt="" width="110" height="160" /></td>
              <td width="1%"></td>
              <td width="33%"><img src="Marija-Nikolova-sekr.png" alt="" width="110" height="160" /></td>
              </tr>
            <tr>
              <td>Димитар Попов -  претседател на Извршен одбор</td>
              <td></td>
              <td> Слободан Динов  - претседател на Собрание</td>
              <td></td>
              <td>Марија Николова - секретар</td>
              </tr>
        </table>
          <!--<h2><img src="Sobranie.JPG" width="520" height="281" /></h2>-->
          <h2>Членови на Собрание          </h2>
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><ol>
                  <li>МАРКУДОВА САВКА</li>
                  <li>ДИНОВ СЛОБОДАН</li>
                  <li>СТОИЛОВ ДИМИТАР</li>
                  <li>ПОПОВ ДИМИТАР</li>
                  <li>СТОЈКОВ ЈОВАН</li>
                  <li>ДЕБНИКОВ ЃОРЃЕ</li>
                  <li>ТОШЕВ МИЛЕ</li>
                  <li>КОЕВ СТОЈЧЕ</li>
                  <li>ЈАКОФОВСКИ ПЕТАР</li>
                  <li>МИТРОВА МАРГАРИТА</li>
                  <li>ВЕЛКОВ ЈОВАН</li>
                  <li>МИТРОВА ЗОРА</li>
                  <li>ИЛКОВ ЗОРАН</li>
                  <li>ЈАНЕВ МИТЕ</li>
              </ol>
                  <p><br />
                  </p></td>
              <td valign="top"><ol start=15>
                  <li>ЃОШЕВСКА ВЕРКА</li>
                  <li>СЛОБОДА АМПОВА</li>
                  <li>КАРАРИЗОВ ЏОКО</li>
                  <li>ВЕНЧО АТАНАСОВ</li>
                  <li>ВАСЕ КРСТЕВ</li>
                  <li>ЛЕНЧЕ ЖАРКО</li>
                  <li>КАНГОВ КИРИЛ</li>
                  <li>КАМЧЕВ СТОЈАН</li>
                  <li>РИСТОВА ЛЕНЧЕ</li>
                  <li>КАЛИНОВА ЛИЛЈАНА</li>
                  <li>КРСТЕ ВЕНОВ</li>
                  <li>БАТАНЏИЕВА МАРИЦА</li>
                  <li>ПЕТРОВ РИСТО</li>
              </ol>                  </td>
            </tr>
        </table>

          <h2>СПОРТ И РЕКРЕАЦИЈА</h2>
          <p>1.	 КОЧЕВ ГЛИГОР ПРЕТСЕДАТЕЛ<br />
              2.	 ЖИВКО СИЛЈАНОВСКИ<br />
              3.	 АНТЕ ГОРГИЕВ<br />
              4.	 ТОДОРКА ТРИФУНОВСКА<br />
              5.	 МИХО СМИЛКОВ</p>
          <h2>КУЛТУРНО ЗАБАВЕН ЖИВОТ</h2>
          <p>1.	 ТАНКА ГАВРИЛОВСКА ПРЕТСЕДАТЕЛ<br />
              2.	 НАДА РИСТОВА<br />
              3.	 НАСО КАКРОВ</p>
          <h2>СТАНБЕН И ДЕЛОВЕН ПРОСТОР</h2>
          <p>1.	 БЛАЖЕ ГОРГИЕВ ПРЕТСЕДАТЕЛ<br />
              2.	 МАРИЈА НИКОЛОВА<br />
              3.	 КРСТЕ ТРАЈКОВ<br />
              4.	 АЛЕКСАНДАР ШОКЛЕВ<br />
              5.	 АТАНАС ИРСТЕВ</p>
          <h2>ИНВЕСТИЦИОНО ОДРЖУВАЊЕ</h2>
          <p>1.	 СЛОБОДАН ДИНОВ ПРЕТСЕДАТЕЛ<br />
              2.	 ТОДОРКА ТРИФУНОВСКА<br />
              3.	 АТАНАС АТАНАСОВСКИ</p>
          <h2>ЗДРАВСТВО И СОЦИЈАЛНИ РАБОТИ</h2>
          <p>1.	 ВАНЧО ПОП ИВАНОВ ПРЕТСЕДАТЕЛ<br />
              2.	 МАРИЈА МУРЏЕВА<br />
              3.	 ПЕРО АПОСТОЛОВ<br />
              4.	 МИТЕ ЈАНЕВ<br />
              5.	 РИСТО УРУМОВ</p>
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

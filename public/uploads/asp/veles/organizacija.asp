
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/veles.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Велес</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../veles/'">Здружение на пензионери <strong>Велес</strong></div></td>
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
    <td width="33%">Статутарна   комисија</td>
    </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија за спорт и рекреација</td>
              <td width="33%">Комисија за култура</td>
              <td width="33%">Комисија за доделување станови</td>
              </tr>
            <tr>
              <td>Комисија за тековно одржување</td>
              <td>Комисија за социјални прашања</td>
              <td>Актив на пензионерки</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="33%" align="center"><img src="Vele-Aleksoski---pretsedatel.jpg" alt="" width="110" height="172" /></td>
              <td width="33%" align="center"><img src="Olga-Novaceva-delegat-vo-SZPM.jpg" alt="" width="110" height="172" /></td>
              <td width="33%" align="center">&nbsp;</td>
              </tr>
            <tr>
              <td align="center" valign="top">Веле Алексоски - претседател</td>
              <td align="center" valign="top">Олга Новачева -  делегат во СЗПМ</td>
              <td align="center" valign="top">&nbsp;</td>
              </tr>
      </table>
      <!--<p align="center"><img src="Sobranie.jpg" alt="" width="520" height="286" /><br />
            <strong><em>Собрание на Здружението</em></strong></p>-->
          
          <h2><strong>Собрание на ЗП Велес</strong></h2>
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><p>1.   Благој Кочов<br />
                2.   Олга Ѓорѓиева<br />
                3.   Веле Алексоски<br />
                4.   Трајче Николов<br />
                5.   Светлана  Ќулумова<br />
                6.   Благој  Јорданов<br />
                7.   Методија  Диманов<br />
                8.   Јован Гетов<br />
                9.   Стојан  Кулеџиевски<br />
                10. Анѓелина Димитрова<br />
                11. Александар Јанев<br />
                12. Рајна Маркова<br />
                13. Димче Митрев</p></td>
              <td valign="top"><p>14. Драган Темелков<br />
15. Бранислав Панов<br />
16. Ванчо Стојанов<br />
17. Мерџана Велева<br />
18. Велизар Трајков<br />
19. Костадин Јанев<br />
20. Стојан Николовски<br />
21. Олга Новачева<br />
22. Ристе Атанасовски<br />
23. Мите Стефановски<br />
24. Љубица Славковска<br />
25. Новак Костадиновски</p></td>
            </tr>
          </table>
          <p align="center"><img src="Izvrsen-Odbor.jpg" alt="" width="520" height="294" /><br />
  <strong><em>Извршен одбор</em></strong></p>
          <h2><strong>ИЗВРШЕН ОДБОР</strong></h2>
          <ol>
            <li>Веле Алексоски &ndash; претседател</li>
            <li>Драгица Николовска -  секретар </li>
            <li>Мерџана Велева </li>
            <li>Стојан Кулеџиовски </li>
            <li>Рајна Маркова </li>
            <li>Бранислав Панов</li>
            <li>Стојан Николовски </li>
            <li>Благој Јорданов </li>
            <li>Благој Кочов </li>
            <li>Трајче Ноколов</li>
            <li>Новак Костовски</li>
            </ol>
          <h2><strong>Делегати во СЗПМ </strong></h2>
          <p>1. Веле Алексоски<br />
            2. Олга Новачева</p>
          <h2><strong>Претседатели на  Одбори по Ограноци</strong></h2>
          <p>1.   Славе  Јовановски <br />
            2.   Бошко  Костадиновски<br />
            3.   Борис  Петровски<br />
            4.   Борис  Јакимовски<br />
            5.   Никола Цецев<br />
            6.   Лазо Бабунски<br />
            7.   Владимир  Зврцинов<br />
            8.   Петре Коцевски<br />
            9.   Коле Мечевски<br />
            10. Ѓорѓи Попзлатанов<br />
            11. Лазо Финоев<br />
            12. Љубе Митев<br />
            13. Благој Стојанов-Баге<br />
            14. Атанас Кочов</p>
          
          <h2><strong>Надзорен Одбор</strong></h2>
          <p>1. Димитар Стојанов &ndash; претседател<br />
            2. Благојка Јорданова<br />
            3. Андреја Голубов</p>
          
          <h2><strong>Статутарна Комисија</strong></h2>
          <p>1. Иван Кичуков &ndash; претседател<br />
            2. Стојна Крстиќ<br />
            3. Атанас Кочов</p>
          
          <h2><strong>Комисија за спорт и  рекреација</strong></h2>
          <p>1. Димче Митрев &ndash; претседател<br />
            2. Јован Андов<br />
            3. Орданчо Петровски</p>
          
          <h2><strong>Комисија за култура</strong></h2>
          <p>1. Нада Алексоска &ndash; претседател<br />
            2. Верица Ѓорѓиева<br />
            3. Милан Шојлев</p>
          
          <h2><strong>Комисија за  доделување станови</strong></h2>
          <p>1. Верица Спасовска &ndash; претседател<br />
            2. Благој Стојанов<br />
            3. Благој Кимовски</p>
          
          <h2><strong>Комисија за тековно  одржување</strong></h2>
          <p>1. Андон Трајков &ndash; претседател<br />
            2. Иле Настов<br />
            3. Стојан Божилов</p>
          
          <h2><strong>Комисија за  социјални прашања- стратегија грижа на стари лица</strong></h2>
          <p>1. Страшо Ончевски &ndash; претседател<br />
            2. Славчо Мајсторски <br />
            3. Миле Ѓорѓиев</p>
          <h2><strong>Актив на  пензионерки</strong></h2>
          <p>1. Неделка Ѓорѓиева &ndash; претседател<br />
            2. Нада Димовска<br />
            3. Нада Драскачева</p>
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

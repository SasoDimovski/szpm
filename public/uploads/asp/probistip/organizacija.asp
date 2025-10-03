
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/probistip.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Пробиштип</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../probistip/'">Здружение на пензионери <strong>Пробиштип</strong></div></td>
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
        <td width="130" align="center"><a href="organizacija.asp">Организација</a></td><!--
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="110" align="center"><a href="../probistip/programa.asp">Програма</a></td>-->
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
    <td width="50%">Надзорен одбор</td>
    </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="50%">Статутарна комисија</td>
              <td width="50%">Комисија за здравство и  социјала</td>
              </tr>
            <tr>
              <td>Комисија за култура</td>
              <td>Комисија за спорт и  рекреација </td>
            </tr>
            <tr>
              <td>Актив на жени &ndash;  пензионерки</td>
              <td>Комисија за солидарен  фонд</td>
            </tr>
            <tr>
              <td>Комисија за попис</td>
              <td>Комисија за расход и  продажба</td>
            </tr>
            <tr>
              <td>Комисија за бањско и  климатско лекување</td>
              <td>Комисија за распределба  на гарсоњери </td>
            </tr>
            <tr>
              <td colspan="2">7 ограноци </td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="48%" align="center"><img src="Gruica-Manasiev---pretsedatel.jpg" alt="" width="110" height="155" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="48%" align="center"><img src="AngelKocev----sekretar.jpg" alt="" width="110" height="155" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><p>Манасиев Груица - претседател</p></td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><p>Коцев Ангел - секретар</p></td>
              </tr>
      </table>
          <!--<p align="center"><img src="sobranie-pri-ZP-solidarni-penzioneri.jpg" alt="" width="520" height="390" /><br />
            <strong><em>Собрание на Здружението</em></strong></p>-->
          <h3>СОБРАНИЕ</h3>
          <ol>
            <li>Миновска Македонка</li>
            <li>Живковиќ  Марија</li>
            <li>Петрова  Јовка</li>
            <li>Мишева  Павлина</li>
            <li>Маринкова  Трајка</li>
            <li>Маневски  Ванде</li>
            <li>Марков  Дончо</li>
            <li>Младеновси  Душан</li>
            <li>Трајанов  Владимир</li>
            <li>Јовановски  Стоица</li>
            <li>Стојанов  Стефан</li>
            <li>Димитриевски  Добросав</li>
            <li>Зафиров  Саво</li>
            <li>Колев Гоце</li>
            <li>Арсов  Миливој</li>
            <li>Јачев Блаже</li>
            <li>Ампов Делчо</li>
            <li>Ѓерасимов  Санимир</li>
            <li>Радев  Јовица</li>
            <li>Раиќ Трајче</li>
            <li>Саздов  Љупчо</li>
            <li>Манасиев  Груица</li>
            <li>Коцев Ангел </li>
          </ol>
          <p>&nbsp;</p>
<p align="center"><img src="Izvrsen-odbor-na--ZP-Probistip.jpg" alt="" /><br />
  <strong><em>Извршен одбор</em></strong></p>
          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          <ol>
            <li>Манасиев Груица - претседател</li>
            <li>Марков Дончо</li>
            <li>Колев Гоце</li>
            <li>Миновска Македонка</li>
            <li>Петрова Јовка</li>
            <li>Стојанов Стефан</li>
            <li>Коцев Ангел </li>
            <li>Димитриевски Добросав</li>
            <li>Саздов Љупчо</li>
            <li>Трајанов Владимир</li>
          </ol>
          <h3>НАДЗОРЕН ОДБОР</h3>
          <ol>
            <li>Димитриевски Киро &ndash; претседател</li>
            <li>Јовановски Стоица</li>
            <li>Живковиќ Марија</li>
          </ol>
          <h3>СТАТУТАРНА КОМИСИЈА</h3>
          <ol>
            <li>Колев Гоце &ndash; претседател</li>
            <li>Миновска Македонка</li>
            <li>Зафиров Саво          </li>
          </ol>
          <h3>КОМИСИЈА ЗА ПОПИС</h3>
          <ol>
            <li>Славков Стојан &ndash; претседател</li>
            <li>Јовчевски Драган</li>
            <li>Насевски Томе          </li>
          </ol>
          <h3>КОМИСИЈА ЗАРАСХОД И ПРОДАЖБА</h3>
          <ol>
            <li>Владимиров Тихомир - претседател</li>
            <li>Маневски Ванде</li>
            <li>Радев Јовица          </li>
          </ol>
          <h3>КОМИСИЈА ЗА БАЊСКО И КЛИМАТСКО ЛЕКУВАЊЕ</h3>
          <ol>
            <li>Димитриевски Добросав - претседател</li>
            <li>Спасовска Ратка</li>
            <li>Раиќ Трајче          </li>
          </ol>
          <h3>КОМИСИЈА ЗА ЗДРАВСТВО И СОЦИЈАЛА</h3>
          <ol>
            <li>Трајанов Владимир - претседател</li>
            <li>Јачев Блаже</li>
            <li>Тодосов Мире          </li>
          </ol>
          <h3>КОМИСИЈА ЗА СПОРТ И РЕКРЕАЦИЈА</h3>
          <ol>
            <li>Анастасов Владо &ndash; претседател</li>
            <li>Младеновси Душан</li>
            <li>Милков Живков          </li>
          </ol>
          <h3>КОМИСИЈА ЗА РАСПРЕДЕЛБА НА ГАРСОЊЕРИ</h3>
          <ol>
            <li>Манасиев Груица &ndash; претседател</li>
            <li>Мишева Павлина</li>
            <li>Костадинов Стојчо</li>
            <li>Паланов Ристе</li>
            <li>Алексов Димче          </li>
          </ol>
          <h3>КОМИСИЈА ЗА КУЛТУРА</h3>
          <ol>
            <li>Јанковиќ Рајна&nbsp; &ndash;  претседател</li>
            <li>Петров Тимчо</li>
            <li>Николивска Злата          </li>
          </ol>
          <h3>АКТИВ НА ЖЕНИ &ndash; ПЕНЗИОНЕРКИ</h3>
          <ol>
            <li>Петрова Јовка &ndash; претседател</li>
            <li>Маџова Јана</li>
            <li>Ќитанова Борка          </li>
          </ol>
          <h3>КОМИСИЈА ЗА СОЛИДАРЕН ФОНД</h3>
          <ol>
            <li>Илиевска Славица &ndash; претседател</li>
            <li>Јосифовска Блага</li>
            <li>Маринкова Трајка</li>
          </ol>
<!--<h3>Делегат во СЗП на град Скопје</h3>
<p>Владимир Јовановски</p>
          <h3>Комисија за спорт и рекреација</h3>
          <p>Владимир Јовановски - претседател<br />
            Војче Горѓиевски<br />
            Велко Цветковски <br />
            Петар Невеноски <br />
            Киро Тодоровски</p>
          <h3>Комисија за награди и парична помош </h3>
          <p>Елена Велинова<br />
            Цветан Велковски <br />
            Томе Соколовски </p>
          <h3>Комисија за огревно дрво и помош во артикли</h3>
          <p>Драган Насковски &ndash; претседател<br />
            Војче Горѓиевски<br />
            Киро Тодоровски</p>
          <h3>Комисија за забава и култура</h3>
          <p>Петар Горѓиевски &ndash; претседател<br />
            Петар Ристовски<br />
            Војче Давитковски<br />
            Борче Петровски<br />
            Зорица Тодоровска</p>
<h3>&nbsp;</h3>-->
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

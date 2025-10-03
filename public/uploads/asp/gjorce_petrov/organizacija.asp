
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/gjorce_petrov.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Ѓорче Петров</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../gjorce_petrov/'"></div><div class="logo" onClick="window.location='../gjorce_petrov/'">Здружение на пензионери <strong>Ѓорче Петров</strong></div></td>
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
          </div></td>
        <td valign="top" class="kelija_sodrzina"><!-- InstanceBeginEditable name="sodrzina" -->
          <table width="100%" class="dijagram">
            <tr>
    <td colspan="3">Собрание</td>
    </tr>
  <tr>
    <td width="33%">Извршен  одбор</td>
    <td width="33%">Надзорен одбор</td>
    <td width="33%">Комисија  за статут  и правни прашања </td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија  за избори</td>
              <td width="33%">Комисија за културен забавен живот</td>
              <td width="33%">Комисија  за спорт и рекреација</td>
              </tr>
          </table>
          <table width="100%" class="dijagram">
              <tr>
                  <td width="25%"><p>Комисија за здравство, социјала и хуманитарни активности </p></td>
                  <td width="25%"><p>Комисија  за набавки</p></td>
                  <td width="25%"><p>Комисија  за правни работи</p></td>
                  <td width="25%">Актив на жени</td>
              </tr>
          </table>
          <br />
<br />
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="33%" align="center"><img src="Mitko-Stojanoski-pretsedatel-na-ZP-Gjorce-Petrov.jpg" width="110" height="140" /></td>
    <td width="1%"></td>
    <td width="33%"><img src="Vasil-Drvosanov-pretsedatel-na-Sobranie.jpg" width="110" height="140" /></td>
    <td width="1%"></td>
    <td align="right"><img src="Nada-Karajanovska-sekretar-na-IO.jpg" width="110" height="140" /></td>
    <td width="1%"></td>
  </tr>
  <tr>
    <td valign="top">Митко Стојаноски - претседател на здружението и на ИО</td>
    <td valign="top"></td>
    <td valign="top">Васил Дрвошанов - претседател на Собрание</td>
    <td valign="top"></td>
    <td valign="top">Нада Карајановска - секретар на Извршен Одбор</td>
    <td valign="top"></td>
  </tr>
</table>
<br />
          <h2><strong>СОБРАНИЕ</strong>          </h2>
          <!--<img src="Sobranie.jpg" alt="" width="520" height="275" />-->
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><ol>
                  <li>Сузана Илиевска<br />
разгранок Ѓ Петров</li>
                        <li>Танас Наумовски разгранок Ѓ Петров</li>
                        <li>Трпана Стамеска разгранок Ѓ Петров</li>
                        <li>Виолета Палунгова разгранок Ѓ Петров</li>
                        <li>Божика Мојсовска разгранок Хром</li>
                        <li>Благица Христовска разгранок Хром</li>
                        <li>Васе Миновски разгранок Хром</li>
                        <li>Душан Кукуновски разгранок М. Ацев </li>
                        <li>Нада Милевска разгранок М. Ацев </li>
                        <li>Љупчо Маноилов разгранок М. Ацев </li>
                        <li>Ангеле Ниневски разгранок М. Ацев </li>
                        <li>Васил Дрвошнов разгранок Дексион</li>
                        <li>Димче Стевковски разгранок Дексион </li>
              </ol></td>
              <td valign="top"><ol start="14">
                  <li>Видосава Младеновска разгранок Дексион</li>
              
                        <li>Мирко Ристевски разгранок Д. Груев </li>
                        <li>Ката Јовановска разгранок Д. Груев </li>
                        <li>Ѓорѓија Мицевски разгранок Д. Груев </li>
                        <li>Трајко Војнески разгранок Д. Груев </li>
                        <li>Мирјана Ристевска рагранок К. Јабука  и Ст двор</li>
                        <li>Младен Лозановски разгранок  К. Јабука</li>
                        <li>Живко Брњарчевски разгранок Волково</li>
                        <li>Воислав Поповски разгранок Волково</li>
                        <li>Љубен Стојановски разгранок Волково</li>
                        <li>Аљуш Митушевски разгранок Волково</li>
                        <li>Јован Јаневски разгранок Волково</li>
                </ol></td>
            </tr>
          </table>
          <p><strong>ДЕЛЕГАТИ ВО СЗПМ</strong></p>
          <ol>
            <li> Снежана Симоновска</li>
            <li> Станка Трајкова </li>
          </ol>
          <p><strong>ДЕЛЕГАТИ ВО СЗП НА ГРАД СКОПЈЕ</strong></p>
          <ol><li> Славко Петковски </li>
            <li>Јово Карајановски </li>
          </ol>
          <h2><strong>ИЗВРШЕН</strong><strong> </strong><strong>ОДБОР</strong></h2>
          <ol>
              <li>Митко Стојаноски, разгранок Д. Груев &ndash; претседател </li>
    <li>Павле Павлевски, разгранок Ѓ. Петров &ndash; потпретседател </li>
    <li>Верица Мишкова, разгранок Хром</li>
    <li>Горица Божиновска , разгранок М. Ацев</li>
    <li>Нада Карајановска , разгранок Дексион</li>
    <li>Столе Веселиновски, разгранок К. Јабука  и Ст. двор</li>
    <li>Љубомир Ливрински, разгранок Волково</li>
</ol>
<h2><strong>НАДЗОРЕН</strong><strong> </strong><strong>ОДБОР</strong></h2>
          <ol>
              <li>Добре Јованчов - претседател</li>
                <li>Димитар Василев - член</li>
                <li>Ѓорѓи Костов - член</li>
          </ol>
          <h2><strong>КОМИСИЈА ЗА СТАТУТ И ПРАВНИ ПРАШАЊА</strong></h2>
          <ol><li> Драгица	Славевска -  претседател </li>
            <li> Даница	Томовска </li>
            <li> Радивоје	Ливриниќ </li>
          </ol>
          <h2><strong>КОМИСИЈА ЗА СПРОВЕДУВАЊЕ НА ИЗБОРИ</strong></h2>
          <ol>
              <li>Олгица Јовева - претседател</li>
                <li>Благица  Петревска &ndash; член </li>
                <li>Ѓорѓија  Миновски &ndash; член </li>
          </ol>
          <h2><strong>КОМИСИЈА ЗА СПОРТ И РЕКРЕАЦИЈА</strong></h2>
          <ol>
            <li>Сашо Змејковси - претседател</li>
            <li>Хајро Скендеровиќ - член</li>
            <li>Стоилко Крајинин - член</li>
            </ol>
          <h2><strong>КОМИСИЈА ЗА правни работи</strong></h2>
          <ol>
              <li>Сузана  Илиевска &ndash; претседател </li>
                <li>Душан Кукуновски &ndash; член </li>
                <li>Соња  Ѓорѓевиќ &ndash; член </li>
          </ol>
          <h2><strong>КОМИСИЈА ЗА КУЛТУРЕН ЗАБАВЕН ЖИВОТ</strong></h2>
          <ol>
            <li>Драган Нешиќ &ndash; претседател </li>
            <li>Ангеле Вирановски </li>
            <li>Наталија Наумовска </li>
          </ol>
          <h2><strong>КОМИСИЈА ЗА ЗДРАВСТВО, С</strong><strong>O</strong><strong>ЦИЈАЛА И ХУМАНИТАРНИ АКТИВНОСТИ</strong></h2>
          <ol>
            <li>Др. Стојанче Стефановски &ndash; претседател </li>
            <li>Димче Стефановски &ndash; член</li>
            <li>Драгољуб Ристевски &ndash; член</li>
            </ol>
          <h2><strong>КОМИСИЈА ЗА набавки</strong></h2>
          <ol>
              <li>Бранко Хаџиев &ndash; претседател </li>
                <li>Лила  Игнатова &ndash; член </li>
                <li>Љубомир Стојановиќ - член</li>
          </ol>
          <h2><strong>АКТИВ НА ПЕНЗИОНЕРКИ</strong></h2>
          <ol>
              <li>Лила  Игнатовска &ndash; претседател </li>
                <li>Снежана  Ристовска &ndash; член </li>
                <li>Босана Ристевска- член</li>
                <li>Живка  Ѓорѓиева &ndash; член </li>
                <li>Велика Блажевиќ- член</li>
                <li>Даница Стојановска &ndash; член </li>
                <li>Румена Вељановска &ndash; член </li></ol>
          <h2><strong>ПРЕТСЕДАТЕЛИ НА РАЗГРАНОЦИ</strong></h2>
          <ol>
              <li>Бранко Хаџиев</li>
                <li>Софија Арсовска</li>
                <li>Живко Урдаревски</li>
                <li>Јован Здравевски</li>
                <li>Бранислав Спасовски</li>
                <li>Ласте Кипријановски</li>
                <li>Љубомир Стојановиќ            </li>
            </ol>
          <h3></h3>
        <!-- InstanceEndEditable --></td>
        <td width="200" valign="top"><!-- InstanceBeginEditable name="desno" -->
<div class="modul">
            <div class="modul_naslov">Инфо</div>
            <div class="modul_sodrzina">
              <%
call openRekset(rs_izvestai)
rs_izvestai.Open "SELECT top 5 * FROM novosti where kategorija=1 ORDER BY datum desc, id desc",konStr,1,1

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

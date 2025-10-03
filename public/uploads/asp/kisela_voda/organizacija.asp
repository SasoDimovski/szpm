
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/kisela_voda.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери  Кисела Вода</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../kisela_voda/'">Здружение на пензионери <strong>Кисела Вода</strong></div></td>
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
    <td width="33%">Статутарна комисија</td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="20%">Комисија за здравство  и социјални прашања</td>
              <td width="20%">Комисија за набавки и реконструкција</td>
              <td width="20%">Комисија за спорт</td>
              <td width="20%">Комисија за културно забавен живот </td>
              </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="31%"><img src="Spaso-Iliev-pretsedatel-na-Zobranie-na-ZP-Kisela-Voda.jpg" width="110" height="155" /></td>
              <td width="1%"></td>
              <td width="31%"><img src="Momcilo-Petrovic-pretsedatel-na-ZP-Kisela-Voda.jpg" width="110" height="155" /></td>
              <td width="1%"></td>
              <td width="31%"><img src="Dimitar-Stamenov-sekretar-na-ZP-Kisela-Voda.jpg" width="110" height="155" /></td>
              </tr>
            <tr>
              <td>Спасо Илиев
Претседател на
Собрание
</td>
              <td></td>
              <td>Момчило Петровиќ
Претседател на
Извршен одбор и
Здружение на пензионери
</td>
              <td></td>
              <td>Димитар 
Стаменков
Секретар на
Здружение на пензионери
</td>
              </tr>
          </table>
          <!--<h2><img src="Sobranie.JPG" width="520" height="281" /></h2>-->
          <h2>Членови на Собрание          </h2>
          <table width="100%" border="0">
            <tr>
              <td width="50%" height="437" valign="top"><p>1.Спасо Илиев - Претседател на Собрание </p>
                    <p>2.Љупчо Петровски </p>
                    <p>3.Данил Несторовски </p>
                    <p>4.Донча Ѓорѓиевски </p>
                    <p>5.Муртезан Калинка </p>
                    <p>6.Данаил Поповски </p>
                    <p>7.Даница Давчева </p>
                    <p>8. Милка Димковска </p>
                    <p>9.Владо Андоновски </p>
                    <p>10.Борис Саздов </p>
                    <p>11.Јован Коцев<br />
                    </p></td>
              <td valign="top"><p>12.Косто Штерјов</p>
                    <p>13. Ленче Јовановска</p>
                    <p>14. Стојан Дунимаглоски</p>
                    <p>15. Цвета Жабокова</p>
                    <p>16. Цветанка Петрушевска</p>
                    <p>17. Борче Ангелески</p>
                    <p>18. Богданка Крстевска</p>
                    <p>19. Борче Мојсоски</p>
                    <p>20. Јонуз Бакиевски</p>
                    <p>21.Борис Николовски </p>
22.Драган Тошковски</td>
            </tr>
        </table>
<!--<p><img src="Izvrsen Odbor.JPG" width="520" height="314" />
</p>-->
          <h2>ЧЛЕНОВИ НА ИЗВРШЕН ОДБОР            </h2>
          <p>1.Момчило ПетровиЌ - Претседател </p>
            <p>2.Киро Гоцевски </p>
            <p>3.Владимир ПоповиЌ </p>
            <p>4.ќиро Стојановски </p>
            <p>5.Горица Ангеловска </p>
            <p>6.ПетарНајдовски </p>
            <p>7.Трајче Николов</p>
            <p>8.Александар Боневски</p>
            <p>9.Венда Трајковска</p>
            <p>10.Благоја Велјаноски</p>
            <p>11.Добринка Филиповска</p>
            <p>12.Локман Бакију</p>
            <p>13.Николче Кузмановски            </p>
            <h2>НАДЗОРЕН ОДБОР            </h2>
            <p>1.Лилјана Сотировска- Претседател </p>
            <p>2.Милева Костовска </p>
            <p>3.Блага Петровска </p>
            <h2>СТАТУТАРНА КОМИСИЈА            </h2>
            <p>1.Симјан Младеновски</p>
            <p>2.Димитар Стаменков</p>
            <p>3.Мирјана Димоска            </p>
            <h2>ПРЕТСЕДАТЕЛИ НА ОГРАНОЦИ ВО ЗДРУЖЕНИЕТО            </h2>
            <p>1.Ленче Богатиновска </p>
            <p>2.Ѓорѓија Кимовски </p>
            <p>3.Трајан шумковски </p>
            <p>4.Марица Мицевска </p>
            <p>5. ДобринкаСтоева </p>
            <p>6.ѓорги Георгиевски </p>
            <p>7.Коста Костовски</p>
            <p>8. Ѓорѓија Илиески</p>
            <p>9. Блага Трпевска</p>
            <p>10. Блаже Стоев </p>
            <p>11. Менду Бајрами</p>
            <p>12. Живко Димишковски  </p>
            <h2>АКТИВ НА ЖЕНИ            </h2>
            <p>1.Даница Давчева - Претседател</p>
            <p>2.Мирјана Страчковска - благајник</p>
            <p>3.Олга Фидановска - заменик            </p>
            <h2>Комисија за културно-забавен живот<br />
        </h2>
            <p>1. Блага Трпевска - Претседател<br />
                2. Драган Тошковски<br />
                3. Добринка Стоева</p>
            <h2>Комисија за здравство и социјална помош<br />
            </h2>
            <p>1. Марица Мицевска  - Претседател<br />
                2. Елена Ристевска<br />
                3. Борче Ангелески</p>
            <h2>Комисија за спорт и рекреација<br />
            </h2>
            <p>1. Ѓорѓи Илиески  - Претседател<br />
                2. Киро Гоцевски<br />
                3. Александар Боневски</p>
            <h2>Комисија за јавни набавки<br />
            </h2>
            <p>1. Блаже Стоев<br />
                2. Коста Костовски<br />
                3. Ѓорѓи Ѓеорѓиевски</p>
            <h2>&nbsp;</h2>
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

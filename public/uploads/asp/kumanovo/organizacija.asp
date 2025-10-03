
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/kumanovo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Куманово</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../kumanovo/'">Здружение на пензионери <strong>Куманово</strong></div></td>
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
    <td width="33%">Одбор  за статут</td>
    </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="25%">Комисија за културно-уметнички  самодејности</td>
              <td width="25%">Комисија за спорт</td>
              <td width="25%">Комисија за одмор  и рекреација</td>
              <td width="25%">Комисија за еднократна  парична помош</td>
              </tr>
            <tr>
              <td>Комисија за информирање  и издавачка дејност</td>
              <td>Комисија за здравство  и социјална дејност</td>
              <td>Актив на пензионерки</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="33%" align="center"><img src="Risto-Boshkov-Pretsedatel-na-ZP.jpg" alt="" width="110" height="150" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="33%" align="center"><img src="Stojan-Arsovski-potpretsedatel-na-IO.jpg" alt="" width="110" height="150" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="33%" align="center"><img src="Nazim-Emini-pretsedatel-na-Sobranie-na-ZP-Kumanovo.png" alt="" width="110" height="150" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="33%" align="center"><img src="Danica-Jovanovska-Sekretar.jpg" alt="" width="110" height="150" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><em><strong>Ристо Бошков</strong></em>, <br />
                Претседател на  ЗП Куманово </td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Стојан Арсовски</em></strong>, <br />
                Потпретседател на  ЗП Куманово </td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Назим Емини</em></strong>, <br />
                Претседател на  собрание на ЗП Куманово </td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Даница Јовановска</em></strong>, <br />
                Секретар   </td>
              </tr>
      </table>
      <!--<p align="center"><img src="Sobranie.jpg" alt="" width="520" height="286" /><br />
            <strong><em>Собрание на Здружението</em></strong></p>-->
          <h2>СОБРАНИЕ</h2>

          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><ol>
                <li>Ѓоко Крстевски </li>
                <li>Смиља Стојчевска </li>
                <li>Слободан Ковачевски </li>
                <li>Бранко Миленковски </li>
                <li>Ристо Бошков </li>
                <li>Јовица Ванчевски </li>
                <li>Даница Јовановска </li>
                <li>Чедомир Петковски </li>
                <li>Ласте Алексовски </li>
                <li>Стојан Арсовски </li>
                <li>Бора Спасовски </li>
                <li>Миле Спасовски </li>
                <li>Милорад Денковиќ </li>
                <li>Стојан Илиевски </li>
                <li>Ордан Сеизовски </li>
                <li>Хуљеси Саљији </li>
                <li>Жика Крстевски </li>
                <li>Веселин Марковиќ </li>
              </ol></td>
              <td valign="top"><ol start="19">
                <li>Момир Петрушевски </li>
                <li>Методија Манојловски </li>
                <li>Јовица Димковски </li>
                <li>Исмет Шабани </li>
                <li>Спирко Милошевски </li>
                <li>Денчо Николов </li>
                <li>Изаим Арифи </li>
                <li>Горан Стојановиќ </li>
                <li>Јовица Стојиќ </li>
                <li>Зорко Ѓориќ </li>
                <li>Љубе Славковски </li>
                <li>Стојадинка Ристовска </li>
                <li>Драган Јакимовски </li>
                <li>Назим Емини </li>
                <li>Моме Величковски </li>
                <li>Љубе Јовановски </li>
              </ol>                <p>&nbsp;</p></td>
            </tr>
          </table>
          <!--<p align="center"><img src="Izvrsen-odbor-pri-ZP-Kumanovo.jpg" alt="" width="520" height="254" /><br />
  <strong><em>Извршен одбор</em></strong></p>-->
          <h2><strong>ИЗВРШЕН ОДБОР</strong></h2>
          <ol>
            <li>Ристо Бошков - Претседател</li>
  <li>Стојан Арсовски &ndash; Потпретседател</li>
  <li>Даница Јовановска -Секретар </li>
  <li>Бора  Спасовски</li>
  <li>Слободан  Ковачевски</li>
  <li>Заим Арифи</li>
  <li>Јовица Димковски</li>
  <li>Шеќеринка Спасовска</li>
  <li>Марјан Крстевски</li>
  <li>Зорка  Лазаревска </li>
  <li> Јасмина  Тодоровска</li>
</ol>
<h2>НАДЗОРЕН ОДБОР</h2>
<ol>
  <li>Борис Наќевски &ndash; Претседател</li>
  <li>Томислав Трајановски - член</li>
  <li>Билги Раими - член</li>
</ol>
<h2>ОДБОР ЗА СТАТУТ И  ПРАВНИ РАБОТИ</h2>
<ol>
  <li>Славко Димовски &ndash; Претседател</li>
  <li>Сали Џељадини - член</li>
  <li>Благоја Цветковски - член</li>
</ol>
<h2>КОМИСИЈА  ЗА КУЛТУРНО -УМЕТНИЧКИ САМОДЕЈНОСТИ</h2>
<ol>
  <li>Љубица Кузмановска &ndash; претседател </li>
  <li>Стојан Илиевски &ndash; член</li>
  <li>Станиша Арсовски &ndash; член</li>
</ol>
<h2>КОМИСИЈА ЗА СПОРТ,  ОДМОР И РЕКРЕАЦИЈА</h2>
<ol>
  <li>Љубе Димитриевски &ndash; претседател</li>
  <li>Јовица Ванчевски &ndash; член</li>
  <li>Ласте Алексовски &ndash; член</li>
</ol>
<h2><strong>КОМИСИЈА ЗА ЗДРАВСТВО И СОЦИЈАЛНИ&nbsp;ПРАШАЊА</strong></h2>
<ol>
  <li>Др. Никола Костовски - претседател</li>
  <li>Др. Владанка Стефановска - член</li>
  <li>Др. Али Далипи - член</li>
</ol>
<h2> <strong>КОМИСИЈА ЗА ИНФОРМИРАЊЕ И ИЗДАВАЧКА&nbsp; ДЕЈНОСТ</strong></h2>
<ol>
  <li>Росица Митиќ &ndash; претседател</li>
  <li>Ѓоко Крстевски &ndash; член</li>
  <li>Мирјана Стојчева &ndash; член</li>
</ol>
<h2> <strong>КОМИСИЈА ЗА  ЕДНОКРАТНА ПАРИЧНА ПОМОШ</strong></h2>
<ol>
  <li>Драги Караџински &ndash; претседател</li>
  <li>Методија Манојловски &ndash; член</li>
  <li>Снежана Николовска &ndash; член          </li>
</ol>
<h2><strong>СПИСОК НА ПРЕТСЕДАТЕЛИ НА ОГРАНОЦИ</strong></h2>
          <ol>
            <li>Симо Трендевски &ndash; Центар</li>
            <li>Слободанка Димковска &ndash; Панче Пешев</li>
            <li>Драги Стефаносвски &ndash; Б.С.Гојчо</li>
            <li>Таљат Ибиши &ndash; Х.Т.Карпош</li>
            <li>Боре Младеносвки &ndash; Перо Чичо</li>
            <li>Злата Трајковска &ndash; Бајрам Шабани</li>
            <li>Вера Митевски &ndash; 11.Ноември</li>
            <li>Драгољуб Ангеловски &ndash; 3 МУБ</li>
            <li>Љубе Соколовски &ndash; с. Романовце</li>
            <li>Среќко Андреевски &ndash; Т. Мендол</li>
            <li>Илија Атанасовски &ndash; с. Умин Дол</li>
            <li> Драги Јакимовски &ndash; З.Рид</li>
            <li>Часлав Спасовски &ndash; Г.Делчев</li>
            <li>Слободан Спасиќ &ndash; с. Ст. Нагоричино</li>
            <li>Зорка Додевска - с. Клечовце</li>
            <li>Круме Ѓорѓевиќ - 11. Октомври</li>
            <li>Сабри Исаки &ndash; с.Слупчане</li>
            <li>Евзи Исени &ndash; с.Липково</li>
            <li>Коста Стаменковиќ - с.Табановце</li>
            <li>Слободан Миленковски &ndash; Бараки</li>
            <li>Милорад Крстевски &ndash; с. Лопате</li>
            <li>Томислав Илиевски - н. Карпош</li>
            <li>Ласте Џољев &ndash; с. Орашац</li>
            <li>Ридван Ајредини &ndash; с. Матејче</li>
            </ol>
          <h2><strong>АКТИВ НА ЖЕНИ</strong></h2>
          <ol>
            <li>Гордана Поповиќ претседател </li>
            <li>Дивна Јовановска</li>
            <li>Даница Димовска</li>
            <li>Мирјана Андоновици&nbsp;</li>
            <li>Љује Адеми          </li>
          </ol>
          <p>&nbsp;</p>
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

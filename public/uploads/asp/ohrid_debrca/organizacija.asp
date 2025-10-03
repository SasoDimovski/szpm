
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/ohrid.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери  Охрид и Дебрца</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../ohrid_debrca/'"></div><!--<div class="logo" onClick="window.location='../ohrid_debrca/'">Здружение на пензионери <strong>Охрид  и Дебрца</strong></div>--></td>
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
    <td width="33%">Статутарно  - правна комисија </td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">Комисија  за Здравствена и социјална заштита</td>
              <td width="33%">Комисија  за спортски натпревари</td>
              <td width="33%">Комисија  за доделување на награди</td>
              </tr>
            <tr>
              <td>Комисија  за култура</td>
              <td>Комисија  за информирање</td>
              <td>Комисија за  станбен и деловен простор</td>
            </tr>
            <tr>
              <td>Комисија  за излети и средби</td>
              <td>Комисија за   соработка со ЗП, институции во земјата и странство</td>
				<td>Комисија за  издаваштво, творештво, литература, драма и меѓу-генерациска соработка (Развигорче)</td></tr><tr>
              <td>Актив на пензионерки</td>
            </tr>
          </table>
          <p> </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
          <tr>
              <td width="32%" align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
                  <tr>
                      <td width="32%" align="center"><img src="Risto-Trajkoski-pretsedatel-na-Sobranie.jpg" width="120" height="160" /></td>
                      <td width="32%" align="center"><img src="Vasil-Markoski-pretsedatel-na-ZP-i-na-IO.jpg" alt="" width="120" height="160" /></td>
                      <td width="32%" align="center"><img src="Stefan-Vladimirov-sekretar.jpg" alt="" width="120" height="160" /></td>
                  </tr>
                  <tr>
                      <td align="center" valign="top">Ристо Трајкоски, претседател на Собрание</td>
                      <td align="center" valign="top"> Васил Маркоски, претседател на ЗП и ИО</td>
                      <td align="center" valign="top">Стефан Владимиров, секретар на Извршен одбор</td>
                  </tr>
                  <tr>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                  </tr>
                  <tr>
                      <td align="center"></td>
                      <td align="center" valign="top"></td>
                      <td align="center"></td>
                      <td align="center"></td>
                  </tr>
                  <tr>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                  </tr>
              </table></td>
          </tr>
          </table>
          <h2 align="center"><br />
              Членови на Собрание на ЗП Охрид и Дебрца 2023-2027 год.</h2>
<!--          <p align="center"><img src="Sobranie2019.jpg" /></p>
-->          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="50%" valign="top">1.Ристо Трајкоски-Претседател <br />
                      2.Славчо Петрески Потпретседател <br />
                      3.Иванка Балева <br />
                      4.Ковиља Каралиеска <br />
                      5.Илија Рупев <br />
                      6.Ангеле Буџакоски <br />
                      7.Горка Донеска <br />
                      8.Цветко Прензоски <br />
                      9.Ристо Митрески <br />
                      10.Ристо Климоски <br />
                      11.Љупчо Настоски <br />
                      12.Наум Пуфтоски <br />
                      13.Ацо Спасески <br />
                      14.Слободан Пупиноски <br />
                      15.Марјан Манев                   </td>
              <td valign="top">16.Јосиф Ѓуроски <br />
                      17.Васка Петреска<br />
                      18.Димко Цацаноски <br />
                      19.Даринка Трајкоска <br />
                      20.Цветанка Стојаноска <br />
                      21.Ленка Стефаноска <br />
                      22.Љупка Трифуноска <br />
                      23.Велјан Филчески<br />
                      24.Јонка Јоноска <br />
                      25.Доне Цуцулоски <br />
                      26.Ристо Калајџиоски <br />
                      27.Климе Стевоски. <br />
                      28.Крсте Спасески <br />
                      29.Ѓорѓи Маркоски <br />
                      30.Власе Петроски. <br />
                      31.Зоран Стојаноски                  </td>
            </tr>
          </table>
          <h2>ЧЛЕНОВИ НА КОМИСИЈА ЗА СТАТУТ И ПРАВНИ ПРАШАЊА <br />
          </h2>
          <p>1.Љубе Ристески Претседател <br />
              2.Кујтим Ќоку Потпретседател<br />
              3.Јордан Трца<br />
              4.Јоцо Стојаноски</p>
          <h2>ЧЛЕНОВИ НА НАДЗОРЕН ОДБОР<br />
          </h2>
          <p>1.Димитрија Стојкоски -Лепи Претседател<br />
              2.Анастас Иваноски Потпретседател<br />
              3.Лазар Каранфилоски член</p>
          <h2>ЧЛЕНОВИ НА ИЗВРШЕН ОДБОР<br />
          </h2>
          <p>1.Васил Маркоски Претседател <br />
              2.Номче Цаноски Попретседател <br />
              3.Ѓорѓи Трпчески <br />
              4.Богоја Нелоски <br />
              5.Весела Ристеска <br />
              6.Васка Ангелеска<br />
              7.Сребре Здравески <br />
              8.Верица Пулеска <br />
              9.Ристо Јорданоски<br />
              10.Стефан Владимиров<br />
              11.Драган Молкоски<br />
          </p>
          <h2>ЧЛЕНОВИ ВО СОБРАНИЕТО ВО СЗПМ<br />
      </h2>
          <p>1.Миланка Панделеска <br />
              2.Живко Наумоски</p>
          <h2>СТРУЧНА СЛУЖБА<br />
          </h2>
          <p>1.Стефан Владимиров Секретар на Извршен Одбор и З.П.Охрид и Дебрца<br />
              2.Драган Пандески управител во тду з.п.клуб на пензионери дооел Охрид<br />
              3.Лолита Ѓоноска благајник во тду з.п.клуб на пензионери и З.П.Охрид и Дебрца</p>
          <h2>КОМИСИЈА ЗА ЗДРАВСТО,СТАНДАРД,СОЦИЈАЛА -ХУМАНИТАРНА ПОМОШ <br />
          </h2>
          <p>1.Васкра Ангелеска претседател <br />
              2.Богоја Нелоски заменик претседател <br />
              3.Благица Маркулеска <br />
              4.Цветанка Стојаноска и <br />
              5.Петар Дуданов членови</p>
          <h2>КОМИСИЈА ЗА КУЛТУРНО ЗАБАВЕН ЖИВОТ,ИЗЛЕТИ,ОДМОР,РЕКРЕАЦИЈА<br />
          </h2>
          <p>1.Миланка Панделеска претседател <br />
              2.Мирјана Трајкоска заменик претседател <br />
              3.Лазо Змејкоски <br />
              4.Томе Димоски и <br />
              5.Јонка Јоноска.</p>
          <h2>КОМИСИЈА ЗА СПОРТ<br />
          </h2>
          <p>1.Томе Ристески претседател <br />
              2.Лазо Јованоски заменик претседател <br />
              3.Тони Филипов <br />
              4.Љупка Трифуноска и<br />
              5.Бојкица Димова членови</p>
          <h2>КОМИСИЈА ЗА СТАНБЕН И ДЕЛОВЕН ПРОСТОР<br />
          </h2>
          <p>1.Номче Цаноски претседател <br />
              2.Цветко Кузески заменик претседател <br />
              3.Власе Петрески и <br />
              4.Цветко Прензоски членови</p>
          <h2>КОМИСИЈА ЗА НАГРАДИ <br />
          </h2>
          <p>1.Илија Рупев претседател <br />
              2.Ангеле Буџакоски заменик претседател <br />
              3.Димко Цацаноски и <br />
              4.Драган Молкоски членови<br />
          </p>
          <h2>КОМИСИЈА ЗА СОРАБОТКА СО ЗДРУЖЕНИЈА НА ПЕНЗИОНЕРИ.ОРГАНИ ИНСТИТУЦИИ И ДРУГО ВО ЗЕМЈАТА И СТРАНСТВО<br />
          </h2>
          <p>1.Ѓорѓи Трпчески претседател <br />
              2.Пембезар Далипи и <br />
              3.Рахмие Салиеска членови</p>
          <h2>КОМИСИЈА ЗА ТВОРЕШТВО,ИЗДАВАШТВО,ЛИТЕРАТУРА,ПОЕЗИЈА,ДРАМА СЛИКАРСТВО И МЕЃУГЕНЕРАЦИСКА СОРАБОТКА <br />
          </h2>
          <p>1.Иванка Балева претседател <br />
              2.Марика Маленко заменик претседател <br />
              3.Божана Цуцулоска и <br />
              4.Ристана Меруџоска Мојсоска членови</p>
          <h2>КОМИСИЈА ЗА ЗАШТИТА НА ЖИВОТНА СРЕДИНА<br />
          </h2>
          <p>1.Васе Завојчева претседател <br />
              2.Васка Петреска заменик претседател <br />
              3.Ратка Ангелеска<br />
              4.Вукица Сандреска и <br />
              5.Ристо Бешироски членови</p>
          <h2>КОМИСИЈА ЗА ИНФОРМИРАЊЕ<br />
          </h2>
          <p>1.Весела Ристеска претседател <br />
              2.Ристо Трајкоски заменик претседател <br />
              3.Стефан Владимиров член</p>
          <h2>АКТИВ НА ЖЕНИ ПЕНЗИОНЕРКИ<br />
          </h2>
          <p>1.Горка Донеска претседател <br />
              2.Верица Пулеска заменик претседател <br />
              3.Јованка Петреска <br />
              4.Весела Нелоска и <br />
              5.Вера Димитриеска членови</p>
          <h2>КУД &quot;ДАЛГИ&quot; ПРИ З.П.ОХРИД И ДЕБРЦА ОХРИД<br />
          </h2>
          <p>1.Ристо Трајкоски Раководител <br />
              2.Миланка Панделеска Заменик Раководител</p>
          <h2>ПРЕТСЕДАТЕЛИ НА МЕСНИ ОДБОРИ ВО МЕСНИТЕ ОГАНОЦИ<br />
          </h2>
          <p>1.Илија Рупев М.О.Стар Град<br />
              2.Благица Маркулеска М.О.Центар<br />
              3.Петар Дуданов М.О.Долна Влашка Маала<br />
              4.Васкра Ангелеска М.О.Горна Влашка Маала<br />
              5.Крсте Џамтоски М.О.Билјанини Извори<br />
              6.Димче Мајкоски М.О.Даме Груев<br />
              7.Цветанка Стојаноска М.О.15 Корпус и Радојца Новичиќ<br />
              8.Сотир Балоски М.О.Велгошти-Рамне<br />
              9.Радован Велјаноски М.О.Кошишта<br />
              10.Васка Петреска М.О.Железничка Населба<br />
              11.Љупка Трифуноска М.О.Лескоец и Скребатно<br />
              12.Ристо Маркоски М.О.Орман Д.Г Лакочереј и Подмолје<br />
              13.Васил Лошкоски М.О.Поранешна Мешеишка Општина-општина Дебрца<br />
              14.Димитар Димитреиски М.О.Поранешна Коселска Општина<br />
              15.Крсте Спасески М.О.Абас Емин и 7 Ноември<br />
              16.Лазар Јованоски М.О.Видобишта и населба Гоце Делчев<br />
              17.Науме Јанкоски М.О.Населба Рача,Коњско и Елшани<br />
              18.Номче Цаноски М.О.Пештани,Трпејца и Љубаништа<br />
              19.Лазар Карнфилоски М.О.Дејан Војвода<br />
              20.Лилјана Станкоска М.О.Воска-Далјан<br />
              21.Јонка Јоноска М.О.Д.С.и Г.Дебрца -општина Дебрца</p>
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

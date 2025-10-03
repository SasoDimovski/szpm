
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/kicevo.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->

<title>Здружение на пензионери Кичево</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../kicevo/'">Здружение на пензионери <strong>Кичево</strong></div></td>
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
        <td width="110" align="center"><a href="dokumenti.asp">Документи</a></td>
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
              <td width="33%">Статутарна комисија</td>
              <td width="33%">Актив  на Жени</td>
              <td width="">Комисија за култура и рекреација </td>
              </tr>
            <tr>
              <td>Комисија  за спорт и спортски натпревари</td>
              <td> Комисија  за станбен и деловен простор</td>
              <td> Комисија  за синдикално снабдување</td>
            </tr>
            <tr>
              <td>Комисија  за работа со клубот на пензионери</td>
              <td> Комисија  за здравствено осигурување, материјална
                и  социјална заштита и хуманитарни дејности</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="33%"><img src="mehmed_mehmedi.jpg" width="110" height="160" /></td>
              <td width="1%"></td>
              <td width="33%"><img src="dusan_ristoski.jpg" alt="" width="110" height="160" /></td>
              <td width="1%"></td>
              <td width="33%"><img src="dobrivoj_lazareski.jpg" alt="" width="110" height="160" /></td>
              </tr>
            <tr>
              <td>Мехмед   Мехмеди - Претседател на Собрание                     </td>
              <td></td>
              <td> Душан Ристоски - Претседател на здружение                      </td>
              <td></td>
              <td>Добривој Лазарески - Секретар      </td>
              </tr>
        </table>
          <!--<h2><img src="Sobranie.JPG" width="520" height="281" /></h2>-->
          <h2>Делегати на Собрание          </h2>
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><p>1.Бобе Угриноски </p>
                  <p>2. Славка Трајаноска </p>
                  <p>3.Ристпоманов Димитар </p>
                  <p>4.Добривој Лазарески </p>
                  <p>5.Душан Ристоски </p>
                  <p>6. Милисав Стефаноски 	</p>
                  <p>7.Тодор Трајкоски </p>
                  <p>8.Томислав Велјаноски </p>
                  <p>9.Менка Жунгулова </p>
                  <p>10.Китаноски Лубиша</p>
                  <p>11.Ратко Петрески </p>
                  <p>12.Шаќет Мехмеди </p>
                  <p>13.Асдип Беќири </p>
                  <p>14.садик Мустафа </p>
                  <p>15.Али Мехмедоски, </p>
                  <p>16.Стефан Шурбаноски </p>
                  <p>17.Фазлија Феќушоски </p>
                  <p>18.Гоце Матески </p>
                  <p>19.Цена Ангелеска</p>
                  <p>20.Светлана Крстеска</p></td>
              <td valign="top"><p>21.Јован Илиоски</p>
                  <p>22.Славе Сарафилоски</p>
                  <p>23.Коста Софрониоски</p>
                  <p>24.Славе Кузманоски</p>
                  <p>25.Јагода Запатоска</p>
                  <p>26.Стојче Петкоски</p>
                  <p>27.Саве Димитриоски</p>
                  <p>28.Благоја Спироски, </p>
                  <p>29.Живко Тасески</p>
                  <p>30.Јован Милошески</p>
                  <p>31.Цветан Спироски</p>
                  <p>32.Богоја Стефаноск</p>
                  <p>33.Велјана Спасеноска</p>
                  <p>34.Исмаил Мехмеди,</p>
                  <p>35.Мехмед Мехмеди, </p>
                  <p>36.Мустафа Рамадани,</p>
                  <p>37.Сулеман Сулемани,</p>
                  <p>38.Селим Кадриу</p>
                  <p>39.Садик Садик</p>
                  <p>40.Емин Адили </p></td>
            </tr>
        </table>
<!--<p><img src="Izvrsen Odbor.JPG" width="520" height="314" />
</p>-->
          <h2>Членови на Извршен  одбор </h2>
          <p>1.Душан Ристоски<br />
2.Славка Трајаноска<br />
3.Шоќет&nbsp; Мехмеди<br />
4.Светлана&nbsp;  Крстеска<br />
5.Томислав Велјаноски<br />
6.Богоја Стефаноиски<br />
7.Цветсн Спироски<br />
8.Селим&nbsp; Кадриу<br />
9.Стефан&nbsp;  Шурбаноски<br />
10.Славе Кузманоски<br />
                11.Исмаил&nbsp; Мехмеди </p> <p align="center"><img src="io-2023.jpg" alt="" /><br />
  <strong><em>Извршен одбор</em></strong></p>
                 
            
            <h2>Членови на  Надзорен  Одбор</h2>
            <ol>
                <li>Донка  Трајаноска&nbsp; претседател,</li>
                <li>Нане&nbsp; Атанасоски&nbsp;  заменик</li>
                <li>Зорица&nbsp;  Наумоска- член</li>
            </ol>
            <h2>Членови на  Статутарна комисија</h2>
<p>&nbsp;&nbsp;&nbsp; 1. Коста&nbsp;  Софрониоски<br />
    &nbsp;&nbsp;&nbsp; 2. Миливој Стефаноски<br />
    &nbsp;&nbsp;&nbsp;  3. Садин Арслани</p>
<h2>&nbsp;</h2>
<h2>Претседатели на  месни ограноци</h2>
<p>1.Мачкиќ Милосов<br />
    2.Менка Дическа<br />
    3.Јован Митрески<br />
    4.Ислам Мехмеди<br />
    5.Велимир Ангелески<br />
    6.Мицкоски Мирко<br />
    7.Славко Софрониоски<br />
    8.Ефто Кузманоски<br />
    9.Аница Иванова<br />
    10.Слободан Филипоски<br />
    11.Стојан Цветкоски<br />
</p>
<h1> Работни комисии при ЗП - Кичево </h1>
<h2> Комисија за култура и рекреација </h2>
<p>1.Саве Димитриески  &ndash;претседател<br />
    2.Даме  Арсоски &ndash;заменик<br />
    3.Aнгелина  Ристоска &ndash;член</p>
<h2>Комисија  за спорт и спортски натпревари</h2>
<p>1.Даномир&nbsp; Ристоманов- претседател<br />
    2.  Драган Столески- заменик<br />
    3.  Менче Жунгулова&nbsp; -член</p>
<h2> Комисија  за станбен и деловен простор</h2>
<p>1.Тодор  Трајкоски - претседател,<br />
    2.Цена  Ангелеска- заменик<br />
    3.Шаќет  Мехмеди- член</p>
<h2> Комисија  за синдикално снабдување</h2>
<p>1.Фидан  Китаноски -&nbsp; претседател,<br />
    2.  Благоја&nbsp; Џикоски&nbsp;&nbsp; -заменик,<br />
    3.Сулеман&nbsp; Сулемани- член</p>
<h2>Комисија  за работа со клубот на пензионери</h2>
<p>1.Бобе  Угриноски- претседател<br />
    2.Петре Фиданоски - заменик<br />
    3.Јовче&nbsp; Цветаноски - член</p>
<h2> Комисија  за здравствено осигурување, материјална
    и  социјална заштита и хуманитарни дејности</h2>
<ol>
    <li>Нада Мицкоска- претседател,</li>
    <li>Размена Tемелкоска&ndash;  заменик,</li>
    <li>Сафиудин Карагоски - член</li>
</ol>
<h2>Делегат на Собранието на Сојузот  на пензионерите на Македонија</h2>
<ol>
    <li>Ратко Петрески &ndash; дипломиран економист</li>
</ol>
<p>&nbsp;</p>
<h2> </h2>
<h2> </h2>
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

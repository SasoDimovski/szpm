
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/bitola.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Битола</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../bitola/'"></div><div class="logo" onClick="window.location='../bitola/'">Здружение на пензионери <strong>Битола</strong></div></td>
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
    <td width="33%">Извршен одбор</td>
    <td width="33%">Надзорен одбор</td>
    <td width="33%">Комисија за статутарни прашања</td>
  </tr>
  </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="50%">Комисија за спорт и забава</td>
              <td>Комисија за култура</td>
            </tr>
            <tr>
              <td>Комисија за здравство</td>
              <td>Комисија за одмор и рекреација</td>
            </tr>
            <tr>
              <td>Комисија за набавка</td>
              <td>Комисија за стамбени прашања</td>
            </tr>
            <tr>
              <td>Комисија за соработка со други    здруженија</td>
              <td>Актив на пензионерки</td>
            </tr>
            </table>
          <br />
<br />

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="25%" align="center" valign="top"><img src="Danica-Petlickova-potpretsedatel-na-IO_.jpg" alt="" width="110" height="153" /></td>
    <td align="center"></td>
    <td width="25%" align="center"><img src="vera gjorsevska.jpg" width="110" height="153" /></td>
    <td align="center"></td>
    <td width="25%" align="center"><img src="mirce nedelkovski (1).jpg" alt="" width="110" height="153" /></td>
    </tr>
  <tr>
    <td align="center" valign="top">Даница Петличкова,
Претседател на ЗП и на Извршен Одбор</td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top">Вера Ѓоршевска,
      Претседател на Собрание</td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top">Мирче Неделковски, Претседател на Надзорен одбор</td>
    </tr>
</table>
<h2 align="center"><strong>СПИСОК НА ДЕЛЕГАТИ ВО СОБРАНИЕ НА З.П. БИТОЛА</strong></h2>
<table width="100%">
  <tbody>
    <tr>
      <td width="50%"><ol>
        <li>Дракуловски Атанасие <br />
          (А.Турунџев)</li>
        <li>Наумовски Славе<br />
          (Б.Бастеро)</li>
        <li>Србиновски Бошко<br />
          (Б.Бастеро)</li>
        <li>Натев Јане<br />
          (Б.Рогозинаро)</li>
        <li>Ѓуровски Ѓорги<br />
          (Б.Рогозинаро)</li>
        <li>Чулаковски Крсте<br />
          (Бистрица)</li>
        <li>Марковски Славче<br />
          (Бистрица)</li>
        <li>Ѓоревски Трајан<br />
          (Буково)</li>
        <li>Бушевски Стево<br />
          (Буково)</li>
        <li>Додовски Спиро<br />
          (В.Влаховиќ)</li>
        <li>Цветковски Никола<br />
          (В.Влаховиќ)</li>
        <li>Ѓоршевска Вера &ndash; претседател на    Собрание<br />
          (В.Карангелевски)</li>
        <li>Алиевски Абдула<br />
          (В.Карангелевски)</li>
        <li>Христовски Мишко<br />
          (В.Мајоро)</li>
        <li>Блажевски Филип<br />
          (Г.Делчев)</li>
        <li>Спироска Лилјана<br />
          (Д.Влахов)</li>
        <li>Ѓеорѓиевски Владо<br />
          (Д.Груев)</li>
        <li>Цивкаровски Цане<br />
          (Д.Груев)</li>
        <li>Јосифовски Благоја<br />
          (Добрушево)</li>
        <li>Герелевски Томе<br />
          (Д.Хаџипопов)</li>
        <li>Мирче Неделковски</li>
        <li>Миленкоски Сотир<br />
          (Ѓ.Наумов)</li>
        <li>Гајдаровски Веле<br />
          (Ѓ.Сугарев)</li>
        <li>Талева Софка<br />
          (Е.Караманди)</li>
        <li>Огненова Вера<br />
          (Е.Караманди)</li>
      </ol></td>
      <td width="50%"><ol start="26">
        <li>Настовски Благоја<br />
          (Е.О.Мара)</li>
        <li>Ѓоргиев Владимир<br />
          (Е.О.Мара)</li>
        <li>Цветковска Соња<br />
          (Ј.Мурџевски)</li>
        <li>Неделковски Цветко<br />
          (Ј.Мурџевски)</li>
        <li>Атанасовски Јосиф<br />
          (К.Десано)</li>
        <li>Дамевски Љубен<br />
          (К.Канински)</li>
        <li>Петровски Јанако<br />
          (К.Лачето)</li>
        <li>Масалковски Флоре<br />
          (Кукуречани)</li>
        <li>Ристевски Божидар<br />
          (Могила)</li>
        <li>Шурбевски Киро<br />
          (Могила)</li>
        <li>Талевски Васил<br />
          (Новаци)</li>
        <li>Трајковски Видан<br />
          (Новаци)</li>
        <li>Петревски Славе<br />
          (П.Кајзеро)</li>
        <li>Ефтимовска Ковилка<br />
          (П.Кајзеро)</li>
        <li>Најдовски Јован<br />
          (С.Наумов)</li>
        <li>Петличкова Даница<br />
          (С.Патако)</li>
        <li>Савевски Владо<br />
          (Т.Ангелевски)</li>
        <li>Сретенов Бранко<br />
          (Т.Ангелевски)</li>
        <li>Питошка Борис<br />
          (Т.Даскало)</li>
        <li>Ристевски Милан<br />
          (Т.Даскало)</li>
        <li>Салиловски Беадин<br />
          (с. Цапари)</li>
        <li>Мицевски Благоја<br />
          (с. Д.Оризари)</li>
        <li>Вељановски Цанко<br />
          (с.Логоварди)</li>
        <li>Јанкуловска Ленче</li>
        <li>Димитровска Загорка</li>
      </ol></td>
    </tr>
  </tbody>
</table>
<h2>Список на претседатели на ограноците на ЗП Битола </h2>
<table width="100%" border="0">
  <tr>
    <td valign="top"><strong>Р.број</strong></td>
    <td valign="top"><strong>Презиме и име</strong></td>
    <td valign="top"><strong>М. Огранок</strong></td>
  </tr>
  <tr>
    <td valign="top">1.</td>
    <td valign="top">Димитриевски Никодин</td>
    <td valign="top">А. Турунџев</td>
  </tr>
  <tr>
    <td valign="top">2.</td>
    <td valign="top">Дамјанов Петар</td>
    <td valign="top">Б. Бастеро</td>
  </tr>
  <tr>
    <td valign="top">3.</td>
    <td valign="top">Ристевски Добривојa</td>
    <td valign="top">Б. Рогозинаро</td>
  </tr>
  <tr>
    <td valign="top">4.</td>
    <td valign="top">Стојчевски Лазо</td>
    <td valign="top">Бистрица</td>
  </tr>
  <tr>
    <td valign="top">5.</td>
    <td valign="top">Мачковски Никола</td>
    <td valign="top">Буково</td>
  </tr>
  <tr>
    <td valign="top">6.</td>
    <td valign="top">Јовановски Кирил</td>
    <td valign="top">В. Влаховиќ</td>
  </tr>
  <tr>
    <td valign="top">7.</td>
    <td valign="top">Ѓоршевски Панде</td>
    <td valign="top">В. Карангелевски</td>
  </tr>
  <tr>
    <td valign="top">8.</td>
    <td valign="top">Павловски Миле</td>
    <td valign="top">В. Мајоро</td>
  </tr>
  <tr>
    <td valign="top">9.</td>
    <td valign="top">Јошевски Стеван</td>
    <td valign="top">Г. Делчев</td>
  </tr>
  <tr>
    <td valign="top">10.</td>
    <td valign="top">Ангелевски Иван</td>
    <td valign="top">Д. Влахов</td>
  </tr>
  <tr>
    <td valign="top">11.</td>
    <td valign="top">Тасевски Трајан</td>
    <td valign="top">Д. Груев</td>
  </tr>
  <tr>
    <td valign="top">12.</td>
    <td valign="top">Ивановски Коле</td>
    <td valign="top">Добрушево</td>
  </tr>
  <tr>
    <td valign="top">13.</td>
    <td valign="top">Талевски Миле</td>
    <td valign="top">Д. Хаџипопов</td>
  </tr>
  <tr>
    <td valign="top">14.</td>
    <td valign="top">Филиповски Васко</td>
    <td valign="top">Ѓ. Наумов</td>
  </tr>
  <tr>
    <td valign="top">15.</td>
    <td valign="top">Ристевски Максим</td>
    <td valign="top">Ѓ. Сугарев</td>
  </tr>
  <tr>
    <td valign="top">16.</td>
    <td valign="top">Илиовски Владо</td>
    <td valign="top">Е. Караманди</td>
  </tr>
  <tr>
    <td valign="top">17.</td>
    <td valign="top">Костадиновска Павлина</td>
    <td valign="top">Е. О. Мара</td>
  </tr>
  <tr>
    <td valign="top">18.</td>
    <td valign="top">Атанасовски Никола</td>
    <td valign="top">Ј. Мурџевски</td>
  </tr>
  <tr>
    <td valign="top">19.</td>
    <td valign="top">Белевски Славе</td>
    <td valign="top">К. Десано</td>
  </tr>
  <tr>
    <td valign="top">20.</td>
    <td valign="top">Христова Марија</td>
    <td valign="top">К. Канински</td>
  </tr>
  <tr>
    <td valign="top">21.</td>
    <td valign="top">Боризовски Борче</td>
    <td valign="top">К. Лачето</td>
  </tr>
  <tr>
    <td valign="top">22.</td>
    <td valign="top">Шеровски Спасе</td>
    <td valign="top">Кукуречани</td>
  </tr>
  <tr>
    <td valign="top">23.</td>
    <td valign="top">Крстевски Борис</td>
    <td valign="top">Могила</td>
  </tr>
  <tr>
    <td valign="top">24.</td>
    <td valign="top">Цветковски Божо</td>
    <td valign="top">Новаци</td>
  </tr>
  <tr>
    <td valign="top">25.</td>
    <td valign="top">Бучковски Пецо</td>
    <td valign="top">П. Кајзеро</td>
  </tr>
  <tr>
    <td valign="top">26.</td>
    <td valign="top">Ангеловска Лилјана</td>
    <td valign="top">С. Наумов</td>
  </tr>
  <tr>
    <td valign="top">27.</td>
    <td valign="top">Здравевска Мица </td>
    <td valign="top">С.Патако</td>
  </tr>
  <tr>
    <td valign="top">28.</td>
    <td valign="top">Пусовска Ратка</td>
    <td valign="top">Т. Ангелевски</td>
  </tr>
  <tr>
    <td valign="top">29.</td>
    <td valign="top">Трајчевски Томе</td>
    <td valign="top">Т. Даскало</td>
  </tr>
  <tr>
    <td valign="top">30.</td>
    <td valign="top">Поповски Науме</td>
    <td valign="top">Цапари</td>
  </tr>
  <tr>
    <td valign="top">31.</td>
    <td valign="top">Марковски Драги</td>
    <td valign="top">Д. Оризари</td>
  </tr>
  <tr>
    <td valign="top">32.</td>
    <td valign="top">Апостоловски Мишко</td>
    <td valign="top">Логоварди</td>
  </tr>
</table>
<!--<p align="center"><img src="io.jpg" alt="" /><br />
            <strong><em>Извршен одбор</em></strong></p>-->
          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          <ol>
            <li>Даница Петличкова - претседател</li>
            <li>Бранко Сретенов</li>
            <li>Ленче Јанкуловска</li>
            <li>Атанасие Дракуловски</li>
            <li>Јане Натев</li>
            <li>Сотир Миленкоски</li>
            <li>Абдула Алиевски</li>
            <li>Благоја Настовски</li>
            <li>Славчo Марковски</li>
            <li>Јосиф Атанасовски</li>
            <li>Јанако Петровски</li>
            <li>Флоре Масалковски</li>
            <li>Васил Талевски</li>
            <li>Борис Питошка</li>
            <li>Загорка Димитровска</li>
            </ol>
          <h3><strong>НАДЗОРЕН ОДБОР</strong></h3>
            <ol>
                <li>Мирче Неделковски - претседател</li>
                <li>Викторија Спировска - член</li>
                <li>Крсте Диневски - член          </li>
            </ol>
            <h2>КОМИСИЈА ЗА ЗДРАВСТВО И ЗДРАВСТВЕНА ПОМОШ</h2>
          <ol>
            <li>Христо Вељановски &ndash; претседател</li>
            <li>Владо Кирковски &ndash; член</li>
            <li>Димче Чипуровски &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА СТАНДАРД И СНАБДУВАЊЕ</h2>
          <ol>
            <li>Виолета Димовска &ndash; претседател</li>
            <li>Благој Јовановски &ndash; член</li>
            <li>Гоце Марковски &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА СТАН И СТАНБЕНИ ПРАШАЊА</h2>
          <ol>
            <li>Славе Белевски &ndash; претседател</li>
            <li>Бранирод Михајловски &ndash; член</li>
            <li>Ѓорѓи Кочовски &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА СТАТУТ И ПРАВНИ ПРАШАЊА</h2>
          <ol>
            <li>Петар Ѓорѓиевски &ndash; претседател</li>
            <li>Виолета Блажевска &ndash; член</li>
            <li>Миле Лазаревски &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА ЗАБАВА И КУЛТУРА</h2>
          <ol>
            <li>Владо Рајчановски &ndash; претседател</li>
            <li>Благој Нечовски &ndash; член</li>
            <li>Петар Ставрев &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА СПОРТ И СПОРТСКИ АКТИВНОСТИ</h2>
          <ol>
            <li>Цане Грбевски &ndash; претседател</li>
            <li>Панде Ѓоршевски &ndash; член</li>
            <li>Гино Огненов &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА КЛУБОВИ</h2>
          <ol>
            <li>Митко Попрцов &ndash; претседател</li>
            <li>Димче Гулабовски &ndash; член</li>
            <li>Петар Костовски &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА ПОПИС</h2>
          <ol>
            <li>Нада Паскова &ndash; претседател</li>
            <li>Љубинка Илиевска &ndash; член</li>
            <li>Петар Наумовски &ndash; член</li>
          </ol>
          <h2>СЕКЦИЈА НА ЖЕНИ</h2>
          <ol>
            <li>Ковилка Ефтимовска &ndash; претседател</li>
            <li>Елица Цветковска &ndash; член</li>
            <li>Анѓелина Ѓоргиевска &ndash; член</li>
            <li>Лилјана Анѓелевска &ndash; член</li>
            <li>Нада Паскова &ndash; член</li>
            <li>Горица Димовска &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА СОРАБОТКА СО ДРУГИ ЗДРУЖЕНИЈА ОД Р.С. МАКЕДОНИЈА И НАДВОР ОД ЗЕМЈАТА</h2>
          <ol>
            <li>Мирче Стефановски &ndash; претседател</li>
            <li>Соња Цветковска &ndash; член</li>
            <li>Данка Јанковска &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА ДОДЕЛУВАЊЕ НА ПОМОШ НА ЧЛЕНОВИ НА ЗП И ХУМАНИТАРНИ АКЦИИ</h2>
          <ol>
            <li>Славе Стевановски &ndash; претседател</li>
            <li>Живко Кирковски &ndash; член</li>
            <li>Нада Јаревска &ndash; член</li>
          </ol>
          <h2>КОМИСИЈА ЗА ДРВА</h2>
          <ol>
            <li>Јонче Петровски &ndash; претседател</li>
            <li>Владо Илијовски &ndash; член</li>
            <li>Пецо Бучковски - член</li>
          </ol>
          <p></p>
          <h2>&nbsp;</h2>
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

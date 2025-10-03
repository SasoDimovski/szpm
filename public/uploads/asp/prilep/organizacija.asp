
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/prilep.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Прилеп</title>
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Прилеп</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../prilep/'"></div>--><div class="logo" onClick="window.location='../prilep/'">Здружение на пензионери <strong>Прилеп</strong></div></td>
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
              </tr>
            <tr>
              <td>Комисија за информирање  и издавачка дејност</td>
              <td>Комисија за здравство  и социјална дејност</td>
              <td>Секцијата на жени</td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="24%" align="center"><img src="Slavko-Trajkoski-pretsedatel-na-IO-i-na-ZP-Prilep.png" alt="" width="110" height="160" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="24%" align="center"><img src="Dimce-Nastoski-pretsedatel-na-Sobranie.png" alt="" width="110" height="160" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="24%" align="center"><img src="Slavica-Pozharska-sekretar.png" alt="" width="110" height="160" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="24%" align="center"><img src="Ilija-Adamoski-pretsedatel-na-Sobranie-na-SZPM.png" alt="" width="110" height="160" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><strong><em>Славко Трајкоски</em></strong>,
                Претседател на  ЗП и ИО Прилеп </td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Димче Настовски</em></strong>, <br />
                      Претседател на собрание</td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Славица Пожарска</em></strong>, <br />
                  секретар</td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Илија Адамоски</em></strong>, <br />
                  делегат во СЗПМ</td>
              </tr>
      </table>

          
          <h2>СОБРАНИЕ НА ЗП ПРИЛЕП  - ИЗБОРИ 2023 ГОДИНА</h2><table width="100%" border="0">
            <tr>
              <td width="50%" valign="top">
                <ol>
                    <li>Димче  Настоски <br>Огранок Вишне - ПРЕТСЕДАТЕЛ </li>
                    <li>Славко  Трајкоски <br>Огранок Рид -2 </li>
                    <li>Славица  Пожарска&nbsp; <br>Огранок&nbsp; Рид -2 </li>
                    <li>Марија  Михајлоска<br />
                        делегат <br>
                        Огранок Центар </li>
                    <li>Фанка  Николоска&nbsp; <br>
                        Огранок Центар </li>
                    <li>Фанче  Рулеска Николоска<br />
                         Огранок Бончејца </li>
                    <li>Миле  Тасламически&nbsp;&nbsp;&nbsp; <br>Огранок&nbsp; Бончејца  </li>
                    <li>Златко  Ангелески <br />
                        Огранок Варошко мало </li>
                    <li>Слободанка  Дисоска <br>Огранок Варошко мало </li>
                    <li>Зоре  Синадиниски&nbsp; <br>Огранок Сточен Пазар  </li>
                    <li>Дано  Стеваноски<br />
                        Огранок Сточен Пазар </li>
                    <li>Тода  Сталеска <br>Огранок Гоце Делчев </li>
                    <li>Димитрие  Макрески<br />
                        Огранок Гоце Делчев  </li>
                    <li>Данчо  Звездакоски<br>Огранок Точила  </li>
                    <li>Лилјана  Русеска <br>Огранок Точила  </li>
                    <li>Шона  Петреска <br>Огранок Вишне  </li>
                    <li>Маргарита  Петреска<br>Огранок Вишне  </li>
<li>Вера  Мирческа <br>Огранок&nbsp; Рид -1</li>
                </ol>                </td>
              <td valign="top"><ol start="19">
                    <li>Миланче  Штаргоски&nbsp; <br>Огранок Рид -1 </li>
                    <li>Ицко  Најдоски <br />
                        Делегат Тризла -1 </li>
                    <li>Драгица  Иваноска<br>Огранок Тризла -1 </li>
                    <li>Јордан  Кузманоски <br>Огранок Тризла -2 </li>
                    <li>Верка  Цветкоска<br>Огранок Тризла -2 </li>
                    <li>Зора  Абрашоска<br>Огранок Ѓогдере  </li>
                    <li>Стеван  Ацески&nbsp; <br>Огранок Ѓогдере  </li>
                    <li>Живко  Паскоски<br>Огранок Тризла -2 </li>
                    <li>Радислав  Трпески <br />
                        Огранок с.Кривогаштани  </li>
                    <li>Киро  Анѓелески <br>Огранок с. Долнене </li>
                    <li>Љупчо  Мицески <br>Огранок с. Тополчани  </li>
                    <li>Медин  Топалоски <br>Огранок с. Ропотово  </li>
                    <li>Милан  Талески&nbsp;&nbsp; <br />
                        Огранок с. Ропотово  </li>
                    <li>Киро  Коруноски <br>Огранок -Варош </li>
                    <li>Еленица  Пешталеска&nbsp; <br>Огранок Корзо  </li>
                    <li>Слоботка  Зојческа <br>Огранок Корзо  </li>
                    <li>Пецо  Котески <br />
                        Избран по чл.13 ст.1 од Статутот </li>
                    <li>Лилјана  Попоска <br />
                        Избрана по чл.13 ст. 1 од Статутот </li>
                    <li>Благоја  Јовески <br />
                        Избран по чл 13 ст. 1 од Статутот </li>
                </ol></td>
            </tr>
          </table>
          <!--<p align="center"><img src="Izvrsen-odbor.jpg" alt="" width="520" height="333" /><br />
  <strong><em>Извршен одбор</em></strong></p>-->
          <h2><strong>ИЗВРШЕН ОДБОР</strong></h2>
          <p>1.Славко  Трајкоски - огранок Рид-2 - ПРЕТСЕДАТЕЛ<br />
              2.Орде Кузманоски- огранок Тризла-2<br />
              3.Маргарита Петреска - огранок Вишне<br />
              4.Вера Мирческа-Огранок Рид- 1<br />
              5.Златко Ангелески- огранок Варошко  маало<br />
              6.Марија Михајлоска- огранок Центар<br />
              7.Живко Паскоски- огранок Обршани<br />
              8.Медин Топалоски- Ропотово<br />
              9.Димитрија Макрески - огранок Гоце  Делчев<br />
              10.Фанче Рулеска Николоска- огранок  Бончејца<br />
              11.Лилјана Русеска- огранок Точила<br />
              12.Стеван Ацески - огранок Ѓогдере<br />
              13.Еленица Пешталеска- огранок Корзо<br />
              14.Зоре Синадиноски- огранок Сточен  пазар и<br />
              15.Ицко Најдоски- огрнок Тризла 1</p>
<h2>НАДЗОРЕН ОДБОР</h2>
<p>1.Тале  Стојаноски- за претседател<br />
    2.Флора Чакалароска- член и<br />
    3.Борис Кремчески- член</p>
<h2>За делегати во Собранието на СЗПМ се избрани:</h2>
<p>1.Славко Трајкоски<br />
    2.Илија Адамоски</p>
<h2>ПРЕГЛЕД НА ЧЛЕНОВИ НА КОМИСИИ  </h2>
<h2>Комисија  за статутарно правни прашања</h2>
<p>1.Борче Ристески за  претседател<br />
     2.Стеванка Николоска - член<br />
     3.Благоја Христоски- член</p>

<h2>КОМИСИЈА ЗА КУЛТУРА</h2>
          <p>1.Флора Чакалароска-- претсдател<br />
    2.Киро Трајкоски-член<br />
    3.Диме Билески- член          </p>
          <h2>КОМИСИЈА ЗА ОДМОР И РЕКРЕАЦИЈА</h2>
          <p>1. Илија Зајкоски-претседател<br />
    2.Ѓоре Рунтески- член <br />
    3.Стеван Попоски член.</p>
<h2> КОМИСИЈА ЗА СПОРТ</h2>
          <p>1.Славица Јованова-  претседател<br />
     2.Мицо Мицоски- член <br />
     3.Мирослав Кузманоски- член</p>
<h2> КОМИСИЈА ЗА ЗДРАВСТВО И СОЦИЈАЛА</h2>
          <p>1.Др. Жарко Митрески -  претседател<br />
     2.Лилјана&nbsp;  Чопелоска- член<br />
     3.Лилјана Костоска- член</p>
<h2>Одбор што ќе раководи со Секцијата на жени:</h2>
          <p>1.Снежана Димеска &ndash; за  претседател<br />
     2.Панде Ристеска за член<br />
              3.Тања  Зафироска за член</p>
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

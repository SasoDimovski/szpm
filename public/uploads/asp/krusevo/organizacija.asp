<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/krusevo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Крушево</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../krusevo/'">Здружение на пензионери <strong>Крушево</strong></div></td>
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
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>Организациска структура 2019-2023 година</strong><!-- InstanceEndEditable --></td>
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
                <td width="33%">Актив на пензионерки</td>
              </tr>
            </table>
            <table width="100%" class="dijagram">
              <tr>
                <td width="33%">Комисија  за статут  и правни прашања </td>
                <td width="33%">Комисија за спорт  и рекреација</td>
                <td width="33%">Комисија  за културно-  забавен живот</td>
              </tr>
              <tr>
                <td>Комисија  за здравство  социјална заштита</td>
                <td>Комисија  за стамбени  прашања и деловен простор </td>
              </tr>
            </table>
            <p>Ограноци<br />
              Крушево 1, Крушево 2, с.Житоше, с.Св.Митрани, с. Пуста Река</p>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="32%" align="center"><img src="Nikola Atanasoski pretsedatel na Sobranieto.JPG" alt="" width="139" height="195" /></td>
              <td width="1%" align="center"></td>
              <td width="32%" align="center"><img src="Milorad-Trpcheski-pretsedatel-na-Sobranie-.jpg" alt="" width="142" height="189" /></td>
              <td width="1%" align="center">&nbsp;</td>
              <td width="32%" align="center"><img src="Dimche-Trajkoski-sekretar-na-ZP-Krushevo.jpg" alt="" width="142" height="189" /></td>
              </tr>
            <tr>
              <td align="center" valign="top"><strong><em>Никола Атанасоски</em></strong>, <br />
                Претседател на ЗП Крушево</td>
              <td align="center" valign="top"></td>
              <td align="center" valign="top"><strong><em>Милорад Трпчески</em></strong>, <br />
                Претседател  на собрание </td>
              <td align="center" valign="top">&nbsp;</td>
              <td align="center" valign="top"><strong><em>Димче Трајкоски</em></strong>, <br />
                Секретар на ЗП Крушево</td>
              </tr>
          </table> 
            <p align="center"><img src="Krusevo-Sobranie-0002.jpg" alt="" /><br />
            <strong><em>Собрание на Здружението</em></strong><br /></p>
            <h3><strong>С О Б Р А Н И Е</strong> </h3>
            <ol start="1" type="1">
              <li>Милорад Трпчески&nbsp; - претседател</li>
              <li>Димче Трајкоски&nbsp;&nbsp;&nbsp;&nbsp; - секретар</li>
              <li>Никола Атанасоски &ndash; член</li>
              <li>Петар Начески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Илија Дамчески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Димитар Јованоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Добринка Јованоска&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Елена Чавкароска&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Петар Талески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Нико Курета&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Петар Котески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Грујо Огненоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Благоја Атанасоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Василика Дамјаноска&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Натка Мишу&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Никола Иваноски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Киро Секулоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Џемаил Јусуфи&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Иљаз Спахич&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Киро Ѓорѓиоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
              <li>Раде Тошески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</li>
            </ol>
            <p> </p>
          <p align="center"><img src="Krusevo-IO-0001.jpg" alt="" /><br />
            <strong><em>Извршен одбор</em></strong></p>
            <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
            <p>1. Никола Атанасоски&nbsp;&nbsp; - претседател<br>2. Димче Трајкоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Петар Начески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - член<br>4. Петар Котески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Петар Талески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>6. Василика Дамјаноска&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>7. Добринка Јованоска&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>8. Грујо Огненоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>9. Нико Курета&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>НАДЗОРЕН ОДБОР</h3>
            <p>1. Ставре Хасаноски &nbsp;&nbsp;- претседател<br>2. Илка Дервенџи &ndash; член<br>3. Ванѓел Златески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>Комисија за статут и правни прашања </h3>
            <p>1. Никола Атанасоски &nbsp;&nbsp;&nbsp;&nbsp;- претседател<br>2. Милорад Трпчески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - член<br>3. Димче Трајкоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>4. Киро Ѓорѓиоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Џемаил Јусуфи&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>Комисија за спорт и рекреација </h3>
            <p>1. Димитар  Костоски&nbsp;&nbsp;&nbsp; - претседател<br>2. Таќи  Папакоча&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; член<br>3. Миха  Божиноски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>4. Жаклина  Николоска&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Петар  Ристески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>Комисија за културно-забавен живот </h3>
            <p>1. Петар  Котески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Василика  Дамјаноска&nbsp;&nbsp; член<br>3. Митко  Илиески&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;</p>
            <h3>Комисија за здравство и социјална заштита </h3>
            <p>1. Д-р&nbsp; Ѓорѓи Тирчоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Д-р&nbsp; Савка Христоска&nbsp;&nbsp;&nbsp; - член<br>3. Драган  Милошески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>Комисија за стамбени прашања и деловен простор</h3>
            <p>1. Нико  Курета&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Димче  Трајкоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; член<br>3. Натка  Мишу&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>ОДБОР НА ОГРАНОКОТ 1  КРУШЕВО</h3>
            <p>1. Петар  Талески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Кочо Гута&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Стојан  Стеваноски &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- член<br>4. Еленица  Преш&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Христо  Илиески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>КОМИСИЈА ЗА СПОРТ И  КУЛТУРНИ ДЕЈНОСТИ</h3>
            <p>1. Миха  Божиноски&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Михајло  Габелоски &ndash; секретар<br>3. Димитар  Костоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; член<br>4. Наум  Петрушески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br>
            5. Марија Дамческа&nbsp;&nbsp; &ldquo;</p>
            <h3>ОДБОР НА ОГРАНОКОТ 2  КРУШЕВО</h3>
            <p>1. Петар  Котески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Калиопа  Наумоска&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Томе  Петроски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp; член<br>4. Благородна  Јуца&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp; &ldquo;<br>5. Ангеле  Ангелески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp; &ldquo;</p>
            <h3>КОМИСИЈА ЗА СПОРТ И  КУЛТУРНИ ДЕЈНОСТИ</h3>
            <p>1. Таќи  Папакоча&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Аница  Налбанти&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Христо  Петрески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; член<br>4. Жаклина  Николоска&nbsp;&nbsp; &ldquo;<br />
            5. Ванѓел Пажик&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            </p>
            <h3>ОДБОР НА ОГРАНОКОТ СВЕТО МИТРАНИ</h3>
            <p>1. Киро  Ѓорѓиоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Раде  Тошески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Митан  Митаноски &ndash; член<br>4. Малим  Алимоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Данчо  Србиноски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>КОМИСИЈА ЗА СПОРТ И  КУЛТУРНИ ДЕЈНОСTИ</h3>
            <p>1. Трајче  Тодороски&nbsp;&nbsp; - претседател<br>2. Ѓорѓи  Богески&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Димче  Митрески&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;член<br>4. Сабри  Зекироски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Борис  Јанкулоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;</p>
            <h3>ОДБОР НА ОГРАНОКОТ ЖИТОШЕ</h3>
            <p>1. Џемаил  Јусуфи&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Иљаз  Спахич&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Раип  Јусуфи&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp; член<br>4. Енвер  Амедоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Џибо Љаич&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;  &ldquo;</p>
            <h3>КОМИСИЈА ЗА СПОРТ И  КУЛТУРНИ ДЕЈНОСТИ</h3>
            <p>1. Ајриз  Муриќ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - претседател<br>2. Сулејман  Абази&nbsp;&nbsp;&nbsp;&nbsp; - секретар<br>3. Јусуф  Метлику&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; член<br>4. Ќани  Рустеми&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;<br>5. Ридван  Еминоски&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;&nbsp;</p>
            <p>              (Секој огранок  има своја комисија за спорт и културни дејности)</p>
            <h3></h3>
            <h3><br />
            </h3>
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
                <span class="datum"><%=rs_izvestai("datum")%></span> <a class="naslov_glaven" href="../mak/zapis.asp?id=<%=rs_izvestai("id")%>"><%=rs_izvestai("naslov")%></a><br />
                <br />
                <%
rs_izvestai.MoveNext
wend

call closeRekset(rs_izvestai)
%>
              </div>
              <div class="modul_dno"><a href="../mak/lista.asp?kat=1">повеќе...</a></div>
            </div>
            <!-- InstanceEndEditable -->
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

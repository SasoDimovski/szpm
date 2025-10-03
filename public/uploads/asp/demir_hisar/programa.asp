
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/demir_hisar.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Демир Хисар</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../demir_hisar/'"></div><div class="logo" onClick="window.location='../demir_hisar/'">Здружение на пензионери <strong>Демир Хисар</strong></div></td>
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
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>ПРОГРАМА</strong><!-- InstanceEndEditable --></td>
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
          <h2 align="center">Програмски определби
            на Здружението на пензионери Демир Хисар </h2>
          <p>Со Програмата за работа се реализираат сите активности  на Здружението на пензионери Демир Хисар кои се предвидени и утврдени во Статутот  на здружението, Правилникот за работа на Извршниот одбор, како и во одделните програми  на органите и комисиите и на ограноците кои се во состав на здружението. Сите активности  се насочени кон остварување на основните цели, заштита на стекнатите права од ПИОМ  со што се обезбедува правна сигурност за редовно живеење, непречена исплата на пензиите  и нивно годишно зголемување, правото на квалитетна здравствена заштита, организирање  на спортско-рекреативни, културно-забавни и други социјално- хуманитарни активности.  Сите овие цели и задачи на Здружението се остваруваат преку:</p>
          <p> <strong>1. Собрание  на Здружението:</strong><br />
            Собранието во тековната година оддржува две седници, а  по потреба и повеќе. <br />
            На седниците Собранието расправа по повеќе точки кои произлегуваат  од неговите надлежности: Извештај за работата за претходната година, Финансиски  извештај, донесува Одлуки за усвојување на Завршната сметка, Програма за работа  и Финансиски план и други точки кои произлегуваат од Статутот на Здружението.</p>
          <p> <strong>2. Извршен  одбор</strong><br />
            Извршниот одбор оддржува 4 редовни седници, а по потреба  и повеќе.<br />
            На седниците ИО расправа за Програмата за работа и Финансискиот  план, за извештаите на комисиите, за реализација на Одлуките, програмите и другите  документи што ќе ги донесе Собранието и други активности согласно Статутот.</p>
          <p> <strong>3. Надзорен  одбор</strong><br />
            Надзорниот одбор оддржува 3 седници, и тоа во месеците  јануари, мај и септември.<br />
            Неговата главна задача е да врши контрола на финансиско-материјалното  работење на Здружението и се грижи работењето да биде во склад со постојните закони  од областа на финансиското работење.</p>
          <p> <strong>4. Ограноци</strong><br />
            Здружението функционира со 18 ограноци и тоа: Огранок&nbsp; Демир Хисар 1 и 2,&nbsp; Огранок с. Кутретино и с. Суводол, Огранок с.  Граиште и Бараково, Огранок с. Стругово, Огранок с. Света, Огранок с. Единаковци,  Огранок с. Журче, Огранок с. Вардино, Огранок с. Сладуево во чиј состав влегува  и с. Белче, Огранок с. Прибилци, Огранок с. Слоештица, Огранок с. Вирово кој ги  опфаќа селата Мренога и Боишта, Огранок с. Слепче, Огранок с. Сопотница, Огранок  с. Смилево кој го опфаќа и селото Обедник, Огранок с. Доленци кој ги опфаќа селата  Брезово, Зашле, Железнец, М. и Г. Илино, Базерник, Бабино&nbsp; и Огранок с. Жван. Секој Огранок донесува Програма  за работа и врз основа на тоа се планираат активностите и екскурзиите за тековната  година.</p>
          <p> <strong>5. Здравствена  заштита</strong><br />
            Со Здравствениот дом и Општинската организација на Црвениот  крст на Македонија заеднички се превземаат активности за посета на стари и изнемоштени  лица и пензионери со ниски примања. Се организираат и предавања за болести кои најмногу  ги напаѓаат старите лица, се врши мерења на крвниот притисок, шеќер во крвта и други  превентувни прегледи.</p>
          <p> <strong>6. Спортски  активности</strong><br />
            Една од најприоритетните активности на Здружението се спортските  активности. Редовни учесници сме на сите Спортски натпревари и оваа година планираме  да вклучиме се повеќе пензионери особено од помалите ограноци. Оваа година спортските  натпревари ќе се организираат на Општинско ниво со вклучување на поголем број на  пензионери од сите ограноци, а најдобрите по спортски дисциплини ќе учествуваат  на Регионалните натпревари.</p>
          <p> <strong>7. Екскурзии</strong><br />
            Во зависност од расположливите средства и Програмата за  работа, и оваа година ќе реализираме неколку поголеми екскурзии секако на предлог  на самите пензионери. На сите екскурзии ќе учествуваат сите пензионери, без ограничувања  и од сите ограноци.</p>
          <p> <strong>8. Ревии  на песни, музика и игри</strong><br />
            И оваа година, Здружението со машката и женската играорна  група ќе земе учество на Регионалната Ревија на песни, музика и игри и со добар  пласман да обезбедиме&nbsp; учество и на Републичката  ревија.</p>
          <p> <strong>9. Актив  на пензионерки</strong><br />
            Активот на пензионерки и понатаму ќе продолжи со своите  активности во насока на збогатување на културниот и спортско-рекреативниот живот  на пензионерките, одбележување на 8-ми март-Денот на жената, активно учествува во  пополнувањето со нови членови на играорната група и учествува во спортските натпревари.</p>
          <p> <strong>10. Соработка  со други Здруженија и Локалната самоуправа</strong><br />
            Здружението ќе ја продолжи плодната соработка со сите Здруженија  на пензионери од Југозападниот дел на државава, а преку заеднички проекти со Локалната  самоуправа ќе се подобрува животниот стандард на пензионерите со ниски примања.</p>
          <p> <strong>11. Задачи  на стручната служба</strong><br />
            Во 2018 год.Стручната служба својата активност и работа  ќе ја обавува во согласност со Законите, Статутот и Одлуките што ќе ги донесе Собранието  и Извршниот одбор особено:<br />
            - навремено и квалитетно извршување на сите тековни задачи  од секојдневното работење;<br />
            - следење на финансиската состојба во Здружението и строго наменско користење на  финансиските средства.<br />
            - водење грижа за состојбата на Домот на пензионерите и  паркот околу Домот;<br />
            - вршење наплата на огревно дрво на пензионерите од Општината;<br />
  <br />
            Оваа Програма ќе биде основа за изготвување на програми и акциони планови за работа  на телата на ИО и ограноците на Здружението.<br />
            Програмата е отворена за измени и дополнувања со предлози  за подобрување на истата.</p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="55%">&nbsp;</td>
              <td><p><strong>ЗП Демир  Хисар</strong><br />
                <strong>Пере Петревски</strong></p></td>
            </tr>
          </table>
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
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.mtsp.gov.mk/" target="_blank"><img src="../images/ministerstvo_trud.gif" alt="" width="194" height="51" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.piom.com.mk/" target="_blank"><img src="../images/fpiom.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.fzo.org.mk/" target="_blank"><img src="../images/fzo.jpg" alt="" width="194" height="76" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://moh.gov.mk/" target="_blank"><img src="../images/zdravstvo.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.ssm.org.mk/" target="_blank"><img src="../images/ssm.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.ckrm.org.mk/Default.aspx" target="_blank"><img src="../images/crven_krst.gif" alt="" width="194" height="128" border="0" /></a></td>
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

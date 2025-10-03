
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/tetovo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Тетово</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../tetovo/'"></div>--><div class="logo" onClick="window.location='../tetovo/'">Здружение на пензионери <strong>Тетово</strong></div></td>
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
          <p>Врз основа на член 27 точка 3 од Статутот на здружението на пензионерите  Тетово, Извршниот одбор на Здружението на седницата одржана на 05.11.2015 г. го  утврди текстот и ја предлага за усвојување до Собранието следната ПРЕДЛОГ:          </p>
          <h2 align="center">ПРОГРАМА</strong><br />
            <strong>За работа на органите и телата на ЗП Тетово
за 2016 година
</strong></h2>
          <p>1. Собранието,  Извршниот одбор другите органи и телата на Здружението на пензионерите Тетово  своите активности во 2016 година во основа ќе ги насочат кон остварување на  определбите што ќе се утврдат со оваа Програма, како права и обврски кои  произлегуваат од содржината и вкупните предвидувања со Статутот на Здружението  и со Законот. <br />
            Организационото зацврстување како и остварување на континуирани активности на  органите и телата на Здружението и ограноците ќе треба да се остваруваат и во  овој временски период, па и понатаму кон отворена соработка меѓу органите и  телата, раководните структури и стручната служба, кон јакнење на директните  врски помеѓу пензионерите и овие субјекти.</p>
          <p>            2. Соодветните  органи и тела на Здружението со Статут се обврзани да ги следат сите прашања и  проблеми за кои пензионерите се животно заинтересирани. Затоа, е потребно во  овој временски период да се остварува уште потесна соработка со ограноците како  изборна и кадровска база на членовите на органите и телата на Здружението. </p>
          <p>            3. Своите  кадровски капацитети органите и телата на Здружението ќе ги насочат кон  почитување на законите и другата норматива, систематизирање и разрешување на  проблемите, барањата и желбите на пензионерите и ограноците кои се&nbsp; од  животен интерес на пензионерите. </p>
          <p>            4. Воведување  социјална карта на пензионерите, според проектот на СЗПМ и сознанијата на ЗП  Ѓорче Петров, како носител на пилот-проектот и водење соодветна евиденција на  членството по ограноци.</p>
          <p>            5. Помош за  упатување на бањско и климатско лекување и одмор преку соработка со органите и  организациите и соработка со ПИОМ, Фондот за здравство и управите на бањите и  одморалиштата во кои помасовно престојуваат пензионерите. &nbsp;Вклучување во организација на бањско лекување  на пензионери со пониски пензии со финансирање од буџетот на Република  Македонија;</p>
          <p>            6. Одмор,  рекреација и културно забавен живот на пензионерите преку:<br />
            - Организирање  излети и екскурзии во регионот, државата и странство, водејќи сметка за соодветна  застапеност на ограноците, вклучување на пензионери со пониски примања. Со  посебна одлука на Извршниот одбор, Здружението може да учествува со финансирање  или кофинансирање &nbsp;на овие активности;<br />
            - Организирање  на традиционалната пензионерска вечер;<br />
            - Учество на  заедничка прослава на 8-ми Март и други меѓународни, државни, локални и  национални празници;<br />
            - Организирање  мултиетничка средба на пензионерите на Македонија, која традиционално се  одржува во Тетово;<br />
            - Подготовка и  учество на фолклорни и други културно-уметнички смотри и настапи на пензионери  со соодветна застапеност на изворниот фолклор и новосоздадени уметнички  вредности на етничките заедници од подрачјето. Активности за постепено  доопремување на учесниците на ревиите. </p>
          <p>            7. Во соработка  со органите на локалната самоуправа во сите шест општини во регионот, да се  разгледа можноста за отворање клубови на пензионери во седиштата на општините:  Боговиње, Брвеница, Желино, Јегуновце и Теарце. </p>
          <p>            8. Спортски  живот:<br />
            - Формирање и  подготовка на спортски екипи во разни спортски дисциплини, според услови и  критериуми на Правилникот за организирање и учество на регионални и републички  пензионерски спортски натпревари во организација на СЗПМ. <br />
            - Организирање  и учество на регионални и републички пензионерски игри и спортски  натпреварувања;<br />
            - Мерки и  активности во опремување на спортските&nbsp; екипи. </p>
          <p> 9. Активности  за продолжување на колективното солидарно осигурување на брачни другари на  пензионери кои до сега учествувале во создавањето солидарни средства на  Здружението. </p>
          <p> 10. Дом на  пензионери:<br />
            - Рационално искористување и грижа за просторот во Домот на пензионерите и  дворните површини; Инвестиционо одржување на Домот на пензионерите со сопствени  средства и донации од домашни и странски донатори -&nbsp; доградба и тековно  одржување. <br />
            - Мерки и активности  за разрешување на имотно - правните односи за&nbsp; земјиштето доделено со  правосилно решение од Општината Тетово;<br />
            - Преку  активности за порационално искористување на просторот во Домот, особено  сместувачките капацитети ќе се работи на создавање услови за воведување  економска цена на станарина;<br />
            - Грижа за  обезбедување нормални услови на времено сместените пензионери, оспособување на  постојните простории и редовно одржување на потребите за парно или друг вид  затоплување, осветление, вода и други комунални потреби. <br />
            - Да се  преиспита можноста за организирано снабдување со огревно дрво на  заинтересираните пензионери;</p>
          <p> 11. Доделување  еднократна помош на пензионери, согласно одлуката и критериумите на Извршниот  одбор;</p>
          <p> 12. Соодветна  финансиска поддршка на активностите во ограноците во рамки на финансискиот план  и можностите на Здружението во тековната година;</p>
          <p> 13. Мерки и  активности за подобрување на материјално-финансиската состојба преку  зголемување на обемот на приходи од камати, донации и други видови приходи,  како и поекономично работење со максимално штедење и намалување на трошоците за  тековна работа;</p>
          <p> 14. Здружението  воспоставува соработка со СЗПМ, други здруженија, сојузи и асоцијации во  земјата и странство;<br />
            - Воспоставува  потесна соработка со органите на локалната самоуправа во шесте општини од  регионот за остварување поголеми права на пензионерите и вклучување во  активностите на општините;<br />
            - Продолжување  на активноста за склучување на спогодби за соработка со локалните самоуправи од  регионот, а особено со општините Желино и Јегуновце со кои сеуште не е  потпишана и преземање активности за реализација на договорените содржини за  соработка;</p>
          <p> 15. Јавност во  работата на органите и телата на Здружението преку континуирана соработка со  информативните средства и преку непосредни контакти и писмени информации до  ограноците и членството во целина;</p>
          <p> 16. Органите и  телата на Здружението ќе се ангажираат и по други прашања кои ќе се наметнат во  текот на годината, а за кои ќе бидат заземени претходни ставови;</p>
          <p> 17. Постојаните  комисии и другите повремени комисии и работни тела ќе донесат посебни програми  конкретизирани на потребите и ускладени со годишната програма на ЗП Тетово.  &nbsp;</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="55%">&nbsp;</td>
    <td> Здружение на пензионери Тетово<br />
      Шабан  Азизи, претседател</td>
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
            <div class="modul_dno"><a href="../mak/lista.asp?kat=1">повеќе. . . </a></div>
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


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/vinica.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Виница</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../prilep/'"></div>--><div class="logo" onClick="window.location='../vinica/'">Здружение на пензионери <strong>Виница</strong></div></td>
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
            <p>Врз основа на чл.13 , став 1, точка  3 од Статутот на Здружението на старосни, семејни, инвалидско и др пензионери  на Општина Виница, Собранието на Здружението на седницата донесе </p>
            <p align="center"><strong> П Р О Г Р А М А<br />
                За работа на  Здружението на пензионери на општина Виница за 2023 година.</strong></p>
            <p>Со оваа програма ќе се реализираат  активностите од областа на пензионерското организирање, значењето од  извршувањето на активностите на здружението и соработката со останатите  здруженија членки на СЗПМ.<br />
                Средствата за реализација на  програмата се обезбедуваат согласно Статутот на здружението, а планирани со  финансискиот план на здружението. Времето е кратко за да можеме да извршиме  ребаланс на финансискиот план, донесен од претходното претседателство, и истиот  ќе го утврдиме откако ќе ја констатираме финансиската состојба на Здружението, после  примопредавањето и согледување на фактичката состојба.<br />
    <strong>Колку ќе успееме да ја реализираме  оваа програма, зависи пред се&rsquo; од состојбата на паричните средства, &nbsp;од побарувањата и обврските што ќе ги  наследиме од претходното претседателство </strong>.<br />
                Во реализацијата на оваа програма ќе  учествуваат сите комисии и работни тела на собранието на здружението на  пензионери на општина Виница.<br />
                Основните принципи врз основа на  кои се заснова оваа програма односно активноста на здружението на пензионери е  слободно искажување и давање на мислење за прашања од интерес на корисниците на  пензија, поведување на иницијативи, активно учество во градење и креирање на  начинот на работење на здружението. При спроведување на програмата да се имаат  во предвид принципите на одговорност, остварливост, инклузивност, оптимизација  како и поефикасно спроведување на задачите од оваа програма. За успешна  реализација на програмата може да се подготвуваат и оперативни програми.<br />
                Со оваа програма се предвидува  соработка со СЗПМ, ПИОМ, Локална самоуправа, Црвен крст, ИНИ, &nbsp;Здружение&nbsp;  златна доба и со други невладини организации и фондации.<br />
                Во тековната 2023 година, Здружението  на пензионери Виница, како непартиска, невладина, непрофитабилна организација, здружение  и мултиетничка асоцијација, самостојна во организирање и остварување на целите,  интересите и дејностите ќе се труди во границите на можностите да ги реализира  следните активности и задачи:<br />
                - Откако ќе се утврди фактичката  финансиска&nbsp; состојба во здружението со  средствата, ќе се отпочне со решавање на проблемот со издавање на ресторанот и  клубот на пензионери во Виница. По пат на јавен оглас , ќе побараме најповолни  понуди.<br />
                - Комисија ќе ги посети сите  клубови во ограноците за да ја согледа состојбата и потребите на истите.<br />
                - Средба со претседателите на  Ограноците, со покана до истите да соработуваат со Здружението на пензионерите,  во смисла на давање иницијативи, изнесување на проблеми, а се со цел  подобрување на животниот стандард&nbsp; на  пензионерите по месните организации.<br />
                - Ќе побараме средба со  Градоначалникот на Општина Виница, со изнесување на проблемите на пензионерите  со минимални пензии, проблеми од областа на инфраструктурата кои ги засегаат  пензионерите а се во надлежност на локалната самоуправа, а да земат учество и  пензионерите од нашето здружение. Тука ќе побараме вклученост на  Градоначалникот за решавање на сопственоста на зградата на Пензионерски дом.<br />
                - Следење и ангажирање за изградба  на пензионерски и старски домови и дневни центри за престој на пензионерите.  Оваа активност ќе се води преку СЗПМ&nbsp; и  локалната самоуправа.<br />
                Да се побара оваа Иницијатива да  биде подржана и од Општина Виница и Министерство за труд и социјална политика  на РМ и да се отпочне со реализирање во блиска иднина.<br />
                - Ќе побараме од ФОНДОТ ЗА ПИОМ,  нов список за состојба на број на пензионерите во здружението.<br />
                -пензионерите со ниски пензии до 11000,  ќе ги евидентираме по старосни групи, да ги имаме во евиденција за пружање  помош, со што ќе побараме истите да донесат чек од пензија.<br />
                - Средба со претставници на Црвен  крст за договарање активности од страна на лекари за предавања и совети за  пензионерите од областа на здравјето, за бесплатно мерење на крвен притисок и шеќер  во крвта. Исто така за руралните средини ќе побараме&nbsp; повремени посети на медицински лица.<br />
                - Средби со претставници на  здруженијата од регионот заради размена на искуства, договарање на заеднички  хуманитарни активности меѓу здруженијата и други невладини организации,  вклученост во програмите на здружението ИНИ.<br />
                - Во зависност од&nbsp; финансиската состојба, социјалната помош на  пензионерите&nbsp; болни, стари изнемоштени,  со ниски пензии, ќе биде во преден план, ќе бараме и донации во пакети со  храна, за да на истите малку барем им го олесниме животот. Ќе се залагаме да  може да користат банско лекување&nbsp; преку  исплата на патни трошоци и овозможување на отплата на рати за престојот во  бањите, со поднесен упат од матичен лекар.<br />
                - Во текот на месец април, активности  околу подготовките за настап&nbsp; на  музичката ревија на песни, музика и игри која се одржува во месец мај, а со цел  натамошно унапредување на овие културни манифестации. Соработката со ансамблот  КИТКА- Истибања, &nbsp;ќе продолжи , бидејќи  таму се вклучени ветераните и ќе се договараме како најдобро да имаме  соработка, бидејќи засега немаме посебна музичка група. Доколку има заинтересирани  и надарени пензионери, преку комисијата за културно забавен живот може да се  оформат пејачки и&nbsp; играорни &nbsp;групи.<br />
                - Спортско -рекреативните  активности треба да настојуваме на вклученост на пензионерите во сите спортски  дисциплини.<br />
                - Организирање&nbsp; пензионерски средби и други видови на  активности во насоки на здрав активен пензионерски живот.<br />
                - Вклучување на пензионерите во  зачувување на животната средина преку еколошки активности организирани од ЗП  Виница, здруженија на екологисти&nbsp; и  локалната самоуправа.<br />
                - На покани од Здруженија на  пензионери организирање на посета на манастирски комплекси со цел пензионерско  дружење со пензионери од разни краеви на државата<br />
                - Кавадарци -повод &nbsp;Св. Трифун -февруари<br />
                - Велес &ndash;Блакцето на баба -април<br />
                - Виница -Томина недела-април<br />
                - Македонска Каменица-Еленец-јуни<br />
                - Дојран-Еко Хепенинг -јуни<br />
                - Радовиш-Ораовица -јули<br />
                - Кочани-Св.Пантелеј-август<br />
                - Куманово -Пелинце -август<br />
                - Пробиштип-Лесново -септември<br />
                - Виница-Св. Спас -, 13 септември рамото  на манастирот. <br />
                - Прилеп- 11 Октомври-октомври<br />
                - Св. Николе -св.Никола-декември<br />
                Ќе се земе учество и на други  средби доколку има покани од други Здруженија.<br />
                - Организирање на еднодневни  екскурзии во земјата и странство<br />
                - Организирање и на одмори,  летувања по цени достапни за пензионерите со вклучени оброци и сместување,  секако да може да се плати на рати. <br />
                - Посета и честитање на  новогодишните и божиќните празници со новогодишни подароци на стари лица, кон  крајот на месец Декември 2023 год. и Јануари 2024 год.<br />
                - Традиционална прослава на Нова  година<br />
                - Одбележување на 8ми Март денот на  жената со пригодни настани и со посета на пензионерките во нивните&nbsp; домови&nbsp;  со подарување на цвеќе или други подароци за добро здравје на пензионерките.<br />
                - На сличен начин ќе се одвиваат  активностите за одбележување на христијанскиот празник Велигден<br />
                - Ден на пензионерите-ноември<br />
                - За одбележување на Светскиот ден  на старите лица, 1-ви Октомври ќе се организираат такмичење во шах, пикадо,  домино, ликовни работилници, изложба на рачни ракотворби и гастрономски  специјалитети и други,<br />
                - донација на храна и облека во  Црвениот Крст Виница<br />
                - По повод -&ndash; Денот на  ослободувањето на Виница,30-ти август, ќе се организира забава со учество на  повеќе активи на жени &ndash; пензионерки од Републиката.<br />
                - Клубот на жени-пензионерки треба  да проработи, да се определи просторија за клуб на жените во која ќе можат да  се дружат и забавуваат. Да се избере актив на жени ,кој ќе се залага за  активност и дружење на жените.<br />
                - Секцијата на жени во 2023год. ќе  се ангажира и на Планот на организирање на екскурзии низ Републиката и надвор  од неа, посета на други здруженија на пензионери по повод нивните прослави,  како и учество во спортските игри кои ги организира здружението, ќе се вклучува  и во културните случувања во општината со посета на театарски претстави  концерти и други културни манифестации.<br />
                - Ден на пензионерите 20-ти  Септември.<br />
                Во оваа програма набавката на дрва  за пензионерите ќе биде опфатена, доколку има услови, набавката на дрва ќе се  потрудиме да ја спроведеме за што ќе ги известиме пензионерите. Плаќањето на  дрва ќе го реализираме преку траен налог, во договор со банките , со што на  пензионерите ќе им олесниме да не мора секој месец да донесуваат пари во  Здружението, а со тоа и Здружението ќе нема трошоци за ангажирање на лице  -благајник. <br />
                Оваа Програма ќе биде од отворен  карактер за прашања кои ќе се наметнат со својата актуелност, значење и може да  се менува и дополнува во текот на годината.</p>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="55%"><p><strong>Април 2023 година<br />
                        Виница</strong></p></td>
                    <td><p><strong>ЗП Виница<br />
                    Павлинка Ангеловска</strong></p></td>
                </tr>
            </table>
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

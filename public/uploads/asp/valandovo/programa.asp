
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/valandovo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Валандово</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../valandovo/'">Здружение на пензионери <strong>Валандово</strong></div></td>
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
          <h3 align="center"><strong>П Р О Г Р А М А</strong><br />
            За работа на Здружението на пензионери&nbsp;  Валандово&nbsp; за 2016 година</h3>
          <p>Во согласност со  програмските цели на Сојузот на пензионерите на Македонија, Извршниот одбор на  ЗП Валандово, за тековната 2016 година, своите програмски задачи ке ги усогласи кон Статутот на  здружението и во насока на заштита и унапредување на поцелосна&nbsp; здравствена заштита, збогатување и  унапредување на културните, спортските, хуманитарните и други потреби на  пензионерите.<br />
Програмски&nbsp; цели;</p>
          <ol>
            <li>Соработка со СЗПМ,  добивање на информации, размена на мислења, запознавање со проблемите на  Здружението &nbsp;и взаемно надминување на одредени состојби</li>
            <li>Со одлуки на ИО на  ЗП, главен приоритет ќе биде дадено во остварувањето на социјално-хуманитарните  дела и задачи, при што ќе се опфати целокупното членство на ЗП Валандово, на  кои им е потребна соодветна парична, материјална или друг вид на солидарна  помош.</li>
            <li>Доколку од страна на  Сојузот се донесе Одлука за целосно воведување на социјална карта, ИО на ЗП Валандово,  активно ќе се вклучи во активностите околу обезбедувањето на социјална карта на  сите регистрирани членови на Здружението, во која ке се содржат податоци кои ќе  помогнат во согледување на потребите од разни облици на помош на пензионерите.</li>
            <li>Преземање на  соодветни активности и мерки за подобрување на животниот стандард на  пензионерите, особено на пензионери со ниски примања, со доделување на парична  помош, помош во хигиенски средства, огревни дрва и друг вид помош во зависност  од потребата.</li>
            <li>Спроведување на  мерките од социјална и здравствена заштита на пензионерите со цел подобра  снабденост со лекарства и укажување на лекарска помош. </li>
            <li>Донесување на посебна  програма за посета на болни и&nbsp; неподвижни  пензионери и укажување на помош во зависност од потребите. </li>
            <li>Ангажираност на  Активот на жени-пензионерки, во активности за подобра соработка со центрите за социјална работа, како и земање на  активно учеството во развојот на културните активности во Здружението на  пензионери.&nbsp;</li>
            <li>Превземање на  соодветни мерки и активности за активирање на ограноците на пензионерите од  сите населени места од општината преку формирање на&nbsp; пензионерски клубови и дневни&nbsp; центри, а целата оваа активност да се одвива  во соработка со локалната самоуправа. </li>
            <li>Во соработка со  Здравен&nbsp; дом Валандово, организирање на  трибини и работилници за ризичните болести во третото доба на животот на  пензионерите. Запознавање и превенција од болести.</li>
            <li>Превземање на активности и заедничка соработка на Здруженијата на  пензионери од регионот, со Локалната самоуправа на општина Валандово и  соседните општини околу&nbsp; актуелното  прашање за изградба на Пензионерски-старечки дом. Воедно ке се интензивира  соработката со Фондот на Пиом во општината во врска со остварување на правата  на пензионерите. &nbsp;<strong></strong></li>
            <li>Следење и земање учество на регионалните и сојузни спортски&nbsp; игри, кои ќе се одржат во согласност со  Одлуката на СЗПМ, со цел одржување на спортскиот дух и практикување на активно  и здраво стареење.&nbsp;</li>
            <li>Заради земање на  активно учество во регионалните натпревари на песни, музика и игри да се  формира пејачка и фолклорна група, кои ке треба да покажат поголема активност,  заради вклопување во претстојните активности.</li>
            <li>Соработка на  Здружението со Црвениот крст од општината, локалната самоуправа, социјалните  установи и други невладини организации, а се со цел помагање и подобрување на  условите на живот на пензионерите од општината</li>
            <li>Соработка со Фондот  на ПИОМ заради усогласување на евиденциите на &nbsp;&nbsp;членството, редовна уплата на членарината, редовна  и навремена исплата на посмртните трошоци на членовите.</li>
            <li>Информирање,  остварување на јавност и отчет во работата. Здружението преку свој дописник, ќе  земе активно учество за навремено информирање на СЗПМ за активностите на членовите,  а ќе оствари и јавност во запознавањето со тоа што весниците Пензионерски  видици и Пензионер плус, ке ги направи достапни до што поголем број на членови.</li>
            <li>Бидејќи оваа година  Сојузот на пензионерите на Македонија слави 70 години од формирањето, ЗП  Валандово ќе се вклучи во сите активности кои се планирани на регионално и&nbsp; Сојузно ниво.</li>
            <li>Ќе се превземат мерки  за поголема соработка со Градоначалникот и Советот на општината за заедничко  надминување на одредени проблеми&nbsp; на ниво  на општина&nbsp; во кои пензионерите ќе&nbsp; земат поактивно учество, се со цел за  подоинствен и поактивен пензионерски&nbsp;  живот.</li>
            <li>Ќе се направи програма за патување со цел да се искористат поволностите за бесплатен железнички и автобуски  сообраќај.</li>
            <li>Работата на  Собранието и ИО на ЗП Валандово ќе биде јавно презентирана пред нејзиното  членство.</li>
            <li>Инвестиционо и  тековно одржување на Пензионерскиот дом, со реконструкција и делумни поправки. </li>
            <li>Разгледување и  разрешување на актуелни проблеми кои ќе се појават во текот на годината.</li>
          </ol>
          <p>Програмата на ЗП Валандово е од отворен тип, така што  може да се надополнува во текот на цела година.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="55%"><p><strong>Изготвил:</strong><br />
      <strong>Горица&nbsp;  Михајлова </strong></p></td>
    <td><p><strong>Претседател</strong><strong> </strong><strong>на ИО на ЗП Валандово</strong><br />
      <strong>Кирил  Гошев</strong></p></td>
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

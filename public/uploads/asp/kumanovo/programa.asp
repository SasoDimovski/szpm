
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
            <strong> За работа на Здружението на пензионери “Куманово”-Куманово во 2016 година</strong></h3>
          <p> Во претстојната  2016 година, Здружението на пензионери &ldquo;Куманово&rdquo;-Куманово,  влегува  со богато искуство во работата на Здружението.  Токму тоа натрупано искуство,  ќе биде предизвик за влегување со поголеми амбиции  во остварувањето на целите и задачите на Здружението. Во таа насока,  агендата ќе  биде мотивирана и од одбележувањето на 70-годишнината од основањето,  како на СЗПМ,  воедно  и на Здружението на пензионерите од општините Куманово,  Липково  и Старо Нагоричане. Програмската  година  ќе биде значајна и по донесувањето на нов Статут на Здружението.  </p>
          <p>                      <strong> 1.  СОБРАНИЕ НА ЗДРУЖЕНИЕ</strong><br />
        Овој највисок  еминентен орган на Здружението, во 2016 година ќе ги регистрира следниве задачи:<br />
        1.До крајот на  февруари ќе одржи редовна седница, на која ќе бидат разгледани:<br />
       -донесување нов  Статут на Здружението  на пензионери &ldquo;Куманово&rdquo; - Куманово;<br />
       -усвојување годишни  сметки на приходите и расходите на Здружението и на Солидарниот фонд на Здружението  за 2015 година;<br />
        2.Втората седница на  Собранието ќе се одржи до крајот на декември 2016 година, на  која се планира да бидат усвоени финансиски планови на приходите  и расходите на Здружението и на Солидарниот фонд на Здружението за 2017 година и<br />
        3.По повод Денот на  пензионерите, 20 Септември и 70-годишнината од постоењето на пензионерската асоцијација  и на нашето Здружение,  ќе  се одржи свечена  седница на Собранието, со културно-уметничката програма на КУД &ldquo;Ѓоко Симоновски&rdquo;  на ЗПК.<br />
        Покрај  овие статутарни обврски,  на седницата на Собранието  ќе бидат разгледани и други актуелни прашања што ќе произлезат од потребите на пензионерите.</p>
          <p>                                   <strong> </strong><strong>2.</strong><strong> ИЗВРШЕН  ОДБОР </strong><br />
       Извршниот одбор, според  Статутот е првиот орган по своето значење избран од Собранието. Во неговите многубројни  обврски спаѓа подготовките на материјалите што се во надлежност на Собранието и  обратно,  се грижи за остварување на одлуките,  заклучоците  и ставовите што ги донесува Собранието.</p>
          <p> Вториот позначаен  пункт ќе биде натамошно проширување на мрежата на дневни центри за престој и организирано  користење на слободното време. Во таа насока се настојува вакви центри да се отворат и во  оние урбани и рурални населби каде што за тоа постојат услови,  во прв  ред на изнаоѓање на погоден  економичен простор.</p>
          <p> Извршниот одбор,  по позитивната  одлука што се планира да биде донесена од Собранието,  своето  внимание ќе го насочи во изградба на посебен нов објект за Центар за дневен престо  на пензионери во централниот  дел на Куманово. Според прифатената  Проектна програма,  центарот ќе има повеќенаменска употреба. Оваа идеја е во  почетна фаза и за неа треба да донесе одлука собранието на една од своите наредни  седници.</p>
          <p> Во соработка со  СЗПМ ќе иницира во 2016 година да се изврши ажурирање на застарените списоци на  пензионерите,  како на ниво на пензионерски здруженија,  така и на ниво на  ограноци на пензионери.  Во таа насока очекуваме да се задоволи нашето писмено обраќање до СЗПМ. Во областа  на здравствено-социјално хуманитарната ориентација,  посебно внимание ќе биде посветено  на парична помош на болни пензионери. За ова намена ќе  бидат планирани 1.150.000 денари, што ќе им се доделува на апликанти со комплетна  медицинска документација и според Правилникот за доделување еднократна неповратна парична  помош. Во соработка со Црвениот крст од Куманово, ќе продолжи реализирањето  на Проектот &ldquo;Мал чин-голема помош за стари лица&rdquo;. По пат  на интеракција,  Комисијата за здравство ќе остварува соработка со здравствените  организации заради следење на остварувањето на објектите: бесплатно  лекување на лица над 65 години, потоа &ldquo;Мој термин и &ldquo;Аптека  на тркала&rdquo;. Посебно внимание ќе биде посветено на актуелни заболувања,  зашто  ќе биде програмирано одржување предавање за едукација на пензионерите. Со Здружението  за дијабет од Куманово, ќе бидат организирани пре- давања за срцевите заболувања  и спроведување акции за мерење притисок и ниво на шеќер во крвта.</p>
          <p> Културно-уметничкото  творештво беше и во 2016 година ќе биде застапена на програмата на нашето Здружение. Креатор на активности-  те ќе биде Комисијата за културно-уметнички самодејности.  Хорската, фолклорната, музичката и пеачката секција  на изворна  народна музика ќе бидат фокусирани  на подготовка на нови игри и песни. Тие ќе бидат застапени на фестивали во Македонија, како и со  два настапи на меѓународна сцена. Комисијата ќе ги организира традиционалните концерти во Куманово  и поетско-музичките вечери на поети. Драмската работилница  ќе ги репризира сценските дела: &ldquo;Сомнително лице&rdquo;,  &ldquo;Ленче Кумановче&rdquo;,  &ldquo;Шути и  рогати&rdquo; и Кабаретската претстава.</p>
          <p> Новина на програмата  ќе биде и одржувањето на фестивал на пеачки групи, како од Македонија, така и од странство. Во областа  на информативната дејност останува практиката на издавање на два броја (31 и 32) &ldquo;Пензионерски  информатор&rdquo; на Македонски и Албански јазик. За збогатување  на интерактивното информирање,  ќе се настои да се зголеми тиражот на &ldquo;Пензионер плус&rdquo;,  &ldquo;Пензионерски  видици&rdquo; во Нова Македонија и да се изврши претплата на весникот &ldquo;Коха&rdquo;  на Албански јазик. Се планира да се збогатат нашите постигања на електронските  и печатените медиуми, помасовно користење на порталите и пласирање соопштенија и  плакати во клубовите. </p>
          <p> Активот на пензионерки  се профилира  во значаен фактор на реализација  на програмските задачи на Здружението. Во таа насока ќе  продолжи и во 2016 година. На редовните собири на членките,  секој прв  вторник во месецот,  ќе поставува на разгледување низа актуелни теми, првенствено  со актуелни теми од здравството,  одржување предавања за здравствена едукација. Во октомври  е планирана да се одржи Меѓународната музичко- забавна средба на активи на пензионерки.</p>
          <p> Покрај функцијата  на информирање за тековни активности на Здружението,  ќе ги мотивира  членки за учество на секциите Друштвото, на културно-уметнички и спортски настани, на  државни празници и јубилеј ни прослави и сл. Меѓу другото,  ќе организира  учество на музичко-забавни средби,  што ги одржуваат други пензионерски активи во Македонија.</p>
          <p> Здружението посебно  внимание ќе обрне  на физичката култура и  спортот. Во таа насока,  ќе бидат организирани  спортски натпревари и игри на ниво на Здружение; ќе биде  домаќин на 21-та Регионално пензионерско спортско натпреварување,  а најдобро  пласираните од овој натпревар,  Здружението ќе го претставуваат на Републичката пензионерска  спортска олимпијада. Во функција  на успешен  настап на спортските натпревари,  редовно ќе бидат одржувани турнири во сите спортски дисциплини,   потоа натпревари со пензионери од збратимени градови,  двомеч  со Прилеп и сл. Ќе  бидат одржани пролетен и есенски крос и рекреативни  движења во при рода. Во остварувања на програмските задачи, органите на Здружението,  во своето  делување, ќе остварува соработка со СЗПМ,  локалните самоуправи  од општините Куманово,  Липково и Старо Нагоричане,  со Црвениот  крст,  Здружението на дијабет,  како и  со низа правни и физички лица и со невладиниот сектор. Во областа  на културата  и физичката  култура ќе одржува контакти<br />
            со пензионерски здруженија од Македонија и некои соседни држави. За секој  настап ќе поднесува програма и информација на Извршниот одбор.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="55%"><p><strong>Декември 2015 година</strong></p>    </td>
    <td><p>&nbsp;</p></td>
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

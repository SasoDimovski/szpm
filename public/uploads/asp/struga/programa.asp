
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/struga.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Струга</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../struga/'"></div>--><div class="logo" onClick="window.location='../struga/'">Здружение на пензионери <strong>Струга</strong><br />
Shoqata e Pensionist&#235;ve <strong>Strug&#235;</strong></div></td>
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
          <h2 align="center">ПРОГРАМА ЗА РАБОТА НА ЗП  СТРУГА ЗА 2020 ГОДИНА</h2>
          <p>Здружението на пензионери  Струга тековнава 2020 год. во остварување на статутарните активности, својата  програма ќе ја фокусира  со тенденција подобрување на животниот  стандард  на пензионерите. <br />
      За  таа цел неминовно е ставање во функција  и на другите акти кои се  предвидени од највисокиот орган на управување &ndash; Собранието. <br />
     Ако  изминатата 2019 год. се карактеризира со видно постигнати резултати, неминовно  е ретроспективно  анализирање, кое ќе  допринесе  согледување на можностите на кои во идната недвосмислено  ќе треба да се пристапи, со кои се стекнува сигурност  за  поквалитетно живеење применувајќи ги насоките и формите како што се: спортско  рекреативни и културно забавни , еднодневни и повеќедневни излети и вклучувајќи  ги и хуманитарните  активности. <br />
     Законските  права на пензионерите секогаш ќе бидат во центарот на обврските  во  насока  навремено исплаќање на пензиите и пропратени наголемени во  зависност од можностите предвидени со законските одредби. <br />
     Здравствената  заштита и здравството  секогаш ќе бидат адут за квалитетот на  живеење  на пензионерите со посебен акцент неопходна соработка со  установите специјализирани за таква дејност, како и Црвениот Крст, со кого е  поставена солидна  соработка, која во иднина треба да продолжи. <br />
     Приоритет  на ова година ќе биде и насочена кон згрижување на стари и изнемоштени лица,  која грижа останува како неодложна обврска на здружението, а помогната од  Сојузот на Пензионери на Северна Македонија, а ќе се реализира  со  добивањето на еден од старачките домови  изградени со  средства наменети за згрижување и нега  на ова категорија  пензионери.  Се надеваме дека и сите  други здруженија  на пензионери од  поширокиот регион, како што се Дебар, Лабуништа, Вевчани, Охрид, Битола,  Кичево, Македонски Брод и Демир Хисар, а немаат ваков вид објекти за  згрижување,  ќе се приклучат кон ова наша иницијатива, која ќе биде  презентирана кон надлежните институции на системот Министерството за труд и  социјална политика, Министерството за правда и локалните самоуправи, со надеж  дека пензионерите ќе станат менаџери на објектите изградени со средства на  нивните фондови. <br />
     За подобрување  на квалитетот на живеење на пензионерите од нашево здружение директна улога  имаат комисиите на Извршниот одбор: Комисијата за спорт  и  рекреација, Комисијата за културно забавен живот,  помогнати од  докажаните активисти и активот на пензионерки констатираме,  дека  во целост ќе ја оправдаат довербата. Нивните програми перманентно ќе бидат  прифаќани од Собранието, Извршниот одбор и Претседателот. Нивните предлози за  еднодневни и повеќедневни екскурзии и излети  ќе се реализираат  согласно можностите  на здружението, а нема да изостанат и поканите  за заедничко дружење на другите здруженија, како форма на соработка и  зближување на пензионерите. <br />
     Регионалните  и републичките пензионерски  спортски натпревари, на кои во  изминатите  години здружението покажа видни резултати и ова година ќе  се представат видно подготвени кон подобри резултати. <br />
     Ревиите  на музика, песни и игри, било да се на регионален или републички план, ќе бидат  предизвик со цел зачувување културното богатство, со кое се гордее нашето  поднебје. <br />
     Не можеме  а да не ги спомнеме ограноците на нашето здружение кои претставувааат база од  која и во иднина треба да се респектира и уште поактивно да се вклучи во сите  сфери на културно  - идеолошки и спортски активности. <br />
     Главниот  промотор на културно-забавниот, идеолошкиот и спортскиот живот, Активот на  пензионерките, кој во изминатите години достоинствено на сите полиња на  делување го претставуваше здружението, ќе продолжи со несмалено темпо со  афирмацијата и оправда довербата која ја поседува. <br />
     Програмскиот  дел треба да биде насочен кон соработката со взаемна почит  со  другите здруженија на Северна Македонија, посебно со збратименото  здружение  на пензионери од Крушево, со кое треба братски да  се  негуваат и почитуваат  зацртаните определби во сите  свери. <br />
     Неминовно  потребно е да ја спомнеме соработката со Сојузот на Пензионери на Северна  Македонија, кој во изминатиот период  на 2019 год. покажа доследна  конструктивност  и почит кон нашето здружение, спремен во секоја  прилика да помогне каде што е неопходно во разрешување во одредени моменти. <br />
     Контактите  со локалната самоуправа треба и понатака да се практикуваат, како форма со која  здружението се афирмира, афирмирајќи ја истовремено и локалната самоуправа. <br />
     За  квалитетно и навремено реализирање на програмава грижа паѓа на раководството,  стручната служба и книговодството кои во согласност со постоечките законски  прописи, Статутот, одлуките на Собранието и Извршниот одбор редовно и на време  ќе ги извршуваат  тековните обврски. Навремено следење на  финансиската состојба како и навремено изготвување на финансиските извештаи. <br />
     Програмава  дава можност во колку презентирањето се укаже можност за подобрување со  конструктивни предлози истава да се надополни. <br />
     Како  заклучок 20 Септември е денот на пензионерите а воедно и патронски празник на  нашето Здружение на пензионери Струга. </p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50%"> </td>
    <td><p align="right">ЗП Струга<br />
      Претседател  на Собрание<br />
      Мирко Трпоски    </td>
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

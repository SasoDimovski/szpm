
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/cair.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Чаир</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../cair/'"></div>--><div class="logo" onClick="window.location='../cair/'">Здружение на пензионери <strong>Чаир</strong></div></td>
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
          
          <h2 align="center"><strong>П  Р О Г Р А М А</strong><br />
              <strong>за работа на Здружението на општина Чаир  за 2023 година</strong></h2>
          <p>Целите зацртани во  Статутот на Здружението ќе се остваруваат со организиорање на културни,  хуманитарни, здравствени, рекреативни и информативни активности.Особено  внимание ќе се посвети на хуманитарната дејност, како и давање на сестрана  помош на пензионерите за остварување на правата за здравствена и социјална  заштита,како и подобрување на материјалната состојба.Транспарентноста во  работата на органите и телата на Здружението ќе се остварува во континуитет  преку разните форми на информирање.Соработката со СЗПМ,СЗП на град Скопје,  ФПИОМ и општината ќе продолжи, по можност за уште подобри резултати, особено со  општината.<br />
              Привлекувањето на  што поголем број на пензионери за сите активности останува обврска на сите  членови на органите и телата на Здружението.Содржините во Програмата ќе бидат  нотирани како условите за работа да се нормални, како на здравствен, така и на  економско-општествен план.<br />
              Активностите ќе се  одвиваат како што е наведено во понатамошниот текст на Програмата, и тоа:</p>
          <p> 1.Собранието ќе  заседава најмалку два пати годишно,а по потреба и повеќе</p>
          <p> 2. Извршниот одбор  ќе заседава по потреба и ќе ги разгледува сите прашања значајни за  Здружението.Навремено ќе носи одлуки по секое прашање актуелно за пензионерите  и органите,за унапредување на работата на Здружението.<br />
              Ќе ги организира и  спроведе изборите за мандатниот период&nbsp;  2023-2027 год.</p>
          <p> 3.Надзорниот одбор  ќе се состанува по потреба и редовно ќе го следи материјалното и финансиско  работење на Здружението.</p>
          <p> 4.Хуманитарните  активности како што се :<br />
              - доделување  еднократна парична помош на 125 пензионери, најзагрозена категорија чии примања  не надминуваат 14.000,00 денари за еден пензионер и 22.000,00 денари за двајца  пензионери, односно брачен пар ;<br />
              - пензионери со  нарушена здравствена состојба од тешки болести,лежење во болница,скапи  лекарства и сл.<br />
              - бањско лекување  или санаториум за лекување на тешки заболувања,редовно ќе бидат опфатени со  парична помош.<br />
              За остварување на  горе наведените активности треба да се измени Одлуката за доделување еднократна  парична помош.<br />
              На полето на  хуманоста ќе се продлабочи соработката со Црвениот крст и други асоцијации и  организации.</p>
          <p> 5. Активностите на  спортско-рекреативен план ќе бидат следните:<br />
              - доекипирање со  натпреварувачи на екипите и поединечните спортски дисциплини, како би  учествувале на Регионалните и Републичките спортски<br />
              натпревари на  пензионерите во повеќе дисциплини; <br />
              - навремено  започнување со тренинзите во сите дисциплини;<br />
              - учество на 27-те  Регионални и Републички спортски натпревари на пензионерите;<br />
              - учество на 13-ет  Ноемврискиот шаховски турнир во организација на СЗП на град Скопје;<br />
              - учество на други  натпревари организирани од други Здруженија на пензионери,доколку бидеме поканети;<br />
              - организирање на  селективни натпревари во рамките на Здружението за избирање на најдобри  натпреварувачи заради подигнување на квалитетот и<br />
              - организирање на  традиционалниот Октомвриски шаховски турнир со поканување на пет здруженија од  градот Скопје.</p>
          <p> 6. Организирањето  на културно-забавниот живот на пензионерите ќе се одвива преку следните  содржини:<br />
              - пополнување на  пејачките групи(македонска и албанска) со проверени гласовни можности ;<br />
              -&nbsp; подготовка (вежбање) на пејачките состави ;<br />
              - формирање пејачка  група од помал формат,мешан етнички состав за настапување таму каде се бара  помал број на пејачи;<br />
              - учество на 21-та  ревија на песни, музика и игри на IV регион;<br />
              - учество на 13-та  Републичка ревија на песни, музика и игри(доколку бидеме избрани) и учество на  други манифестации организирани од СЗПМ и други организации;<br />
              - присуство на  муилтиетничката средба на пензионерите во Тетово;<br />
              - изнаоѓање  музичко-инструментален состав за пратење на пејачките состави;<br />
              - посета на театарски  претстави и<br />
              - читање на литературни  творби од наши и надворешни поети.</p>
          <p> 7. Рекреативниот  живот ќе се подржи со организирање на четири екскурзии.Две редовни еднодневни  екскурзии во нашата држава,една еднодневна во странство,во некоја од соседните  држави и една еднодневна наградна екскурзија со спортистите и пејачките  состави.Секоја екскурзија ќе биде покриена со доктор по општа медицина.<br />
              Превозот ќе се  обави со туристичката агенција&bdquo;Бисер Пром&ldquo;, а ќе ги користиме и поволностите од  градот Скопје,доколку и понатаму се одобри поволноста на бесплатен автобуски  превоз, тоа ќе биде посебна четврта екскурзија.</p>
          <p> 8. Здравството,  здравствената и социјалната&nbsp; заштита пред  се ќе бидат покриени,актуелизирани и решавани со ангажирање на Комисијата за  здравство.За системските прашања од областа на здравствената и социјалната  заштита покренати од органите на СЗПМ ќе даваме целосна подршка.<br />
              Од страна на  Комисијата ќе има ангажираност по следните прашања:<br />
              - мерење на крвен  притисок;<br />
              - мерење на шеќер  во крвта<br />
              - организирање  предавања од областа на медицината за рано откривање на симптомите за болести  карактеристични за стари лица и начинот на превенирање.<br />
              - разгледување на  барањата од пензионерите со предлог за доделување на еднократна парична помош  во 2023 година;<br />
              - повремено  разгледување на барања од пензионери за парична помош по основ на разни потешки  заболувања и бањско лекување;<br />
              - по потреба  посета на болни пензионери по домовите и давање совети за терапијата и развојот  на болеста.</p>
          <p> 9. Статутарната  комисија ќе се состанува по потреба и ќе ги разгледува прашањата од нејзина  надлежност.</p>
          <p> 10. Активот на  пензионерки вниманието ќе го насочи кон негово мултиетничко омасовување, како  би можеле да ги реализираат наведените активности,како следат:<br />
              - учество на дел  од пензионерките во подготовките на хорот и настап на Регионалната ревија на  песни, музика и игри;<br />
              - учество во  подготовкитре на спортските активности и настап на Регионалните и Републичките  натпревари на пензионерите;<br />
              - одржување на  работилници и едукативни предавања со учество на &nbsp;компетентни лица за здравјето и животот на  лица од третото доба;<br />
              - посета на  изнемоштени и болни пензионери во домовите&bdquo;Лика Чопова&ldquo; , &nbsp;&nbsp;&nbsp;&nbsp;&bdquo;Идила&ldquo; и пошироко;<br />
              - соработка со  Црвениот крст и невладината организација &bdquo;Доминиум&ldquo;;<br />
              - хуманитарна  помош во облека и храна за пензионери на кои им е потребно;<br />
              - соработка со  други Активи од градот и пошироко;<br />
              - организирање  викенди, еднодневни екскурзии, посета на културни манифест. и др.</p>
          <p> 11. Формирање на  четврти огранок на Здружението со пензионерите од населбата Чаир, така што ќе  се олесни работата на пензионерите во оваа населба.</p>
          <p> 12. Решавање на  просторните потреби на ограноците,со отварање на уште три клуба на  пензионери.Ова прашање ќе се решава во соработка со општината Чаир.</p>
          <p> 13. Сите  организациони и административни работи ќе се обавуваат навремено и  квалитетно.За овие активности одговорни се Претседателот и Секретарот на  Здружението со давање помош од членовите на органите и телата.<br />
              Посебен акцент ќе  дадат на изборите по ограноци.<br />
              Активностите по  ограноци ќе бидат реализирани од Претседателот и Секретарот на огранокот.</p>
          <p> 14. Пописот на  материјално-техничките средства ќе се изврши на време, во законски рок од  привремена комисија за попис ,формирана од Извршен одбор.</p>
          <p> 15. Неодминлива  програмска активност-информирањето на пензионерите.<br />
              Истото ќе се  остварува преку разни форми на информирање и тоа:преку соопштенија,навремено  доставување на весниците&bdquo;Пензионер плус&ldquo; и &bdquo;Коха&ldquo; и<br />
              непосредни  контакти се со цел да имаме транспарентно работење.Во реализацијата на оваа  активност значајно место имаат раководствата на ограноците.<br />
              Остварување на  оваа програма бара ангажирање на сите членови на органите и телата на  Здружението.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="45%">Декември, 2022 год.<br />
            Скопје</td>
        <td width="55%" align="right">Собрание на  ЗП на општина Чаир<br />
            П  р е т с е д а т е л, <br />
            Рауф Хамиди
            <p>  </p></td>
        </tr>
</table>
          <p> </p>
          <p>                                    </p>
          <p>                                                                                     </p>
          <p>                                                            </p>
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

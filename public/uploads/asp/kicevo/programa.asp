
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/kicevo.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->

<title>Здружение на пензионери Кичево</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../kicevo/'">Здружение на пензионери <strong>Кичево</strong></div></td>
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
            <p>Врз основа на член 13, став&nbsp; и точка 5,&nbsp;  од&nbsp; Статутот на Здружението на  пензионерите Кичево, на седницата на Собранието одржана на ден 14.03.2023  година, усвои програма за работа на Здружението за тековната 2023 година:</p>
          <h2 align="center">П Р О Г Р А М А</h2>
          <p> За работа на органите и телата и  комисиите при Здружението на пензионерите &ndash; Кичево за тековната 2023 година
              Годишната програма за работа на ЗП  Кичево се носи секоја година, а е заснована врз целите и задачите на  Здружението според член 6 од Статутот. Програмата за 2023 година ги опфаќа и  активностите кои се започнати во претходната 2022 година и порано.</p>
          <p>1. Здружението на пензионерите &ndash;Кичево ќе се  залага за заштита на правата на пензионерите, корисници на пензија и тоа:<br />
              - &nbsp;редовна исплата на пензиите и на сите  корисници на пензии, како и нивно усогласување според Законот и животните  трошоци,<br />
              - ќе се залага за  подобрување на животниот стандард на пензионерите и&nbsp;&nbsp; нивната социјална и здравствена заштита,<br />
              - ЗП Кичево ќе  соработува со фондот за пензиско и инвалидско осигурување и фондот за  здравствена заштита, и активно ќе соработува со Општинската организација на  црвениот крст во Кичево и Републиката,<br />
              - ЗП Кичево ќе се  залага за ослободување на пензионерите од плаќање на партиципација кај  матичните лекари и при болничкото лекување,<br />
              - ЗП Кичево ќе се  залага за проширување на позитивната листа на лекови,<br />
              - ЗП Кичево ќе се  залага за сместување на пензионерите во домот на пензионери Кичево, со пензионери  со пониски примања и без решено станбено прашање,<br />
              - ЗП Кичево ќе  соработува со Локалната самоуправа која со закон е задолжена да го ,помага  Здружението на пензионерите, според меморандумот од ЗЕЛС.<br />
              Соработката со  локалната самоуправа е неминовна бидејќи нашето здружение делува на  територијален принцип со 11 ограноци на целата општина.<br />
              -Ќе соработува со  Домот на културата &ldquo;Кочо Рацин&ldquo;, со АРМ Кичево, со детската градинка &ldquo;Олга  Мицеска&ldquo; и со други установи.</p>
          <p> 2. Во тековната  2023 година ЗП Кичево ќе соработува со Сојузот на пензионерите на Македонија во  сите полиња, а посебно&nbsp;&nbsp; Здружението ќе Соработува  со&nbsp; здруженијата од Западниот  регион,&nbsp;&nbsp;&nbsp;&nbsp; заеднички настапи на  регионалните средби, консултации, меѓусебно помагање и дружење.</p>
          <p> 3.Во поглед на  културното живеење на пензионерите, ЗП- Кичево во текот на 2023 година својата  активност ќе ја насочи кој спроведување на регионалните и републичките&nbsp; средби посветени на песната, играта и орото  кои редовно се одржуваат секоја година. Сите активности се во ингеренција на  комисијата за култура која се труди пензионерите да ги вклучи помасовно во сите  активности.<br />
              Паралелно со  активностите од областа на културата, пензионерите при ЗП Кичево преку  комисијата за спорт и рекреација се насочени во сите спортски дисциплини  предвидени за пензионерите. Навистина кај пензионерите живее паролата &ldquo;здрав  дух, здраво тело&ldquo;<br />
              Здружението  постепено за сите спортски дисциплини се опремува со сопствени реквизити, а за  одбележување е тоа што во текот нам 2022 година во пензионерскиот дом подготви  терен како сопствено стрелиште каде стрелците можат секогаш да спортуваат.<br />
              Основна  преокупација на ЗП &ndash;Кичево секогаш биле екскурзиите како во Републиката така и  надвор од неа. Затоа во програмата на 2023 година се зацртани повеќе  пензионерски екскурзии и тоа:</p>
            <ul>
                <li>Кичево-Врање во соседна Република Србија  со посета на манастирскиот комплекс &ldquo;Свети Прохор Пчински&ldquo;</li>
                <li>Патување во соседна Албанија&nbsp; и посета на градот Елбасан,</li>
                <li>Кичево &ndash;Отешево &ndash;Ресен,</li>
                <li>Кичево- Свети Наум и Охрид,</li>
                <li>Кичево Струмица со посета на водопадите и  црквата 15&nbsp; тивериополски маченици и  други дестинации.</li>
            </ul>
            <p>Здружението во  својата програма за 2023 година има зацртано и нови инвестициони вложувања и  тоа;</p>
            <ul>
                <li>Реновирање на 6 купатила со сопствена  канализациона мрежа како би станарите во домот имаат сопствени тоалети во  секоја соба.</li>
                <li>Во програмата со одлука на Извршниот одбор  во 2023 година е планирано издавање на&nbsp; фото  монографија посветена на пензионерските активности за време на мандатот, 2019  -2023 година.</li>
            </ul>
            <p>Програмата за 2023 година предвидува поголеми  активности за работа на пензионерскиот клуб како пензионерски катче за  разонода, читање на штампа и спортување,<br />
                Во програмата на ЗП Кичево за 2023 година активот на  жени&nbsp; е зацртан со бројни активности за  заштита на пензионерите, на стари и изнемоштени лица, учество во одбележување  на историски места и настани, масовно вклучување на пензионерките ви културните  и спортските активности, Активно и заедничко дружење на пензионерките со други  здруженија, прослава на меѓународниот ден на жената 8 март и 11 септември денот  на ослободувањето на градот Кичево, дочек на Нова година и Стара нова година,  ќе помага на пензионерите со пониски примања, ќе одржува здравствени дебати и  предавања и други <br />
                активности &nbsp;кои  ќе ги&nbsp; координира со координативното тело  при Сојузот на пензионерите на Македонија.<br />
                ЗП Кичево како основни клетки во своето програмско  дејствување ги има месните ограноци на пензионерите од каде ги црпи и своите активности  за пензионерите.<br />
                Оваа  програма за тековната 2023 година постојано е отворена за секој нов предлог во  интерес на подобриот живот на пензионерите.</p>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="43%">&nbsp;</td>
                    <td width="57%"><p>Здружение на пензионери Кичево<br />
                        Претседател на Собраниие,<br />
                        Мехмед Мехмеди,<br />
                        Претседател на Извршен одбор,<br />
                        Душан Ристоски</p></td>
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

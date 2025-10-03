
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/bitola.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Битола</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../bitola/'"></div><div class="logo" onClick="window.location='../bitola/'">Здружение на пензионери <strong>Битола</strong></div></td>
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
          <p align="center"><strong>Програма за работа <br />
            на Здружението на пензионери Битола за 2019 година</strong></p>
          <p>Програмските активности на ЗП Битола ги  сочинуваат активностите на органите и телата на здружението и тоа: Собранието,  Извршниот Одбор, Надзорниот Одбор и Комисиите формирани од Собранието и  Извршниот Одбор. Воедно тука спаѓаат активностите на стручната служба на  Здружението.</p>
          <ol type="I" start="1">
            <li>Собранието во текот на 2019 год. ќе ги има  следните активности: </li>
          </ol>
          <p>1. Усвојување  на годишниот извештај за работа на Здружението во 2018 год. на предлог на  Извршниот Одбор.                                                 Рок   Март  2019 год.</p>
          <p>2.Усвојување на  завршната сметка на Здружението за 2018 год. на предлог на Извршниот Одбор.    <br />
            Рок  Јануари&ndash;Март 2019 год.</p>
          <p>3.Усвојување на  извештајот од Надзорниот Одбор за 2018 год.<br />
            Рок Јануари&ndash;Март  2019 год.</p>
          <p>4.Усвојување на  Планот за работа на ИО за 2019 год.<br />
            Рок Декември  2019 год.</p>
          <p>5.Усвојување на  програмата за работа на Здружението за 2019 год. на предлог на Извршниот Одбор                                                                    Рок Декември  2019 год.</p>
          <p>6.Усвојување на  финансискиот план на Здружението за 2019 год. на предлог на Извршниот Одбор                                                                    Рок  Декември 2019 год.</p>
          <ol type="I" start="2">
            <li>Извршниот Одбор на својата седница во текот на  2019 год. ќе донесува, согласно Статутот на Здружението, одлуки, решенија и др.  акти кои произлегуваат од тековното работење на Здружението, а ќе ги спроведува  и одлуките и заклучоците донесени од Собранието на здружението.</li>
          </ol>
          <p>Во 2019 год. Извршниот Одбор ќе донесува  одлуки за тековно и инвестиционо одржување на објектите &ndash; основни средства на  Здружението во согласност со средствата предвидени во финансовиот план, односно  во согласност со финансиските можности на здружението и потребата од одржување  на основните средства.</p>
          <p> Извршниот Одбор во 2019 год. ќе остварува  соработка со Општините Битола, Новаци и Могила, со Црвениот Крст на Македонија-О.О.Битола,  Домот за народно здравје и со одделни невладини организации со цел помагање на  стари и изнемоштени лица &ndash; пензионери за обезбедување на потребните животни  намирници, обезбедување на лекови, и други потреби на овие лица се со цел за  овозможување на услови за нивниот подобар живот.</p>
          <p>            Во 2019 год. ќе се продолжи со соработката со  досега збратимените здруженија надвор од Републиката, а ќе се воспоставува  соработка и со нови здруженија надвор од Републиката. Истовремено ќе продолжи  соработката со здруженијата на пензионери од Републиката.</p>
          <p> Во 2019 год. ќе се продолжи соработката со  превозниците во градскиот и приградскиот превоз, за користење на попуст од  страна на пензионерите во висина од 50% од цените на билетите.<br />
            Во 2019 год. ќе се овозможува обезбедување на  огревно дрво за потребите на пензионерите преку шумските претпријатија, како и  некои прехранбени  производи.</p>
          <p> Ќе се продолжи со соработката со некоја од  Битолските лаборатории за испитување  на шеќер, холестерол и триглицериди на  пензионерите, како и со грижата за болните и изнемоштени пензионери сместени во  старските домови со преземање  на активности за подобрување на условите, ќе се  донираат и средства, лекови и други нивни потреби.</p>
          <ol type="I" start="3">
            <li>Надзорниот одбор во текот на 2019 год.  перманентно ќе го следи работењето на собранието и извршниот одбор со присуство  на нивните седници, а по потреба ќе одржува и седници за разгледување на  одделни прашања од материјално-финансиското работење на здружението, како и  спроведување на одредбите од Статутот на Здружението.</li>
            <li>Комисиите формирани од страна на Собранието и Извршниот  одбор во текот на 2019 год. ќе се ангажираат, секоја во својата област на  дејствување, за реализирање на статутарните и програмските активности на  здружението.</li>
          </ol>
          <p>-Комисијата за  статут и правни прашања ќе ги следи прописите од областа на пензиското и  здравственото осигурување, како и примената на Статутот и другите акти на  Здружението. Исто така по потреба ќе предлага измени и дополнување на Статутот,  донесување на одделни акти на Здружението или нивно изменување или дополнување.<br />
            - Комисијата за  здравство  и здравствена помош ќе решава по барањата на пензионерите за  еднократна парична помош за одредени болести предвидени во правилникот за  здравство  и здравствена заштита на корисниците  на пензија, а по потреба ќе  предлага и измена и дополненија на правилникот во смисла на предвидување на  нови болести, за кои ќе се одобрува парична помош.<br />
            -Комисијата за  стандард и снабдување ќе ги разгледува пристигнатите понуди за набавка на стоки  и услуги за потребите на здружението, и изведување на определени работи. Под  стоки и услуги се подразбира набавка на основни средства и инвентар како и  снабдување со огревни дрва и прехранбени производи  за пензионерите.<br />
            -Комисијата за  стан и станбени прашања ќе ги разгледува и одлучува по поднесените барања за  обезбедување на станови под наем од страна на пензионери со ниски пензии и  нерешено станбено прашање.<br />
            -Комисијата за  забава и култура ќе организира културно забавни манифестации на пензионерите на  општинско, регионално ниво и на ниво на РМ во рамките на средствата предвидени  за таа работа со финансовиот план на здружението и програмата за работа на  комисијата.<br />
            - Комисијата за  спорт и спортски активности ќе се ангажира за формирање на секции во одделни  области на спортот и ќе работи на подготовка на спортистите- пензионери за  учество на општински регионални и републички спортски игри во организација на  СЗПМ и за постигнување на што подобри резултати.<br />
            -Комисијата за  клубови ќе работи на формирање и организација на месни клубови во урбаните и  руралните заедници каде пензионерите ќе се собираат и организирано ќе го  поминуваат слободното време во играње на шах, карти и други игри.<br />
            -Комисијата за соработка со други здруженија  од РМ и надвор од земјата во 2019 год. ќе се ангажира за воспоставување на  односи на ЗП Битола со други здруженија надвор од РМ и ќе организира соработка  со тие здруженија во смисла на воспоставување на трајна соработка со истите.  Исто така оваа комисија ќе работи на воспоставување на соработка со  здруженијата на пензионери од РМ со кои досегашниот период ЗП Битола нема  воспоставено односи на соработка.<br />
-Комисијата за  доделување на помош на  членови на здружението  и хуманитарни акции ќе организира, во соработка со Општините, Црвениот Крст на Македонија О.О.Битола и  невладините организации, хуманитарни акции и доделување на помош на пензионери  членови на ЗП Битола кои имаат потреба од таква помош.<br />
            -Комисијата за  попис, еднаш годишно, на крајот од годината ќе врши попис на основните  средства, ситниот инвентар, паричните средства, побарувањата и обврските, а по  потреба истото ќе го прави и во текот на годината. </p>
          <ol type="I" start="5">
            <li>Секцијата на жени во 2019 год. ќе се ангажира  за ажурирање на списоците на жени-членки на ЗП Битола по Месни ограноци со цел  за зголемување на членки на Секцијата на жени, заради што поголема масовност во  нејзината работа. </li>
          </ol>
          <p>Секцијата на жени ќе одржува редовни состаноци  во одредени периоди во текот на годината согласно програмата, ќе одржува  заеднички средби со одделни комисии на здружението во области што ја тангираат  жената пензионерка, ќе остварува соработка со локалната самоуправа, граѓански  организации и одделни институции во државата чија мисија е поврзана со женската  популација &ndash; пензионерки. Секцијата на жени во текот на 2019 год. ќе организира  и одржување на одделни трибини како што се човековите права, физичката  активност и здравјето на жените пензионерки (Април 2019 год.), исхраната и  здравјето на жените од третото доба (Мај 2019 год.), безбедноста во домот и  сообраќајот (Јуни 2019 год.), а ќе одржи и работилница за обука на  пензионерките за подигање на пензија од банките, преку банкомат и шалтер, како  и обука за пријавување во УЈП за поднесување на даночна годишна пријава.</p>
          <p>            Активноста на секцијата на жени во 2019 год.  ќе биде насочена кон реализирање на хуманитарни акции по разни поводи како што  се:</p>
          <ul>
            <li>Посета и честитање на новогодишните  и божиќните  празници со новогодишни подароци во Домот за стари лица Сју Рајдер Битола,  геријатриска болница &bdquo;13-ти Декември&rdquo;, Домот за деца  без родители и Училишниот центар за деца со оштетен слух говор и глас, кон крајот  на месец Декември 2018 год. и Јануари 2019 год.</li>
            <li>Традиционална прослава на старата нова година </li>
            <li>Одбележување на 8ми Март денот на жената со  пригодни настани и со посета на пензионерските домови во Битола со подарување  на цвеќе или други подароци за добро здравје на пензионерките</li>
            <li>На сличен начин ќе се одвиваат активностите за  одбележување на христијанскиот празник Велигден </li>
            <li>За одбележување на Светскиот ден на старите  лица, 1-ви Октомври ќе се организираат такмичење во шах, пикадо, домино,  ликовни работилници, изложба на рачни ракотворби и гастрономски специјалитети и  други, а ќе се посетат и Домот за деца без родители и Центарот  за деца со посебни  потреби,</li>
            <li>По повод светскиот ден на гладтта &ndash; 16-ти, Октомври  ќе се организира донација на храна и облека во Црвениот Крст Битола</li>
            <li>По повод 4-ти Ноември &ndash; Денот на  ослободувањето на Битола ќе се организира традиционаланата забава со учество на  повеќе активи на жени &ndash; пензионерки од Републиката.</li>
          </ul>
          <p>Секцијата на жени во 2019 год. ќе се ангажира  и на Планот на организирање на екскурзии низ Републиката и надвор од неа,  посета на други здруженија на пензионери по повод нивните прослави, како и  учество во спортските игри кои ги организира здружението, ќе се вклучува и во  културните случувања во општината со посета на театарски претстави концерти и  други културни манифестации. </p>
          <ol type="I" start="6">
            <li>Пеачката група Сирма Војвода во 2019 год. ќе  ги има следните активности: </li>
          </ol>
          <p>- Приредба во Домот за стари лица СЈу Рајдер  Битола за верски и државни празници, недела на старите лица &ndash; четвртата седмица  на месец Ноември и денот на пензионерите,  20-ти Септември.<br />
            -Приредба во Јавната Установа геронтолошки  завод 13 ти Ноември, 9-ти Декември 2019 год.<br />
            -Учество на манифестацијата &ldquo;пензионерите  пеат&rdquo; во Битола и во одделни градови во Републиката <br />
            -Учество на регионалната  и републичката  ревија на песни, музика и игри <br />
            - Пеење на Широк Сокак по повод денот на песната  21 Јуни <br />
            -Учество  на фестивалот &ldquo;Илинденски денови&rdquo; Битола и на дефилето <br />
            -Учество  на манифестацијата &ldquo;10 Дена Крушевска република&rdquo; &ndash;  Етно град Крушево <br />
            -Пеење  во чаршијата на манифестацијата &ldquo;Локум фест&rdquo;  Битола во месец Јули <br />
            -Учество  на манифестацијата &ldquo;Прилепско лето&rdquo; &ndash; Прилеп и други <br />
            -Концерт  по повод Денот на ослободувањето на Битола &ldquo;4 ти Ноември&rdquo;  заедно со други учесници како                 КУД  &ldquo;Пензионер&rdquo;  Прилеп и др.<br />
            -Учество  на Фестивалот &ldquo;Охридски староградски средби&rdquo; во Охрид.<br />
            -Учество  на прославата на патрониот празник на Битола &ldquo;Св. Нектариј Битолски&rdquo;  на 18-ти Декември.<br />
            -Новогодишна  другарска вечер на пеачката група &ldquo;Сирма Војвода&rdquo;.<br />
            -Ден  на пензионерите 20-ти Септември.<br />
            -Недела  на старите лица - четвртата недела од месец Ноември.</p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="45%">26.12.2018 година<br />
                Битола </td>
              <td><p>Здружение на пензионери  Битола<br />
                Претседател на Собрание<br />
                Белевски Крсте              </p></td>
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

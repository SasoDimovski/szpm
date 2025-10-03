
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/strumica.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Струмица</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../strumica/'"></div>--><div class="logo" onClick="window.location='../strumica/'">Здружение на пензионери <strong>Струмица</strong></div></td>
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
        <td width="120" align="center"><a href="dokumenti.asp">Документи</a></td>
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
          <p>Согласно член 15 став 2 и 3 а во врска со член 26 од Статутот на  здружението на пензионери-Струмица, Извршниот одбор на здружението на седницата  одржана на ден 26.12.2014 година донесе:          </p>
          <h2 align="center"><strong>ПРОГРАМА</strong><br />
            За работа на Извршниот одбор на Здружението на пензионери Струмица
за 2015 година
</h2>
          <p>Во  подготвувањето на Програмата за работа на Извршниот одбор на Здружението на  пензионери Струмица во основа се земени и програмите на комисиите и другите  помошни тела на здружението. Здружението на пензионери Струмица и Извршниот  одбор и во 2015 година ќе ја продолжат успежната работа, како невладина,  непартиска и мултиетничка асоцијација, самостојно во организирање на своите  цели и задачи во сооднос на Програмата на Сојузот на здруженијата на  пензионерите на Македонија. Во 2015 година посебен приоритет ќе се даде на  развојот на социјално хуманитарните цели и задачи како што беше во 2014 година.  Во 2015 година значајно место ќе се даде на огранокот како основна единица каде  треба да се одвива пензионерското организирање. Во 2015 година здружението ќе  се посвети и на волонтерството кое треба да биде поприсутно во здружението како  граѓанска асоцијација. Програмските цели и задачи Здружението на пензионери &ndash;  Струмица ќе ги остварува преку:</p>
          <ol>
            <li>
              <p>Во текот на јануари &ndash; февруари 2015 година ќе се одржат редовни избори во  ограноците за избор на раководства во огранокот и предлагање на членови во  Собранието на здружението, а во март ќе се одржат избори во здружението.</p>
            </li>
            <li>
              <p>Во текот на февруари &ndash; март 2015 година ќе се разгледа извештајот за работа на  Извршниот одбор на Здружението на пензионери Струмица за 2015 година, Завршната  сметка за остварените приходи и расходи за 2014 година.</p>
            </li>
            <li>
              <p>Во текот на 2015 година ќе се следат остварувањата на уставните и законските  права на пензионерите, посебно остварувањето на уставните определби на државата  за создавање на подобра социјална состојба, во која ќе расте нивото на  материјалната и друга основа на пензионерите, не само преку минимално  зголемување на пензијата по основ на усогласување, туку ќе се настојува да се  подобри односот на просечната пензија спрема просечната плата со вонредно  зголемување на пензиите. Понатаму ќе се настојува да се задржи редовноста при  исплатата на пензиите до 07. Во месецот за претходниот месец во 2015 година. </p>
            </li>
            <li>
              <p>Преку нашите членови во Сојузното собрание ќе се настојува  за зголемување на потребите од здравствени  услуги, обезбедување лекови во болниците кога нашите пензионери се на болничко  лекување, бидејќи во текот на 2014 година имаше недостаток на лекарства за  повеќе болести, па пензионерите сами си ги купуваа од аптеките, а беа  стационирани во болничка установа. Здружението на пензионери &ndash; Струмица и  понатаму ќе го подржува донесувањето на законот за социјална пензија за постари  лица од 65 години, а не се пензионери и се без средства за живот.</p>
            </li>
            <li>
              <p>Во 2015 година се очекува да биде донесен Законот за пензионерско организирање,  иако беше предвиден и во програмата за 2014 година, но тој не беше донесен. Ако  се донесе во текот на 2015 година ќе се наметне потребата за усогласување на  постоечкиот Статут на здружението на пензионери.</p>
            </li>
            <li>
              <p> Давање сугестии и предлози во расправа за актуелни прашања со невладини  организации и други облици на организирање како што беше и во 2014 година.</p>
            </li>
            <li>
              <p>Во 2015 година ќе се настојува лекари специјалисти да држат предавања пред  нашите пензионери како да го одржуваат своето здравје. Предавањата ќе се  одржуваат во клубовите за дневен престој на пензионерите, по предлог на  раководствата на ограноците на пензионерите во урбаните заедници.</p>
            </li>
            <li>
              <p>Во 2015 година ќе се продолжи понатамошната координација на ограноците на  пензионерите по урбаните заедници. Работата на ограноците е најблиска и  непосредна до пулсирањето на животот на пензионерите.</p>
            </li>
            <li>
              <p> Во 2015 година ќе продолжат активностите за изградба на домот за стари лица во  соработка со локалната самоуправа, отворање на клубови за дневен престој на  пензионери во урбаните заедници каде е можно и исполнување на услови пропишани  за клуб. Реновирање на кровната конструкција на Домот на пензионери ( целиот  комплекс) со обновување на фасадниот дел, на улица Ленонова бр. 97. Во 2014  година во програмата за работа беше предвидено да се реновира кровната  конструкција обновување на фасадата на домот на пензионери во Струмица, но  поради бирократскиот однос на државните органи не бевме во состојба овој дел од  програмата да го реализираме иако здружението имаше обезбедено финансиски  средства, па затоа и во оваа програма ја планираме оваа активност.</p>
            </li>
            <li>
              <p>Во 2015 година како и претходната ќе се залагаме за решавање на имотно правните  работи, односно решавање на сопственоста на објектите на здружението на пензионери  Струмица.</p>
            </li>
            <li>
              <p>Врз основа на потпишани спогодби за меѓусебна соработка со општините Струмица,  Босилово и Василево и здружението на пензионери Струмица и во 2015 година  продолжува соработката со локалните самоуправи. Со законот за локална самоуправа  општината има обврска за помага и да се грижи за пензионерите од својата  општина. За реализација на своите цели и задачи Здружението на пензионери треба  да предлага и склучување на спогодби за соработка што ќе биде од заеднички  интерес.</p>
            </li>
            <li>
              <p> Имајќи ја во предвид 2014 година значајната соработка меѓу здруженијата на  пензионери во Републиката како место за активности и рекреација на пензионерите  и други прашања кои значат подобрување на квалитетот на животот на  пензионерите, ќе продолжиме и во 2015 година да ги практикуваме тие активности.</p>
            </li>
            <li>
              <p>Здружението на пензионери во 2015 година во соработка со Црвениот крст и други  невладини асоцијации на локално ниво да се развијат активности во повеќе  сегменти и тоа:<br />
                -  Вклучување на пензионери во разни проекти за помош на стари лица, посета на  истите, како и социјална и солидарна помош на пензионерите<br />
                -  Во остварувањето на пензионерското организирање во 2015 година ќе се поддржува  и развива соработка и со други граѓански асоцијации.</p>
            </li>
            <li>
              <p>Во текот на 2015 година на Комисијата за општествен стандард социјални и  здравствени работи при ИО на здружението на пензионери, Извршниот одбор ќе се  доделуваат еднократни парични помоши на пензионери со мали пензии и болни  пензионери членови на здружението, врз основа на одлуката што е донесена  претходно и извршеното дополнување од органите и телата на здружението на  пензионери Струмица. Комисијата во 2014 година како година на солидарност и  покрај доделувањето на еднократни помошти ќе се ангажира и со други активности  за посета на стари лица, различни тематски состаноци за актуелни болести,  совети за семејно насилство, соработка со Центарот за социјални грижи, и тоа во  соработка со Црвениот крст.<br />
                Комисијата  за општествен стандард социјални и здравствени работи заедно со службата во здружението  на пензионери ќе имаат значајна улога за воведување на пензионерска социјална  карта.</p>
            </li>
            <li>
              <p>Комисијата за културно забавен живот ќе организира посети на манастирот Св.  Јован Бигорски, Охрид и Вевчани, езеро Матка, Крушево, Врач, може да се  организираат и други екскурзии по избор на пензионерите низ Македонија.<br />
                Надвор  од Македонија по избор на пензионерите посета на Бугарија, односно Рожденски и  Рилски манастир, летување во Грција во месец септември.<br />
                За  активностите на Комисијата за културно забавен живот кои произлегуваат од  Програмата на комисијата и Извршниот одбор се предвидени финансиски средства во  Финансискиот план за 2015 година 180.000,00 денари.</p>
            </li>
            <li>
              <p>Продолжување на соработката со пензионерите од Софија, Врач и други градови од  Република Бугарија.</p>
            </li>
            <li>
              <p> Во текот на септември ќе се извршат припреми за одбележување на 69.годишнината  од Пензионерското организирање во Република Македонија.</p>
            </li>
            <li>
              <p>Во 2015 година ќе се продолжи со информирање на членовите на здружението преку  печатот и регионалните телевизии во Струмица за остварувањата во јавност и  отчет за работата во текот на програмската година.</p>
            </li>
          </ol>
          <p> Оваа  Програма ќе биде од отворен карактер за прашања кои ќе се наметнат со своето  значење и актуелност во текот на годината.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50%"> </td>
    <td><p><strong>Претседател на Извршниот одбор на ЗП Струмица </strong><br />
        <strong>                                                                        Данче Даскаловска</strong></p></td>
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

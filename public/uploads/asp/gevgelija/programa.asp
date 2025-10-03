
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/gevgelija.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->

<title>Здружение на пензионери Гевгелија</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../gevgelija/'">Здружение на пензионери <strong>Гевгелија</strong></div></td>
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
          <h2 align="center"><strong>Програма за работата на ЗП Гевгелија
за 2020 година
</strong></h2>
          <p> Со општиот дел на Предлог-Програмата  се утврдува предметот, начинот и Условите за работа на Здружението на пензионери во текот на 2020година</p>
          <p> Здружението на пензионери на Општина  Гевгелија како неполитичка и невладина организација  и во текот на 2020година ќе ја продолжи активноста  за </p>
          <p>Задоволување и подобрување на потребите на секој пензионер, член на  Здружението, без оглед на негова националност,  религија, политичка определеност или неопределеност.</p>
          <p> Како основа на изготвување и реализација на Предлог - Програмата преставуваат позитивните  прописи содржани во Законот за здруженијата и фондации (Сл.весник  на РМ бр.52/2010год), Статутот на СЗПМ И Статутот на Здружението на пензионери на  општина Гевгелија, како највисок акт со кој се утврдени целите и задачите на ЗП  на општина Гевгелија          </p>
          <p> Во 2020 година на значајно место  ќе се даде на ОГРАНОЦИТЕ како основна организациона единица каде се одвива пензионерското организирање.          </p>
          <p> Во 2020 година Здружението на  пензионери Гевгелија ќе се посвети и на ВОЛОНТЕРСТВОТО кое треба да биде поприсутно  во пензионерските здруженија како граѓански асоцијации и Активот на жените пензионерки.          </p>
          <p align="center"><strong>1. ЦЕЛИ И ЗАДАЧИ </strong>:          </p>
          <p> -Остварување на уставните и законските права  на корисниците на пензија </p>
          <p> -Да се следат и проучуваат остварувањата  на уставните и законските права</p>
          <p>на пензионерите, на  локално и републичко ниво, со цел одобрување на социјалната </p>
          <p>состојба и животниот  стандард на пензионерите;</p>
          <p> -Со иницијативи до СЗПМ И ФПИОМ да се настојува подобрување на соодносот на просечните пензии према просечните плати за  редовна исплата на пензиите. -          </p>
          <p>- Со иницијативи до СЗПМ И ФПИОМ да се настојува  зголемување на најниските пензии :лични , семејни и пензиите на земјоделците; </p>
          <p> -Поддршка на иницијативата за донесување  на Закон за државна социјална пензија на  лица постари од 65 години а кои се останати без основни средства за живеење;</p>
          <p> -Редовна соработка со ФПИОМ и надлежните  комисии во состав со СЗПМ</p>
          <p>За усогласување на  актите со СЗПМ со Законот за пензионерско организирање, како и користење на средствата на солидарниот  фонд во кој со еднаков износ од пензиите партиципираат сите пензионери.</p>
          <p> - Усогласување на актите на Здружението на  пензионери на општина Гевгелија со СЗПМ со Законот за пензионерско организирање,  како и статутите , со донесување на Законот  за пензионерско организирање. </p>
          <p> -Соработка со СЗПМ во напорите за целосно или делумно укинување на  партиципацијата за лекување на лица постари од 65 години;</p>
          <p> - Продолжување на активностите за воведување  на Пензионерска социјална карта кој е многу важен документ за согледување на потребите  за помош на пензионерите за социјално хуманитарни  цели кои би биле потпомогнати и од</p>
          <p>Од меѓународни асоцијации  и од Светската здравствена организација.</p>
          <p> - Непосредна интерна активност помеѓу здруженијата  и СЗПМ И зголемено меѓусебно информирање  И остварување на потесна соработка.</p>
          <p> -Соработка со центарот за социјална работа  Гевгелија, невладиниот сектор, фондации како и локална самоуправа за аплицирање  со проекти за обезбедување средства за опремување на домови за стари лица без семејна  грижа, со</p>
          <p>24 часовна нега, дневно или ноќно користење на таквите капацитети:</p>
          <p> -Соработка со ЈЗУ Гевгелија и ФЗУ Гевгелија во спроведувањето на одлуката на Владата на Р.Македонија  за бесплатно користење на бањските капацитети за пензионерите, со изготвување на  Приоритетна листа според здравствените потреби на пензионерите или ако тоа право веќе го користеле две години</p>
          <p> -Редовно инвестиционо одржување на постоечките објекти, </p>
          <p> -Активот на пензионерки да бидат редовно вклучени  во работата на Здружението во сите работни  состаноци како помошно тело на Извршниот  одбор </p>
          <p>Да се постигне поголема  интерактивност помеѓу Здруженијата на пензионери и СЗПМ .</p>
          <p>Исто така Активот  на пензионерки се планира со своите активности  во здравствената и социјалната политика да  помогне со својата улога во воведување на Пензионерската социјална карта.</p>
          <p> -Поголема соработка на локално ниво со локалната  власт бидејќи согласно Законот за локалната самоуправа, општината е во обврска да  помага и да се грижи за пензионерите од својата општина. Во 2013година ваква соработка  покажа многу добра соработка и резултати  во отварање на Клубови на пензионери по населените  места.</p>
          <p> - Во 2016година ќе продолжат активностите  на Комисијата здравство И социјална политика заедно со Комисијата за станбени прашања. Комисија  изготви Правилник за добивање и користење на пензионерски станови и ќе се  почитува и применува Правилникот, како и  нивна реконструкција и адаптација, како и следење на актите во кои се регулирани условите  за сместување во пензионерските домови во кои треба да живеат исклучиво корисници  на пензија. </p>
          <p> - Во 2020година ќе продолжи информирањето  на членовите и на пошироката јавност преку печатот, радиото, ТВ Нова, весникот Пензионер плус, Пензионерски видици Нова  Македонија и друго.</p>
          <p> - Одбележување на годишнини од формирање  на Сојузот на пензионери со свечености, хуманитарни  акции други активности.</p>
          <p> - Залагање и приоритет во утврдување на  податоците за стаж и плата да се даде на осигурениците кои се 2-3 години пред пензионирање  и ова прашање да биде покренато пред управниот одбор  на фондот. </p>
          <p> - Волонтерство  во сегашни услови на работење на Здружението на пензионери</p>
          <p> - Продолжување на активности за Пензионерската  социјална карта</p>
          <p> - Поквалитетна здравствена заштита на корисниците  на пензија.</p>
          <p> - Огранокот како организациона единица на прво  место, И секаде каде се отворени </p>
          <p>Клубови на пензионери  активноста на огранокот таму ќе си ги остварува сите свои потреби.</p>
          <p> - Во 2020година ќе се поддржува отварање на  пензионерски клуб во Моин .</p>
          <p>што е потребна поголема  соработка со локалната власт од што ќе зависи и успешното работење на огранокот.</p>
          <p> - Следење  и ангажирање за изградба на пензионерски и старски домови и дневни центри  за престој на пензионерите. Оваа активност ќе се води преку СЗПМ И локалната самоуправа.</p>
          <p> -Меѓународна соработка со пензионерски  здруженија од соседните земји и размена на  искуства со земјите членки на ЕУ.          </p>
          <p align="center"><strong>2. АКТИВНОСТИ</strong></p>
          <p> <strong>КОМИСИЈА  ЗА СОЦИЈАЛНА ГРИЖА И СОЛИДАРЕН ФОНД</strong>          </p>
          <p>-Организирање и обезбедување  на помош на пензионери со минимални пензии како акција  што веќе се практикува за Божикните празници;</p>
          <p>-Доделување на еднократна  парична помош на пензионери во случај на лична или болест  во семејството но не повисока од 10 000.-денари, почитувајќи го Правилникот за доделување  на помошти. </p>
          <p>-Донирање на средства како донација за денот на гладта, денот на лица  со посебни потреби како и новогодишни поклони за истите;</p>
          <p>-Соработка со Црвен  крст и други хуманитарни организации кои  се од интерес на пензионерите  </p>
          <p> <strong>КОМИСИЈА ЗА СТАНБЕН И ДЕЛОВЕН ПРОСТОР</strong></p>
           -Продолжување на активностите околу утврдување  сопственоста на имотот на Здружението на  пензионери;
          <p> -Отварање на клубови по населените места  во општината</p>
          <p> -Активности со Општина Гевгелија во согласност со потпишаниот меморандум за меѓусебна  соработка за користење на општински простории  за клубови како и средства за обнова  на фасада на пензионерскиот дом на Ул.М.Тито 137 Гевгелија</p>
          <p> -Редовна  посета на становите како и грижа за нивно  одржување</p>
          <p> -Организирање на други активности од оваа област према потребите</p>
          <p> -Спроведува постапка за доделување на пензионерски  станови согласно Правилникот за доделување на станови при ЗП Гевгелија и законската  регулатива.</p>
          <p><strong> -Комисијата  за станбени прашања исто така предлага да  се дополни Програмата за работа за 2020година и со веќе започнатата Иницијатива  за изградба на Дом за стари лица , активност  преку СЗПМ за згрижување на пензионери и истата да биде што побрзо ажурирана.</strong></p>
          <p><strong>Да се побара  оваа Иницијатива да биде подржана  и од Општина Гевгелија и</strong> <strong>Министерство за труд и социјална политика на РМ и да  се отпочне со реализира 2020година. </strong>          </p>
          <p> <strong>КОМИСИЈА ЗА КУЛТУРА И СПОРТ</strong>          </p>
          <p> -Организирање на културно забавен живот</p>
          <p> -Учество на Републички , Регионални и локални манифестации, Пензионерите Пеат, , вкупно 4/четири/ целосно финансирани од ЗП Гевгелија.</p>
          <p> -Учество на Републички , Регионални и локални спортски  игри целосно финансирани од ЗП и донации</p>
          <p> -Посета на културни споменици, цркви, манастири и други знаменитости од кои едно патување ќе  биде финансирано со 50% од ЗП за патните  трошоци. </p>
          <p> -Организирање на други посети на културни  и верски места каде што само координацијата ќе биде на терет на ЗП , додека превозот  и храната на терет на пензионерите; </p>
          <p> -Одбележување на Верски празници, Државни  како и други манифестации од интерсес на Општината и населените места;</p>
          <p> -При учество во сите горе наведени активности  секогаш ќе бидат </p>
          <p>придружувани од двајца  членови од Извршниот одбор на ЗП наизменично.</p>
          <p> -  Иницирање на Здружението на пензионери да се зајакне информирањето на пензионерите преку :весници,  билтени , соработка со телевизија ТВ Нова  како и воведување на интернет  поврзување што налагаат и законските прописи за сите даночни обврзници.          </p>
          <p> <strong>КОМИСИЈА ЗА СТАТУТАРНИ ПРАШАЊА</strong>          </p>
          <p> -Бидејќи во 2016 година не се заврши  со постапката за измени, дополнување и Усогласување на Статутот на ЗП Гевгелија  да се продолжи во 2020 во нај краток можен рок.          </p>
          <p>Оваа Програма ќе биде  од отворен карактер за прашања кои ќе се наметнат со својата актуелност значење и може да се менува и дополнува во текот  на годината</p>
          <p>Во текот на седница  на ИО и Собрание на ЗП Гевгелија.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="45%">23.12.2019   година          </td>
    <td>Здружение на пензионери на  Општина Гевгелија</td>
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


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/gjorce_petrov.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Вевчани</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../gjorce_petrov/'"></div><div class="logo" onClick="window.location='../gjorce_petrov/'">Здружение на пензионери <strong>Ѓорче Петров</strong></div></td>
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
          <p align="center"><strong>ПРОГРАМА<br />
          </strong><strong>За работа на органите и  телата на</strong><br />
            <strong>Здружението на пензионери  Ѓорче Петров-Скопје</strong><br />
            <strong>за 2023 година</strong></p>
<p>Раководејќи се од  основните цели и задачи во 2023 година, активностите&nbsp; ќе се насочат кон остварување на определбите  што се&nbsp; утврдени со оваа Програма како и  правата и обврските што произлегуваат од Статутот и Законите.<br />
Од витално значење  за нашите членови се поквалитетната здравствена,&nbsp; правна и социјална заштита како и културните  и рекреативните активности&nbsp; кои&nbsp; континуирано се во нашето организирање.<br />
Имајќи во предвид  дека се&rsquo; уште меѓу нас е присутен вирусот Ковид -19 изразен преку новите  подсоеви, а како најзагрозена категорија се пензионерите, будно ќе ги следиме  препораките на СЗО и ќе превземаме мерки и активности кои ќе ги препорача  Министерството&nbsp; за Здравство. Се со&nbsp; цел заштита на здравјето на нашите членови.<br />
&nbsp;Овие цели и задачи ќе бидат приоритетни во  Програмата за работа во 2023 година. Согласно  целите и задачите утврдени во Статутот во&nbsp;  Програмата за работа за 2023 година се предвидуваат следните активности.</p>
          <p><strong>1. Превземање на активности во соработка со СЗПМ.</strong><br />
            - Ќе бараме со  соработка со СЗПМ да се врати пензионерскиот дом во&nbsp; сопственост на&nbsp; Здружението-Ѓорче Петров.<br />
            - Преку комисијата  за здравство во СЗПМ ќе бараме да се поведе иницијатива до Владата ,за  бесплатно упатување на пензионери со ниски пензии на банско и климатско  лекување и викенд одмори преку Фондот на ПИОМ.<br />
            - Како најзначајна  обврска на Здружението ќе биде да побара од СЗПМ&nbsp; преземање на активности за усогласување и  покачување на најниските пензии.</p>
          <p><strong>2. Здравствена-социјална заштита на пензионерите.</strong><br />
  &nbsp;Комисијата за здравство и социјална заштита ќе  ги превзема следниве активности:<br />
            - Во координација со  одборите во разграноците континуирано ќе врши посета во домашни услови на болни  и изнемоштени пензионери.<br />
            - Активно вклучување  во акцијата организирана од страна на Црвениот Крст по повод денот Недела за  грижа на стари и изнемоштени лица.<br />
            - Ќе се посетат  пензионерите сместени во Геријатриска болница 13-ти Ноември и Мајка Тереза.<br />
            - Организирање на  предавања од областа на здравствената заштита од страна на компетентни  здравствени работници.<br />
            - Во соработка со  Црвениот крст ќе иницираме акции за мерење на притисок и шеќер во крвта на наши  пензионери.<br />
            - Ќе настојуваме да  се доделува еднократна&nbsp; парична помош во  износ од 1000 денари на што поголем број&nbsp;  на пензионери со ниски пензиски примања.<br />
            - Да продолжи  праксата со склучување договори со банско климатски установи со повластено  користење на банско климатско лекување за пензионери членови на ЗП-Ѓ.Петров<br />
            -&nbsp; Ќе се обезбеди бесплатно Банско лекување на  20- тина пензионери со ниски пензии на трошок на здружението.<br />
            - Пензионерите кои  боледуваат од тешки заболувања&nbsp; финансиски  ќе се помогнат.<br />
            Со овие мерки  здружението ќе помага на најранливата категорија пензионери со ниски примања.</p>
          <p><strong>3.Донесување нормативни акти и нивно регулирање</strong> <br />
            - Со измените&nbsp; и дополнување на Статутот на ЗП Ѓорче Петров  ќе се извршат измени и дополнувања на сите правилници на ЗП-Ѓ.Петров во рок од  6-месеци..<br />
            - Ќе се донесат и правилник  за &nbsp;работа на клубовите во разграноците.</p>
          <p><strong>4.Правна заштита </strong> <br />
            - Извршниот одбор ќе  формира комисија составена од Правни лица кои ќе водат грижа за нашите членови, со тоа што бесплатно ќе им даваат правна помош и ќе  ги упатуваат до соодветната институција, со цел полесно и побрзо да го остварат  своето право.</p>
          <p><strong>5. Законско водење на Материјално финансиското и&nbsp; Книговодственото работење.</strong><br />
            Во&nbsp; 2023 година ќе бидат разгледувани и&nbsp; донесени следните акти:<br />
  &nbsp;&nbsp; &nbsp;&nbsp;- Извештај за работа на органите и телата на  ЗП-Ѓ.Петров за 2022 година.<br />
  &nbsp;&nbsp; &nbsp;&nbsp;- Финансиски извештај за 2022 година.<strong></strong><br />
  &nbsp;&nbsp;&nbsp;&nbsp; -Завршна сметка за 2022 година;<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Финансики План за 2024 година;<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Повремени извештаи за остварување на  приходите и расходите ;<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - По потреба изготвување на Ребаланс за Финансискиот  план ;<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Извештај на Надзорниот одбор;<br />
  &nbsp;&nbsp;&nbsp; - Извештај на пописна комисија ;<br />
  <strong>&nbsp; </strong><br />
  <strong>6.  Спроведување на избори во органите и телата на Здружението.</strong><br />
  <strong>7. Спортски активности</strong><br />
            - Извршниот одбор да  донесе Одлука за учество и настап на регионалните 27-тите пензионерски спортски  игри (можно е да сме домаќини).<br />
            - Разграноците да  формираат спортски екипи,екипно и поединечно по спортски дисциплини кои  меѓусебно ќе се такмичат, а најдобрите поединци и  екипи ќе го претставуваат здружението на Регионалните спортски натпревари.<br />
            - Ќе се набават сите  потребни реквизити за одржување на припреми и такмичење на екипите.<br />
            - Ќе се изврши&nbsp; подготовка на спортските екипи и поединци по  спортски дисциплини , за настап на РЕГИОНАЛНИТЕ ИГРИ.<br />
            -Здружението ќе  земе&nbsp; учество на натпревари и турнири што  ги организира локалната самоуправа и други организации.</p>
          <p>&nbsp;<strong>8.  Рекреација</strong><br />
  &nbsp;- Организирање на еднодневни и повеќе дневни  излети за посета на културно историски знаменитости во државата и надвор од  неа;<br />
  &nbsp;- Организирање дружење со пензионери од други  Здруженија ;<br />
            - &nbsp;Учество на заеднички манифестации и  излети&nbsp; организирани од СЗПМ, Град Скопје, Локалната самоуправа и други здруженија во државата и странство.</p>
          <p>&nbsp;<strong>9</strong>. <strong>Културно забавен живот</strong><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Од страна на Извршниот одбор ќе биде  донесена Одлука за учество и настап на Ревијата&nbsp;  Игра, Песна&nbsp; и Музика во организација на СЗПМ.<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Од страна на ИО да се донесе одлука за  ангажирање на стручни и компетентни лица-кореограф кои ќе ги подготвуваат  нашите учесници за настап на сите културни манифестации како што се настапот на  Илинденски денови во Битола, Учество  на фестивалот Пеце Атанасовски во с.Долнени-Прилеп.<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Организирање на традиционална  пензионерска вечер по повод Нова Година<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Настап на манифестации што ги организира  локалната самоуправа и други организации;<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Посета на театарски и кино претстави ,  музеи и галерии;<br />
  &nbsp;&nbsp;&nbsp;&nbsp; - Формирање на други секции за кои што ќе  има заинтересирани пензионери&nbsp; (драмска,  рецитаторска , ликовна и други).&nbsp;&nbsp; <br />
  &nbsp;&nbsp;&nbsp; <br />
  <strong>10.&nbsp; Соработка </strong> <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Со СЗПМ, СЗП на град Скопје и други  ЗП; <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Збратимување со ЗП, од Градот,  Републиката и соседни држави<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Посебна соработка со локалната  самоуправа и други невладини организации.<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Соработка со организацијата на  Црвен крст <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
  <strong>11.&nbsp; Информирање,</strong><strong> </strong><strong>отчетност и транспарентност  во работењето </strong> <br />
            - Работата на  органите и телата на ЗП е јавна и транспарентна <br />
            Траспаретност, информирањето и достапноста на информациите од  работата на Здружението на пензионери Ѓорче Петров до целото членство  ,соработниците и поддржувачите на активностите се од суштинско значење за  одржување висок степен на препознатливост на Здружението.<br />
            - Во таа насока  здружението ќе се залага за:<br />
            - Зајакнување на  капацитетот за работа на полето на информирање.<br />
            - Следење на  современите трендови за соодветна промоција на активностите .<br />
            - Навремена  подготовка, споделување и дистрибуција  на информации за планирани и реализирани активности на Здружението до членовите  преку Весникот Пензионер Плус, Веб  подстраницата на СЗПМ,<br />
            - Развивање на  соработка со медиумите.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
  &nbsp;- Ќе се информира СЗПМ , СЗП на град Скопје,  локалната самоуправа и други организации&nbsp;&nbsp;&nbsp;&nbsp;  за програмските&nbsp;&nbsp; активности на  здружението.</p>
          <p><strong>12. Унапредување и  збогатување на содржината на работат на клубовите и разграноците.</strong><br />
            -  Обврска&nbsp; на здружението е привлекување на  нашите членови во што поголем број да ги посетуваат клубовите и таму да се  активираат преку учество на организирани работилници за обука и унапредување на  одредени активности.<strong></strong><br />
            -&nbsp; Клубовите да се снабдат со реквизити (  шахови, домина, пикадо, топки  и друго).<br />
            -  Согласно законот за локална самоуправа и Меморандумот за соработка ќе се  настојува Општината&nbsp; да поведе повеќе  сметка за одржувањето и опремувањето на клубовите во разграноците и истата да  предвиди средства во буџетот на Општината за 2023 година за оваа намена. <br />
  &nbsp;&nbsp;&nbsp; <br />
  <strong>13. Активот на жени </strong> <br />
            - Во рамките на  стратешките определби на Здружението Активот на жени активностите ќе ги насочи  кон:<br />
            -Унапредување на  волонтерството во здружението, со  организирање посети на болни и изнемоштени пензионери.<br />
            - Промовирање на  основните принципи на&nbsp; хуманитарните  активности, со организирање на собирни акции во соработка со црвениот крст.<br />
            - Организирање  на&nbsp; едукативни активности за заштита  на&nbsp; здравјето на&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; пензионерите.<br />
            - Соработка со  другите Здруженија во град Скопје и Државата.<br />
            - Организирање на  културни манифестации како Сирна Недела и Избор на најшарено&nbsp; велинденско јајце.<br />
            -Учество на  манифестацијата Блакцето на Баба,Томова недела,Зелникот на баба <br />
            - Посета на  пензионери во Геријатриската болница &bdquo;13-ти Ноември&ldquo; и &bdquo;Мајка Тереза&ldquo;<br />
  <strong>&nbsp;</strong><br />
  <strong>&nbsp;14.Ажурирање на  евиденцијата на членството во Здружението</strong> <br />
  <strong>&nbsp;</strong>- Ќе се Ажурираат&nbsp; податоците на нови  пензионери и ќе се следи нивната социјална состојба.<br />
  <strong>&nbsp;</strong>Програмата е од отворен карактер и може да се дополнува со прашања од  интерес на членовите на ЗП како и активности кои произлегуваат од материјали и  активности кои произлегуваат од СЗПМ и СЗП на град Скопје&nbsp;&nbsp; <br />
            Комисиите на  Собранието, &nbsp;Извршниот одбор и Активот на  жени- пензионерки да достават свои програми за работа&nbsp; и истите ќе бидат вградени во Годишната  програма за работа за 2023 година.&nbsp;&nbsp;&nbsp; </p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="49%"></td>
    <td width="51%"><p align="center">ПРЕТСЕДАТЕЛ НА СОБРАНИЕ<br />
      <strong>Крсто Златевски</strong></p></td>
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

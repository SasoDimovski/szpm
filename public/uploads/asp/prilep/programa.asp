
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/prilep.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Прилеп</title>
<!-- InstanceEndEditable -->
<title>Здружение на пензионери Прилеп</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../prilep/'"></div>--><div class="logo" onClick="window.location='../prilep/'">Здружение на пензионери <strong>Прилеп</strong></div></td>
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
          <h3 align="center"><strong>Програма за 2023 на  ЗП Прилеп</strong></h3>
<p>Програма на ЗП Прилеп за 2023 година е составена од Програмите на комисиите  кои постојат во здружението.</p>
<p><strong>Комисија е здравствената и  социјалната заштита </strong></p>
<ol>
    <li>Да се ангажираме да&nbsp; се преиспита позитивната листа на лекови и  целосно укинување на партиципацијата во сите здравствени установи за сите  пензионери, како и изедначување на приватното со јавното здравство.</li>
    <li>Доделување еднократна неповратна парична  помош<strong> </strong>&nbsp;на секои 4 месеци, односно во месеците  февруари, јуни и октомври во висината најмногу до 10.000,00 денари.</li>
    <li>Климатско и бањско лекување -<strong> </strong>&nbsp;За таа цел предлага во финансовиот план да се  предвидат 700.000 денари.</li>
    <li>Комисијaта за културно забавен живот       / во понатамошниот текст КЗЖ/, при Здружението на пензионери на општините       Пилеп, Кривогаштани и Долнени, целокупниот културно забавен живот го       програмира, организира и реализира врз основа на на учество на што повеќе       манифестации организирани по повод на најразлични значајни настани       ,празници и јубилеи на локално, регионално и државно ниво.</li>
</ol>
<p><strong>Комисијата за културно  забавен живот </strong>во текот на  2023 година&nbsp; ќе настојува успешно да се  реализираат програмските задачи и активности.</p>
<ol>
    <li>КУД &quot;Пензионер&quot; и &quot;Пенка  Котеска&quot;, ќе пеат, ќе свират, ќе играат и ќе се дружат, се со цел нив и на сите други пензионери, кои ќе ги гледаат и  слушаат,
        овие години да им бидат поисполнети, повесели, поведри, порадосни <br />
        и полесно да им минуваат деновите од третата животна доба.</li>
    <li>КЗЖ ќе настојува двете КУД &quot;Пензионер&quot;  и &quot;Пенка Котеска&quot; на сите настапи успешно да не презентираат како  ЗП-Прилеп и&nbsp; како град Прилеп .</li>
    <li>Успешното остварување на целите и задачите  во 2023 година многу ќе зависи&nbsp; од  ангажираноста на КЗЖ,&nbsp;&nbsp; уметничките  раководители на двете КУД и од сите членови на друштвата.</li>
    <li>Со цел успешно да се реализираат  програмските цели и задачи, поврзани со културно забавниот живот на  пензионерите, КЗЖ ќе соработува со органите и телата на ЗП Прилеп, со Секцијата  на жени при ЗП Прилеп, со Комисијата за културно забавен живот на СЗПМ на РМ и  со другите ЗП од РМ.</li>
</ol>
<p><strong>Комисијата за одмор и рекреација&nbsp; </strong><br />
    За календарската 2023 година оваа предлог програма Комисијата ја 
    доставува до ИО на ЗП Прилеп и до месните разграноци на јавна расправа.<br />
    Истите&nbsp; имаат&nbsp; право да предлагаат забелешки и измени, и  доколку истите 
    се оправдани, ќе бидат разгледани и внесени во програмата од страна на 
    Собранието и Извршниот одбор на ЗП Прилеп, после тоа таа ќе стане конечна и  ќе може да се применува во 2023 година.<br />
    По усвојувањето на вака предложената програма, Комисијата почнува да 
    врши подготовка за нејзина успешна реализација во пракса.<br />
    Основан цел на оваа програма е пензионерите да ги задоволат потребите за  одмор и рекреација запознавајќи ги убавините и културно-историските
    знаменитости на нашата држава. Единствена цел на ЗП Прилеп е пензионерите  да се дружат, шират познанство, пријателства со цел да го направат нивниот  живот поинтересен и забавен за полесно да ги доживуваат пензионерските денови.</p>
<p><strong>Комисијата за спорт во 2023 година</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    Комисијата за  спорт исто така го имаше предвид и Правилникот со позициите за  организирање&nbsp; и спроведување на  пензионерските спортски натпревари и игри,&nbsp;  усвоен од страна на Извршниот одбор на СЗПМ. Со одредбите на овој  правилник, подетално се&nbsp; определуваат  пропозициите&nbsp; за начинот на организација  и спроведување на пензионерските спортски игри, спортските дисциплини и условите  под кои се одржуваат спортските натпревари на општинско, регионално и  републичко ниво.<br />
    Редовната физичка  активност , покрај другото е еден од факторите кој допринесува во голема мерка,  за зачувување&nbsp; на здравјето и успорувањето
    на стареењето. Заради  тоа треба што повеќе да се спортува, вежба, рекреира. Така полесно , побезболно  се победуваат годините, а движењето е половина здравје.<br />
    Со самото  стареење секако дека се чувствува се поголема немоќ- неспособност за извршување  на секојдневните обврски, а со спортувањето таа немоќ се  намалува, па обврските полесно се извршуваат.<br />
    Затоа ние како  комисија за спорт при ЗП Прилеп и оваа година, како и претходната, ќе се  залагаме&nbsp; што повеќе и помлади  пензионери&nbsp; да се вклучат во спортските  активности.</p>
<p><strong>Активот на жени</strong> и за оваа 2023 година, предлага&nbsp; програма за работа , која програма&nbsp; ќе овозможи продолжување на успешното  функционирање на Активот на жени , а со тоа и за севкупната успешна активност  на Здружение- то на пензионери Прилеп. Програмата&nbsp; е во рамките на активностите карактеристични  за самото Здружение на пензионери.<br />
    Работењето во изминатите години не охрабрува и оваа 2023 година 
    да предложиме сличен број на активности , а со цел посакуваниот успех на  Активот на жени да биде што подобро реализиран. Одборот на&nbsp; Активот&nbsp;  на жени предлага добрата соработка со помошните тела/ комисии/, како и  со
    ИО&nbsp; и стручната служба да продолжи.<br />
    И за оваа 2023 година,  активностите&nbsp; ги групираме во зависност  од нивната природа:<br />
     <strong>1.Предавања -</strong><br />
    <strong> </strong>а.Предавања  по повод одредени празници-датуми,<br />
     б.Предавања од разни  области<br />
     <strong>2.Дружење со Активи на жени од други градови.</strong><br />
     <strong>3.Литературни активности.</strong><br />
     <strong>4.Екскурзии &ndash; излети.</strong><br />
    <strong> 5.Музичко забавни дружења.</strong><br />
    <strong> 6.Хуманитарни активности.</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong></strong><br />
    <strong> 7.Состаноци на одборот на АЖ</strong>, редовно планирани 4 пати во  годината и состаноци по по повод организирање на одредени програми&nbsp; по повод одредени празници и тоа 14-ти  јануари-Стара Нова Година, 8-ми Март - Меѓународниот ден на жената и 20-ти  Септември Денот на пензионерското организирање.</p>
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


<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/stip_karbinci.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери на Штип</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../stip_karbinci/'"></div>--><div class="logo" onClick="window.location='../stip_karbinci/'">Здружение на пензионери <strong>Штип</strong></div></td>
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
          <h2 align="center"><strong>ПРОГРАМА <br />
            за работа на ЗП Штип за 2017 година</strong></h2>
          <p>Во подготвување на нова програма  се земени програмите на комисиите во ЗП. Посебен приоритет се дава на  активностите на Здружението во 2017 година, со акцент на продолжување на  изградбата на пензионерскиот дом на дел од парцелата к.п.834/1 КО Штип, со  плански опфат од 0,55 ха кај ресторанот на АРМ Штип. Оваа програма за работа на ЗП во 2017 година е поврзана со член 5 од  Статутот на ЗП каде децидно се наведени целта на работата на Здружението. <br />
1. Остварување, заштита и права  на пензионерите и нивно осигурување, како и остварување на нивните економски  интереси;<br />
2. Организирање на културни  манифестации во текот на 2017 година во рганизација на Комисијата за култура  при Здружението;<br />
3. Организирање на спортски  активности на регионално и на републичко&nbsp;  ниво; <br />
4. Остварување на користење на  рекреација на пензионерите во бањско климатските центри во Република Македонија  &ndash; бања Банско, бања Негорци и др;<br />
5. Давање помош на загрозени  пензионери од елементарни непогоди;<br />
6. Сместување на пензионери во  слободни простории во гарсониерите по распишаниот оглас, ова се однесува и за  пензионерскиот дом во изградба, во 2017-2018 година;<br />
7. Услуги и грижи за стари и  изнемоштени пензионери со влошена здравствена состојба &ndash; хуманитарна акција од  страна на Здружението, во давање на помош во хигиенски производи, прехрамбени  продукти, разговор со семејствата за дружење;<br />
8. Здружението како досега така  ќе помага во спонзорство на верските заедници, како на православните така и на  муслиманските заедници за завршување на започнати работи во нивните храмови;<br />
9. Праксата доставување на  огревно дрво на пензионерите ќе продолжи и во 2017 година на 7-8 рати; <br />
10. Организиран превоз на  пензионерите од 13-те урбани средини при дружење со пензионерските организации  од Република Македонија организирани во 2017 година;<br />
11. Во 2017 година продолжува  престојот на нашите пензионери во осумте постоечки клубови на пензионери &ndash;  Централен клуб, Баби, Сењак, Авто Команда, 8-ми Ноември, Три чешми, Ново Село и  Карбинци;<br />
12. Во 2017 година најголем  акцент на активности ќе се стави на работата за изградба на нов пензионерски  дом, кој во 2015/2016 година беше стопиран поради одредени правни пропусти;  Најголем проблем ќе биде за обезбедување на потребни средства за завршување на  домот. Како претседател ќе се залагам до републичките институции за  обезбедување на потребните средства за завршување на изградбата на домот каде  по завршувањето на изградбата треба да се сместат 95 пензинери;<br />
13. Ќе ја продолжиме одличната  соработка со Локалната самоуправа. <br />
14. Ќе ја продолжиме одличната  соработка со СЗПМ на сите полиња.&nbsp; <br />
15. Ќе ја продолжиме Соработка со  повеќе правни субјекти од нашата општина &ndash; Црвен Крст, Фондот за здравство,  судството, Универзитетот Гоце Делчев, Брегалничката Епархија, Културниот Дом  &bdquo;Ацо Шопов&rdquo;, АРМ, СВР, основните и средните училишта, борци и локалните ТВ  куќи;<br />
16. Ќе се ангажираме станбеното  претпријатие и директорот Томе Биновски, да ни ја отстапи месната канцеларија во  8-ми Ноември да ја користиме за клуб, со што ќе се ослободиме од киријата; <br />
17. Се планира варосување на  таванските површини во клубот. <br />
18. Програмските задачи во 2017  година, нивните остварувања &ndash; реализација се поврзани со средствата на ЗП Штип;  &nbsp;<br />
19. И во 2017 година ќе  продолжиме нашите пензионери да користат бањско-климатско лекување од 7 дена во  нашите бањи, а при враќањето од престојот во бањите Здружението ќе им исплаќа  20% партиципација, а 10% ќе им исплаќа сопственикот на бањата;<br />
20. Преку проекти ќе ја  продолжиме соработката со предучилишните центри &ndash; детските градинки и основните  училишни центри;<br />
21. Комисијата за  културно-забавен живот и понатаму ќе организира активности и настани, како и дружење  со: ЗП Велес, ЗП Виница, ЗП Кочани, ЗП Македонска Каменица &ndash; Цера, ЗП Радовиш &ndash;  Ораовица, ЗП Пробиштип &ndash; Лесново и ЗП Дојран, Чашка, Скопје, Ново Село и други;<br />
22. Повторно ќе ја активираме  манифестацијата &bdquo;Пензионерите пеат&rdquo; по повод 24 Мај &ndash; празникот на нашите  просветители Кирил и Методи, како и скромно ќе ја прославиме 70-годишнината од  формирањето на Здружението на пензионерите Штип, 1947 &ndash; 2017 година;<br />
23. Здружението во 2017 година ќе  биде домаќин &ndash; организатор на 22-те регионални спортски пензионерски натпревари  од 7-от регион; <br />
24. Во месец јануари повторно ќе  го формираме хорот кој постоеше во претходните години.<br />
25. Програмата по потреба ќе се  надополнува.            </p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td width="60%"><p align="right">Претседател  на ЗП Штип<strong><br />
                                                                                               Александар  Захариев</strong></td>
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

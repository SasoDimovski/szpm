
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/debar_centar_zupa.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Дебар и Центар Жупа</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../debar_centar_zupa/'"></div>--><div class="logo" onClick="window.location='../debar_centar_zupa/'">Здружение на пензионери <strong>Дебар и Центар Жупа</strong></div></td>
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
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>Организациска структура</strong><!-- InstanceEndEditable --></td>
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
          <p><img src="Debar Naziv na zdruzenieto.jpg" width="520" height="166" style="float:none;" /></p>
          <table width="100%" class="dijagram">
            <tr>
    <td colspan="3">Собрание</td>
    </tr>
  <tr>
    <td width="50%">Извршен одбор</td>
    <td width="50%">Надзорен одбор</td>
  </tr>
    </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">комисија за културен и забавен живот </td>
              <td width="33%">комисија за спорт и  рекреација</td>
              <td width="33%">комисија за здравство  и здравствена заштита </td>
              </tr>
            <tr><td>комисија за набавка и расходување на основни средства</td>
              <td>комисија за набавка и расходување  на основни средства </td>
              <td>Актив на пензионерки</td>
            </tr>
          </table>
          <p>Здружението  има 8 ограноци.<br />
          </p>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="31%" align="center"><img src="Petrit-Imami-pretsedatel-na-ZP-Debar-i-Centar-Zuoa.jpg" width="110" height="120" /></td>
    <td align="center"></td>
    <td width="31%" align="center"><img src="Muhamed Hisa - sekretar.jpg" alt="" width="110" height="120" /></td>
    <td align="center"> </td>
    <td width="31%" align="center">&nbsp;</td>
    </tr>
  <tr>
    <td align="center" valign="top">Петрит Имами, <br />
      претседател</td>
    <td align="center" valign="top"></td>
    <td align="center" valign="top"> Мухамед Хиса,<br />
      секретар </td>
    <td align="center" valign="top"> </td>
    <td align="center" valign="top">&nbsp;</td>
    </tr>
</table>
          <!--<p align="center"><img src="Rakovodstvoto na zdruzenieto.JPG" alt="" width="520" height="334" /><br />
            <strong><em>раководството на Здружението</em></strong></p>
          <p align="center"><img src="Sobranie na ZP Debar i Centar Zupa.JPG" alt="" width="520" height="390" /><br />
            <strong><em>Собрание</em></strong></p>-->
          <h3>СОБРАНИЕ</h3>
          <table width="100%" border="0">
            <tr>
    <td width="50%" valign="top"><p>1.&nbsp;&nbsp;Петрит Имами &ndash; претседател<br />
      2.&nbsp;&nbsp; Мухамед Хиса -  секретар <br />
      3.&nbsp;&nbsp; Ирфан  Уштеленца<br />
      4.&nbsp;&nbsp; Беџет Имероски<br />
      5.&nbsp;&nbsp; Авзи Муслиоски<br />
      6.&nbsp;&nbsp; Мируше  Исламоска<br />
      7.&nbsp;&nbsp; Феим Насуфоски<br />
      8.&nbsp;&nbsp; Латиф  Латифоски<br />
      9.&nbsp;&nbsp; Скендер  Рамадани<br />
      10. Џемо Џемоски<br />
      11. Мустафа Скикули<br />
      12. Арфије Јонузи<br />
      13. Имер Карпузи<br />
      14. Зини Аме</p></td>
    <td valign="top"><p>15. Петрит Имами<br />
      16. Лулзим Мела<br />
      17. Маријонка Уштеленца<br />
      18. Фитим Алили<br />
      19. Назми Куртиши<br />
      20. Неџат Имери<br />
      21. Скендер Каја<br />
      22. Севдије Војника<br />
      23. Авни Рамаданоски<br />
      24. Блаже Петрески<br />
      25. Емихан Шеху<br />
      26. Селаудин Чиче<br />
      27. Бесник Поцеста</p></td>
    </tr>
</table>
<h3><strong>ЗАМЕНИЦИ  НА ЧЛЕНОВИ НА СОБРАНИЕ</strong>          </h3>
          <table width="100%" border="0">
            <tr>
              <td width="50%" valign="top"><p>Есат Качалнику<br />
                Нузи Асани<br />
                Нефаил Спахиу<br />
                Илми Куртиши<br />
                Идриз Рамадан<br />
                Ќефсер Хаџиреџа</p></td>
              <td valign="top"><p>Назми Демоски<br />
                Дестан Дестаноски<br />
                Африм Беќироски<br />
                Аџи Арсланоски<br />
                Шабан Џафероски<br />
                Аки Марку</p></td>
            </tr>
        </table>
          <!--<p align="center"><img src="Izvrsen odbor.JPG" alt="" width="520" height="308" /><br />
            <strong><em>Извршен одбор</em></strong></p>-->
          <h3><strong>ИЗВРШЕН ОДБОР</strong></h3>
          <table width="100%" border="0">
            <tr>
    <td width="50%" valign="top"><p>1.&nbsp;&nbsp;Петрит Имами &ndash; претседател<br />
      2. &nbsp;&nbsp;Мухамед Хиса -  секретар<br />
      3. &nbsp;&nbsp;Ирфан  Уштеленца<br />
      4. &nbsp;&nbsp;Беџет Имероски<br />
      5. &nbsp;&nbsp;Авзи Муслиоски<br />
      6.  &nbsp;&nbsp;Џемо  Џемоски<br />
      7. &nbsp;&nbsp;Авни  Рамаданоски<br />
      8. &nbsp;&nbsp;Блаже Петрески<br />
      9.&nbsp; &nbsp;Скендер Каја<br />
      10. Емијан Шеху</p></td>
    <td valign="top"><p>11. Зини Аме<br />
      12. Лулзим Мела<br />
      13. Петрит Имами<br />
      14. Севдије Војника<br />
      15. Фитим Алили<br />
      16. Мируше Исламоска<br />
      17. Латиф Латифоски<br />
      18. Мустафа Скикули<br />
      19. Арфије Јонузи</p></td>
    </tr>
</table>
          <h3>Делегат во СЗПМ </h3>
          <p> Авни Рамадановски</p>
<h3>НАДЗОРЕН ОДБОР</h3>
          <p>1. Феим Насуфоски &ndash; претседател<br />
            2. Илми Куртиши<br />
            3. Африм Беќироски<br />
            4. Исмет Мерсоски </p>
          <h3>СТАТУТАРНА КОМИСИЈА</h3>
          <ol>
            <li>Мухамед Хица &ndash; претседател</li>
            <li>Блаже Петрески</li>
            <li>Авни Рамадановски</li>
            <li>Марионка Уштеленци</li>
          </ol>
          
          <h3>КОМИСИЈА ЗА СПОРТ</h3>
          <ol>
            <li>Мустафа Скикули &ndash; претседател</li>
            <li>Неџбедин Леши</li>
            <li>Неџат Имери</li>
            <li>Емихан Шеху</li>
          </ol>
          
          <h3>КОМИСИЈА ЗА РЕКРЕАЦИЈА И КУЛТУРНО-ЗАБАВЕН ЖИВОТ</h3>
          <ol>
            <li>Ирфан Уштеленца &ndash; претседател</li>
            <li>Али Исламоски</li>
            <li>Али Лазри</li>
            <li>Назми Куртиши</li>
          </ol>
          
          <h3>КОМИСИЈА ЗА ПОМОШ, СОЦИЈАЛНИ ПРАШАЊА И ПОСЕТА НА БОЛНИ  ПЕНЗИОНЕРИ</h3>
          <ol>
            <li>Мухамед Хиса - претседател</li>
            <li>Петрит Имами</li>
            <li>Маријонка Уштеленца</li>
            <li>Месуде Цами</li>
          </ol>
          
          <h3>КОМИСИЈА ЗА ЗДРАВСТВО И ЗДРАВСТВЕНА ЗАШТИТА</h3>
          <ol>
            <li>Ферит Војника &ndash; претседател</li>
            <li>Арфије Јонузи</li>
            <li>Фитим Алили</li>
            <li>Блаже Петрески</li>
          </ol>
          
          <h3>КОМИСИЈА ЗА НАБАВКА И РАСХОДУВАЊЕ НА ОСНОВНИ СРЕДСТВА</h3>
          <ol>
            <li>Севдије Војника &ndash; претседател</li>
            <li>Ариф Дамајлоски</li>
            <li>Имер Карпузи</li>
            <li>Авни Рамаданоски</li>
            </ol>
          <p>МАРИОНКА УШТЕЛЕНЦА - претседател на АКТИВ НА   ПЕНЗИОНЕРКИ </p>
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

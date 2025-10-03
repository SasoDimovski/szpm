
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/tetovo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<title>Здружение на пензионери Тетово</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../tetovo/'"></div>--><div class="logo" onClick="window.location='../tetovo/'">Здружение на пензионери <strong>Тетово</strong></div></td>
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
              <td width="33%">комисија за статутарни, организациони и кадровски прашања</td>
              <td width="33%">комисија за одмор, рекреација и културно забавен живот</td>
              <td width="33%">комисија за спорт и спортски активности</td>
              </tr>
            <tr>
              <td>комисија за здравство, здравствена заштита и социјални прашања</td>
              <td>Актив на пензионерки</td>
            </tr>
          </table>
          <p>Во ЗП Тетово има 21 месни ограноци.<br />
            <br />
          </p>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
  <tr>
    <td width="25%" align="center"><img src="pretsedatel-na-sobranie-Mirko-Jov;evski.png" width="110" height="155" /></td>
    <td align="center">&nbsp;</td>
    <td width="25%" align="center"><img src="Tetovo-Selver-Memeti-pretsedatel.jpg" width="110" height="155" /></td>
	  
    <td align="center">&nbsp;</td>
    <td width="25%" align="center"><img src="Svetozar Dimovski - Sekretar.jpg" alt="" width="110" height="155" /></td>
    <td align="center" valign="top">&nbsp;</td>
    <td width="25%" align="center"><img src="Velija Pajazidi - blagajnik.jpg" alt="" width="110" height="155" /></td>
    </tr>
  <tr>
    <td align="center" valign="top">Мирко Јовчевски, <br />
      претседател на Собрание</td>
    <td align="center" valign="top">&nbsp;</td>
    <td align="center" valign="top">Селвер Мемети,<br />
претседател на Извршен одбор и на ЗП Тетово</td>
	  
    <td align="center" valign="top">&nbsp;</td>
    <td valign="top">Светозар Димовски,<br />
      Секретар</td>
    <td valign="top">&nbsp;</td>
    <td valign="top">Велија Пајазиди,<br />
      благајник</td>
    </tr>
  <tr>
    </tr>
</table>
          <h3>СОБРАНИЕ за мандатен период 2023-2027 година</h3>
            <table  width="100%">
                  <tr>
                      <td>Р.бр.</td>
                      <td>&nbsp; Име и Презиме</td>
                      <td>Огранок</td>
                  </tr>
                  <tr>
                      <td>1.</td>
                      <td>Љубомир Софрески</td>
                      <td>Радиовце</td>
                  </tr>
                  <tr>
                      <td>2.</td>
                      <td>Нуриман Елмази</td>
                      <td>Радиовце</td>
                  </tr>
                  <tr>
                      <td>3.</td>
                      <td>Никола Даниловски</td>
                      <td>М.Тито</td>
                  </tr>
                  <tr>
                      <td>4.</td>
                      <td>Славчо Марковски</td>
                      <td>М.Тито</td>
                  </tr>
                  <tr>
                      <td>5.</td>
                      <td>Павле Спасеновски</td>
                      <td>М.Тито</td>
                  </tr>
                  <tr>
                      <td>6.</td>
                      <td>Решат Шабани</td>
                      <td>Боговиње</td>
                  </tr>
                  <tr>
                      <td>7.</td>
                      <td>Хајредин Ајдини</td>
                      <td>Боговиње</td>
                  </tr>
                  <tr>
                      <td>8.</td>
                      <td>Азис Јакупи</td>
                      <td>Камењане</td>
                  </tr>
                  <tr>
                      <td>9.</td>
                      <td>Селвер Мемети</td>
                      <td>Б.Кидрич</td>
                  </tr>
                  <tr>
                      <td>10.</td>
                      <td>Божидар Николовски</td>
                      <td>Б.Кидрич</td>
                  </tr>
                  <tr>
                      <td>11.</td>
                      <td>Гоце Нечовски</td>
                      <td>Б.Кидрич</td>
                  </tr>
                  <tr>
                      <td>12.</td>
                      <td>Ѓоко Исаевски</td>
                      <td>Непроштено</td>
                  </tr>
                  <tr>
                      <td>13.</td>
                      <td>Гавро Наумовски</td>
                      <td>Кикиш</td>
                  </tr>
                  <tr>
                      <td>14.</td>
                      <td>Душко Велковски</td>
                      <td>Шемшово</td>
                  </tr>
                  <tr>
                      <td>15.</td>
                      <td>Митко Богатиновски</td>
                      <td>Брвеница</td>
                  </tr>
                  <tr>
                      <td>16.</td>
                      <td>Мирко Јовчевски</td>
                      <td>Брвеница</td>
                  </tr>
                  <tr>
                      <td>17.</td>
                      <td>Лилјана Аврамовска</td>
                      <td>Јегуновце</td>
                  </tr>
                  <tr>
                      <td>18.</td>
                      <td>Костадин Тушев</td>
                      <td>Јегуновце</td>
                  </tr>
                  <tr>
                      <td>19.</td>
                      <td>Неделко Јаковчевски</td>
                      <td>Тетекс</td>
                  </tr>
                  <tr>
                      <td>20</td>
                      <td>Мурсел Мурсели</td>
                      <td>Тетекс</td>
                  </tr>
                  <tr>
                      <td>21.</td>
                      <td>Умер Хасани</td>
                      <td>Тетекс</td>
                  </tr>
                  <tr>
                      <td>22.</td>
                      <td>Круме Кочовски</td>
                      <td>И.А.Смок</td>
                  </tr>
                  <tr>
                      <td>23.</td>
                      <td>Борко Спасеновски</td>
                      <td>И.А.Смок</td>
                  </tr>
                  <tr>
                      <td>24.</td>
                      <td>Рефик Алиу</td>
                      <td>И.А.Смок</td>
                  </tr>
                  <tr>
                      <td>25.</td>
                      <td>Рамие Ибраими</td>
                      <td>Р.цониќ</td>
                  </tr>
                  <tr>
                      <td>26.</td>
                      <td>Гзиме Ајредини </td>
                      <td>Р.Цониќ</td>
                  </tr>
                  <tr>
                      <td>27.</td>
                      <td>Стојан Петрушевски</td>
                      <td>Р.Цониќ</td>
                  </tr>
                  <tr>
                      <td>28.</td>
                      <td>Бајрам Мурсели</td>
                      <td>Братство</td>
                  </tr>
                  <tr>
                      <td>29.</td>
                      <td>Војо Јовановски</td>
                      <td>Братство</td>
                  </tr>
                  <tr>
                      <td>30.</td>
                      <td>Трена Николовска </td>
                      <td>Вратница</td>
                  </tr>
                  <tr>
                      <td>31.</td>
                      <td>Месут Мисими</td>
                      <td>Вратница</td>
                  </tr>
                  <tr>
                      <td>32.</td>
                      <td>Онофрија Јовановски</td>
                      <td>Челопек</td>
                  </tr>
                  <tr>
                      <td>33.</td>
                      <td>Решат Абдурахмани</td>
                      <td>Челопек</td>
                  </tr>
                  <tr>
                      <td>34.</td>
                      <td>Иса Аљиљи</td>
                      <td>Желино</td>
                  </tr>
                  <tr>
                      <td>35.</td>
                      <td>Муедин Усеини</td>
                      <td>Желино</td>
                  </tr>
                  <tr>
                      <td>36.</td>
                      <td>Низафет Алија</td>
                      <td>Групчин</td>
                  </tr>
                  <tr>
                      <td>37.</td>
                      <td>Среќко Ристовски</td>
                      <td>Теарце </td>
                  </tr>
                  <tr>
                      <td>38.</td>
                      <td>Бајрам Јашари</td>
                      <td>Теарце</td>
                  </tr>
                  <tr>
                      <td>39.</td>
                      <td>Дануш Ибрахими</td>
                      <td>Теарце</td>
                  </tr>
                  <tr>
                      <td>40.</td>
                      <td>Јамин Адеми</td>
                      <td>Речица</td>
                  </tr>
                  <tr>
                      <td>41.</td>
                      <td>Џелил Ганија</td>
                      <td>Речица</td>
                  </tr>
                  <tr>
                      <td>42.</td>
                      <td>Имер Куртиши</td>
                      <td>Џепчиште</td>
                  </tr>
                  <tr>
                      <td>43.</td>
                      <td>Риза Ибраими</td>
                      <td>Шипковица</td>
                  </tr>
                  <tr>
                      <td>44.</td>
                      <td>Хакиљ Адили</td>
                      <td>СОБРАНИЕ</td>
                  </tr>
                  <tr>
                      <td>45.</td>
                      <td>Софија Симовска</td>
                      <td>СОБРАНИЕ</td>
                  </tr>
                  <tr>
                      <td>46.</td>
                      <td>Илбер Пустина</td>
                      <td>СОБРАНИЕ</td>
                  </tr>
                  <tr>
                      <td>47.</td>
                      <td>Љубе Поповски</td>
                      <td>СОБРАНИЕ</td>
                  </tr>
              </table>
          <p align="center"><img src="Izvrsen-odbor.jpg" alt="" width="520" height="363" style="float:none" /><br />
            <strong><em>Извршен одбор</em></strong></p>
          <h3><strong>ИЗВРШЕН ОДБОР</strong>          за мандатниот период 2023-2027г.</h3>
          <table width="100%" border="0">
            <tr>
              <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                      <td valign="top"><strong>Р.бр.</strong></td>
                      <td valign="top"><strong> ИМЕ    И ПРЕЗИМЕ</strong></td>
                      <td valign="top"><strong>&nbsp;&nbsp;Огранок</strong></td>
                  </tr>
                  <tr>
                      <td valign="top">1.</td>
                      <td valign="top">Селвер Мемети</td>
                      <td valign="top">&nbsp;    Б.Кидрич</td>
                  </tr>
                  <tr>
                      <td valign="top">2.</td>
                      <td valign="top">Муедин Усеини</td>
                      <td valign="top">&nbsp;    Желино</td>
                  </tr>
                  <tr>
                      <td valign="top">3.</td>
                      <td valign="top">Никола Даниловски</td>
                      <td valign="top">&nbsp;    М.Тито</td>
                  </tr>
                  <tr>
                      <td valign="top">4.</td>
                      <td valign="top">Љиљјана Аврамовска</td>
                      <td valign="top">&nbsp;    Јегуновце</td>
                  </tr>
                  <tr>
                      <td valign="top">5.</td>
                      <td valign="top">Круме Кочовски</td>
                      <td valign="top">&nbsp;    И.А.Смок</td>
                  </tr>
                  <tr>
                      <td valign="top">6.</td>
                      <td valign="top">Бајрам Јашари</td>
                      <td valign="top">&nbsp;    Теарце</td>
                  </tr>
                  <tr>
                      <td valign="top">7.</td>
                      <td valign="top">Среќко Ристовски</td>
                      <td valign="top">&nbsp;    Теарце</td>
                  </tr>
                  <tr>
                      <td valign="top">8.</td>
                      <td valign="top">Имер Куртиши</td>
                      <td valign="top">&nbsp;&nbsp;    Џепчиште</td>
                  </tr>
                  <tr>
                      <td valign="top">9.</td>
                      <td valign="top">Бајрам Мурсели</td>
                      <td valign="top">&nbsp;    Браство</td>
                  </tr>
                  <tr>
                      <td valign="top">10.</td>
                      <td valign="top">Гоце Нечовски</td>
                      <td valign="top">Б.Кидрич</td>
                  </tr>
                  <tr>
                      <td valign="top">11.</td>
                      <td valign="top">Мурсел Мурсели</td>
                      <td valign="top">Тетекс</td>
                  </tr>
                  <tr>
                      <td valign="top">12.</td>
                      <td valign="top">Неделко Јаковчески</td>
                      <td valign="top">Тетекс</td>
                  </tr>
                  <tr>
                      <td valign="top">13.</td>
                      <td valign="top">Решат Шабани</td>
                      <td valign="top">Боговиње</td>
                  </tr>
                  <tr>
                      <td valign="top">14.</td>
                      <td valign="top">Божидар Николовски</td>
                      <td valign="top">Б.Кидрич</td>
                  </tr>
                  <tr>
                      <td valign="top">15.</td>
                      <td valign="top">Митко Богатиновски</td>
                      <td valign="top">Брвеница</td>
                  </tr>
                  <tr>
                      <td valign="top">16.</td>
                      <td valign="top">Гзиме Хајредини</td>
                      <td valign="top">Р.Цониќ</td>
                  </tr>
                  <tr>
                      <td valign="top">17.</td>
                      <td valign="top">Јамин Адеми</td>
                      <td valign="top">Речица</td>
                  </tr>
              </table></td>
            </tr>
      </table>
          <h3>НАДЗОРЕН ОДБОР              за мандатен период 2023-2027 година</h3>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">Р.бр.</td>
        <td valign="top">&nbsp;&nbsp;&nbsp;    Име и&nbsp; Презиме</td>
        <td valign="top">&nbsp;&nbsp;    Својство</td>
        </tr>
    <tr>
        <td valign="top">1.</td>
        <td valign="top">Здравко Здравкоски</td>
        <td valign="top">Претседател</td>
        </tr>
    <tr>
        <td valign="top">2.</td>
        <td valign="top">Наџи Имери</td>
        <td valign="top">член</td>
        </tr>
    <tr>
        <td valign="top">3.</td>
        <td valign="top">Илми Беџети</td>
        <td valign="top">член</td>
        </tr>
    <tr>
        <td valign="top">4.</td>
        <td valign="top">Трпче Ценовски</td>
        <td valign="top">член</td>
        </tr>
    <tr>
        <td valign="top">5.</td>
        <td valign="top">Ебип Јахја</td>
        <td valign="top">член</td>
        </tr>
</table>

          
          <h2><strong>КОМИСИЈА ЗА СТАТУТАРНИ, ОРГАНИЗАЦИОНИ И КАДРОВСКИ ПРАШАЊА:</strong></h2>
            <p>1.Бајрам Јашари - Претседател</p>
            <p>2.Неделко Јаковчески</p>
            <p>3.Борко Спасеновски</p>
            <p>4.Решат Шабани            </p>
            <h2><strong>КОМИСИЈА ЗА СПОРТ И СПОРТСКИ АКТИВНОСТИ НА ПЕНЗИОНЕРИТЕ</strong></h2>
            <p>1.Гоце Нечовски - Претседател</p>
            <p>2.Јамин Адеми</p>
            <p>3.Муедин Усеини</p>
            <p>4.Живко Јанчевски            </p>
            <h2><strong>КОМИСИЈА ЗА ЗДРАВСТВО, ЗДРАВСТВЕНА ЗАШТИТА И СОЦИЈАЛНИ  ПРАШАЊА</strong></h2>
            <p>1.Др.Павле Спасеновски - Претседател</p>
            <p>2.Гзиме Хајредини</p>
            <p>3.Никола Даниловски</p>
            <p>4.Умер Хасани            </p>
            <h2><strong>КОМИСИЈА ЗА ОДМОР, РЕКРЕАЦИЈА И ИКУЛТУРНО ЗАБАВЕН ЖИВОТ</strong></h2>
            <p>1.Мурсел Мурсели - Претседател</p>
            <p>2.Рамие Ибраими</p>
            <p>3.Митко Богатиновски</p>
            <p>4.Бајрам Мурсели        </p>
            <h2><strong>На  избрани претседатели на месни огрананоци, мандатен период 2023-2027</strong></h2>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top"><strong>Р.бр.</strong></td>
                    <td valign="top"><strong>ИМЕ И    ПРЕЗИМЕ</strong></td>
                    <td valign="top"><strong>ОГРАНОК</strong></td>
                    </tr>
                <tr>
                    <td valign="top">1. </td>
                    <td valign="top">Трајче Максимовски</td>
                    <td valign="top">М.Тито</td>
                    </tr>
                <tr>
                    <td valign="top">2.</td>
                    <td valign="top">Реџеп Дергути</td>
                    <td valign="top">Тетекс</td>
                    </tr>
                <tr>
                    <td valign="top">3.</td>
                    <td valign="top">Наџи Имери </td>
                    <td valign="top">Братство</td>
                    </tr>
                <tr>
                    <td valign="top">4.</td>
                    <td valign="top">Славчо Савески</td>
                    <td valign="top">И.А.Смок</td>
                    </tr>
                <tr>
                    <td valign="top">5.</td>
                    <td valign="top">Феми Касами</td>
                    <td valign="top">Р.Цониќ</td>
                    </tr>
                <tr>
                    <td valign="top">6.</td>
                    <td valign="top">Јованка Ристовска</td>
                    <td valign="top">Б.Кидрич</td>
                    </tr>
                <tr>
                    <td valign="top">7.</td>
                    <td valign="top">Трпе Ѓорѓевски</td>
                    <td valign="top">Кикиш</td>
                    </tr>
                <tr>
                    <td valign="top">8.</td>
                    <td valign="top">Фари Незири</td>
                    <td valign="top">Речица</td>
                    </tr>
                <tr>
                    <td valign="top">9.</td>
                    <td valign="top">Гајур Ислами</td>
                    <td valign="top">Џепчиште</td>
                    </tr>
                <tr>
                    <td valign="top">10.</td>
                    <td valign="top">Стево Димковски</td>
                    <td valign="top">Непроштено</td>
                    </tr>
                <tr>
                    <td valign="top">11.</td>
                    <td valign="top">Билал Амити</td>
                    <td valign="top">Теарце</td>
                    </tr>
                <tr>
                    <td valign="top">12.</td>
                    <td valign="top">Јабланка Веселиновска</td>
                    <td valign="top">Вратница</td>
                    </tr>
                <tr>
                    <td valign="top">13.</td>
                    <td valign="top">Вера Николиќ</td>
                    <td valign="top">Јегуновце</td>
                    </tr>
                <tr>
                    <td valign="top">14.</td>
                    <td valign="top">Зија Муслиу</td>
                    <td valign="top">Шемшово</td>
                    </tr>
                <tr>
                    <td valign="top">15.</td>
                    <td valign="top">Бектеш Шерифи</td>
                    <td valign="top">Групчин</td>
                    </tr>
                <tr>
                    <td valign="top">16.</td>
                    <td valign="top">Сабејдин Ајдини</td>
                    <td valign="top">Желино</td>
                    </tr>
                <tr>
                    <td valign="top">17.</td>
                    <td valign="top">Митко Секуловски</td>
                    <td valign="top">Брвеница</td>
                    </tr>
                <tr>
                    <td valign="top">18.</td>
                    <td valign="top">Раде Јовановски</td>
                    <td valign="top">Челопек</td>
                    </tr>
                <tr>
                    <td valign="top">19.</td>
                    <td valign="top">Трпко Цветковски</td>
                    <td valign="top">Радиовце</td>
                    </tr>
                <tr>
                    <td valign="top">20.</td>
                    <td valign="top">Измит Имери</td>
                    <td valign="top">Боговиње</td>
                    </tr>
                <tr>
                    <td valign="top">21.</td>
                    <td valign="top">Убдулгани Ибраими</td>
                    <td valign="top">Камењане</td>
                    </tr>
                <tr>
                    <td valign="top">22.</td>
                    <td valign="top">Авдил Ислами</td>
                    <td valign="top">Шипковица</td>
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

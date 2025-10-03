<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/karpos.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Здружение на пензионери Карпош</title>
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
    <td class="heder" width="980"><div class="logo_slika" onClick="window.location='../karpos/'"></div><div class="logo" onClick="window.location='../karpos/'">Здружение на пензионери <strong>Карпош</strong></div></td>
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
          <p align="center"><img src="organizacija.png" alt="" width="528" height="611" /></p>
			<div style="float: none; clear: both; height: 20px"></div>

          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bez_padding">
            <tr>
              <td width="32%"><img src="Jovan-Ginovski-1PNG.jpg" alt="" width="120" height="181" /></td>
              <td width="1%"> </td>
              <td width="32%"><img src="Trifun-Donev-pret.jpg" alt="" width="120" height="181" /></td>
              <td width="1%"></td>
              <td width="32%"><img src="Mirjana-Gushevska---sekretar-na-na-IO.jpg" alt="" width="120" height="181" /></td>
              </tr>
            <tr>
              <td>Јован Гиновски - претседател на Собрание и на ЗП Карпош</td>
              <td> </td>
              <td>Трифун Донев - претседател на Извршен одбор</td>
              <td></td>
              <td>Мирјана Гушевска - секретар на Извршен одбор</td>
              </tr>
          </table>
<h2>Членови на Собранието на ЗП Карпош Скопје 2022-2026          </h2>
<ol>
  <li>Јован  Гиновски -               претседател</li>
            <li>Џовани Ассиси                   </li>
            <li>Љупчо  Јаневски                 </li>
            <li>Снежана  Попчевска        </li>
            <li>Надежда  Николовска     </li>
            <li>Благоја  Стефановски      </li>
            <li>Живка  Апостолова           </li>
            <li>Благоја  Шеќеров              </li>
            <li> Весна Крстевска               </li>
            <li> Ленче Ѓорѓеска                </li>
            <li> Цвета Кочовска               </li>
            <li> Јелка Пецовска                </li>
            <li> Аце Стефановски                            </li>
            <li> Мирче Мирчевски          </li>
            <li> Рамис Ибраимовски                       </li>
            <li> Цана Николиќ                  </li>
            <li> Благоја Цветановски       </li>
            <li> Цветанка Пејковска       </li>
            <li> Марионка  Христовска  </li>
            <li> Весна Ивановска             </li>
            <li>Љубомир  Петревски                    </li>
        </ol>
          <p> </p>
          <h2>Членови на Извршен одбор на ЗП Карпош</h2>          <p><img src="Izvrsen.jpg" alt="" /></p>

          <ol>
            <li>Трифун Донев                                                                              </li>
            <li>Вела Стојковска                                            </li>
            <li>Павле Босилковски                                      </li>
            <li>Мирко Михајловски                                      </li>
            <li>Димитар Николовски                                                     </li>
            <li>Перса Николиќ                                                </li>
            <li>Душан Јовановиќ                                           </li>
            </ol>
          <h2>ПРЕТСЕДАТЕЛИ НА ОГРАНОЦИ ВО  ЗП  КАРПОШ СКОПЈЕ</h2>
          <p><img src="Pretsedateli na ogranoci.jpg" alt="" /></p>
          <ol>
            <li>Коста Тасески                                                   </li>
            <li>Лилјана Андоновска                                   </li>
            <li>Благоја Ставревски                                     </li>
            <li>Звонко Цветковиќ                                            </li>
            <li>Деска Младеновска                                                          </li>
            <li>Грозде Црвенковски                                      </li>
            <li>Стефанка Поповска                                          </li>
          </ol>
          <h2>НАДЗОРЕН ОДБОР </h2>
          <ol>
            <li>Марионка Христовска</li>
            <li>Живка Апостолова</li>
            <li>Благоја Стефановски</li></ol>
          <h2>АКТИВ НА  ПЕНЗИОНЕРКИ</h2>
          <ol>
            <li>TРAJКA РAДOJКOВИЌ - претседател                            </li>
            <li>СЛOБOДAНКA ЧУРИЛOВA                      </li>
            <li>ЛEНЧE TРПКOВСКA                                 </li>
            <li>РУMEНA ШEЌEРOВA                               </li>
            <li>MAРИЦA ЦРВEНКOВСКA                        </li>
            <li>MAРИJOНКA ХРИСTОВА</li>
            <li>БИЉАНА СЕКУЛОВСКА ГАБЕР          </li>
        </ol>
          <h2>КОМИСИЈА ЗА СТАТУТ И ПРАВНИ РАБОТИ</h2>
          <ol>
            <li>Мирјана Гушева</li>
            <li>Цвета Кочовска</li>
            <li>Снежана Попчевска</li>
          </ol>
          <h2>КОМИСИЈА ЗА ЗДРАВСТВО   И СОЦИЈАЛНА РАБОТА </h2>
          <ol>
            <li> МАРТИНОВСКА  ЛИЛЈАНА,                                                                  ВЛАЕ                           </li>
            <li>ЉИЉАНА ПАВЛОВСКА,                                                                 КАРПОШ 3и4 </li>
            <li>ГОРИЦА СТЕФАНОВА,                                                                   В.ТАСЕВСКИ </li>
            <li>СВЕТЛАНА БОГДАНОВСКА,                                                         КАРПОШ 1и2</li>
            <li>СТОЈАНКА МИЦЕВСКА -  ПРЕТСЕДАТЕЛ,                                    ТАФТАЛИЏЕ             </li>
            <li>ЉУБОМИР ПЕТРЕСКИ -  ЗАМЕНИК,                                             КОЗЛЕ                                                                                                             </li>
            <li>СНЕЖАНА МАСЛАРОВИЌ- ЈАНОСКА,                                          НЕРЕЗИ </li>
          </ol>
          <h2> КОМИСИЈА ЗА  СПОРТ И СПОРТСКИ АКТИВНОСТИ</h2>
          <ol>
            <li>МЛАДЕНОВСКИ МИЛЕ,                                                                  ВЛАЕ</li>
            <li>ЗВОНКО ЦВЕТКОВИЌ,                                                                    КАРПОШ   3и4</li>
            <li>ЗОРАН ЧОНОВСКИ,                                                                       В.ТАСЕВСКИ</li>
            <li>ЗОРАН ТРАЈАНОВСКИ,                                                                 КАРПОШ 1и2</li>
            <li>РИСТО ДИМИТРОВ,                                                                      ТАФТАЛИЏЕ </li>
            <li>МИЛЕ ДУКОВСКИ -  ЗАМЕНИК,                                                      КОЗЛЕ</li>
            <li>АЦО СТОЈАНОВСКИ -  ПРЕТСЕДАТЕЛ,                                      НЕРЕЗИ</li>
          </ol>
          <h2>КОМИСИЈА ЗА  ОДМОР И РЕКРЕАЦИЈА</h2>
          <ol>
            <li> ГРОЗДЕ ЦРВЕНКОВСКИ,                                                                 ВЛАЕ</li>
            <li> ДРАГИ СТОЈАНОВИЌ,                                                                      КАРПОШ 3и4</li>
            <li> ВИОЛЕТА ЖЕРНОВСКА,                                                                  В.ТАСЕВСКИ</li>
            <li>ТИХОМИР САЗДОВСКИ,                                                                   КАРПОШ 1и2</li>
            <li>ДУШАН ЈОВАНОВИЌ  -  ПРЕТСЕДАТЕЛ,                                       ТАФТАЛИЏЕ </li>
            <li>ЉУБОМИР СТЕФАНОВСКИ,                                                            КОЗЛЕ</li>
            <li>ГОРИЦА БЛАЖЕВСКА,                                                                     НЕРЕЗИ </li>
          </ol>
          <h2>КОМИСИЈА  ЗА КУЛТУРНО ЗАБАВЕН ЖИВОТ </h2>
          <ol>
            <li>ЦВЕТА КОЧОВСКА,                                                                           ВЛАЕ</li>
            <li>ВАСКА МИЛКОВСКА,                                                                         КАРПОШ 3и4</li>
            <li>МИРЈАНА МИХАЈЛОВСКА &ndash; ЗАМЕНИК,                                          В.ТАСЕВСКИ</li>
            <li>ДУШАНКА ВЕЉАНОВСКА -  ПРЕТСЕДАТЕЛ,                                КАРПОШ 1и2</li>
            <li>МИЛИЦА ГАВРИЛОВСКА,                                                                 ТАФТАЛИЏЕ</li>
            <li>НИКОЛА КИТАНОВИЌ,                                                                       КОЗЛЕ</li>
            <li>ВАНЧО СТОЛЕСКИ,                                                                           НЕРЕЗИ </li>
          </ol>
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
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.mtsp.gov.mk/" target="_blank"><img src="../images/ministerstvo_trud.gif" alt="" width="194" height="51" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.piom.com.mk/" target="_blank"><img src="../images/fpiom.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.fzo.org.mk/" target="_blank"><img src="../images/fzo.jpg" alt="" width="194" height="76" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://moh.gov.mk/" target="_blank"><img src="../images/zdravstvo.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.ssm.org.mk/" target="_blank"><img src="../images/ssm.gif" alt="" width="194" height="89" border="0" /></a></td>
            </tr>
            <tr>
              <td><img src="../images/pix.gif" alt="" width="1" height="5" /></td>
            </tr>
            <tr>
              <td><a href="http://www.ckrm.org.mk/Default.aspx" target="_blank"><img src="../images/crven_krst.gif" alt="" width="194" height="128" border="0" /></a></td>
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

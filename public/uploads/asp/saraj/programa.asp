
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/saraj.dwt.asp" codeOutsideHTMLIsLocked="false" --><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>��������� �� ���������� ����</title>
<!-- InstanceEndEditable -->
<title>��������� �� ���������� ������</title>
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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../saraj/'"></div>--><div class="logo" onClick="window.location='../saraj/'">��������� �� ���������� <strong>����</strong></div></td>
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
        <td width="90" align="center"><a href="index.asp">�� ���</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="130" align="center"><a href="organizacija.asp">�����������</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="110" align="center"><a href="programa.asp">��������</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="90" align="center"><a href="kontakt.asp">�������</a></td>
        <td width="5"><img src="../images/meni_razdelnik.png" width="5" height="39" /></td>
        <td width="90" align="center"><a href="../mak/">����</a></td>
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
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>��������</strong><!-- InstanceEndEditable --></td>
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
	response.write "�������"
	Case 2
	response.write "��������"
	Case 3
	response.write "����"
	Case 4
	response.write "�����"
	Case 5
	response.write "��"
	Case 6
	response.write "����"
	Case 7
	response.write "����"
	Case 8
	response.write "������"
	Case 9
	response.write "���������"
	Case 10
	response.write "��������"
	Case 11
	response.write "�������"
	Case 12
	response.write "��������"
end select
end sub

            
call openRekset(rs_vesti)

sql="SELECT top 1 * FROM novosti where kategorija=2 ORDER BY datum desc"

rs_vesti.Open sql ,konStr,1,1

%>
<div class="vesnik_najnov_kontejner">
<div class="vesnik_najnov_tekst">����� ������</div>
  <div class="vesnik_najnov"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank"><img src="../vesnik/<%=rs_vesti("slika")%>" width="170" height="231"alt="<%=rs_vesti("naslov")%>" /></a></div>
  <div class="vesnik_najnov_tekst"><a href="../vesnik/<%=rs_vesti("pdf")%>" target="_blank">��� <%=rs_vesti("naslov")&", "%><%ispisi_mesec(rs_vesti("datum"))%></a></div>
  <div class="vesnik_najnov_tekst"><a href="../mak/vesnik_penzioner_plus.asp"><strong>������ �� ���� ������</strong></a></div>
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
  <div class="vesnik_najnov_tekst"><a href="../mak/vesnik_penzioner_plus.asp"><strong>������ �� ���� ������</strong></a></div>
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
  <div class="vesnik_najnov_tekst"><a href="../mak/vesnik_penzioner_plus.asp"><strong>������ �� ���� ������</strong></a></div>
</div>
<%call closeRekset(rs_vesti)%>
</td>
          </tr>
        </table>
          <div class="modul crven">
            <div class="modul_naslov">�������� �� ���������</div>
            <div class="modul_sodrzina zdruzenija">
              <form name="form" id="form">
                <select name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)">
                  <option>������ ���������</option>
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
          <h3 align="center"><strong>�������� <br />
�� ������ �� ����������� �� ������������ �� ������� ���� �� 2016 ���.</strong></h3>
<p>����������� ��  ������������ �� ������� ����, 2016-�� ������ �� ��������� �� ����� ����  ������ �� ������ � ���� �������� �� ���� �������. ���������� ��� ������� � �����  ��� ��� ���� ��������� ����� ��������� ��� ����� �������<em>.&nbsp; </em>���������� ������� ��  ����������� �� �� �������� �� �� 2016 ������ ���� ���� �� �������. ����������  ��� ������������ �� ����������� � �� 2016 ������ �� ����� ������������ �� ���  �� ���������� ������ ��������༝� �� � ���������༝� �� ���. <strong></strong><br />
�������� ��  ������������ ���������� � �� 2016 ������ �� ����� �������� � ������ ��  �����������. �� ���� ������, �� ��������� �������� ����������:<br />
<strong>1. ����������  �� �����������</strong>, �� ����� �� �������� �� ����� ��� �������. ������ ��� ����� �� �����  �������� �� ��� �� ����� �� �� ������������ � ��������� ������: ��������� ��  ������ �� �����������, ������������ �������, ��������� �� ���������� �����,  ��������� ������ (���� �� 2015 ������), ���� � ������������ ����&nbsp; � ���������� �� 2016 ������. ������� �������  �� �� ����� ��� ����� �� �������� �� ��� �� ����� ���������� �� �� ����� ��������  �� ������ �� 2016 ������ � ��������� ����������� �� ������ ��� ������ ��  ��������� ������. �� ������� �� ����� � ����� �������.<strong></strong><br />
<strong>2. ���������  �����</strong> ���� ������� �����, ������� �� ����� ����������, ������ ������� �� �� ����� ��  �������. �� �� �������� �� ������� ����������� �� ���������� �� ������, �� ��  ���������� ����������� �� ����������, ��������� ������, ������������ ����,  ��������� �� �������� �� �������� � ������ �� �����������, ���������� ��  ������ �� �������� � ������ �� �����������. �� �� �������� �� ����������  ������� � ����������� �� ������� �� ������������ ��� ������������� �� �����������  ������. �� �� �������� �� ��������� �� ����������� �� ��� ������� �����������  �� �������� �� ����������� �� ������� �� ������������, ������������ ��  ��������� �� �������� � �������� ����������� �� �������� � ������ � ���������.  ����������� ��������� �� ���������� � �������������� �� �� ����� �������� ��  ���. <strong></strong><br />
�� �� �������� �� �������� ��  ������ &ndash; ������ �� ������ ������ �� ������������ ���� � ����������  ����������� �� �������� ������. �� �� �������� ��������� �� ����������� ��  ���� �� ��������� �� ����������� �� ��� �� ���� �� ������ �� ����������. �� ��  �������� � �������� ������� �� ��������������� �� �������� � ������ ��  �����������.<strong></strong><br />
3. <strong>���������� �����</strong> ���� ����� �� �����������, �&nbsp; �� 2016 ������, ����� ������������ �������,  �� �� ����� ����������� ������ �� ����������� �� ��� ��� �� ���� �� ����������  �� ������������ ����. ��, �� ������� �� ������� � ������ ������� �� ������������  ������� �� ���������-��������� � ��� �� �� �������� ���� �������� �� �����������  �� ��� ��� �� �� ����������� �������� � �������������.<strong></strong><br />
4<strong>. ������������ �������</strong> �� �� �������� �������� �� ����������� ��  ���������� �� ������� �� ������������ ������������ �� � �� ��������� �� ��  ������ �� ������� �� ����. �� ����������� � �� ����� ������� �� ��������, ����  ���� �� ���������� ���� � ��������.<strong></strong><br />
5<strong>. ��������� �� ����� � �������� ����������</strong> �� ����������� ��  ������� ���� �������� �� ������ ����������. �� �� ���������� ���������  �������� ����������,&nbsp; ��������� ��  ������������ �������� ���������� ���� � �� ������� � �� ��� �� 21 ����������.  �� ���� ������ �� �� ����� �� ������� ���������� �� ���� ���������� ���� � ��  ����������� ������� �� ������������ �� �����������. <br />
<strong>6. �������  �� ���������, ��������� � �������� ������� �����, </strong>������� �� ��������� �������� ��  ���������� ��������� �� ��������� � ������ ���� � ��� ������ ��������� ��  ������� �� ������ �� ��������� �����. �� �� ���������� � ������ �������� ��  ���� �� �������.<strong></strong><br />
&nbsp;�� �� ��������� �� 14-�� ���������� ����� ��  ����� ������ � ����, �� ����������� ��������� ����� �� ����� (��� �� ��  �����), �� ��������������&nbsp; �������������  ������ ��� �� ������� ����� ������ �� ���������� ����������� ������ �� ����,  ������ ��� �� ������� �� �����&nbsp; ����� ��  ������������ 20 ��������� � ��.<br />
<strong>7. ��  ����������� � ���������� �������</strong> ���� ���� �� �� �� ������� �������� ���弝� ��� �  ����������&nbsp; �� ������� ����. ������� ��  ���� ���������� �� ���� ��������� �� ��������� � �������� �������. �� ��  ������������ ��������� �� ���� �� ��������. �� ����� �� �������� ���� ��  ���������, �� �� ���������� ����� �� ����������, ������ � ���������� ��  �����. �� �� ���� ����� �� ������������� �� ������� ������.<strong></strong><br />
<strong>8. �������������  � �� 2016 ������</strong> �� �� ������� �� ����� �� ����������� �� �����������, ����� ��������������  �� ���������� ��� ������������� �� �������� �� �������� � ������ ��  �����������,&nbsp; ����� ������� ����������  ��� �� �� ����������� �� ����� �����. ����� ����������� �� �� ������� � �����  �������� &bdquo;��������� ����&bdquo;, ��������� &bdquo;������������ ������&bdquo; �� �������� &bdquo;���� ���������&bdquo;,  ���� � ����� ��������� �� ������������ �� �������� &bdquo;����&bdquo;. ���� ������,  ������������� �� �� ����� � ����� ��� ������������� �� ������ ��������� �� ���  ���������� �� ����, ���� � ����� ������� ��� �� ������ ����.<strong></strong><br />
<strong>9. �� 2016  ������, �� �� ������������ �����������</strong> �� ��������� ���������� ����,  ���� � ��������� ����� �����������. ����������� ������ �� ���������� ��  ������ �� ��������� �� ���������� �� ��������� ���� ����������� � ������,  ���� � �� ������ �� ����������� �� ������ �����, ���� �� ���� ��� ����� ��  ���������, ������ ��������� ��� ����������� �� ������� ��������. �����������  ����� ��������� �� ����������� ������, �� �������� ���� �� ����� �� ��������  ���� �� ���������. �� �������� ����������� � �� ���������� �� ����������� ����  ���������� ���� � �������������. �� �������� ����������� � �� ��������  ��������� � ������� �� ��� �� ��������.<strong></strong><br />
<strong>10. �� ��  ������ ���������� ������</strong> �� �� �� 2016 ������, <strong>������� �� ������</strong> �� ����������� �� ���� �� �������&nbsp; �� ����� ����� ����: ������� �� ���������, ��  ���������, �������� ����������, ������� � ��.<strong></strong><br />
<strong>11. �� ��  �� ������� �������� ��������</strong> �� <strong>����������� ��  ����������</strong>&nbsp; �� �����������.  ����������� �� �����������, �� ��������� ��������� �� �������� �� �������� ��  ���������� ���� � ������ �� ������� ������� �� ��� ���� �� �� ������������  �������� � ����� ��������� �� �����������.<br />
<strong>12. �� 2016  ������, �� �� ���������� �������� �o �������� ������</strong> �� ������������ �� �����������  �� ����� ����������.<br />
<strong>13.&nbsp; �����������, �� 2016 ������ �� �� ��������</strong> � �� ����� ����������  ��� �� ����� �� �������� �� �� ������ ���� ��������.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
              <td width="55%">&nbsp;</td>
              <td><p><strong>�� ������� ����� �� �� ����</strong></p></td>
              </tr>
</table>
<h3 align="center"><strong>P r o g r a m</strong><br />
  <strong>P&euml;r pun&euml;n e Shoqat&euml;s s&euml; pensionist&euml;ve t&euml; komun&euml;s Saraj  p&euml;r vitin 2016</strong></h3>
<p>Shoqata e  pensionist&euml;ve t&euml; komun&euml;s Saraj, vitin 2016 e fillon me mandatin e tret&euml; me  organe dhe trupa t&euml; freskuara me an&euml;tar&euml; t&euml; rinj. Dy mandatet e kaluara, edhe  pse si shoqat&euml; relativisht e re ishin mjaft&euml; t&euml; suksesshme. Ajo p&euml;rvoj&euml;  shoqat&euml;s do t'i sh&euml;rbej q&euml; viti 2016 t&euml; jet&euml; edhe m&euml; e&nbsp; suksessh&euml;m. Pjesa m&euml; e madhe e aktiviteteve  t&euml; shoqat&euml;s edhe n&euml; vitin 2016 do jen&euml; vazhdim i aktiviteteve t&euml; vitit paraprak  duke i zgjeruar ato dhe duke i mbi nd&euml;rtuar.<br />
  Bart&euml;s t&euml;  aktiviteteve programore edhe n&euml; vitin 2016 do t&euml; jen&euml; organet dhe trupat e  shoqat&euml;s. P&euml;r k&euml;t&euml; vit, planifikohen k&euml;to aktivitete:<br />
  <strong>1. Kuvendi i shoqat&euml;s,</strong> brenda vitit do t&euml; mbaj dy mbledhje. Nj&euml;r&euml;n mbledhje kah fundi i muajit  shkurt n&euml; t&euml; cil&euml;n do t&euml; duhet t&euml; shqyrtohen dhe aprovohen dokumentet: Raporti  p&euml;r pun&euml;n e Shoqat&euml;s, Raporti financiar, Raporti i K&euml;shillit mbik&euml;qyr&euml;s,  Llogaria p&euml;rfundimtare (k&euml;to p&euml;r vitin 2015), si dhe Plani financiar dhe  Programi p&euml;r pun&euml; n&euml; vitin 2016 etj. Mbledhjen e dyt&euml; do ta mbaj&nbsp; kah fundi i vitit kur do t&euml; duhet  eventualisht t&euml; b&euml;j Rebalancin e buxhetit p&euml;r vitin 2016 dhe financimin e  p&euml;rkohsh&euml;m p&euml;r tre muajt e par&euml; t&euml; vitit t&euml; ardhsh&euml;m. Sipas nevoj&euml;s, do t&euml; mbaj  edhe mbledhje t&euml; tret&euml;.<br />
  <strong>2. K&euml;shilli ekzekutiv,</strong> si organ ekzekutiv, mbart&euml;s i shum&euml; aktiviteteve, mbledhjet e veta do&nbsp; t'i mbaj sipas nevoj&euml;s. Do t&euml; angazhohet p&euml;r  realizimin e suksessh&euml;m t&euml; Programit p&euml;r pun&euml;, do t'i p&euml;rgatis mbledhjet p&euml;r  Kuvend, Llogarin&euml; p&euml;rfundimtare, Planin financiar, Raportin p&euml;r pun&euml;n e  organeve dhe trupave t&euml; shoqat&euml;s, Programin p&euml;r pun&euml;n e organeve dhe trupave t&euml;  shoqat&euml;s. Do t&euml; angazhohet p&euml;r aplikimin e drejt&euml; dhe t&euml; t&euml;r&euml;sish&euml;m t&euml; t&euml;  drejtave t&euml; pensionist&euml;ve q&euml; dalin nga Ligjet p&euml;rkat&euml;se. Do t&euml; angazhohet p&euml;r  afirmimin e Shoqat&euml;s me q&euml;llim t&euml; realizimit m&euml; t&euml; suksessh&euml;m t&euml; detyrave n&euml;  interes t&euml; pensionist&euml;ve, arritje rezultatesh n&euml; pun&euml; dhe p&euml;r p&euml;rgjegj&euml;si m&euml; t&euml;  madhe t&euml; organeve, trupave dhe an&euml;tar&euml;ve. Afirmimi i m&euml;tejm&euml; i deg&euml;ve dhe v&euml;nia  e kontakteve m&euml; t&euml; shpeshta me ata. Hapja e Klubit-Q&euml;ndrimit ditor t&euml;  pensionist&euml;ve. Do t&euml; angazhohet q&euml; selia e Shoqat&euml;n&nbsp; t&euml; jet&euml; n&euml; territor t&euml; shoqat&euml;s me q&euml;llim q&euml;  t&euml; jet&euml; m&euml; af&euml;r an&euml;tar&euml;ve. Do t&euml; angazhohet gjithnj&euml; p&euml;r transparenc&euml; n&euml; pun&euml;n  e organeve dhe trupave t&euml; shoqat&euml;s etj.&nbsp; <br />
  <strong>3. K&euml;shilli mbik&euml;qyr&euml;s</strong> si organ i Shoqat&euml;s, edhe n&euml; vitin 2016, p&euml;rve&ccedil; pun&euml;s financiare, do t&euml;  p&euml;rcjell&euml; edhe mbar&euml; pun&euml;n me q&euml;llim q&euml; ajo t&euml; jet&euml; n&euml; pajtim me aktet  normative shoqat&euml;s. Ai, sipas nevoj&euml;s do t&euml; p&euml;rgatis edhe Raport me shkrim p&euml;r  situat&euml;n financiare, t&euml; hyrat-t&euml; dalat dhe ato do t'i prezantoj&nbsp; para organeve t&euml; shoqat&euml;s me q&euml;llim q&euml; ato t&euml;  p&euml;rdoren n&euml; m&euml;nyr&euml; t&euml; drejt&euml; dhe <br />
  transparente.&nbsp;&nbsp;&nbsp; <br />
  <strong>4.  Komisioni p&euml;r Statut</strong> do t&euml; b&euml;j p&euml;rshtatjen e Statutit t&euml; shoqat&euml;s n&euml; pajtim me  Ligjin p&euml;r organizimin pensionist i cili &euml;sht&euml; n&euml; procedur&euml; p&euml;r aprovim n&euml;  organet e LShPM. Do t&euml; intervenoj&euml; edhe n&euml; dispozita tjera t&euml; Statutit, atje ku  do t&euml; konstatohet se &euml;sht&euml; e nevojshme.<br />
  <strong>5.  Komisioni p&euml;r sport</strong> dhe aktivitete sportive i shoqat&euml;s do t&euml; p&euml;rgatis programin e vet p&euml;r k&euml;to  aktivitete. Do t'i organizoj&euml; aktivitetet sportive lokale. Do t&euml; marr&euml; pjes&euml; na  aktivitete sportive regjionale dhe mund&euml;sisht n&euml; ato t&euml; 21-tat republikane. N&euml;  k&euml;t&euml; drejtim, do t&euml; b&euml;het p&euml;rpjekje p&euml;r p&euml;rgatitjet m&euml; t&euml; mira n&euml; k&euml;to gara si  dhe n&euml; pjes&euml;marrje m&euml; masive t&euml; pensionist&euml;ve t&euml; shoqat&euml;s. <br />
  <strong>6.  Komisioni p&euml;r ekskursione, rekreacion dhe jet&euml;n kulturore-zbavit&euml;se,</strong> do t&euml; p&euml;rgatis program  p&euml;r aktivitete. Do t&euml; organizohen ekskursione nj&euml;ditore&nbsp; n&euml; Maqedoni dhe Kosov&euml; si dhe ekskursion 2-3  ditor n&euml; Shqip&euml;ri, p&euml;r vizit&euml; t&euml; vendeve historike. Do t&euml; organizohet edhe  verim grupor n&euml; bregdetin shqiptar.<br />
  Do t&euml; merret pjes&euml; n&euml; Revyalin e  14-t&euml; regjional t&euml; k&euml;ng&euml;ve, muzik&euml;s dhe valleve, n&euml; Revyalin folklorik  ballkanik n&euml; Shkup (n&euml;se do t&euml; mbahet), n&euml; takimin multietnik tradicional q&euml; do  t&euml; mbahet n&euml; Qendr&euml;n rekreative sportive n&euml; Saraj me rastin e dit&euml;s s&euml;  pensionist&euml;ve 20 shtatori etj.<br />
  <strong>7. Sh&euml;ndet&euml;sis&euml;  dhe &ccedil;&euml;shtjeve sociale</strong> po ashtu do tu jepet r&euml;nd&euml;si e posa&ccedil;me pasi q&euml; kjo mosh&euml;  e tret&euml; m&euml; s&euml; shumti ka nevoj&euml; p&euml;r t&euml;. Bart&euml;s i aktiviteteve do t&euml; jet&euml;  Komisioni p&euml;rkat&euml;s. Do t&euml; mbahen ligj&euml;rata me tema nga sh&euml;ndet&euml;sia. N&euml;  bashk&euml;punim me Kryqin e kuq t&euml; Maqedonis&euml;, do t&euml; kontrollohet tensioni, sheqeri  dhe yndyra n&euml; gjak si dhe do t&euml; ket&euml; p&euml;rkujdesje sh&euml;ndet&euml;sore n&euml; kushte  sht&euml;piake.<br />
  <strong>8.  Informimi edhe n&euml; vitin 2016</strong> do t&euml; b&euml;het p&euml;rmes strukturave n&euml; Shoqat&euml;, p&euml;rmes  kryetar&euml;ve t&euml; deg&euml;ve t&euml; cil&euml;t marrin pjes&euml; n&euml; mbledhjet e organeve drejtuese.  Do&nbsp; t&euml; b&euml;het edhe p&euml;rmes shpalljeve me  shkrim t&euml; cilat do t&euml; vihen n&euml; vende t&euml; dukshme. Informim i mir&euml; do t&euml; b&euml;het  edhe p&euml;rmes gazet&euml;s &ldquo;Penzioner plus&rdquo;, shtojc&euml;s &ldquo;Penzionerski vidici&rdquo; n&euml; gazet&euml;n  &ldquo;Nova Makedonia&rdquo; si dhe p&euml;rmes faqes shtojc&euml; p&euml;r pensionist&euml;t n&euml; gazet&euml;n  &ldquo;Koha&rdquo;. K&euml;t&euml; vit, informimi do t&euml; b&euml;het edhe p&euml;rmes WEB n&euml;n faqes s&euml; shoqat&euml;s  ton&euml; n&euml; LShPM,&nbsp; si dhe p&euml;rmes Biltenave  q&euml; boton LShPM.<br />
  <strong>9. N&euml; vitin  2016 do t&euml; thellohet bashk&euml;punimi</strong> me Pushtetin e vet&euml;qeverisjes lokale n&euml; Saraj, si  dhe sip&euml;rmarrjet publike n&euml; nivel&nbsp; lokal.  Bashk&euml;punimi do t&euml; vazhdoj edhe me Lidhjen e shoqatave t&euml; pensionist&euml;ve t&euml;  Maqedonis&euml; ku shoqata &euml;sht&euml; an&euml;tare, si dhe me Lidhjen e shoqatave pensioniste  t&euml; qytetit t&euml; Shkupit. N&euml; k&euml;to dy Lidhje shoqatash, shoqata jon&euml; ka p&euml;rfaq&euml;sues  n&euml; Kuvendet e tyre. Bashk&euml;punimi i mir&euml; filluar vitin e kaluar do t&euml; vazhdoj  dhe do t&euml; thellohet edhe m&euml; mir&euml; me Kryqin e kuq t&euml; Maqedonis&euml;.<br />
  Do t&euml; bashk&euml;punohet me mjetet e  informimit si ato t&euml; shtypit po ashtu edhe ato elektronike. Bashk&euml;punimi do t&euml;  vazhdoj edhe me shoqatat pensioniste simotra sidomos ato t&euml; regjionit, si dhe  me Organizata dhe shoqata humanitare.<br />
  <strong>10. Do t&euml;  b&euml;het p&euml;rpjekje maksimale</strong> q&euml; n&euml; vitin 2016 <strong>Aktivi  i grave</strong> n&euml; shoqat&euml; t&euml; jet&euml; m&euml; aktiv p&euml;rmes formave t&euml; ndryshme: pjes&euml;marrje  n&euml; ekskursione, ligj&euml;rata, gara sportive, Revyale etj.<br />
  <strong>11. Kujdes  m&euml; i madh do t'i kushtohet bashk&euml;punimit me deg&euml;t</strong> e shoqat&euml;s. Drejtues t&euml; shoqat&euml;s  do t&euml; marrin pjes&euml; n&euml; takimet e K&euml;shillave t&euml; deg&euml;ve dhe takime tjera me  an&euml;tar&euml;t n&euml; deg&euml; ku do t&euml; shqyrtohen raporte dhe akte t&euml; shoqat&euml;s. <br />
  <strong>12. Do t&euml; organizoj  pun&euml;n p&euml;r aktivitete t&euml; ndryshme</strong> n&euml; Qendr&euml;n p&euml;r q&euml;ndrim ditor t&euml; pensionist&euml;ve. <br />
  <strong>13.  Shoqata, n&euml; vitin 2016 do t&euml; angazhohet </strong>edhe n&euml; aktivitete t&euml; tjera t&euml;  cilat brenda vitit do t&euml; paraqiten si t&euml; nevojshme.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="55%">&nbsp;</td>
    <td><p><strong>Nga K&euml;shilli ekzekutiv&nbsp; ZP Saraj</strong></p></td>
  </tr>
</table>
          
        <!-- InstanceEndEditable --></td>
        <td width="200" valign="top"><!-- InstanceBeginEditable name="desno" -->
<div class="modul">
            <div class="modul_naslov">����</div>
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
            <div class="modul_dno"><a href="../mak/lista.asp?kat=1">�����...</a></div>
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
    <td align="right" class="ankor">���������� �� <a href="http://www.medium3.mk" class="ankor">Medium 3</a></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>

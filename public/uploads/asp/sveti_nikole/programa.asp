
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/sveti_nikole.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>��������� �� ���������� ����� ������</title>
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
    <td class="heder" width="980"><div class="logo" onClick="window.location='../sveti_nikole/'">��������� �� ���������� <strong>����� ������</strong></div></td>
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
        <td width="150" align="center"><a href="dokumenti.asp">���������</a></td>
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
          <p>��� ������ �� ���� 16 ���� 3 �� �������� �� �����������  �� ������������ �� ������� ����� ������ �� �������� ��������          </p>
          <h3 align="center"><strong>� � � � � � � �</strong><br />
            <strong>�� ������ �� �������� � ������ �� �� ����� ������ �� 2016 ������</strong></h3>
          <p>������������ ��������� � ������ ��  �������� �� ���������� �� ��������� ������ ���������� ������������� ��  ���������� ������, ������ � ���� �� �������� � ������� ���� �� ����������� ��  ����������. �� ������ ��� �� ���������� ������������� �� ����������� �������  �� �����������, � ������������� �� ������������� ������� � ������� � ��  ������������ ������� �� ����������. ��� ������ �� ���� �������� �� ��  ����������� ��������� �������� �� ������ �� ��� �� �� ���������� ������������ � <br />
������������� ������� �� �������  ����������� �� ������������ ����������.</p>
          <p><strong>1. ����Ō��� � �������������� �� ���������� ������� �� </strong><br />
  <strong>������� �� ���������� � ������������� �����������</strong><br />
            ��������� �� ���������� � ������  ������� � ��������� ����� �� ������� �� ������� ��:<br />
            - ������������ �� ������������ ���� ��  �������� �� ����������� � ������� �� ��������� � ��������, ���� � ���������  ����������� �� ����������� ��� �� ������������� �� ��������� ��� ����� ��  �������� ������������ - ����������� �� ��������� �������� ����, ���������,  ����������, ������ � ��.<br />
            - ���������� �� �������� �������, ������  � ������ �� �������� ������� �� �������� ������ ���������� �� ����� ��  ������������ �� �������� <br />
            ������ ��� ���������</p>
          <p> <strong>2. ���������� �����ȣ���� �����Ō� �� �����������</strong><br />
            - ������������ � ��������� ��  ��������� ��������� � ������������ &nbsp;�������<br />
            - ��������� �������� �� �������������  �� ��������� � ��������� �� �������� ������� �� ��������<br />
            - ���������� �� ��������� ������� ��  ����������-���������� �������� �� <br />
            ����������� �� ��������� �� ����������  � ����� ������������ � ������� ������� �� �����������<br />
            - ���������� �� ������������ ������ ��  ������������ �� ������������ �� ������� ����, ����, �������, ������� � �����  ������� �������� �� ���� ������������<br />
            - ������������ � ��������� �� ��������  �� ���������� �����, ������� ������� � ����� ��������� ������ ��� ������� ��  ����������� �� �������� ������� ������� � �������� �� �����������</p>
          <p> <strong>3. ������������ �� ������������� � ���ȣ������ ������� </strong><br />
            <strong>�� ������������</strong> <br />
            - ������������ �� ��������� �� �������  �� ������������� � ���������� ������� �� ������������<br />
            - ������������ �� ��������� ��������  ������� &ndash; ����� �� ����� ��������, ����, �������� �� ���� ����� � ��.<br />
            - ������� �� �������� �� ������ ��  ������ �������� � ������������ �� ��������� �������� �� ������ �� ���������  �����<br />
            - �� ��������� �� �������� ���� �� �� ����������  ���������� �� ����� �� ������� ��������� ����������, ����� ������ � ����������  �� ���������� �����<br />
            - ������ �� �������������� ��  ������������ �� ������ � ���������� �� �����</p>
          <p> <strong>4. ���� �� ����������� � �����</strong><br />
            - � �� ��������� ������ � ������ ��  ��������� �� ������������ ����� ������ �� ����, �� �� ��������� �������� ��  ���� ������ �� ������������ ��� �� ���������� ������ ���������� ��������� �����<br />
            - ������� �� ����������� �� ��������  �������� �� ���������� ����� �� ������ �� ���������� �������� �� �������� ����</p>
          <p> <strong>5. �������� &ndash; ����������� ����������</strong><br />
            - ����� ������������� �� ��������� ��  �������� ����������� ���������� �� �� ����������� ������������ � ��������������  �� :<br />
            - ��� ������������ ���������� �� �����  �� �������� �� ������������<br />
            - ���������� �� ������� ��� ��  ���������� �������� � ��������� �� ���������� �� ������������<br />
            - �������������� �� ������������ ��  ����� � ��������� �� �� ��������� �� ������������ ����� &ndash; ���������� ��������,  ������, ������ ������ � ������ �� ��������-��������� ������������ � ����������  ����� �� ����������� � ������� ������ �� ���<br />
            - ������������ ������ � ������ ��  ���������� �� ����� ��������� �������� �� �������� ����������, ���������� �  ������</p>
          <p> <strong>6. �������� &ndash; ������� �����</strong><br />
            -�� ���� ���������� �� ������ ��  �������� ��������� ����� ����������� �� ������ �� ����������� ���������� �  �������� �� ���������� �� ���� ������<br />
            -�� �� �������� ��������� ��  ������������ � ������������ ������� �� ���� ���������� �� ������� �����, ��� �  ������<br />
            -��������� ������������ �� ������ ��  ������������� �� �������� �� ���������� �� ������� �� ��������� � ���������.</p>
          <p> <strong>7.�����������</strong><br />
            ������������� �� ������������ ��  ��������� �� �� ��������� ����� ��������� ���������� �� ��������� �����,  ��������� ������������ ��������, �������������� ����� � �������� ��  ������������� �� �������.</p>
          <p> <strong>8. ����� �� �����������</strong><br />
            �� ������� �������� �� �� ����������  ������������ �� ������� �� ���� &ndash; �����������. �� ����� �� �������������  ���������� �������� �� �� ���������� ��������������, ��������, ������������,  ���������� � ����������� �� ����������� �� ������� �� �������� � �����������.</p>
          <p> <strong>9.</strong><strong> ��������� �� ����������� �� ���������  ����������, ����� ���������, ������ �� ����������� �� ���������� ��  ���������, ���� � ������� � ��������� �����������.</strong></p>
          <p><strong>10. ������� �� ����������� �� ���������� ��  ������������ �������� �� ������������ �� ������� ������� � ������� ��������,  ������� ������������ �� 20 ��������� - ����� �� ������������</strong></p>
          <p>�������� ��� �� ���������� �� �  ���������� �� �������� � ������ ��� ������� ������� �� �����������. </p>
          <p>���������� � �������� �� ���� �������� �  ����������.          </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
    <td width="55%"> </td>
    <td><p>������ �������� <br />
      ����������� �� �� ����� ������</p></td>
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

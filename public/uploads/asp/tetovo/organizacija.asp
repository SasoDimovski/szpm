
<!--#include virtual="/Admin/_properties.asp"-->
<%call connectDB%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="mk" xml:lang="mk"><!-- InstanceBegin template="/Templates/tetovo.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<!-- InstanceBeginEditable name="doctitle" -->

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
    <td class="heder" width="980"><!--<div class="logo_slika" onClick="window.location='../tetovo/'"></div>--><div class="logo" onClick="window.location='../tetovo/'">��������� �� ���������� <strong>������</strong></div></td>
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
        <td width="110" align="center"><a href="programa.pdf" target="_blank">��������</a></td>
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
        <td align="center" class="naslov"><!-- InstanceBeginEditable name="naslov" --><strong>������������� ���������</strong><!-- InstanceEndEditable --></td>
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
          <table width="100%" class="dijagram">
            <tr>
    <td colspan="3">��������</td>
    </tr>
  <tr>
    <td width="50%">������� �����</td>
    <td width="50%">�������� �����</td>
  </tr>
      </table>
          <table width="100%" class="dijagram">
            <tr>
              <td width="33%">������� �� ����������, ������������� � ��������� �������</td>
              <td width="33%">������� �� �����, ��������� � �������� ������� �����</td>
              <td width="33%">������� �� ����� � �������� ����������</td>
              </tr>
            <tr>
              <td>������� �� ���������, ����������� ������� � �������� �������</td>
              <td>����� �� �����������</td>
            </tr>
          </table>
          <p>�� �� ������ ��� 21 ����� ��������.<br />
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
    <td align="center" valign="top">����� ���������, <br />
      ����������� �� ��������</td>
    <td align="center" valign="top">&nbsp;</td>
    <td align="center" valign="top">������ ������,<br />
����������� �� ������� ����� � �� �� ������</td>
	  
    <td align="center" valign="top">&nbsp;</td>
    <td valign="top">�������� ��������,<br />
      ��������</td>
    <td valign="top">&nbsp;</td>
    <td valign="top">����� �������,<br />
      ��������</td>
    </tr>
  <tr>
    </tr>
</table>
          <h3>�������� �� �������� ������ 2023-2027 ������</h3>
            <table  width="100%">
                  <tr>
                      <td>�.��.</td>
                      <td>&nbsp; ��� � �������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>1.</td>
                      <td>������� ��������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>2.</td>
                      <td>������� ������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>3.</td>
                      <td>������ ����������</td>
                      <td>�.����</td>
                  </tr>
                  <tr>
                      <td>4.</td>
                      <td>������ ���������</td>
                      <td>�.����</td>
                  </tr>
                  <tr>
                      <td>5.</td>
                      <td>����� �����������</td>
                      <td>�.����</td>
                  </tr>
                  <tr>
                      <td>6.</td>
                      <td>����� ������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>7.</td>
                      <td>������� ������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>8.</td>
                      <td>���� ������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>9.</td>
                      <td>������ ������</td>
                      <td>�.������</td>
                  </tr>
                  <tr>
                      <td>10.</td>
                      <td>������� ����������</td>
                      <td>�.������</td>
                  </tr>
                  <tr>
                      <td>11.</td>
                      <td>���� ��������</td>
                      <td>�.������</td>
                  </tr>
                  <tr>
                      <td>12.</td>
                      <td>���� ��������</td>
                      <td>����������</td>
                  </tr>
                  <tr>
                      <td>13.</td>
                      <td>����� ���������</td>
                      <td>�����</td>
                  </tr>
                  <tr>
                      <td>14.</td>
                      <td>����� ���������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>15.</td>
                      <td>����� ������������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>16.</td>
                      <td>����� ���������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>17.</td>
                      <td>������ ����������</td>
                      <td>���������</td>
                  </tr>
                  <tr>
                      <td>18.</td>
                      <td>�������� �����</td>
                      <td>���������</td>
                  </tr>
                  <tr>
                      <td>19.</td>
                      <td>������� �����������</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>20</td>
                      <td>������ �������</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>21.</td>
                      <td>���� ������</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>22.</td>
                      <td>����� ��������</td>
                      <td>�.�.����</td>
                  </tr>
                  <tr>
                      <td>23.</td>
                      <td>����� �����������</td>
                      <td>�.�.����</td>
                  </tr>
                  <tr>
                      <td>24.</td>
                      <td>����� ����</td>
                      <td>�.�.����</td>
                  </tr>
                  <tr>
                      <td>25.</td>
                      <td>����� �������</td>
                      <td>�.����</td>
                  </tr>
                  <tr>
                      <td>26.</td>
                      <td>����� �������� </td>
                      <td>�.����</td>
                  </tr>
                  <tr>
                      <td>27.</td>
                      <td>����� �����������</td>
                      <td>�.����</td>
                  </tr>
                  <tr>
                      <td>28.</td>
                      <td>����� �������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>29.</td>
                      <td>��� ����������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>30.</td>
                      <td>����� ���������� </td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>31.</td>
                      <td>����� ������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>32.</td>
                      <td>������� ����������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>33.</td>
                      <td>����� �����������</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>34.</td>
                      <td>��� ����</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>35.</td>
                      <td>������ ������</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>36.</td>
                      <td>������� ����</td>
                      <td>�������</td>
                  </tr>
                  <tr>
                      <td>37.</td>
                      <td>����� ���������</td>
                      <td>������ </td>
                  </tr>
                  <tr>
                      <td>38.</td>
                      <td>����� ������</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>39.</td>
                      <td>����� ��������</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>40.</td>
                      <td>����� �����</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>41.</td>
                      <td>����� �����</td>
                      <td>������</td>
                  </tr>
                  <tr>
                      <td>42.</td>
                      <td>���� �������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>43.</td>
                      <td>���� �������</td>
                      <td>���������</td>
                  </tr>
                  <tr>
                      <td>44.</td>
                      <td>���� �����</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>45.</td>
                      <td>����� ��������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>46.</td>
                      <td>����� �������</td>
                      <td>��������</td>
                  </tr>
                  <tr>
                      <td>47.</td>
                      <td>���� ��������</td>
                      <td>��������</td>
                  </tr>
              </table>
          <p align="center"><img src="Izvrsen-odbor.jpg" alt="" width="520" height="363" style="float:none" /><br />
            <strong><em>������� �����</em></strong></p>
          <h3><strong>������� �����</strong>          �� ���������� ������ 2023-2027�.</h3>
          <table width="100%" border="0">
            <tr>
              <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                      <td valign="top"><strong>�.��.</strong></td>
                      <td valign="top"><strong> ���    � �������</strong></td>
                      <td valign="top"><strong>&nbsp;&nbsp;�������</strong></td>
                  </tr>
                  <tr>
                      <td valign="top">1.</td>
                      <td valign="top">������ ������</td>
                      <td valign="top">&nbsp;    �.������</td>
                  </tr>
                  <tr>
                      <td valign="top">2.</td>
                      <td valign="top">������ ������</td>
                      <td valign="top">&nbsp;    ������</td>
                  </tr>
                  <tr>
                      <td valign="top">3.</td>
                      <td valign="top">������ ����������</td>
                      <td valign="top">&nbsp;    �.����</td>
                  </tr>
                  <tr>
                      <td valign="top">4.</td>
                      <td valign="top">�蚼��� ����������</td>
                      <td valign="top">&nbsp;    ���������</td>
                  </tr>
                  <tr>
                      <td valign="top">5.</td>
                      <td valign="top">����� ��������</td>
                      <td valign="top">&nbsp;    �.�.����</td>
                  </tr>
                  <tr>
                      <td valign="top">6.</td>
                      <td valign="top">����� ������</td>
                      <td valign="top">&nbsp;    ������</td>
                  </tr>
                  <tr>
                      <td valign="top">7.</td>
                      <td valign="top">����� ���������</td>
                      <td valign="top">&nbsp;    ������</td>
                  </tr>
                  <tr>
                      <td valign="top">8.</td>
                      <td valign="top">���� �������</td>
                      <td valign="top">&nbsp;&nbsp;    ��������</td>
                  </tr>
                  <tr>
                      <td valign="top">9.</td>
                      <td valign="top">����� �������</td>
                      <td valign="top">&nbsp;    �������</td>
                  </tr>
                  <tr>
                      <td valign="top">10.</td>
                      <td valign="top">���� ��������</td>
                      <td valign="top">�.������</td>
                  </tr>
                  <tr>
                      <td valign="top">11.</td>
                      <td valign="top">������ �������</td>
                      <td valign="top">������</td>
                  </tr>
                  <tr>
                      <td valign="top">12.</td>
                      <td valign="top">������� ����������</td>
                      <td valign="top">������</td>
                  </tr>
                  <tr>
                      <td valign="top">13.</td>
                      <td valign="top">����� ������</td>
                      <td valign="top">�������</td>
                  </tr>
                  <tr>
                      <td valign="top">14.</td>
                      <td valign="top">������� ����������</td>
                      <td valign="top">�.������</td>
                  </tr>
                  <tr>
                      <td valign="top">15.</td>
                      <td valign="top">����� ������������</td>
                      <td valign="top">��������</td>
                  </tr>
                  <tr>
                      <td valign="top">16.</td>
                      <td valign="top">����� ��������</td>
                      <td valign="top">�.����</td>
                  </tr>
                  <tr>
                      <td valign="top">17.</td>
                      <td valign="top">����� �����</td>
                      <td valign="top">������</td>
                  </tr>
              </table></td>
            </tr>
      </table>
          <h3>�������� �����              �� �������� ������ 2023-2027 ������</h3>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">�.��.</td>
        <td valign="top">&nbsp;&nbsp;&nbsp;    ��� �&nbsp; �������</td>
        <td valign="top">&nbsp;&nbsp;    �������</td>
        </tr>
    <tr>
        <td valign="top">1.</td>
        <td valign="top">������� ����������</td>
        <td valign="top">�����������</td>
        </tr>
    <tr>
        <td valign="top">2.</td>
        <td valign="top">���� �����</td>
        <td valign="top">����</td>
        </tr>
    <tr>
        <td valign="top">3.</td>
        <td valign="top">���� �����</td>
        <td valign="top">����</td>
        </tr>
    <tr>
        <td valign="top">4.</td>
        <td valign="top">����� ��������</td>
        <td valign="top">����</td>
        </tr>
    <tr>
        <td valign="top">5.</td>
        <td valign="top">���� �����</td>
        <td valign="top">����</td>
        </tr>
</table>

          
          <h2><strong>�����ȣ� �� ����������, ������������� � ��������� �������:</strong></h2>
            <p>1.����� ������ - �����������</p>
            <p>2.������� ����������</p>
            <p>3.����� �����������</p>
            <p>4.����� ������            </p>
            <h2><strong>�����ȣ� �� ����� � �������� ���������� �� ������������</strong></h2>
            <p>1.���� �������� - �����������</p>
            <p>2.����� �����</p>
            <p>3.������ ������</p>
            <p>4.����� ���������            </p>
            <h2><strong>�����ȣ� �� ���������, ����������� ������� � ���ȣ����  �������</strong></h2>
            <p>1.��.����� ����������� - �����������</p>
            <p>2.����� ��������</p>
            <p>3.������ ����������</p>
            <p>4.���� ������            </p>
            <h2><strong>�����ȣ� �� �����, �������ȣ� � ��������� ������� �����</strong></h2>
            <p>1.������ ������� - �����������</p>
            <p>2.����� �������</p>
            <p>3.����� ������������</p>
            <p>4.����� �������        </p>
            <h2><strong>��  ������� ������������ �� ����� ����������, �������� ������ 2023-2027</strong></h2>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top"><strong>�.��.</strong></td>
                    <td valign="top"><strong>��� �    �������</strong></td>
                    <td valign="top"><strong>�������</strong></td>
                    </tr>
                <tr>
                    <td valign="top">1. </td>
                    <td valign="top">����� �����������</td>
                    <td valign="top">�.����</td>
                    </tr>
                <tr>
                    <td valign="top">2.</td>
                    <td valign="top">���� �������</td>
                    <td valign="top">������</td>
                    </tr>
                <tr>
                    <td valign="top">3.</td>
                    <td valign="top">���� ����� </td>
                    <td valign="top">��������</td>
                    </tr>
                <tr>
                    <td valign="top">4.</td>
                    <td valign="top">������ �������</td>
                    <td valign="top">�.�.����</td>
                    </tr>
                <tr>
                    <td valign="top">5.</td>
                    <td valign="top">���� ������</td>
                    <td valign="top">�.����</td>
                    </tr>
                <tr>
                    <td valign="top">6.</td>
                    <td valign="top">������� ���������</td>
                    <td valign="top">�.������</td>
                    </tr>
                <tr>
                    <td valign="top">7.</td>
                    <td valign="top">���� ���������</td>
                    <td valign="top">�����</td>
                    </tr>
                <tr>
                    <td valign="top">8.</td>
                    <td valign="top">���� ������</td>
                    <td valign="top">������</td>
                    </tr>
                <tr>
                    <td valign="top">9.</td>
                    <td valign="top">���� ������</td>
                    <td valign="top">��������</td>
                    </tr>
                <tr>
                    <td valign="top">10.</td>
                    <td valign="top">����� ���������</td>
                    <td valign="top">����������</td>
                    </tr>
                <tr>
                    <td valign="top">11.</td>
                    <td valign="top">����� �����</td>
                    <td valign="top">������</td>
                    </tr>
                <tr>
                    <td valign="top">12.</td>
                    <td valign="top">�������� ������������</td>
                    <td valign="top">��������</td>
                    </tr>
                <tr>
                    <td valign="top">13.</td>
                    <td valign="top">���� ������</td>
                    <td valign="top">���������</td>
                    </tr>
                <tr>
                    <td valign="top">14.</td>
                    <td valign="top">��� ������</td>
                    <td valign="top">�������</td>
                    </tr>
                <tr>
                    <td valign="top">15.</td>
                    <td valign="top">������ ������</td>
                    <td valign="top">�������</td>
                    </tr>
                <tr>
                    <td valign="top">16.</td>
                    <td valign="top">������� ������</td>
                    <td valign="top">������</td>
                    </tr>
                <tr>
                    <td valign="top">17.</td>
                    <td valign="top">����� ����������</td>
                    <td valign="top">��������</td>
                    </tr>
                <tr>
                    <td valign="top">18.</td>
                    <td valign="top">���� ����������</td>
                    <td valign="top">�������</td>
                    </tr>
                <tr>
                    <td valign="top">19.</td>
                    <td valign="top">����� ����������</td>
                    <td valign="top">��������</td>
                    </tr>
                <tr>
                    <td valign="top">20.</td>
                    <td valign="top">����� �����</td>
                    <td valign="top">�������</td>
                    </tr>
                <tr>
                    <td valign="top">21.</td>
                    <td valign="top">��������� �������</td>
                    <td valign="top">�������</td>
                    </tr>
                <tr>
                    <td valign="top">22.</td>
                    <td valign="top">����� ������</td>
                    <td valign="top">���������</td>
                    </tr>
            </table>
<p>&nbsp;</p>
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

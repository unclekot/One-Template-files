<div class="search_form_tab" style="margin-top:-9px">
 <div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
  <div class="buttonsprofileSec"><a href="/settings" onClick="Page.Go(this.href); return false;"><div><b>�����</b></div></a></div>
  <a href="/settings/privacy" onClick="Page.Go(this.href); return false;"><div><b>�����������</b></div></a>
  <a href="/settings/blacklist" onClick="Page.Go(this.href); return false;"><div><b>������ ������</b></div></a>
  <a href="/balance" onClick="Page.Go(this.href); return false;"><div><b>������</b></div></a>
 </div>
</div>
<div class="err_yellow name_errors {code-1}" style="font-weight:normal;margin-top:25px">��� ��������� �� ������ � �������� ��������� ����� ������. �������� ����������� ��� ��������� � ������, ������������ �� ����� �������� ����.</div>
<div class="err_yellow name_errors {code-2}" style="font-weight:normal;margin-top:25px">��� ��������� �� ������ � ������ ��������� ����� ������. �������� ����������� ��� ��������� � ������, ������������ �� ������� �������� ����.</div>
<div class="err_yellow name_errors {code-3}" style="font-weight:normal;margin-top:25px">����� ����� ����������� ����� ��� ������� ������� �� �����.</div>
<div class="margin_top_10"></div><div class="allbar_title">�������� ������</div>
<div class="err_red no_display pass_errors" id="err_pass_1" style="font-weight:normal;">������ �� ������, ��� ��� ������� ������ ����� �����������.</div>
<div class="err_red no_display pass_errors" id="err_pass_2" style="font-weight:normal;">������ �� ������, ��� ��� ����� ������ �������� �����������.</div>
<div class="err_yellow no_display pass_errors" id="ok_pass" style="font-weight:normal;">������ ������� ������.</div>
<div class="texta">������ ������:</div><input type="password" id="old_pass" class="inpst" maxlength="100" style="width:150px;" /><span id="validOldpass"></span><div class="mgclr"></div>
<div class="texta">����� ������:</div><input type="password" id="new_pass" class="inpst" maxlength="100" style="width:150px;" onMouseOver="myhtml.title('', '������ ������ ���� �� ����� 6 �������� � �����', 'new_pass')" /><span id="validNewpass"></span><div class="mgclr"></div>
<div class="texta">��������� ������:</div><input type="password" id="new_pass2" class="inpst" maxlength="100" style="width:150px;" onMouseOver="myhtml.title('', '������� ��� ��� ����� ������', 'new_pass2')" /><span id="validNewpass2"></span><div class="mgclr"></div>
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.saveNewPwd(); return false" id="saveNewPwd">�������� ������</button></div><div class="mgclr"></div>
<div class="margin_top_10"></div><div class="allbar_title">�������� ���</div>
<div class="err_red no_display name_errors" id="err_name_1" style="font-weight:normal;">����������� ������� � ������� ���������.</div>
<div class="err_yellow no_display name_errors" id="ok_name" style="font-weight:normal;">��������� ������� ���������.</div>
<div class="texta">���� ���:</div><input type="text" id="name" class="inpst" maxlength="100"  style="width:150px;" value="{name}" /><span id="validName"></span><div class="mgclr"></div>
<div class="texta">���� �������:</div><input type="text" id="lastname" class="inpst" maxlength="100"  style="width:150px;" value="{lastname}" /><span id="validLastname"></span><div class="mgclr"></div>
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.saveNewName(); return false" id="saveNewName">�������� ���</button></div><div class="mgclr"></div>
<div class="margin_top_10"></div><div class="allbar_title">����� ����� ����������� �����</div>
<div class="err_yellow name_errors no_display" id="ok_email" style="font-weight:normal;">�� <b>���</b> �������� ����� ������ ������ � ��������������.</div>
<div class="err_red no_display name_errors" id="err_email" style="font-weight:normal;">������������ email �����</div>
<div class="texta">������� �����:</div><div style="color:#555;margin-top:13px;margin-bottom:10px">{email}</div><div class="mgclr"></div>
<div class="texta">����� �����:</div><input type="text" id="email" class="inpst" maxlength="100" style="width:150px;" /><span id="validName"></span><div class="mgclr"></div>
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button onClick="settings.savenewmail(); return false" id="saveNewEmail">��������� �����</button></div><div class="mgclr"></div>
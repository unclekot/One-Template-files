<div class="row support">
	<div class="medium-12 columns">
		<div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
			  <div class="buttonsprofileSec"><a href="/settings" onClick="Page.Go(this.href); return false;">�����</a></div>
			  <a href="/settings/privacy" onClick="Page.Go(this.href); return false;">�����������</a>
			  <a href="/settings/blacklist" onClick="Page.Go(this.href); return false;">������ ������</a>
		</div>
	</div>

	<div class="medium-12 columns">
		<div class="err_yellow name_errors {code-1}" style="font-weight:normal;margin-top:25px">��� ��������� �� ������ � �������� ��������� ����� ������. �������� ����������� ��� ��������� � ������, ������������ �� ����� �������� ����.</div>
		<div class="err_yellow name_errors {code-2}" style="font-weight:normal;margin-top:25px">��� ��������� �� ������ � ������ ��������� ����� ������. �������� ����������� ��� ��������� � ������, ������������ �� ������� �������� ����.</div>
		<div class="err_yellow name_errors {code-3}" style="font-weight:normal;margin-top:25px">����� ����� ����������� ����� ��� ������� ������� �� �����.</div>
	</div>
</div>

<div class="row">
 <div class="medium-4 columns">
	<div class="margin_top_10"></div><div class="msg_speedbar clear">�������� ������</div>
	<div class="page_bg border_radius_5 margin_top_10">
	<div class="err_red no_display pass_errors" id="err_pass_1" style="font-weight:normal;">������ �� ������, ��� ��� ������� ������ ����� �����������.</div>
	<div class="err_red no_display pass_errors" id="err_pass_2" style="font-weight:normal;">������ �� ������, ��� ��� ����� ������ �������� �����������.</div>
	<div class="err_yellow no_display pass_errors" id="ok_pass" style="font-weight:normal;">������ ������� ������.</div>
	<div>������ ������:</div><input type="password" id="old_pass" class="inpst" maxlength="100" /><span id="validOldpass"></span><div class="mgclr"></div>
	<div>����� ������:</div><input type="password" id="new_pass" class="inpst" maxlength="100" onMouseOver="myhtml.title('', '������ ������ ���� �� ����� 6 �������� � �����', 'new_pass')" /><span id="validNewpass"></span><div class="mgclr"></div>
	<div>��������� ������:</div><input type="password" id="new_pass2" class="inpst" maxlength="100" onMouseOver="myhtml.title('', '������� ��� ��� ����� ������', 'new_pass2')" /><span id="validNewpass2"></span><div class="mgclr"></div>
	<div>&nbsp;</div><div class="button_div fl_l"><button class="button" onClick="settings.saveNewPwd(); return false" id="saveNewPwd">�������� ������</button></div><div class="mgclr"></div></div>
</div>


<div class="medium-4 columns">
	<div class="margin_top_10"></div><div class="msg_speedbar clear">�������� ���</div>
	<div class="page_bg border_radius_5 margin_top_10">
	<div class="err_red no_display name_errors" id="err_name_1" style="font-weight:normal;">����������� ������� � ������� ���������.</div>
	<div class="err_yellow no_display name_errors" id="ok_name" style="font-weight:normal;">��������� ������� ���������.</div>
	<div>���� ���:</div><input type="text" id="name" class="inpst" maxlength="100" value="{name}" /><span id="validName"></span><div class="mgclr"></div>
	<div>���� �������:</div><input type="text" id="lastname" class="inpst" maxlength="100" value="{lastname}" /><span id="validLastname"></span><div class="mgclr"></div>
	<div>&nbsp;</div><div class="button_div fl_l"><button class="button" onClick="settings.saveNewName(); return false" id="saveNewName">�������� ���</button></div><div class="mgclr"></div></div>
</div>

<div class="medium-4 columns">
	<div class="margin_top_10"></div><div class="msg_speedbar clear">����� ����� ����������� �����</div>
	<div class="page_bg border_radius_5 margin_top_10">
	<div class="err_yellow name_errors no_display" id="ok_email" style="font-weight:normal;">�� <b>���</b> �������� ����� ������ ������ � ��������������.</div>
	<div class="err_red no_display name_errors" id="err_email" style="font-weight:normal;">������������ email �����</div>
	<div>������� �����:</div><div style="color:#555;margin-top:2px;margin-bottom:10px">{email}</div><div class="mgclr"></div>
	<div>����� �����:</div><input type="text" id="email" class="inpst" maxlength="100" /><span id="validName"></span><div class="mgclr"></div>
	<div>&nbsp;</div><div class="button_div fl_l"><button class="button" onClick="settings.savenewmail(); return false" id="saveNewEmail">��������� �����</button></div><div class="mgclr"></div></dv>
</div>

</div>
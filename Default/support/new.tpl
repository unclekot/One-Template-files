<div id="data">
<div class="search_form_tab" style="background:#fff;margin-top:-9px">
 <div class="buttonsprofile albumsbuttonsprofile" style="height:22px">
  <a href="/support" onClick="Page.Go(this.href); return false;"><div><b>[group=4]������� �� �������������[/group][not-group=4]��� �������[/not-group]</b></div></a>
  <div class="activetab"><a href="/support?act=new" onClick="Page.Go(this.href); return false;"><div><b>������ ������</b></div></a></div>
 </div>
</div>
[not-group=4]
<div style="margin-top:29px"></div>
<div class="note_add_bg support_bg">
����� �� ������ �������� ��� � ����� ��������, ��������� � <b>����� ������</b>.
<input type="text" 
	class="videos_input" 
	style="width:580px;margin-top:10px;color:#c1cad0" 
	maxlength="65" 
	id="title"
	value="����������, �������� ��������� � ������ �������.." 
	onblur="if(this.value==''){this.value='����������, �������� ��������� � ������ �������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, �������� ��������� � ������ �������..'){this.value='';this.style.color = '#000'}"
/>
<div class="input_hr" style="width:593px"></div>
<textarea 
	class="videos_input wysiwyg_inpt" 
	id="question" 
	style="width:580px;height:100px;color:#c1cad0"
	onblur="if(this.value==''){this.value='����������, ���������� � ����� �������� ���� ���������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, ���������� � ����� �������� ���� ���������..'){this.value='';this.style.color = '#000'}"
>����������, ���������� � ����� �������� ���� ���������..</textarea>
<div class="clear"></div>
<div class="button_div fl_l"><button onClick="support.send(); return false" id="send">���������</button></div>
<div class="button_div_gray fl_l margin_left" id="cancel"><button onClick="Page.Go('/u{uid}'); return false;">������</button></div>
<div class="clear"></div>
</div>
[/not-group]
[group=4]<div class="info_center"><br /><br /><br />�� ������ �� �����.<br /><br /><br /></div>[/group]
</div>
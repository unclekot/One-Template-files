  <div id="data">
<div class="buttonsprofile">
 <a href="/support" onClick="Page.Go(this.href); return false;">��� �������</a>
 <div class="activetab"><a href="/support?act=new" onClick="Page.Go(this.href); return false;">������ ������</a></div>
</div>
[not-group=4]
<div class="page_bg clear support_bg border_radius_5 padding_support_20">
����� �� ������ �������� ��� � ����� ��������, ��������� � <b>����� ������</b>.
<input type="text" 
	class="videos_input" 
	maxlength="65" 
	id="title"
	value="����������, �������� ��������� � ������ �������.." 
	onblur="if(this.value==''){this.value='����������, �������� ��������� � ������ �������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, �������� ��������� � ������ �������..'){this.value='';this.style.color = '#000'}"
/>
<textarea 
	class="videos_input wysiwyg_inpt" 
	id="question" 
	onblur="if(this.value==''){this.value='����������, ���������� � ����� �������� ���� ���������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, ���������� � ����� �������� ���� ���������..'){this.value='';this.style.color = '#000'}"
>����������, ���������� � ����� �������� ���� ���������..</textarea>
<div class="clear"></div>
<div class="button_div fl_l"><button class="button" onClick="support.send(); return false" id="send">���������</button></div>
<div class="button_div_gray fl_l margin_left" id="cancel"><button class="button" onClick="Page.Go('/u13184'); return false;">������</button></div>
<div class="clear"></div>
</div>
[/not-group]
[group=4]<div class="info_center"><br /><br /><br />�� ������ �� �����.<br /><br /><br /></div>[/group]
</div>
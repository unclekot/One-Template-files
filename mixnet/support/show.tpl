  <div class="buttonsprofile">
 <a href="/support" onClick="Page.Go(this.href); return false;">��� �������</a>
 <div class="activetab"><a href="/support?act=show&qid=717" onClick="Page.Go(this.href); return false;">�������� �������</a></div>
</div>
<div class="note_full_title border_radius_5 clear">
 <span><a href="/support?act=show&qid={qid}" onClick="Page.Go(this.href); return false">{title}</a></span><br />
 <div id="status">{status}</div>
</div>
<div class="page_bg border_radius_5" style="padding:10px">
<div class="ava_mini" style="float:width:60px"><a href="/u{uid}" onClick="Page.Go(this.href); return false"><img src="{ava}" alt="" title="" /></a></div>
<div class="wallauthor" style="padding-left:0px"><a href="/u{uid}" onClick="Page.Go(this.href); return false">{name}</a></div>
<div style="float:left;width:680px;margin-bottom:10px">
<div class="walltext">
 <div style="padding-left:2px">
  {question}
  <br /><span class="color777">{date} &nbsp;|&nbsp;</span> <a href="/" onClick="support.delquest('{qid}'); return false">������� ������</a>
 </div>
</div>
</div>
<div class="clear"></div>
</div>
<div class="clear"></div>
<div id="answers"><div class="page_bg border_radius_5 margin_top_10">{answers}</div>
<div class="support_addform border_radius_5">
<div class="ava_mini">
 [group=4]<img src="{theme}/images/support.png" alt="" />[/group]
 [not-group=4]<a href="/u{uid}" onClick="Page.Go(this.href); return false"><img src="{ava}" alt="" /></a>[/not-group]
</div>
<textarea 
	class="videos_input wysiwyg_inpt fl_l" 
	id="answer" 
	style="width:690px;height:38px;color:#c1cad0"
	onblur="if(this.value==''){this.value='��������������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='��������������..'){this.value='';this.style.color = '#000'}"
>��������������..</textarea>
<div class="clear"></div>
<div class="button_div fl_l" style="margin-left:60px"><button class="button" onClick="support.answer('{qid}', '{uid}'); return false" id="send">���������</button></div>
[group=4]<div class="button_div_nostl fl_r" id="close_but"><button class="button" onClick="support.close('{qid}'); return false" id="close">������� ������</button></div>[/group]
<div class="clear"></div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$('#wall_text, .fast_form_width').autoResize();
	myhtml.checked(['{settings-comments}']);
	music.jPlayerInc();
	$(window).scroll(function(){
		if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2-250)){
			groups.wall_page();
		}
	});
	langNumric('langNumricAll', '{audio-num}', '�����������', '�����������', '������������', '�����������', '������������');
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<div id="jquery_jplayer"></div>
<div id="addStyleClass"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
<input type="hidden" id="public_id" value="{id}" />
<div class="ava fl_r" style="margin-right:0px" onMouseOver="groups.wall_like_users_five_hide()">
 <img src="{photo}" id="ava" />
 <div class="menuleft" style="margin-top:5px">
  [admin]<a href="/" onClick="groups.loadphoto('{id}'); return false"><img class="icon editphoto_ic" src="{theme}/images/spacer.gif" alt="" /><div>�������� ����������</div></a>
  <span id="del_pho_but" class="{display-ava}"><a href="/" onClick="groups.delphoto('{id}'); return false;"><img class="icon del_photo_ic" src="{theme}/images/spacer.gif" alt="" /><div>������� ����������</div></a></span>
  <a href="/" onClick="groups.editform(); return false"><img class="icon ic_edit" src="{theme}/images/spacer.gif" alt="" /><div>���������� ���������</div></a>[/admin]
 </div>
  <div class="publick_subscblock">
   <div id="yes" class="{yes}">
    <div class="button_div fl_l" style="margin-bottom:15px;line-height:15px"><button onClick="groups.login('{id}'); return false" style="width:174px">�����������</button></div>
    <div id="num2">{num-2}</div>
   </div>
   <div id="no" class="{no}" style="text-align:left">
	�� ��������� �� ������� ����� ����������.<br />
    <div style="margin-top:7px"></div>
	<a href="/public{id}" onClick="groups.exit2('{id}', '{viewer-id}'); return false">����������</a>
   </div>
   <div class="clear"></div>
  </div>
 <div style="margin-top:7px">
  <div class="{no-users}" id="users_block">
   <div class="public_vlock cursor_pointer" onClick="groups.all_people('{id}')">����������</div>
   <div class="public_bg">
    <div class="color777 public_margbut">{num}</div>
	<div class="public_usersblockhidden">{users}</div>
    <div class="clear"></div>
   </div>
  </div>
 </div>
 [feedback]<div class="public_vlock cursor_pointer" onClick="groups.allfeedbacklist('{id}')">�������� [yes][admin]<a href="/public{id}" class="fl_r" onClick="groups.allfeedbacklist('{id}'); return false">���.</a>[/admin][/yes]</div>
 <div class="public_bg" id="feddbackusers">
  [yes]<div class="color777 public_margbut">{num-feedback}</div>[/yes]
  {feedback-users}
  [no]<div class="line_height color777" align="center">�������� ��������������, ������ ���������, e-mail<br />
  <a href="/public{id}" onClick="groups.addcontact('{id}'); return false">�������� ��������</a></div>[/no]
 </div>[/feedback]
 [audios]<div class="public_vlock cursor_pointer" onClick="Page.Go('/public/audio{id}'); return false">�����������</div>
 <div class="public_bg">
  [yesaudio]<div class="color777 public_margbut">{audio-num} <span id="langNumricAll"></span></div>[/yesaudio]
  {audios}
  [noaudio]<div class="line_height color777" align="center">���������� ��� ������ ��������������<br />
  <a href="/public/audio{id}" onClick="Page.Go(this.href); return false">�������� �����������</a></div>[/noaudio]
 </div>[/audios]
 <div id="fortoAutoSizeStyle"></div>
</div>
<div class="profiewr">
 <div id="public_editbg_container">
 <div class="public_editbg_container">
 <div class="fl_l" style="width:560px">
 <div class="public_title" id="e_public_title">{title}</div>
  <div class="{descr-css}" id="descr_display"><div class="flpodtext">��������:</div> <div class="flpodinfo" id="e_descr">{descr}</div></div>
  <div class="flpodtext">���� ��������:</div> <div class="flpodinfo">{date}</div>
 </div>
 [admin]<div class="public_editbg fl_l no_display" id="edittab1">
  <div class="public_title">�������������� ��������</div>
  <div class="public_hr"></div>
  <div class="texta">��������:</div>
   <input type="text" id="title" class="inpst" maxlength="100"  style="width:260px;" value="{title}" />
  <div class="mgclr"></div>
  <div class="texta">��������:</div>
   <textarea id="descr" class="inpst" style="width:260px;height:80px">{edit-descr}</textarea>
  <div class="mgclr"></div>
  <div class="texta">����� ��������:</div>
   <input type="hidden" id="prev_adres_page" class="inpst" maxlength="100"  style="width:260px;" value="{adres}" />
   <input type="text" id="adres_page" class="inpst" maxlength="100"  style="width:260px;" value="{adres}" />
  <div class="mgclr"></div>
  <div class="texta">&nbsp;</div>
   <div class="html_checkbox" id="comments" onClick="myhtml.checkbox(this.id)" style="margin-bottom:8px">����������� ��������</div>
  <div class="mgclr clear"></div>
  <div class="texta">&nbsp;</div>
   <a href="/public{id}" onClick="groups.edittab_admin(); return false">��������� ��������������� &raquo;</a>
  <div class="mgclr"></div>
  <div class="texta">&nbsp;</div>
   <div class="button_div fl_l"><button onClick="groups.saveinfo('{id}'); return false" id="pubInfoSave">���������</button></div>
   <div class="button_div_gray fl_l margin_left"><button onClick="groups.editformClose(); return false">������</button></div>
  <div class="mgclr"></div>
 </div>
 <div class="public_editbg fl_l no_display" id="edittab2">
  <div class="public_title">������������ ��������</div>
  <div class="public_hr"></div>
  <input 
	type="text" 
	placeholder="������� ������ �� �������� ��� ������� ID �������� ������������ � ������� Enter" 
	class="videos_input" 
	style="width:526px"
	onKeyPress="if(event.keyCode == 13)groups.addadmin('{id}')"
	id="new_admin_id"
   />
  <div class="clear"></div>
  <div style="width:600px" id="admins_tab">{admins}</div>
  <div class="clear"></div>
  <div class="button_div fl_l"><button onClick="groups.editform(); return false">�����</button></div>
 </div>[/admin]
 </div>
 </div>
 <div class="albtitle" style="border-bottom:0px">{rec-num}</div>
 [admin]<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px">
  <input type="hidden" value="��� � ��� ������?" id="wall_input_text" />
  <input type="text" class="wall_inpst" value="��� � ��� ������?" onMouseDown="wall.form_open(); return false" id="wall_input" style="margin:0px" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta" style="width:534px"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)"
	onKeyPress="if(event.keyCode == 10 || (event.ctrlKey && event.keyCode == 13)) groups.wall_send('{id}')"
   >
   </textarea>
   <div id="attach_files" class="margin_top_10 no_display"></div>
   <div id="attach_block_lnk" class="no_display clear">
   <div class="attach_link_bg">
    <div align="center" id="loading_att_lnk"><img src="{theme}/images/loading_mini.gif" style="margin-bottom:-2px" /></div>
    <img src="" align="left" id="attatch_link_img" class="no_display cursor_pointer" onClick="wall.UrlNextImg()" />
	<div id="attatch_link_title"></div>
	<div id="attatch_link_descr"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">������: <a href="/" id="attatch_link_url" target="_blank"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', '�� �����������', 'attach_lnk_')" id="attach_lnk_1" onClick="wall.RemoveAttachLnk()" /></div>
   <input type="hidden" id="attach_lnk_stared" />
   <input type="hidden" id="teck_link_attach" />
   <span id="urlParseImgs" class="no_display"></span>
   </div>
   <div class="clear"></div>
   <div id="attach_block_vote" class="no_display">
   <div class="attach_link_bg">
	<div class="texta">���� ������:</div><input type="text" id="vote_title" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" 
		onKeyUp="$('#attatch_vote_title').text(this.value)"
	/><div class="mgclr"></div>
	<div class="texta">�������� ������:<br /><small><span id="addNewAnswer"><a class="cursor_pointer" onClick="Votes.AddInp()">��������</a></span> | <span id="addDelAnswer">�������</span></small></div><input type="text" id="vote_answer_1" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div class="texta">&nbsp;</div><input type="text" id="vote_answer_2" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div id="addAnswerInp"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">�����: <a id="attatch_vote_title" style="text-decoration:none;cursor:default"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', '�� �����������', 'attach_vote_')" id="attach_vote_1" onClick="Votes.RemoveForAttach()" /></div>
   <input type="hidden" id="answerNum" value="2" />
   </div>
   <div class="clear"></div>
   <input id="vaLattach_files" type="hidden" />
   <div class="clear"></div>
   <div class="button_div fl_l margin_top_10"><button onClick="groups.wall_send('{id}'); return false" id="wall_send">���������</button></div>
   <div class="wall_attach fl_r" onClick="wall.attach_menu('open', this.id, 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', this.id, 'wall_attach_menu')" id="wall_attach">����������</div>
   <div class="wall_attach_menu no_display" onMouseOver="wall.attach_menu('open', 'wall_attach', 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', 'wall_attach', 'wall_attach_menu')" id="wall_attach_menu">
    <div class="wall_attach_icon_smile" id="wall_attach_link" onClick="wall.attach_addsmile()">�������</div>    
    <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="groups.wall_attach_addphoto(0, 0, '{id}')">����������</div>
    <div class="wall_attach_icon_video" id="wall_attach_link" onClick="groups.wall_video_add_box()">�����������</div>
    <div class="wall_attach_icon_audio" id="wall_attach_link" onClick="wall.attach_addaudio()">�����������</div>
	<div class="wall_attach_icon_doc" id="wall_attach_link" onClick="wall.attach_addDoc()">��������</div>
	<div class="wall_attach_icon_vote" id="wall_attach_link" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')">�����</div>
   </div>
  </div>
  <div class="clear"></div>
 </div>[/admin]
 <div id="public_wall_records">{records}</div>
 <div class="cursor_pointer {wall-page-display}" onClick="groups.wall_page('{id}'); return false" id="wall_all_records"><div class="public_wall_all_comm" id="load_wall_all_records" style="margin-left:0px">� ���������� �������</div></div>
 <input type="hidden" id="page_cnt" value="1" />
</div>
<div class="clear"></div>
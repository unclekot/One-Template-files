<div id="photo_view_{id}" class="photo_view" onClick="Photo.setEvent(event, '{close-link}')">
<div class="photo_close" onClick="Photo.Close('{close-link}'); return false;"></div>
 <div class="photo_bg">
  <div class="photo_com_title" style="padding-top:0px;">[all]���������� {jid} �� {photo-num}[/all][wall]�������� ����������[/wall]<div><a href="/" onClick="Photo.Close('{close-link}'); return false;">�������</a></div></div>
  [all]<a href="/photo{uid}_{prev-id}{section}" onClick="Photo.Show(this.href); return false"><div class="photo_prev_but"></div></a>
  <a href="/photo{uid}_{next-id}{section}" onClick="Photo.Show(this.href); return false"><div class="photo_next_but"></div></a>[/all]
  [mark-block]<div class="mark_userid_bg" id="mark_userid_bg{id}">
   <div class="fl_l"><a href="/u{mark-user-id}" onClick="Page.Go(this.href); return false">{mark-user-name}</a> {mark-gram-text} ��� �� ���� ����������.</a></div>
   <div class="button_div_gray margin_left fl_r" style="margin-top:-5px"><button class="button" onClick="{mark-del-link}; return false">������� �������</button></div>
   <div class="button_div fl_r" style="margin-top:-5px"><button class="button" onClick="Distinguish.OkUser({id}); return false">����������</button></div>
   <div class="clear"></div>
  </div>[/mark-block]
   <div id="distinguishSettings{id}" class="distinguishSettings" style="display:none" onMouseOver="Distinguish.HideTag({id})">
	<div style="position:absolute;border-right:3px solid #dbe6f0;cursor:default" id="distinguishSettingsBorder_left{id}"></div>
	<div style="position:absolute;border-bottom:3px solid #dbe6f0;cursor:default" id="distinguishSettingsBorder_top{id}"></div>
	<div style="position:absolute;border-left:3px solid #dbe6f0;cursor:default" id="distinguishSettingsBorder_right{id}"></div>
	<div style="position:absolute;border-top:3px solid #dbe6f0;cursor:default" id="distinguishSettingsBorder_bottom{id}"></div>
    <div style="position:absolute;cursor:default" class="imgareaselect-outer" id="distinguishSettings_left{id}"></div>
	<div style="position:absolute;cursor:default" class="imgareaselect-outer" id="distinguishSettings_top{id}"></div>
	<div style="position:absolute;cursor:default" class="imgareaselect-outer" id="distinguishSettings_right{id}"></div>
	<div style="position:absolute;cursor:default" class="imgareaselect-outer" id="distinguishSettings_bottom{id}"></div>
   </div>
   <a href="/photo{uid}_{next-id}{section}" onClick="[all]Photo.Show(this.href)[/all][wall]Photo.Close('{close-link}')[/wall]; return false" id="photo_href"><div class="photo_img_box"><img id="ladybug_ant{id}" class="ladybug_ant" src="{photo}" alt="" /></a></div>
  <div class="clear"></div>
  <div id="save_crop_text{id}" class="save_crop_text no_display" style="padding:20px;padding-left:0px">
   ������� �������, ������� ����� ��������� ��� ���������� ����� ��������.
   <div class="button_div_gray margin_left fl_r" style="margin-top:-5px"><button class="button" onClick="crop.close({id}); return false">������</button></div>
   <div class="button_div fl_r" style="margin-top:-5px"><button class="button" onClick="crop.save({id}, {uid}); return false">������</button></div>
  </div>
  <div id="pinfo_{id}" class="pinfo">
  <div class="photo_leftcol">
   <input type="hidden" id="i_left{id}" />
   <input type="hidden" id="i_top{id}" />
   <input type="hidden" id="i_width{id}" />
   <input type="hidden" id="i_height{id}" />
   <div class="peoples_on_this_photos" id="peoples_on_this_photos{id}">{mark-peoples}</div>
   <div class="photo_descr clear" id="photo_descr_{id}">{descr}</div>
   <div class="photo_info">��������� {date}</div><br />
   [all-comm]<a href="/" onClick="comments.all({id}, {num}); return false" id="all_href_lnk_comm_{id}"><div class="photo_all_comm_bg" id="all_lnk_comm_{id}">�������� ���������� {comm_num}</div></a><span id="all_comments_{id}"></span>[/all-comm]
   <span id="comments_{id}">{comments}</span>
   [add-comm]<div class="photo_com_title">��� �����������</div>
   <textarea id="textcom_{id}" class="inpst" style="height:70px;margin-bottom:10px;"></textarea>
   <div class="button_div fl_l"><button class="button" id="add_comm" onClick="comments.add({id}); return false">���������</button></div>[/add-comm]
   </div>
  <div class="photo_rightcol">
   �� �������:<br />
   <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false">{album-name}</a><br /><br />
   �����������:<br />
   <div><a href="/u{uid}" onClick="Page.Go(this.href); return false">{author}</a></div><span style="color:#888">{author-info}</span><br />
   <div class="menuleft" style="width:209px;">
    <a href="/" onClick="Distinguish.Start({id}); return false"><img class="icon ic_mark" src="{theme}/images/spacer.gif" alt="" /><div>�������� ��������</div></a>
   [owner]<a href="/" onClick="crop.start({id}); return false"><img class="icon ic_cover" src="{theme}/images/spacer.gif" alt="" /><div>��������� �� ��� ��������</div></a>
   <a href="/" onClick="Photo.EditBox({id}, 0); return false"><img class="icon editphoto_ic" src="{theme}/images/spacer.gif" alt="" /><div>������������� ����������</div></a>
   <a href="/" onClick="Photo.MsgDelete({id}, {aid}, 1); return false"><img class="icon del_photo_ic" src="{theme}/images/spacer.gif" alt="" /><div>������� ����������</div></a>[/owner]
   <a onClick="Report.Box('photo', '{id}')"><img class="icon compla_ic" src="{theme}/images/spacer.gif" alt="" /><div>������������ �� ����������</div></a>
   [owner]<div class="photos_gradus_pos">
    <div class="fl_l">���������:</div>
	<div class="photos_gradus_left fl_l" onClick="Photo.Rotation('right', '{id}')"></div>
	<div class="photos_gradus_right fl_l" onClick="Photo.Rotation('left', '{id}')"></div>
	<div class="fl_l" style="margin-left:5px"><img src="{theme}/images/loading_mini.gif" id="loading_gradus{id}" class="no_display" /></div>
   </div>[/owner]
   </div>
  </div>
 </div>
<div class="clear"></div>
</div>
<script type="text/javascript" src="{theme}/js/profile_edit.js"></script>
[general]
<div class="buttonsprofile">
 <div class="activetab"><a href="/editmypage" onClick="Page.Go(this.href); return false;"><div>��������</div></a></div>
 <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">��������</a>
 <a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">��������</a>
 <a href="/editmypage/all" onClick="Page.Go(this.href); return false;">������</a>
</div>
<div class="clear"></div>
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>
<div class="clear"></div>
<div class="texta">���:</div>
 <div class="padstylej"><select id="sex" class="inpst" onChange="sp.check()">
  <option value="0">- �� ������� -</option>
  {sex}
 </select></div>
<div class="mgclr"></div>
<div class="[sp-all]no_display[/sp-all]" id="sp_block"><div class="texta">�������� ���������:</div>
 <div class="padstylej">
 <div class="[user-m]no_display[/user-m]" id="sp_sel_m"><select id="sp" class="inpst" onChange="sp.openfriends()">
  <option value="0">- �� ������� -</option>
  <option value="1" [instSelect-sp-1]>�� �����</option>
  <option value="2" [instSelect-sp-2]>���� �������</option>
  <option value="3" [instSelect-sp-3]>��������</option>
  <option value="4" [instSelect-sp-4]>�����</option>
  <option value="5" [instSelect-sp-5]>������</option>
  <option value="6" [instSelect-sp-6]>�� ������</option>
  <option value="7" [instSelect-sp-7]>� �������� ������</option>
 </select></div>
 <div class="[user-w]no_display[/user-w]" id="sp_sel_w"><select id="sp_w" class="inpst" onChange="sp.openfriends()">
  <option value="0">- �� ������� -</option>
  <option value="1" [instSelect-sp-1]>�� �������</option>
  <option value="2" [instSelect-sp-2]>���� ����</option>
  <option value="3" [instSelect-sp-3]>���������</option>
  <option value="4" [instSelect-sp-4]>�������</option>
  <option value="5" [instSelect-sp-5]>��������</option>
  <option value="6" [instSelect-sp-6]>�� ������</option>
  <option value="7" [instSelect-sp-7]>� �������� ������</option>
 </select></div>
 </div>
<div class="mgclr"></div></div>
<div class="[sp]no_display[/sp]" id="sp_type">
<div class="texta" id="sp_text">{sp-text}</div>
 <div class="padstylej fl_l"><div style="margin-top:3px;margin-bottom:10px;padding-left:1px;float:left"><a href="/" id="sp_name" onClick="sp.openfriends(); return false">{sp-name}</a></div><img src="{theme}/images/close_a_wall.png" class="sp_del" onClick="sp.del()" /></div>
<div class="mgclr"></div>
<input type="hidden" id="sp_val" />
</div>
<div class="texta">���� ��������:</div>
 <div class="padstylej"><select id="day" class="inpst">
  <option>- ���� -</option>
  {user-day}
 </select>
 <select id="month" class="inpst">
  <option>- ����� -</option>
  {user-month}
 </select>
 <select id="year" class="inpst">
  <option>- ��� -</option>{user-year}
 </select></div>
<div class="mgclr"></div>
<div class="texta">������:</div>
 <div class="padstylej"><select id="country" class="inpst" onChange="Profile.LoadCity(this.value); return false;">
  <option value="0">- �� ������� -</option>
  {country}
 </select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
<div class="mgclr"></div>
<span id="city"><div class="texta">�����:</div>
 <div class="padstylej"><select id="select_city" class="inpst">
  <option value="0">- �� ������� -</option>
  {city}
 </select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
<div class="mgclr"></div></span>
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button id="saveform">���������</button></div><div class="mgclr"></div>
[/general]
[contact]
<div class="buttonsprofile">
 <a href="/editmypage" onClick="Page.Go(this.href); return false;">��������</a>
 <div class="activetab"><a href="/editmypage/contact" onClick="Page.Go(this.href); return false;"><div>��������</div></a></div>
 <a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">��������</a>
 <a href="/editmypage/all" onClick="Page.Go(this.href); return false;">������</a>
</div>
<div class="clear"></div>
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>
<div class="clear"></div>
<div class="texta">��������� �������:</div><input type="text" id="phone" class="inpst" maxlength="50" value="{phone}" style="width:200px;" /><span id="validPhone"></span><div class="mgclr"></div>
<div class="texta">� ��������:</div><input type="text" id="vk" class="inpst" maxlength="100" value="{vk}" style="width:200px;" /><span id="validVk"></span><div class="mgclr"></div>
<div class="texta">�������������:</div><input type="text" id="od" class="inpst" maxlength="100" value="{od}" style="width:200px;" /><span id="validOd"></span><div class="mgclr"></div>
<div class="texta">FaceBook:</div><input type="text" id="fb" class="inpst" maxlength="100" value="{fb}" style="width:200px;" /><span id="validFb"></span><div class="mgclr"></div>
<div class="texta">Skype:</div><input type="text" id="skype" class="inpst" maxlength="100" value="{skype}" style="width:200px;" /><span id="validSkype"></span><div class="mgclr"></div>
<div class="texta">ICQ:</div><input type="text" id="icq" class="inpst" maxlength="9" value="{icq}" style="width:200px;" /><span id="validIcq"></span><div class="mgclr"></div>
<div class="texta">������ ����:</div><input type="text" id="site" class="inpst" maxlength="100" value="{site}" style="width:200px;" /><span id="validSite"></span><div class="mgclr"></div>
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button name="save" id="saveform_contact">���������</button></div><div class="mgclr"></div>
[/contact]
[interests]
<div class="buttonsprofile">
 <a href="/editmypage" onClick="Page.Go(this.href); return false;">��������</a>
 <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">��������</a>
 <div class="activetab"><a href="/editmypage/interests" onClick="Page.Go(this.href); return false;"><div>��������</div></a></div>
 <a href="/editmypage/all" onClick="Page.Go(this.href); return false;">������</a>
</div>
<div class="clear"></div>
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>
<div class="clear"></div>
<div class="texta">������������:</div><textarea id="activity" class="inpst" style="width:300px;height:50px;overflow:hidden;">{activity}</textarea><div class="mgclr"></div>
<div class="texta">��������:</div><textarea id="interests" class="inpst" style="width:300px;height:50px;">{interests}</textarea><div class="mgclr"></div>
<div class="texta">������� ������:</div><textarea id="music" class="inpst" style="width:300px;height:50px;">{music}</textarea><div class="mgclr"></div>
<div class="texta">������� ������:</div><textarea id="kino" class="inpst" style="width:300px;height:50px;">{kino}</textarea><div class="mgclr"></div>
<div class="texta">������� �����:</div><textarea id="books" class="inpst" style="width:300px;height:50px;">{books}</textarea><div class="mgclr"></div>
<div class="texta">������� ����:</div><textarea id="games" class="inpst" style="width:300px;height:50px;">{games}</textarea><div class="mgclr"></div>
<div class="texta">������� ������:</div><textarea id="quote" class="inpst" style="width:300px;height:50px;">{quote}</textarea><div class="mgclr"></div>
<div class="texta">� ����:</div><textarea id="myinfo" class="inpst" style="width:300px;height:50px;">{myinfo}</textarea><div class="mgclr"></div>
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button name="save" id="saveform_interests">���������</button></div><div class="mgclr"></div>
[/interests]
[xfields]
<script type="text/javascript">
$(document).ready(function(){
	//���������� ���.�����
	$('#saveform_xfields').click(function(){
		butloading('saveform_xfields', '55', 'disabled', '');
		$.post('/index.php?go=editprofile&act=save_xfields', {{for-js-list}}, function(d){
			$('#info_save').html(lang_infosave).show();
			butloading('saveform_xfields', '55', 'enabled', lang_box_save);
		});
	});
});
</script>
<div class="buttonsprofile">
 <a href="/editmypage" onClick="Page.Go(this.href); return false;">��������</a>
 <a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">��������</a>
 <a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">��������</a>
 <div class="activetab"><a href="/editmypage/all" onClick="Page.Go(this.href); return false;"><div>������</div></a></div>
</div>
<div class="clear"></div>
<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>
<div class="clear"></div>
<div class="clear"></div>
{xfields}
<div class="texta">&nbsp;</div><div class="button_div fl_l"><button name="save" id="saveform_xfields">���������</button></div><div class="mgclr"></div>
[/xfields]
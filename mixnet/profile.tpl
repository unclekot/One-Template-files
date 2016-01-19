  <script type="text/javascript">
var startResizeCss = false;
var user_id = {user-id};
$(document).ready(function(){
	$(window).scroll(function(){
	/*
		if($('#type_page').val() == 'profile'){
			if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2-250)){
				wall.page(user_id);
			}
			if($(window).scrollTop() < $('#fortoAutoSizeStyleProfile').offset().top){
				startResizeCss = false;
				$('#addStyleClass').remove();
			}
			if($(window).scrollTop() > $('#fortoAutoSizeStyleProfile').offset().top && !startResizeCss){
				startResizeCss = true;
				$('body').append('<div id="addStyleClass"><style type="text/css" media="all">.wallrecord{width:822px;margin-left:-210px}.infowalltext_f{font-size:11px}.wall_inpst{width:738px}.public_likes_user_block{margin-left:610px}.wall_fast_opened_form{width:788px;margin-left:-150px}.wall_fast_block{width:780px;margin-left:-150px}.public_wall_all_comm{width:780px;margin-left:-150px}.player_mini_mbar_wall{width:710px;margin-bottom:0px}#audioForSize{min-width:700px}.wall_rec_autoresize{width:760px}.wall_fast_ava img{width:50px}.wall_fast_ava{width:10%}.wall_fast_comment_text{margin-left:57px}.wall_fast_date{margin-left:57px;font-size:11px}.size10{font-size:11px}.fast_form_width2{width:778px}.audio_onetrack, .player_mini_mbar{width:760px}</style></div>');
			}
		}*/
	});
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	if($('.profile_onefriend_happy').size() > 4) $('#happyAllLnk').show();
	ajaxUpload = new AjaxUpload('upload_cover', {
		action: '/index.php?go=editprofile&act=upload_cover',
		name: 'uploadfile',
		onSubmit: function (file, ext) {
			if(!(ext && /^(jpg|png|jpeg|gif|jpe)$/.test(ext))) {
				addAllErr(lang_bad_format, 3300);
				return false;
			}
			$("#les10_ex2").draggable('destroy');
			$('.cover_loaddef_bg').css('cursor', 'default');
			$('.cover_loading').show();
			$('.cover_newpos, .cover_descring').hide();
			$('.cover_profile_bg').css('opacity', '0.4');
		},
		onComplete: function (file, row){
			if(row == 1 || row == 2) addAllErr('Максимальны размер 7 МБ.', 3300);
			else {
				$('.cover_loading').hide();
				$('.cover_loaddef_bg, .cover_hidded_but, .cover_loaddef_bg, .cover_descring').show();
				$('#upload_cover').text('Изменить фото');
				$('.cover_profile_bg').css('opacity', '1');
				$('.cover_loaddef_bg').css('cursor', 'move');
				$('.cover_newpos').css('position', 'absolute').css('z-index', '2').css('margin-left', '197px').show();
				row = row.split('|');
				rheihht = row[1];
				postop = (parseInt(rheihht/2)-100);
				if(rheihht <= 194) postop = 0;
				$('#les10_ex2').css('height', +rheihht+'px').css('top', '-'+postop+'px');
				cover.init('/uploads/users/'+row[0], rheihht);
				$('.cover_addut_edit').attr('onClick', 'cover.startedit(\'/uploads/users/'+row[0]+'\', '+rheihht+')');
			}
		}
	});
});
$(document).click(function(event){
	wall.event(event);
});
function nshb(){
	$('#nshb').text('Скрыть блоки').attr('onClick', 'nshbb(); return false');
	$('.b_friends, .b_friends_online, .b_people, .b_pages, .b_video, .b_audio, .b_notes, .b_albums, .b_gifts, .b_photo, .b_wall').show();
}
function nshbb(){
	$('#nshb').text('Показать скрытые блоки').attr('onClick', 'nshb(); return false');
	$('.b_friends, .b_friends_online, .b_people, .b_pages, .b_video, .b_audio, .b_notes, .b_albums, .b_wall, .b_gifts, .b_photo').hide();
}
var lastBannerId = 1;
var intValBanner = false;
intValBanner = '';
function startShowBanners(){
  var siBanner = $('.bannerSite').size();
  if(siBanner > 1){
    $('#banner1, #banner2, #banner3, #banner4').hide();
    lastBannerId++;
    if(lastBannerId >= 5) lastBannerId = 1;
    if(!$('#banner'+lastBannerId).length) startShowBanners();
    $('#banner'+lastBannerId).fadeIn('fast');
  }
}

</script>
<input type="hidden" id="type_page" value="profile" />
<style>
.newcolor000{color:#000}
.audio_onetrack, .player_mini_mbar{width:560px}
.wall_none{margin-top:10px}
</style>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />

<div class="row">
<div class="medium-4 large-3 columns">
<div class="ava">
<div class="b_photo "><span id="ava"><a class="cursor_pointer" onClick="Profile.ava('{ava}', '{user-id}')"><img src="{ava}" id="ava_{user-id}" /></a></span></div>
<div class="menuleft2" style="margin-top:-3px">
[owner]
<a href="/docs" onClick="Page.Go(this.href); return false;"><div>Мои документы</div></a>
<a href="/editmypage" onClick="Page.Go(this.href); return false;"><div>Редактировать страницу</div></a>
<a href="/" onClick="Profile.LoadPhoto(); return false;"><div>Изменить фотографию</div></a>
<a href="/" onClick="Profile.miniature(); return false;"><div>Изменить миниатюру</div></a>
<a href="/" onClick="Profile.DelPhoto(); $('.profileMenu').hide(); return false;" id="del_pho_but" {display-ava}><div>Удалить фотографию</div></a>[/owner]
[not-owner][blacklist][privacy-msg]
<a href="/" onClick="messages.new_({user-id}); return false"><div>Отправить сообщение</div></a>[/privacy-msg][/blacklist]
[no-friends][blacklist]<a href="/" onClick="friends.add({user-id}); return false"><div>Добавить в друзья</div></a>[/blacklist][/no-friends]
[yes-friends]<a href="/" onClick="friends.delet({user-id}, 1); return false"><div>Убрать из друзей</div></a>[/yes-friends]
[blacklist][no-subscription]<a href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><div><span id="text_add_subscription">Подписаться на обновления</span> <img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="no_display" style="margin-right:-13px" /></div></a>[/no-subscription][/blacklist]
[yes-subscription]<a href="/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><div><span id="text_add_subscription">Отписаться от обновлений</span> <img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="no_display" style="margin-right:-13px" /></div></a>[/yes-subscription]
<a href="/" onClick="gifts.box('{user-id}'); return false"><div>Отправить подарок</div></a>
[no-fave]<a href="/" onClick="fave.add({user-id}); return false" id="addfave_but"><div><span id="text_add_fave">Добавить в закладки</span> <img src="{theme}/images/loading_mini.gif" alt="" id="addfave_load" class="no_display" /></div></a>[/no-fave]
[yes-fave]<a href="/" onClick="fave.delet({user-id});; return false" id="addfave_but"><div><span id="text_add_fave">Удалить из закладок</span> <img src="{theme}/images/loading_mini.gif" alt="" id="addfave_load" class="no_display" /></div></a>[/yes-fave]
[no-blacklist]<a href="/" onClick="settings.addblacklist({user-id}); return false" id="addblacklist_but"><div><span id="text_add_blacklist">Заблокировать</span> <img src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></div></a>[/no-blacklist]
[yes-blacklist]<a href="/" onClick="settings.delblacklist({user-id}, 1); return false" id="addblacklist_but"><div><span id="text_add_blacklist">Разблокировать</span> <img src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></div></a>[/yes-blacklist]
[/not-owner]
</div>
[blacklist]<div class="leftcbor">
 [owner][happy-friends]<div id="happyBLockSess"><div class="public_vlock">Дни рожденья друзей <span>{happy-friends-num}</span><img src="{theme}/images/hide_lef.gif" onMouseOver="myhtml.title('1', 'Скрыть', 'happy_block_')" id="happy_block_1" onClick="HappyFr.HideSess(); return false" /></div>
 <div class="newmesnobg profile_block_happy_friends" style="padding:0px;padding-top:10px;">{happy-friends}<div class="clear"></div></div>
 <div class="cursor_pointer no_display" onMouseDown="HappyFr.Show(); return false" id="happyAllLnk"><div class="public_wall_all_comm profile_block_happy_friends_lnk">Показать все</div></div></div>
 [/happy-friends][/owner]
 [friends]
 <div class="b_friends "><a href="/friends/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle"><div class="profile_ic_frieds fl_l"></div>Друзья <span>{friends-num}</span></div></a>
<div class="newmesnobg" style="padding:0px;padding-top:10px;">{friends}<div class="clear"></div>
 </div></div>[/friends]
 [online-friends]<div class="albtitle cursor_pointer" onClick="Page.Go('/friends/online/{user-id}'); return false"><div class="profile_ic_frieds fl_l"></div>Друзья на сайте <span>{online-friends-num}</span></div>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{online-friends}<div class="clear"></div>
 </div>[/online-friends]
 [subscriptions]<div class="albtitle cursor_pointer" onClick="subscriptions.all({user-id}, '', {subscriptions-num}); return false"><div class="profile_ic_frieds fl_l"></div>Интересные люди <span>{subscriptions-num}</span></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{subscriptions}<div class="clear"></div>
 </div>[/subscriptions]
 [groups]<div class="albtitle cursor_pointer" onClick="groups.all_groups_user('{user-id}')"><div class="profile_ic_pages fl_l"></div>Сообщества <span id="groups_num">{groups-num}</span></div>
 <div class="newmesnobg" style="padding-right:0px;">{groups}<div class="clear"></div>
 </div>[/groups]
 [videos]<div class="albtitle cursor_pointer" onClick="Page.Go('/videos/{user-id}'); return false"><div class="profile_ic_videos fl_l"></div>Видеозаписи <span>{videos-num}</span></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{videos}<div class="clear"></div>
 </div>[/videos]
 [notes]<div class="albtitle cursor_pointer" onClick="Page.Go('/notes/{user-id}'); return false"><div class="profile_ic_notes fl_l"></div>Заметки <span>{notes-num}</span></div>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{notes}<div class="clear"></div>
 </div>[/notes]
<div class="clear"></div>
</div>[/blacklist]
</div>
</div>
<div class="medium-8 large-9 columns">
<div class="profiewr">
 [owner]<div class="set_status_bg no_display" id="set_status_bg">
<input type="text" id="status_text" class="status_inp" value="{status-text}" maxlength="255" onKeyPress="if(event.keyCode == 13)gStatus.set()" />
  <div class="fl_l status_text"><span class="no_status_text"  [status]no_display[/status]">Введите здесь текст Вашего статуса.</span><a href="/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">Удалить статус</a></div>
  [status]<div class="button_div_gray fl_r status_but margin_left"><button class="button">Отмена</button></div>[/status]
  <div class="button_div fl_r status_but"><button class="button" id="status_but" onClick="gStatus.set()">Сохранить</button></div>
 </div>[/owner]
 <div class="titleu">{name} {lastname} {user_real}</div>
<div class="profile_rate_pos">
<div class="profile_rate_text">&nbsp;</div>{rating}</div>

 [owner]<div class="status_tri"></div>
 <div class="status border_radius_5">[/owner]  
[not-owner][status]<div class="status_tri"></div>
 <div class="status border_radius_5">[/status][/not-owner] 
  <div>[owner]<a href="/" id="new_status" onClick="gStatus.open(); return false">[/owner][blacklist]{status-text}[/blacklist][owner]</a>[/owner]</div>
  [owner]<span id="tellBlockPos"></span>
  <div class="status_tell_friends no_display">
   <div class="status_str"></div>
   <div class="html_checkbox" id="tell_friends" onClick="myhtml.checkbox(this.id); gStatus.startTell()">Рассказать друзьям</div>
  </div>[/owner]
  [owner]<a href="#" onClick="gStatus.open(); return false" id="status_link" [status]class="no_display"[/status]>установить статус</a>[/owner]
 [owner]</div>[/owner][not-owner][status]</div>[/status][/not-owner]

[owner]<div class="clear"></div>
<div class="cover_loading no_display"><img src="/templates/Default/images/progress_gray.gif" /></div>
<div class="cover_profile_bg">
 <div class="cover_buts_pos">
  <div class="cover_newpos" {covses}>
  <div class="cover_addut cover_hidded_but" onClick="cover.cancel('{cover_pos}')">Отмена</div>
  <div class="cover_addut cover_hidded_but" onClick="cover.del()">Удалить</div>
  <div class="cover_addut {covs}" id="upload_cover">Добавить обложку</div>
  <div class="cover_addut cover_hidded_but" onClick="cover.save()">Сохранить</div>
  <div id="cover_addut_edit" class="no_display"><div class="cover_addut_edit {covss}" onClick="cover.startedit('{cover}', '{cover_pos}')">Редактировать обложку</div></div>
  </div>
  <div class="cover_loaddef_bg {covss}" {cove}>
   <div class="cover_descring {covs}">Обложку можно двигать по высоте</div>
   <div id="les10_ex2" {cov}><img src="{cover}" width="715" id="cover_img" /></div>
   <div id="cover_restart"></div>
  </div>
 </div>
</div>[/owner]
[not-owner]{ocov}[/not-owner]
 <div class="clear"></div>
 <div class="page_bg border_radius_5 margin_top_10">
 <div class="fl_r online"><b>{online}</b></div>
 [not-all-country]<div class="flpodtext">Страна:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}" onClick="Page.Go(this.href); return false">{country}</a></div>[/not-all-country]
 [not-all-city]<div class="flpodtext">Город:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}&city={city-id}" onClick="Page.Go(this.href); return false">{city}</a></div>[/not-all-city]
 [blacklist][not-all-birthday]<div class="flpodtext">День рождения:</div> <div class="flpodinfo">{birth-day}</div>[/not-all-birthday]
 [privacy-info][sp]<div class="flpodtext">Семейное положение:</div> <div class="flpodinfo">{sp}</div>[/sp][/privacy-info]
   
 
 <div class="cursor_pointer" onClick="Profile.MoreInfo(); return false" id="moreInfoLnk"><div class="profile_hide_opne" id="moreInfoText">Показать подробную информацию</div></div>
 <div id="moreInfo" class="no_display">
 [privacy-info][not-block-contact]<div class="fieldset"><div class="w2_a" [owner]style="width:230px;"[/owner]>Контактная информация [owner]<span><a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>
 [not-contact-phone]<div class="flpodtext">Моб. телефон:</div> <div class="flpodinfo">{phone}</div>[/not-contact-phone]
 [not-contact-vk]<div class="flpodtext">В контакте:</div> <div class="flpodinfo">{vk}</div>[/not-contact-vk]
 [not-contact-od]<div class="flpodtext">Одноклассники:</div> <div class="flpodinfo">{od}</div>[/not-contact-od]
 [not-contact-fb]<div class="flpodtext">FaceBook:</div> <div class="flpodinfo">{fb}</div>[/not-contact-fb]
 [not-contact-skype]<div class="flpodtext">Skype:</div> <div class="flpodinfo"><a href="skype:{skype}">{skype}</a></div>[/not-contact-skype]
 [not-contact-icq]<div class="flpodtext">ICQ:</div> <div class="flpodinfo">{icq}</div>[/not-contact-icq]
 [not-contact-site]<div class="flpodtext">Веб-сайт:</div> <div class="flpodinfo">{site}</div>[/not-contact-site][/not-block-contact]
 <div class="fieldset"><div class="w2_b" [owner]style="width:200px;"[/owner]>Личная информация [owner]<span><a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>{not-block-info}
 [not-info-activity]<div class="flpodtext">Деятельность:</div> <div class="flpodinfo">{activity}</div>[/not-info-activity]
 [not-info-interests]<div class="flpodtext">Интересы:</div> <div class="flpodinfo">{interests}</div>[/not-info-interests]
 [not-info-music]<div class="flpodtext">Любимая музыка:</div> <div class="flpodinfo">{music}</div>[/not-info-music]
 [not-info-kino]<div class="flpodtext">Любимые фильмы:</div> <div class="flpodinfo">{kino}</div>[/not-info-kino]
 [not-info-books]<div class="flpodtext">Любимые книги:</div> <div class="flpodinfo">{books}</div>[/not-info-books]
 [not-info-games]<div class="flpodtext">Любимые игры:</div> <div class="flpodinfo">{games}</div>[/not-info-games]
 [not-info-quote]<div class="flpodtext">Любимые цитаты:</div> <div class="flpodinfo">{quote}</div>[/not-info-quote]
 [not-info-myinfo]<div class="flpodtext">О себе:</div> <div class="flpodinfo">{myinfo}</div>[/not-info-myinfo][/privacy-info]
 </div></div>
 [albums] <div class="b_albums "><div class="page_bg border_radius_5 margin_top_10 page_bg_albom_padding"><a href="/albums/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle albtitle2"><div class="profile_ic_albums fl_l"></div>Альбомы <span>{albums-num}</span></div></a>{albums}<div class="clear"></div></div></div>[/albums]
 [audios] <div class="b_audio "><div class="page_bg border_radius_5 margin_top_10 music_padding" style="padding-bottom:10px"><div id="jquery_jplayer"></div><input type="hidden" id="teck_id" value="1" /><a href="/audio{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle albtitle2"><div class="profile_ic_audios fl_l"></div>{audios-num}</div></a><div class="audio_onetrack audio_onetrack2">{audios}<div class="clear"></div</div></div></div></div>[/audios]
 [gifts] <div class="b_gifts "><div class="page_bg border_radius_5 margin_top_10"><a href="/gifts{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle  albtitle2"><div class="profile_ic_gifts fl_l"></div>{gifts-text}</div><center>{gifts}</center><div class="clear"></div></a></div></div>[/gifts]
 <div class="b_wall">
 <div class="page_bg border_radius_5 margin_top_10 page_bg_wall" style="padding-bottom:0px;padding-bottom:19px">
 <a href="/wall{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle albtitle2" style="border-bottom:0px">Стена <span id="wall_rec_num">{wall-rec-num}</span></div></a>
 [privacy-wall]<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-left:-1px;margin-top:-15px;margin-bottom:-10px">
  <input type="hidden" value="[owner]Что у Вас нового?[/owner][not-owner]Написать сообщение...[/not-owner]" id="wall_input_text" />
  <input type="text" class="msg_se_inp" value="[owner]Что у Вас нового?[/owner][not-owner]Написать сообщение...[/not-owner]" onMouseDown="wall.form_open(); return false" id="wall_input" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta"
    style="width:612px"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)"
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
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Ссылка: <a href="/" id="attatch_link_url" target="_blank"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_lnk_')" id="attach_lnk_1" onClick="wall.RemoveAttachLnk()" /></div>
   <input type="hidden" id="attach_lnk_stared" />
   <input type="hidden" id="teck_link_attach" />
   <span id="urlParseImgs" class="no_display"></span>
   </div>
   <div class="clear"></div>
   <div id="attach_block_vote" class="no_display">
   <div class="attach_link_bg">
	<div class="texta">Тема опроса:</div><input type="text" id="vote_title" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" 
		onKeyUp="$('#attatch_vote_title').text(this.value)"
	/><div class="mgclr"></div>
	<div class="texta">Варианты ответа:<br /><small><span id="addNewAnswer"><a class="cursor_pointer" onClick="Votes.AddInp()">добавить</a></span> | <span id="addDelAnswer">удалить</span></small></div><input type="text" id="vote_answer_1" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div class="texta">&nbsp;</div><input type="text" id="vote_answer_2" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div id="addAnswerInp"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Опрос: <a id="attatch_vote_title" style="text-decoration:none;cursor:default"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_vote_')" id="attach_vote_1" onClick="Votes.RemoveForAttach()" /></div>
   <input type="hidden" id="answerNum" value="2" />
   </div>
   <div class="clear"></div>
   <input id="vaLattach_files" type="hidden" />
   <div class="clear"></div>
   <div class="button_div fl_l margin_top_10"><button class="button" onClick="wall.send(); return false" id="wall_send">Отправить</button></div>
   <div class="wall_attach fl_r" onClick="wall.attach_menu('open', this.id, 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', this.id, 'wall_attach_menu')" id="wall_attach">Прикрепить</div>
   <div class="wall_attach_menu no_display" onMouseOver="wall.attach_menu('open', 'wall_attach', 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', 'wall_attach', 'wall_attach_menu')" id="wall_attach_menu">
    <div class="wall_attach_icon_smile" id="wall_attach_link" onClick="wall.attach_addsmile()">Смайлик</div>
    <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="wall.attach_addphoto()">Фотографию</div>
    <div class="wall_attach_icon_video" id="wall_attach_link" onClick="wall.attach_addvideo()">Видеозапись</div>
    <div class="wall_attach_icon_audio" id="wall_attach_link" onClick="wall.attach_addaudio()">Аудиозапись</div>
    <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="wall.attach_addgraffiti('{user-id}')">Граффити</div>
    <div class="wall_attach_icon_doc" id="wall_attach_link" onClick="wall.attach_addDoc()">Документ</div>
    <div class="wall_attach_icon_vote" id="wall_attach_link" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')">Опрос</div>
   </div>
  </div>
  <div class="clear"></div>
 </div></div></div>[/privacy-wall]
 <div id="wall_records">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]>На стене пока нет ни одной записи.</div>[/no-records]</div>
 [wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="wall_link">к предыдущим записям</div></div>[/wall-link][/blacklist]
 [not-blacklist]<div class="err_yellow" style="font-weight:normal;margin-top:5px">{name} ограничила доступ к своей странице.</div>[/not-blacklist]
</div>
<div class="clear"></div>
</div>
</div>
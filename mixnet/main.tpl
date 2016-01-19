<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
<meta charset="utf-8">
<title>Социальный сайт Прибалтики</title>
<meta name="description" content ="Знакомимся, общаемся, дружим"> 
 <meta name="keywords" content="Социальная сеть Латвии, Литвы и Эстонии">
{header}
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<meta name="telderi" content="3c891f6f650085fe234d824ff8c02e7e" />
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/5.5.2/css/foundation.css">

<!-- jQuery library -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<link media="screen" href="{theme}/style/style.css?433" type="text/css" rel="stylesheet" />  

[logged]<script type="text/javascript" src="{theme}/js/jquery.lib.js"><script type="text/javascript" src="{theme}/js/main.js?22"></script><script type="text/javascript" src="{theme}/js/profile.js?13"></script>[/logged]
{js}[not-logged]<link media="screen" href="{theme}/style/not_logged.css?433" type="text/css" rel="stylesheet" />  <script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]

<link rel="shortcut icon" href="{theme}/images/fav.png" />
</head>
<body onResize="onBodyResize()" class="no_display">
	<div id="elka" class="no_display" style="position:fixed;bottom:0px;margin-bottom:-35px"></div>
	<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">&#8593; Наверх</div></div>
	<div id="doLoad"></div>
  [logged]

<div class="off-canvas-wrap" data-offcanvas>
	<div class="inner-wrap">
		<nav class="tab-bar">
			<section class="right-small hide-for-large-up">
				<a class="right-off-canvas-toggle menu-icon" href="#"><span></span></a>
			</section>
		</nav>
				<section class="middle tab-bar-section">
					<div class="headwr">
							<!-- <a href="/news" onClick="Page.Go(this.href); return false"> <img src="/templates/mixnet/images/123.png" style="max-width: 81px;position: absolute;margin-top: 1px;margin-left: -110px;"></a>-->
							<div class="bal" id="upBal"></div>
						
						<div class="headhr"></div>
						  <!--search-->
						  <!--<div id="seNewB">
						  <input type="text" value="Поиск" class="fave_input search_input" 
								onBlur="if(this.value == '' || this.value=='Поиск'){this.value='Поиск';this.style.color = '#c1cad0'}" 
								onFocus="if(this.value=='Поиск'){this.value='';this.style.color = '#000'}"
								onKeyPress="if(event.keyCode == 13) gSearch.go();"
								onKeyUp="FSE.Txt()"
								onClick="if(this.value != 0) $('.fast_search_bg').show()"
							id="query_fast" maxlength="65"/>
						  <div id="search_types">
						  <input type="hidden" value="1" id="se_type" />
						   <div class="search_type" id="search_selected_text" onClick="gSearch.open_types('#sel_types'); return false">по людям</div>
						   <div class="search_alltype_sel no_display" id="sel_types">
						   <div id="1" onClick="gSearch.select_type(this.id, 'по людям'); FSE.GoSe($('#query_fast').val()); return false" class="search_type_selected">по людям</div>
						   <div id="2" onClick="gSearch.select_type(this.id, 'по видеозаписям'); FSE.GoSe($('#query_fast').val()); return false">по видеозаписям</div>
						   <div id="3" onClick="gSearch.select_type(this.id, 'по заметкам');  FSE.GoSe($('#query_fast').val()); return false">по заметкам</div>
						   <div id="4" onClick="gSearch.select_type(this.id, 'по сообществам'); FSE.GoSe($('#query_fast').val()); return false">по сообществам</div>
						   <div id="5" onClick="gSearch.select_type(this.id, 'по аудиозаписям');  FSE.GoSe($('#query_fast').val()); return false">по аудиозаписям</div>
						  </div>
						  </div>-->
						  <div class="fast_search_bg no_display" id="fast_search_bg">
							<a href="/" style="padding:12px;background:#eef3f5" onClick="gSearch.go(); return false" onMouseOver="FSE.ClrHovered(this.id)" id="all_fast_res_clr1"><text>Искать</text> <b id="fast_search_txt"></b><div class="fl_r fast_search_ic"></div></a> 
							<span id="reFastSearch"></span> 
						  </div>
					</div>
					<!--/search-->
					<div class="row">
					<div class="headmenu fl_r">
						<a class="search_m" href="/?go=search&online=1" onClick="Page.Go(this.href); return false"><span title="Найти людей">&nbsp;</span><span>Найти людей</span></a>
						<a class="groups_m" href="/?go=search&type=4" onClick="Page.Go(this.href); return false"><span title="Сообщества">&nbsp;</span><span>Сообщества</span></a>
						<!-- <a href="/apps" onClick="Page.Go(this.href); return false">игры</a> -->
						<!--<a class="player_m" href="/audio" onClick="doLoad.js(0); player.open(); return false;" id="fplayer_pos"><span title="Музыка">&nbsp;</span><span>Музыка</span></a>-->
						<!--<a href="/support?act=new" onClick="Page.Go(this.href); return false">помощь</a>-->
						<a class="logout_m" href="/?act=logout"><span title="Выйти">&nbsp;</span><span>Выйти</span></a>
				   </div>
				   </div>
				</section>

				<aside class="right-off-canvas-menu hide-for-large-up">
				  <ul class="off-canvas-list">
					  <a href="{my-page-link}" onClick="Page.Go(this.href); return false;"><div class="ic_profile"></div><span class="nav-text">Профиль</span></a>
					  <a href="/messages" onClick="Page.Go(this.href); return false;"><div id="new_msg">{msg}</div><div class="ic_msg"></div><span class="nav-text">Сообщения</span></a>
					  <a href="/friends" onClick="Page.Go(this.href); return false;" id="requests_link"><div id="new_requests">{demands}</div><div class="ic_friends"></div><span class="nav-text">Друзья<span></a>
					  <a href="/albums/{my-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos"><div id="new_photos">{new_photos}</div><div class="ic_photo"></div><span class="nav-text">Фото<span></a>
					  <a class="player_m" href="/audio" onClick="doLoad.js(0); player.open(); return false;" id="fplayer_pos"><div class="ic_music"></div><span class="nav-text">Музыка</span></a>
					  <a href="/fave" onClick="Page.Go(this.href); return false;"><div class="ic_fave"></div><span class="nav-text">Закладки<span></a>
					  <a href="/videos" onClick="Page.Go(this.href); return false;"><div class="ic_video"></div><span class="nav-text">Видео<span></a>
					  <a href="/groups" onClick="Page.Go(this.href); return false;"><div class="ic_groups"></div><span class="nav-text">Группы<span></a>
					  <a href="/news" onClick="Page.Go(this.href); return false;" id="news_link"><div class="ic_news"><div id="new_news"></div></div><span class="nav-text">Лента<span></a>
					  <a href="/notes" onClick="Page.Go(this.href); return false;"><div class="ic_notes"></div><span class="nav-text">Заметки<span></a>
					  <a href="/settings" onClick="Page.Go(this.href); return false;"><div class="ic_settings"></div><span class="nav-text">Настройки<span></a>
					 <a href="/support" onClick="Page.Go(this.href); return false;"><div id="new_support">{new-support}</div><div class="ic_support"></div><span class="nav-text">Помощь<span>
					</a>
					<a href="/blog" onClick="Page.Go(this.href); return false;"><img src="/templates/mixnet/images/support2.png" style="max-width: 30px;display: block;margin: -1px 0px 9px 12px;"><span class="nav-text">Новости<span></a>
					<a href="/balance" onClick="Page.Go(this.href); return false;" id="ubm_link"><div class="ic_balance"><div id="new_ubm"></div></div><span class="nav-text">Баланс<span></a> 
				  </ul>
				</aside>

			  <a class="exit-off-canvas"></a>


<div class="wr">
<div class="row">
<div class="medium-12 columns">
<div class="page">
  <div class="panelUser show-for-large-up">
  <a href="{my-page-link}" onClick="Page.Go(this.href); return false;"><div class="ic_profile"></div><span class="nav-text">Профиль</span></a>
  <a href="/messages" onClick="Page.Go(this.href); return false;"><div id="new_msg">{msg}</div><div class="ic_msg"></div><span class="nav-text">Сообщения</span></a>
  <a href="/friends" onClick="Page.Go(this.href); return false;" id="requests_link"><div id="new_requests">{demands}</div><div class="ic_friends"></div><span class="nav-text">Друзья<span></a>
  <!--<a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos"><div id="new_photos">{new_photos}</div><div class="ic_photo"></div><span class="nav-text">Фото<span></a>-->
  <a href="/albums/{my-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos"><div id="new_photos">{new_photos}</div><div class="ic_photo"></div><span class="nav-text">Фото<span></a>
  <a class="player_m" href="/audio" onClick="doLoad.js(0); player.open(); return false;" id="fplayer_pos"><div class="ic_music"></div><span class="nav-text">Музыка</span></a>
  <a href="/fave" onClick="Page.Go(this.href); return false;"><div class="ic_fave"></div><span class="nav-text">Закладки<span></a>
  <a href="/videos" onClick="Page.Go(this.href); return false;"><div class="ic_video"></div><span class="nav-text">Видео<span></a>
  <a href="/groups" onClick="Page.Go(this.href); return false;"><div class="ic_groups"></div><span class="nav-text">Группы<span></a>
  <a href="/news" onClick="Page.Go(this.href); return false;" id="news_link"><div class="ic_news"><div id="new_news"></div></div><span class="nav-text">Лента<span></a>
  <a href="/notes" onClick="Page.Go(this.href); return false;"><div class="ic_notes"></div><span class="nav-text">Заметки<span></a>
  <a href="/settings" onClick="Page.Go(this.href); return false;"><div class="ic_settings"></div><span class="nav-text">Настройки<span></a>
 <a href="/support" onClick="Page.Go(this.href); return false;"><div id="new_support">{new-support}</div><div class="ic_support"></div><span class="nav-text">Помощь<span>
</a>
      <a href="/blog" onClick="Page.Go(this.href); return false;"><img src="/templates/mixnet/images/support2.png" style="max-width: 30px;display: block;margin: -1px 0px 9px 12px;"><span class="nav-text">Новости<span></a>
<a href="/balance" onClick="Page.Go(this.href); return false;" id="ubm_link"><div class="ic_balance"><div id="new_ubm"></div></div><span class="nav-text">Баланс<span></a> 
 </div>
 <div id="audioPlayer"></div>
 <div id="page">{info}{content}</div>
  <div class="clear"></div>
 </div>
 <div class="clear"></div>
</div>
</div>
</div>
</div>
<div class="footer">
 <a href="/info"onClick="Page.Go(this.href); return false">Условия использования</a>
 <!--<a href="/support"onClick="Page.Go(this.href); return false">Помощь</a>-->
 <!--<a href="/blog"onClick="Page.Go(this.href); return false">новости</a>-->
 <a href="/?act=change_mobile">Мобильная версия</a>
 <div>все права&copy; 2015-2016</div>
</div>[/logged]


[not-logged]
<script>
function boxlogin(){
	Box.Show('log', 300, 'Вход на сайт', '<form method="POST" action="" id="logform" style="padding:15px"><div class="flLg">Электронный адрес</div><input type="text" name="email" id="log_email" class="inplog" maxlength="50"/><div class="flLg">Пароль</div><input type="password" name="password" id="log_password" class="inplog" maxlength="50"/><div style="margin-top:7px" class="button_div"><button name="log_in" id="login_but" style="width:268px">Войти</button></div><div style="margin-top:7px" class="clear"><a href="/restore"><font color="black">Не можете войти?</font></a></div></form>', 'Отмена');
}
</script>

<div class="row">
	<div class="medium-2 columns">
		<a href="/" class="new_logo" ><img width="100%" src="/templates/mixnet/images/123.png"></a> 
	</div>
	<div class="medium-8 columns">
		 <div class="new_descr">Мы рады приветствовать вас на нашем сайте! 
		Данный ресурс создан для общения и обменом информации между русскоязычными пользователями Латвии, Литвы и Эстонии!
		</div>
	</div>
	<div class="medium-2 columns">
		<div class="new_but fl_r cursor_pointer" onClick="boxlogin();" >Войти</div>
	</div>
</div>
<div class="new_gr"></div>

<div class="autowr">
 <div class="content" >
 
 <div class="cont_border_left">
   <div class="cont_border_right">
	   <div id="audioPlayer"></div>
    <div class="padcont">
	<div id="page">{info} {content}</div>
 <div class="clear"></div>
</div></div>
	 <div class="clear"></div>
	</div>
   </div>
  </div>

</div> 
<div class="clear"></div>
  <div class="clear"></div>
 </div>
 <div class="clear"></div>
</div>
</div>
<div class="footer">
 <a href="/?act=change_mobile">Мобильная версия</a>
<div style="color: #ffffff;"> 1one&copy; 2015-2016</div>
<!--cy-pr.com--><a href="http://www.cy-pr.com/" target="_blank"><img src="http://www.cy-pr.com/e/1one.lv_4_255.153.0.gif" border="0" width="88" height="15" alt="Проверка ТИЦ" /></a><!--cy-pr.com--><!--cy-pr.com--><!--cy-pr.com--><a href="http://www.cy-pr.com/" target="_blank"><img src="http://www.cy-pr.com/e/1one.lt_4_153.153.255.gif" border="0" width="88" height="15" alt="Проверить тИЦ и PR" /></a><!--cy-pr.com--><!--cy-pr.com--><a href="http://www.cy-pr.com/" target="_blank"><img src="http://www.cy-pr.com/e/1one.ee_4_166.209.23.gif" border="0" width="88" height="15" alt="Тиц и pr сайта" /></a><!--cy-pr.com-->
</div>
</div>[/not-logged]

[logged]
<script type="text/javascript">
function newYear(){
  ch = $('#elka').html().length;
  if(!ch){
    $('#elka').html('<img src="{theme}/images/2013elka.gif" />').fadeIn(700);
  } else {
    $('#elka').fadeOut(function(){
	  $('#elka').html('');
	});
  }
}
function upClose(xnid){
	$('#event'+xnid).remove();
	$('#updates').css('height', $('.update_box').size()*123+'px');
}
function GoPage(event, p){
	var oi = (event.target) ? event.target.id: ((event.srcElement) ? event.srcElement.id : null);
	if(oi == 'no_ev' || oi == 'update_close' || oi == 'update_close2') return false;
	else {
		pattern = new RegExp(/photo[0-9]/i);
		pattern2 = new RegExp(/video[0-9]/i);
		if(pattern.test(p))
			Photo.Show(p);
		else if(pattern2.test(p)){
			vid = p.replace('/video', '');
			vid = vid.split('_');
			videos.show(vid[1], p, location.href);
		} else
			Page.Go(p);
	}
}
$(document).ready(function(){

	setInterval(function(){
		$.post('/index.php?go=updates', function(d){
			row = d.split('|');
			if(d && row[1]){
				if(row[0] == 1) uTitle = 'Новый ответ на стене';
				else if(row[0] == 2) uTitle = 'Новый комментарий к фотографии';
				else if(row[0] == 3) uTitle = 'Новый комментарий к видеозаписи';
				else if(row[0] == 4) uTitle = 'Новый комментарий к заметке';
				else if(row[0] == 5) uTitle = 'Новый ответ на Ваш комментарий';
				else if(row[0] == 6) uTitle = 'Новый ответ в теме';
				else if(row[0] == 7) uTitle = 'Новый подарок';
				else if(row[0] == 8) uTitle = 'Новое сообщение';
				else if(row[0] == 9) uTitle = 'Новая оценка';
				else if(row[0] == 10) uTitle = 'Ваша запись понравилась'; 
				else if(row[0] == 11) uTitle = 'Новая заявка';
				else if(row[0] == 12) uTitle = 'Заявка принята';
				else uTitle = 'Событие';
				if(row[0] == 8){
					sli = row[6].split('/');
					tURL = (location.href).replace('http://'+location.host, '').replace('/', '').split('#');
					if(!sli[2] && tURL[0] == 'messages') return false;
					if($('#new_msg').text()) msg_num = parseInt($('#new_msg').text().replace(')', '').replace('(', ''))+1;
					else msg_num = 1;
					$('#new_msg').html("<div class=\"headm_newac\">+"+msg_num+"</div>");
				}
				if(row[0] == 11){
					sli = row[6].split('/');
					tURL = (location.href).replace('http://'+location.host, '').replace('/', '').split('#');
					if(!sli[2] && tURL[0] == 'requests') return false;
					if($('#new_requests').text()) user_friends_num = parseInt($('#new_requests').text().replace(')', '').replace('(', ''))+1;
					else user_friends_num = 1;
					$('#new_requests').html("<div class=\"headm_newac\">+"+user_friends_num+"</div>");
				}
                                setTimeout('upClose('+row[4]+');', 10000);
				temp = '<div class="update_box cursor_pointer" id="event'+row[4]+'" onClick="GoPage(event, \''+row[6]+'\'); upClose('+row[4]+')"><div class="update_box_margin"><div style="height:19px"><span>'+uTitle+'</span><div class="update_close fl_r no_display" id="update_close" onMouseDown="upClose('+row[4]+')"><div class="update_close_ic" id="update_close2"></div></div></div><div class="clear"></div><div class="update_inpad"><a href="/u'+row[2]+'" onClick="Page.Go(this.href); return false"><div class="update_box_marginimg"><img src="'+row[5]+'" id="no_ev" /></div></a><div class="update_data"><a id="no_ev" href="/u'+row[2]+'" onClick="Page.Go(this.href); return false">'+row[1]+'</a>&nbsp;&nbsp;'+row[3]+'</div></div><div class="clear"></div></div></div>';
				$('#updates').html($('#updates').html()+temp);
				var beepThree = $("#beep-three")[0];
				beepThree.play();
				if($('.update_box').size() <= 5) $('#updates').animate({'height': (123*$('.update_box').size())+'px'});
				if($('.update_box').size() > 5){
					evFirst = $('.update_box:first').attr('id');
					$('#'+evFirst).animate({'margin-top': '-123px'}, 400, function(){
						$('#'+evFirst).fadeOut('fast', function(){
							$('#'+evFirst).remove();
						});
					});
				}
			}
		});
	}, 5000);
});
</script>
[/logged]
<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="{theme}/images/soundact.ogg"></source></audio></div>
<div id="updates"></div>
<div class="clear"></div>
	</div>
</div>
<!-- jQuery library -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/foundation/5.5.2/js/foundation.min.js"></script>
<script src="https://cdn.jsdelivr.net/foundation/5.2.2/js/foundation/foundation.offcanvas.js"></script>
<!-- Latest compiled modernizr -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
<script>
$.noConflict();
jQuery( document ).ready(function( $ ) {
  $(document).foundation();
});
</script>

</body>
</html>

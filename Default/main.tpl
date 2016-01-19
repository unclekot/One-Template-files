<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
{header}
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" /> 
<script type="text/javascript" src="/templates/Default/js/jquery.lib.js"></script><script type="text/javascript" src="/templates/Default/js/main.js"></script><script type="text/javascript" src="/templates/Default/js/profile.js"></script><script type="text/javascript" src="/templates/Default/js/rating.js"></script>
<script type="text/javascript" src="{theme}/js/audio_player.js"></script>
<script type="text/javascript" src="http://udinbala.com/templates/Default/js/profile.js?321d"></script>
{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
<script type="text/javascript" src="{theme}/js/profile.js?321d"></script>
<link rel="shortcut icon" href="{theme}/images/fav.png" />
</head>
<body onResize="onBodyResize()" class="no_display" [not-logged]style="background:#fff"[/not-logged]>
<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">������</div></div>
<div class="head" [not-logged]style="height:47px"[/not-logged]>
 <div class="autowr">
  [logged]<a class="udinsMy" href="/news{news-link}" onClick="Page.Go(this.href); return false;" id="news_link"><span id="new_news">{new-news}</span></a>[/logged]
  [not-logged]<a href="/" class="udinsMy" style="margin-left:-10px"></a>[/not-logged]
  [logged]<div class="headmenu">
<a href="{my-page-link}" onclick="Page.Go(this.href); return false;" id="myhome">
  <div class="headm_posic">
    <img src="/templates/Default/images/spacer.gif" class="headm_ic_mypage">
    <br>
	 �������
  </div>
</a>
  <a href="/messages" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic">
	<b id="new_msg"></b>
	<img src="/templates/Default/images/spacer.gif" class="headm_ic_mess" /><br />
	 ���������
   </div>
   </a>
   <a href="/friends" onClick="Page.Go(this.href); return false;" id="requests_link">
    <div class="headm_posic">
		<b id="new_requests"></b>
	<img src="/templates/Default/images/spacer.gif" class="headm_ic_friend" /><br />
	 ������
    </div>
  </a>
  <a href="/albums/{my-id}" onclick="Page.Go(this.href); return false;" id="requests_link_new_photos">
    <div class="headm_posic">
      <div id="new_photos"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_photo">
      <br>
	 ����
    </div>
  </a>
  <a href="/fave" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_fave">
      <br>
	 ��������
    </div>
  </a>
  <a href="/videos" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_videos">
      <br>
	 �����
    </div>
  </a>
   <a href="/audio" onClick="doLoad.js(0); player.open(); return false;">
    <div class="headm_posic"><img src="/templates/Default/images/spacer.gif" class="headm_ic_music" id="fplayer_pos" /><br />
	 ������
    </div>
  <a href="/apps" onclick="Page.Go(this.href); return false;" style="display:none">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_games">
      <br>
	 ����
    </div>
  </a>
  <a href="/groups" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_groups">
      <br>
	 ������
    </div>
  </a>
  <a href="/news" onclick="Page.Go(this.href); return false;" id="news_link">
    <div class="headm_posic">
      <div id="new_news"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_news">
      <br>
	 �����
    </div>
  </a>
  <a href="/notes" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_notes">
      <br>
	 �������
    </div>
  </a>
<a href="/?go=search" onclick="Page.Go(this.href); return false;" id="se_link">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_se">
      <br>
	 �����
    </div>
  </a>
  <a href="/settings" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_settings">
      <br>
	 ���������
    </div>
  </a>
  <a href="/support" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <div id="new_support"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_support">
      <br>
	 ������
    </div>
  </a>
  <a href="/balance" onclick="Page.Go(this.href); return false;" id="ubm_link">
    <div class="headm_posic">
      <div id="new_ubm"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_ubm">
      <br>
	 ������
    </div>
  </a>
  <a href="/?act=logout">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_logout">
      <br>
	 �����
    </div>
  </a>

<script type="text/javascript">
$(document).ready(function(){
	music.jPlayerInc();
	$(window).scroll(function(){
		if($(window).scrollTop() > 45){
			$('.player_container').css('position', 'fixed').css('margin-top', '-48px').css('width', '774px');
			$('.player_shadow').show();
		} else {
			$('.player_container').css('position', 'static').css('margin-top', '-14px').css('width', '774px');
			$('.player_shadow').hide();
		}
		if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2)){
			audio.page();
		}
	});
});
</script>






  <!--search-->
  <div class="search_tab no_display" id="search_tab">
    <input type="text" value="�����" class="fave_input search_input" onblur="if(this.value=='') this.value='�����';this.style.color = '#c1cad0';" onfocus="if(this.value=='�����')this.value='';this.style.color = '#000'" onkeypress="if(event.keyCode == 13) gSearch.go();" onkeyup="FSE.Txt()" id="query" maxlength="65">
    <div id="search_types">
      <input type="hidden" value="1" id="se_type">
      <div class="search_type" id="search_selected_text" onclick="gSearch.open_types('#sel_types'); return false">�� �����</div>
      <div class="search_alltype_sel no_display" id="sel_types">
        <div id="1" onclick="gSearch.select_type(this.id, '�� �����'); FSE.GoSe($('#query').val()); return false" class="search_type_selected">�� �����</div>
        <div id="2" onclick="gSearch.select_type(this.id, '�� ������������'); FSE.GoSe($('#query').val()); return false">�� ������������</div>
        <div id="3" onclick="gSearch.select_type(this.id, '�� ��������');  FSE.GoSe($('#query').val()); return false">�� ��������</div>
        <div id="4" onclick="gSearch.select_type(this.id, '�� �����������'); FSE.GoSe($('#query').val()); return false">�� �����������</div>
        <div id="5" onclick="gSearch.select_type(this.id, '�� ������������');  FSE.GoSe($('#query').val()); return false">�� ������������</div>
      </div>
    </div>
    <div class="button_div fl_l margin_left">
      <button onclick="gSearch.go(); return false" id="se_but">�����</button>
    </div>
  </div>
  <div class="fast_search_bg no_display">
    <a href="/" style="padding:12px;background:#eef3f5" onclick="gSearch.go(); return false" onmouseover="FSE.ClrHovered(this.id)" id="all_fast_res_clr1">
      <text>������</text>
      <b id="fast_search_txt"></b>
      <div class="fl_r fast_search_ic"></div>
    </a>
    <span id="reFastSearch"></span>
  </div>
 <!--/search-->
 
</div>
   </div>
   <!--/search-->
  </div>[/logged]
 </div>
</div>
<div class="clear"></div>
<div style="margin-top:35px"></div>
<div class="autowr">
[logged][/logged]
 [not-logged]<div class="leftpanel">
  <form method="POST" action="">
<p>&nbsp;</p>
   <div class="flLg">����������� �����</div><input type="text" name="email" id="log_email" class="inplog" maxlength="50" />
   <div class="flLg">������</div><input type="password" name="password" id="log_password" class="inplog" maxlength="50" />
   <div class="logpos">
    <div class="button_div"><button name="log_in" id="login_but" style="width:138px">�����</button></div>
	<div style="margin-top:5px"><a href="/restore" onClick="Page.Go(this.href); return false">�� ������ �����?</a></div>
   </div>
  </form>
 </div>[/not-logged]
 <div class="content" [logged]style="width:800px;"[/logged]>

   <div class="cont_border_right">
<div id="audioPlayer"></div>
    <div class="speedbar [speedbar]no_display[/speedbar]" id="speedbar">{speedbar}</div>
    <div class="padcont">
	 <div id="page">{info}{content}</div>
	 <div class="clear"></div>
	</div>
 </div>
 </div>
  <div class="cont_border_bottom"></div>
  <div class="footer">
   <a href="/?go=search&online=1" onClick="Page.Go(this.href); return false">����</a>
   <a href="/?go=search&type=4" onClick="Page.Go(this.href); return false">����������</a>
   <a href="/?go=search&type=5" onClick="Page.Go(this.href); return false">������</a>
   <a href="/?go=search&type=2" onClick="Page.Go(this.href); return false">�����</a>
   <a href="/support?act=new" onClick="Page.Go(this.href); return false">������</a>
<a href="/?act=change_mobile">��������� ������</a>
   <a href="/blog" onClick="Page.Go(this.href); return false">����</a><br /><br />
   

   <small>��� ����� ��������. <a href="/u1" onClick="Page.Go(this.href); return false">������������� �����</a></small><br/><br/>

  </div>
 </div>
</div>
[logged]<script type="text/javascript">
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
				if(row[0] == 1) uTitle = '����� ����� �� �����';
				else if(row[0] == 2) uTitle = '����� ����������� � ����������';
				else if(row[0] == 3) uTitle = '����� ����������� � �����������';
				else if(row[0] == 4) uTitle = '����� ����������� � �������';
				else if(row[0] == 5) uTitle = '����� ����� �� ��� �����������';
				else if(row[0] == 6) uTitle = '����� ����� � ����';
				else if(row[0] == 7) uTitle = '����� �������';
				else if(row[0] == 8) uTitle = '����� ���������';
				else if(row[0] == 9) uTitle = '����� ������';
				else if(row[0] == 10) uTitle = '���� ������ �����������';
				else if(row[0] == 11) uTitle = '����� ������';
				else if(row[0] == 12) uTitle = '������ �������';
				else uTitle = '�������';



				temp = '<div class="update_box cursor_pointer" id="event'+row[4]+'" onClick="GoPage(event, \''+row[6]+'\'); upClose('+row[4]+')"><div class="update_box_margin"><div style="height:19px"><span>'+uTitle+'</span><div class="update_close fl_r no_display" id="update_close" onMouseDown="upClose('+row[4]+')"><div class="update_close_ic" id="update_close2"></div></div></div><div class="clear"></div><div class="update_inpad"><a href="/u'+row[2]+'" onClick="Page.Go(this.href); return false"><img src="'+row[5]+'" id="no_ev" /></a><div class="update_data"><a id="no_ev" href="/u'+row[2]+'" onClick="Page.Go(this.href); return false">'+row[1]+'</a>&nbsp;&nbsp;'+row[3]+'</div></div><div class="clear"></div></div></div>';
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








<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="/templates/Default/sound/soundact.ogg"></source></audio></div>  
<div id="updates"></div>
<div class="clear"></div>

</body>
</html>
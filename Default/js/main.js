var uagent = navigator.userAgent.toLowerCase();
var is_safari = ((uagent.indexOf('safari') != -1) || (navigator.vendor == "Apple Computer, Inc."));
var is_ie = ((uagent.indexOf('msie') != -1) && (!is_opera) && (!is_safari) && (!is_webtv));
var is_ie4 = ((is_ie) && (uagent.indexOf("msie 4.") != -1));
var is_moz = (navigator.product == 'Gecko');
var is_ns = ((uagent.indexOf('compatible') == -1) && (uagent.indexOf('mozilla') != -1) && (!is_opera) && (!is_webtv) && (!is_safari));
var is_ns4 = ((is_ns) && (parseInt(navigator.appVersion) == 4));
var is_opera = (uagent.indexOf('opera') != -1);
var is_kon = (uagent.indexOf('konqueror') != -1);
var is_webtv = (uagent.indexOf('webtv') != -1);
var is_win = ((uagent.indexOf("win") != -1) || (uagent.indexOf("16bit") != -1));
var is_mac = ((uagent.indexOf("mac") != -1) || (navigator.vendor == "Apple Computer, Inc."));
var is_chrome = (uagent.match(/Chrome\/\w+\.\w+/i)); if(is_chrome == 'null' || !is_chrome || is_chrome == 0) is_chrome = '';
var ua_vers = parseInt(navigator.appVersion);
var req_href = location.href;
var vii_interval = false;
var vii_interval_im = false;
var scrollTopForFirefox = 0;
var url_next_id = 1;

$(document).ready(function(){
	var mw = ($('html, body').width()-800)/2;
	if($('.autowr')){
		$('body').show();
		history.pushState({link:location.href}, '', location.href);
	}
	$('.update_code').click(function(){
		var rndval = new Date().getTime(); 
		$('#sec_code').html('<img src="/antibot/antibot.php?rndval=' + rndval + '" alt="" title="�������� ������ ���" width="120" height="50" />');
		return false;
	});
	$(window).scroll(function(){
		if($(document).scrollTop() > ($(window).height()/2))
			$('.scroll_fix_bg').fadeIn(200); 
		else 
			$('.scroll_fix_bg').fadeOut(200); 
	});
});

$(document).click(function(event){
	oi = (event.target) ? event.target.id: ((event.srcElement) ? event.srcElement.id : null);
	if(oi != 'fast_name' && oi != 'fast_img' && oi != 'search_selected_text' && oi != 'query' && oi != '1' && oi != '2' && oi != '3' && oi != '4' && oi != '5')
		$('.fast_search_bg').hide();
});

if(CheckRequestPhoto(req_href)){
	$(document).ready(function(){
		Photo.Show(req_href);
	});
}

if(CheckRequestVideo(req_href)){
	$(document).ready(function(){
		var video_id = req_href.split('_');
		var section = req_href.split('sec=');
		var fuser = req_href.split('wall/fuser=');

		if(fuser[1])
			var close_link = '/u'+fuser[1];
		else
			var close_link = '';
		
		if(section[1]){
			var xSection = section[1].split('/');

			if(xSection[0] == 'news')
				var close_link = 'news';

			if(xSection[0] == 'msg'){
				var msg_id = xSection[1].split('id=');
				var close_link = '/messages/show/'+msg_id[1];
			}
		}
		
		videos.show(video_id[1], req_href, close_link);
	});
}

//AJAX PAGES
window.onload = function(){ 
	window.setTimeout(
		function(){ 
			window.addEventListener(
				"popstate",  
				function(e){
					e.preventDefault(); 

					if(CheckRequestPhoto(e.state.link))
						Photo.Prev(e.state.link);
					else if(CheckRequestVideo(e.state.link))
						videos.prev(e.state.link);
					else
						Page.Prev(e.state.link);
				},  
			false); 
		}, 
	1); 
}
function CheckRequestPhoto(request){
	var pattern = new RegExp(/photo[0-9]/i);
 	return pattern.test(request);
}
function CheckRequestVideo(request){
	var pattern = new RegExp(/video[0-9]/i);
 	return pattern.test(request);
}
function onBodyResize(){
	var mw = ($('html, body').width()-800)/2;
	//$('.autowr').css('padding-left', mw+'px').css('padding-right', mw+'px');
}
var Page = {
	Loading: function(f){
		var top_pad = $(window).height()/2-50;
		if(f == 'start'){
			$('#loading').remove();
			$('html, body').append('<div id="loading" style="margin-top:'+top_pad+'px"><div class="loadstyle"></div></div>');
			$('#loading').show();
		}
		if(f == 'stop'){
			$('#loading').remove();
		}
	},
	Go: function(h){	
		history.pushState({link:h}, null, h);
		$('.js_titleRemove').remove();
		
		clearInterval(vii_interval);
		clearInterval(vii_interval_im);
		
		$('#sel_types, .fast_search_bg').hide();
		$('#query').val('�����').css('color', '#c1cad0');

		Page.Loading('start');
		$('#page').load(h, {ajax: 'yes'}, function(data){
			Page.Loading('stop');
			$('html, body').scrollTop(0);
			
			$('.ladybug_ant').imgAreaSelect({remove: true});
			
			//������� ��� �����, �����, ��������� ����
			$('.photo_view, .box_pos, .box_info, .video_view').remove();
			
			//���������� scroll
			$('html, body').css('overflow-y', 'auto');

		}).css('min-height', '0px');
	},
	Prev: function(h){
		clearInterval(vii_interval);
		clearInterval(vii_interval_im);
		
		$('#sel_types, .fast_search_bg').hide();
		$('#query').val('�����').css('color', '#c1cad0');
		
		Page.Loading('start');
		$('#page').load(h, {ajax: 'yes'}, function(data){
			Page.Loading('stop');

			$('html, body').scrollTop(0);
			
			$('.ladybug_ant').imgAreaSelect({remove: true});
			
			//������� ��� �����, �����, ��������� ����
			$('.photo_view, .box_pos, .box_info, .video_view').remove();
			
			//���������� scroll
			$('html, body').css('overflow-y', 'auto');

		}).css('min-height', '0px');		
	}
}
//PROFILE FUNC
var Profile = {
	miniature: function(){
		Page.Loading('start');
		$.post('/index.php?go=editprofile&act=miniature', function(d){
			Page.Loading('stop');
			if(d == 1) 
				addAllErr('�� ���� ��� �� ��������� ����������.');
			else {
				if(is_moz && !is_chrome) scrollTopForFirefox = $(window).scrollTop();
				$('html, body').css('overflow-y', 'hidden');
				if(is_moz && !is_chrome) $(window).scrollTop(scrollTopForFirefox);
				$('body').append('<div id="newbox_miniature">'+d+'</div>');
			}
			$(window).keydown(function(event){
				if(event.keyCode == 27) Profile.miniatureClose();
			});
		});
	},
	preview: function(img, selection){
		if(!selection.width || !selection.height) return;
		var scaleX = 100 / selection.width;
		var scaleY = 100 / selection.height;
		var scaleX50 = 50 / selection.width;
		var scaleY50 = 50 / selection.height;
		$('#miniature_crop_100 img').css({
			width: Math.round(scaleX * $('#miniature_crop').width()),
			height: Math.round(scaleY * $('#miniature_crop').height()),
			marginLeft: -Math.round(scaleX * selection.x1),
			marginTop: -Math.round(scaleY * selection.y1)
		});
		$('#miniature_crop_50 img').css({
			width: Math.round(scaleX50 * $('#miniature_crop').width()),
			height: Math.round(scaleY50 * $('#miniature_crop').height()),
			marginLeft: -Math.round(scaleX50 * selection.x1),
			marginTop: -Math.round(scaleY50 * selection.y1)
		});
	},
	miniatureSave: function(){
		var i_left = $('#mi_left').val();
		var i_top = $('#mi_top').val();
		var i_width = $('#mi_width').val();
		var i_height = $('#mi_height').val();
		butloading('miniatureSave', '111', 'disabled', '');
		$.post('/index.php?go=editprofile&act=miniature_save', {i_left: i_left, i_top: i_top, i_width: i_width, i_height: i_height}, function(d){
			if(d == 'err') addAllErr('������');
			else window.location.href = '/u'+d;
			butloading('miniatureSave', '111', 'enabled', '��������� ���������');
		});
	},
	miniatureClose: function(){
		$('#miniature_crop').imgAreaSelect({remove: true});
		$('#newbox_miniature').remove();
		$('html, body').css('overflow-y', 'auto');
	},
	LoadCity: function(id){
		
		$('#load_mini').show();
		if(id > 0){
			$('#city').slideDown();
			$('#select_city').load('/index.php?go=loadcity', {country: id});
		} else {
			$('#city').slideUp();
			$('#load_mini').hide();
		}
	},
	//MAIN PHOTOS
	LoadPhoto: function(){
		Page.Loading('start');
		$.get('/index.php?go=editprofile&act=load_photo', function(data){
			Box.Show('photo', 400, lang_title_load_photo, data, lang_box_can�el);
			Page.Loading('stop');
		});
	},
	DelPhoto: function(){
		Box.Show('del_photo', 400, lang_title_del_photo, '<div style="padding:15px;">'+lang_del_photo+'</div>', lang_box_can�el, lang_box_yes, 'Profile.StartDelPhoto(); return false;');
	},
	StartDelPhoto: function(){
		$('#box_loading').show();
		$.get('/index.php?go=editprofile&act=del_photo', function(){
			$('#ava').html('<img src="/templates/Default/images/no_ava.gif" alt="" />');
			$('#del_pho_but').hide();
			Box.Close('del_photo');
			Page.Loading('stop');
		});
	},
	MoreInfo: function(){
		$('#moreInfo').show();
		$('#moreInfoText').text('������ ��������� ����������');
		$('#moreInfoLnk').attr('onClick', 'Profile.HideInfo()');
	},
	HideInfo: function(){
		$('#moreInfo').hide();
		$('#moreInfoText').text('�������� ��������� ����������');
		$('#moreInfoLnk').attr('onClick', 'Profile.MoreInfo()');
	}
}

//MODAL BOX
var Box = {
	
	Page: function(url, data, name, width, title, cancel_text, func_text, func, height, overflow, bg_show, bg_show_bottom, input_focus, cache){
	
	
		//url - ������ ������� ����� ���������
		//data - POST ������
		//name - id ����
		//width - ������ ����
		//title - �������� ����
		//content - ������� ����
		//close_text - ����� ��������
		//func_text - ����� ������� ����� ��������� �������
		//func - ������� ������ "func_text"
		//height - ������ ����
		//overflow - ���������� ������
		//bg_show - ���� ������ ���� ������
		//bg_show_bottom - "1" - � ����� ������, "0" - ��� ���� ������
		//input_focus - �� ���������� ���� �� ������� ����� ��������
		//cache - "1" - ����������, "0" - �� ����������

		if(cache)
			if(ge('box_'+name)){
				Box.Close(name, cache);
				$('#box_'+name).show();
				$('#box_content_'+name).scrollTop(0);
				if(is_moz && !is_chrome)
					scrollTopForFirefox = $(window).scrollTop();
				
				$('html').css('overflow', 'hidden');

				if(is_moz && !is_chrome)
					$(window).scrollTop(scrollTopForFirefox);
				return false;
			}
		
		//Page.Loading('start');
	
		$.post(url, data, function(html){
				console.log(location.href);
			if(!CheckRequestVideo(location.href))
				Box.Close(name, cache);
			Box.Show(name, width, title, html, cancel_text, func_text, func, height, overflow, bg_show, bg_show_bottom, cache);
			Page.Loading('stop');
			if(input_focus)
				$('#'+input_focus).focus();
		});
	},
	Show: function(name, width, title, content, close_text, func_text, func, height, overflow, bg_show, bg_show_bottom, cache){
		
		//name - id ����
		//width - ������ ����
		//title - �������� ����
		//content - ������� ����
		//close_text - ����� ��������
		//func_text - ����� ������� ����� ��������� �������
		//func - ������� ������ "func_text"
		//height - ������ ����
		//overflow - ���������� ������
		//bg_show - ���� ������ ���� ������
		//bg_show_bottom - ���� ������ ������ �����
		//cache - "1" - ����������, "0" - �� ����������
		
		if(func_text)
			var func_but = '<div class="button_div fl_r" style="margin-right:10px;" id="box_but"><button class="button" onClick="'+func+'" id="box_butt_create">'+func_text+'</button></div>';
		else
			var func_but = '';
			
		var close_but = '<div class="button_div_gray fl_r"><button class="button" onClick="Box.Close(\''+name+'\', '+cache+'); return false;">'+close_text+'</button></div>';
		
		var box_loading = '<img id="box_loading" style="display:none;padding-top:8px;padding-left:5px;" src="/templates/Default/images/loading_mini.gif" alt="" />';
		
		if(height)
			var top_pad = ($(window).height()-150-height)/2;
			if(top_pad < 0)
				top_pad = 100;
			
		if(overflow)
			var overflow = 'overflow-y:scroll;';
		else
			var overflow = '';
			
		if(bg_show)
			if(overflow)
				var bg_show = '<div class="bg_show" style="width:'+(width-19)+'px;"></div>';
			else
				var bg_show = '<div class="bg_show" style="width:'+(width-2)+'px;"></div>';
		else
			var bg_show = '';
		
		if(bg_show_bottom)
			if(overflow)
				var bg_show_bottom = '<div class="bg_show_bottom" style="width:'+(width-17)+'px;"></div>';
			else
				var bg_show_bottom = '<div class="bg_show_bottom" style="width:'+(width-2)+'px;"></div>';
		else
			var bg_show_bottom = '';
			
		if(height)
			var sheight = 'height:'+height+'px';
		else
			var sheight = '';

		$('body').append('<div id="modal_box"><div id="box_'+name+'" class="box_pos"><div class="box_bg" style="margin-top:'+top_pad+'px;"><div class="box_title" id="box_title_'+name+'">'+title+'<div class="box_close" onClick="Box.Close(\''+name+'\', '+cache+'); return false;"></div></div><div class="box_conetnt" id="box_content_'+name+'">'+bg_show+content+func_but+'<div class="clear"></div></div>'+bg_show_bottom+'<div class="box_footer"><div id="box_bottom_left_text" class="fl_l">'+box_loading+'</div>'+close_but+'</div></div></div></div>');
		
		$('#box_'+name).show();

		if(is_moz && !is_chrome)
			scrollTopForFirefox = $(window).scrollTop();
		
		$('html').css('overflow', 'hidden');

		if(is_moz && !is_chrome)
			$(window).scrollTop(scrollTopForFirefox);
		
		$(window).keydown(function(event){
			if(event.keyCode == 27) {
				Box.Close(name, cache);
			} 
		});
	},
	Close: function(name, cache){
	
		if(!cache)
			$('.box_pos').remove();
		else
			$('.box_pos').hide();

		if(CheckRequestVideo(location.href) == false && CheckRequestPhoto(location.href) == false)
			$('html, body').css('overflow-y', 'auto');
			
		if(CheckRequestVideo(location.href))
			$('#video_object').show();
			
		if(is_moz && !is_chrome)
			$(window).scrollTop(scrollTopForFirefox);
	},
	GeneralClose: function(){
		$('#modal_box').hide();
	},
	Info: function(bid, title, content, width, tout){
		var top_pad = ($(window).height()-115)/2;
		$('body').append('<div id="'+bid+'" class="box_info row"><div class="box_info_margin" style="margin-top: '+top_pad+'px"><b><span>'+title+'</span></b><br /><br />'+content+'</div></div>');
		$(bid).show();
		
		if(!tout)
			var tout = 1400;
		
		setTimeout("Box.InfoClose()", tout);
		
		$(window).keydown(function(event){
			if(event.keyCode == 27) {
				Box.InfoClose();
			} 
		});
	},
	InfoClose: function(){
		$('.box_info').fadeOut();
	}
}
function ge(i){
	return document.getElementById(i);
}
function butloading(i, w, d, t){
	if(d == 'disabled'){
		$('#'+i).html('<div style="width:'+w+'px;text-align:center;"><img src="/templates/Default/images/loading_mini.gif" alt="" /></div>');
		ge(i).disabled = true;
	} else {
		$('#'+i).html(t);
		ge(i).disabled = false;
	}
}
function textLoad(i){
	$('#'+i).html('<img src="/templates/Default/images/loading_mini.gif" alt="" />').attr('onClick', '').attr('href', '#');
}
function updateNum(i, type){
	if(type)
		$(i).text(parseInt($(i).text())+1);
	else
		$(i).text($(i).text()-1);
}
function setErrorInputMsg(i){
	$("#"+i).css('background', '#ffefef');
	$("#"+i).focus();
	setTimeout("$('#"+i+"').css('background', '#fff').focus()", 700);
}
function addAllErr(text, tim){
	if(!tim)
		var tim = 2500;
		
	$('.privacy_err').remove();
	$('body').append('<div class="privacy_err no_display">'+text+'</div>');
	$('.privacy_err').fadeIn('fast');
	setTimeout("$('.privacy_err').fadeOut('fast')", tim);
}
function langNumric(id, num, text1, text2, text3, text4, text5){
	strlen_num = num.length;
	
	if(num <= 21){
		numres = num;
	} else if(strlen_num == 2){
		parsnum = num.substring(1,2);
		numres = parsnum.replace('0','10');
	} else if(strlen_num == 3){
		parsnum = num.substring(2,3);
		numres = parsnum.replace('0','10');
	} else if(strlen_num == 4){
		parsnum = num.substring(3,4);
		numres = parsnum.replace('0','10');
	} else if(strlen_num == 5){
		parsnum = num.substring(4,5);
		numres = parsnum.replace('0','10');
	}
	
	if(numres <= 0)
		var gram_num_record = text5;
	else if(numres == 1)
		var gram_num_record = text1;
	else if(numres < 5)
		var gram_num_record = text2;
	else if(numres < 21)
		var gram_num_record = text3;
	else if(numres == 21)
		var gram_num_record = text4;
	else
		var gram_num_record = '';
	
	$('#'+id).html(gram_num_record);
}


var doLoad = {
data: function(i){
doLoad.js(i);
},
js: function(i){
var arr = ['rating'];
var check = $('#dojs'+arr[i]).length;
var template_dir = '/templates/Default';
if(!check) $('#doLoad').append('<div id="dojs'+arr[i]+'"><script type="text/javascript" src="'+template_dir+'/js/'+arr[i]+'.js"></script></div>');
}
}


//VII BOX
var viiBox = {
start: function(){
Page.Loading('start');
},
stop: function(){
Page.Loading('stop');
},
win: function(i, d, o, h){
 viiBox.stop();
if(is_moz && !is_chrome) scrollTopForFirefox = $(window).scrollTop();
 $('html, body').css('overflow-y', 'hidden');
if(is_moz && !is_chrome) $(window).scrollTop(scrollTopForFirefox);
 $('body').append('<div class="vii_box" id="newbox_miniature'+i+'">'+d+'</div>');
 $(window).keydown(function(event){
if(event.keyCode == 27)
 viiBox.clos(i, o, h);
});
},
clos: function(i, o, h){
 $('#newbox_miniature'+i).remove();
if(o) $('html, body').css('overflow-y', 'hidden');
if(h) history.pushState({link:h}, null, h);
}
}



//LANG
template_dir					= '/templates/Default';
uploads_dir						= '/uploads';
uploads_smile_dir				= '/uploads/smiles';
lang_empty						= '���� �� ������ ���� �������.';
lang_nosymbol					= '����������� ������� � ������� ���������.';
lang_pass_none					= '������ �� ���������';
lang_code_none					= '��� ������������ �� ������������� ������������';
lang_please_code				= '������� ��� � ��������';
lang_bad_email					= '������������ �����';
lang_none_sex					= '������� ��� ���';
lang_no_vk						= '��������� ���� ������ �� �������� ������ � ��������';
lang_no_od						= '��������� ���� ������ �� �������� ������ �������������';
lang_no_fb						= '��������� ���� ������ �� �������� ������ facebook';
lang_no_icq						= '����� ICQ ������ �������� ������ �� ����';
lang_infosave					= '��������� ���������';
lang_bad_format					= '�������� ������ �����';
lang_bad_size					= '���� �� ������ ��������� 5 M�';
lang_bad_aaa					= '����������� ������';
lang_del_photo					= '�� �������, ��� ������ ������� ����������?';
lang_del_album					= '�� �������, ��� ������ ������� ������?';
lang_title_del_photo			= '�������������e';
lang_box_can�el					= '������';
lang_box_yes					= '��';
lang_box_send					= '���������';
lang_box_save					= '���������';
lang_box_insert					= '��������';
lang_title_load_photo			= '�������� ������� ����������';
lang_title_new_album			= '�������� ������ �������';
lang_album_create				= '������';
lang_nooo_er					= '��� ������: 1';
lang_del_comm					= '����������� ������� ������.';
lang_edit_albums				= '�������������� �������';
lang_edit_cover_album			= '�������� ���������� �� �������';
lang_demand_ok					= '������ ����������';
lang_demand_no					= '�������� ������ ���������� �� �����.';
lang_demand_sending				= '������ �������������';
lang_demand_sending_t			= '� ������ ������ ������ �� ������ �������������.';
lang_demand_s_ok				= ' ������� ����������� � ����������, ��� �� ��� ����.';
lang_take_ok					= '������ �������.';
lang_take_no					= '������ ���������.';
lang_dd2f_no					= '����������';
lang_dd2f22_no					= '���� ������������ ���� � ��� � �������.';
lang_22dd2f22_no				= '���� ������������ ��� ���� � ��� � �������.';
lang_no_user_fave				= '������ ������������ �� ����������.';
lang_yes_user_fave				= '���� ������������ ��� ���� � ��� � ���������.';
lang_del_fave					= '������� �� ��������';
lang_add_fave					= '�������� � ��������';
lang_fave_info					= '�� �������, ��� ������ ������� ����� ������������ �� ��������?';
lang_fave_no_users				= '<div class="info_center">�� ������ ��������� ���� �������� ���������� ��� �����.<br />�� ����� ������� � ��� ������ ����� ������� ������ � ���.</div>';
lang_new_msg					= '����� ���������';
lang_new_msg_send				= '���������';
lang_msg_box					= '���������';
lang_msg_max_strlen				= '���� ��������� ������� �������.';
lang_msg_ok_title				= '��������� ����������.';
lang_msg_ok_text				= '���� ��������� ������� ����������.';
lang_msg_close					= '�������';
lang_photo_info_text			= '���������� ������� ���� ��� �� ���������.';
lang_photo_info_delok			= '<br /><span class="online">���������� �������.</span>';
lang_albums_add_photo			= '�������� ����������';
lang_albums_set_cover			= '������� �������� �������';
lang_albums_del_photo			= '������� ����������';
lang_albums_save_descr			= '��������� ��������';
lang_notes_no_title				= '������� ��������� �������.';
lang_notes_no_text				= '������� ����� �������.';
lang_del_note					= '�� ������������� ������ ������� ��� �������?';
lang_del_process				= '������� ���������...';
lang_notes_comm_max				= '��� ����������� ������� �������.';
lang_notes_setting_addphoto		= '��������� ����������';
lang_notes_setting_addvdeio		= '��������� �����������';
lang_notes_preview				= '��� ��� ����� ����� ����������';
lang_wysiwyg_title				= '��������� ������';
lang_unsubscribe				= '���������� �� ����������';
lang_subscription				= '����������� �� ����������';
lang_subscription_box_title		= '��������';
lang_max_albums					= '�������� ����� ��������.';
lang_video_new					= '���������� ������ �����';
lang_videos_no_url				= '������� ������ �� ����������.';
lang_videos_no_url				= '�������� �������� ��� �����������.';
lang_videos_sending				= '� ������ ������ ����� ��������������.';
lang_videos_del_text			= '�� ������������� ������ ������� ��� �����������?';
lang_videos_deletes				= '����������� ���������...';
lang_videos_delok				= '<div class="videos_delok">����������� �������.</div>';
lang_videos_delok_2				= '<div class="online" style="margin-top:10px">����������� �������.</div>';
lang_video_edit					= '�������������� �����������';
lang_video_info_text			= '����������� ������� ���� ��� �� ���������.';
lang_scroll_loading				= '<span id="scroll_loading"><center><img src="/templates/Default/images/loading_mini.gif" alt="" /></center><br /></span>';
lang_se_go						= '�����';
lang_bad_format					= '��������� ��������� ������ ���������� � ������� JPG, PNG, GIF.';
lang_max_imgs					= '�������� ����� ���������� � ����� �������.';
lang_max_size					= '�������� ������������ ������ �����������.';
lang_news_prev					= '�������� ���������� ������� &#8595;';
lang_editprof_text_1			= '������� ���� �������';
lang_editprof_text_2			= '������� ���� �������';
lang_editprof_text_3			= '������� ���� ����';
lang_editprof_text_4			= '������� ���� �������';
lang_editprof_text_5			= '������� ������ �������';
lang_editprof_atext_1			= '������� ������ �����';
lang_editprof_atext_2			= '������� ������ ������';
lang_editprof_atext_3			= '������� ������ ����';
lang_editprof_atext_4			= '������� ������ ��������';
lang_editprof_atext_5			= '������� ������ �������';
lang_editprof_sptext_1			= '�������:';
lang_editprof_sptext_2			= '�������:';
lang_editprof_sptext_3			= '����:';
lang_editprof_sptext_4			= '�������:';
lang_editprof_sptext_5			= '������:';
lang_editprof_asptext_1			= '����:';
lang_editprof_asptext_2			= '�����:';
lang_editprof_asptext_3			= '���:';
lang_editprof_asptext_4			= '�������:';
lang_editprof_asptext_5			= '������:';
lang_pr_no_title				= '������ �������';
lang_pr_no_msg					= '�� �� ������ ��������� ��������� ������� ������������, ��� ��� �� ������������ ���� ���, ������� ����� ��������� ��� ���������.';
lang_support_text				= '�� ������������� ������ ������� ������? ��� �������� ������ ����� ��������.';
lang_support_ltitle				= '�����';
lang_support_ltext				= '��������� ������ �� ������� ������ ����� ���.';
lang_news_text					= '�� ������������� ������ ������� �������? ��� �������� ������ ����� ��������.';
lang_gifts_title				= '�������� �������';
lang_gifts_tnoubm				= '� ��� ������������ ��� ��� �������� ����� �������.';
lang_gifts_oktitle				= '������� ���������';
lang_gifts_oktext				= '��� ������� ��� ������� ���������.';
lang_groups_new					= '�������� ������ ����������';
lang_groups_cretate				= '������� ����������';
lang_audio_add					= '���������� ����� �����';
lang_audio_err					= '������ �� �������������� ���� ������ �������� ������������';
lang_audio_wall_attatch			= '�������� �����������';
lang_wall_tell_tes				= '��� ������ ��� ���� �� �����';
lang_wall_text					= '��� � ��� ������?';
lang_wall_del_ok				= '<div class="color777">������ ������� �������.</div>';
lang_wall_del_com_ok			= '<div class="online" style="margin-bottom:10px">����������� ������� ������.</div>';
lang_wall_all_lnk				= '� ���������� �������';
lang_wall_hide_comm				= '������ �����������';
lang_wall_atttach_addsmile		= '�������� ������� ��� ��������';
lang_wall_attatch_photos		= '�������� ����������';
lang_wall_attatch_videos		= '�������� �����������';
lang_wall_no_atttach			= '�� �����������';
lang_wall_max_smiles			= '����������� ����� ����������� 3 ��������.';
lang_wall_liked_users			= '����, ������� ��� �����������';
lang_wall_attach_smiles			= '<img src="'+uploads_smile_dir+'/1.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/2.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/3.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/4.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/5.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/6.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/7.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/8.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/9.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/10.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/11.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/12.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/13.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/14.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/15.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/1.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/29.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/17.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/18.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/19.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/20.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/21.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/22.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/23.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/24.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/25.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/26.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/27.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/30.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/31.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/32.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/33.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/34.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/35.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/36.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/37.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/38.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/39.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/40.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/41.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/42.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/43.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/44.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/45.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/46.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" /><img src="'+uploads_smile_dir+'/47.gif" class="wall_attach_smile" onClick="wall.attach_insert(\'smile\', this.src)" />';
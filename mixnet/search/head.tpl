<script type="text/javascript">
$(document).ready(function(){
	music.jPlayerInc();
	$('.friends_onefriend').wrapAll( "<div class='medium-12 columns friends_wrapper' />");
	$('</div>').insertAfter('#nav');
	$('#nav').addClass('medium-12 columns');
	$('.margin_top_10').nextAll().wrapAll('<div class="medium-12 columns no_results_wrapper" />');
	$('.margin_top_10').remove();
	[search-tab]
		$('.friends_wrapper').removeClass('medium-12').addClass('medium-8');
		$('.no_results_wrapper').removeClass('medium-12').addClass('medium-8');
	[/search-tab]
	myhtml.checked(['{checked-online}', '{checked-user-photo}']);	
	var query = $('#query_full').val();
	if(query == 'Начните вводить любое слово или имя')
		$('#query_full').css('color', '#c1cad0');
});
</script>
<div class="search_form_tab">
<div class="row collapse">
<div class="small-7 medium-10 columns">
<input type="text" value="Начните вводить любое слово или имя" class="msg_se_inp" id="query_full" 
	onBlur="if(this.value==''){this.value='Начните вводить любое слово или имя';this.style.color = '#c1cad0';}" 
	onFocus="if(this.value=='Начните вводить любое слово или имя'){this.value='';this.style.color = '#000'}" 
	onKeyPress="if(event.keyCode == 13)gSearch.go();" 
	style="margin:0px;color:#000;padding-left: 20px;"
maxlength="65" />
</div>
<div class="small-5 medium-2 columns">
<button class="button" onClick="gSearch.go(); return false">Поиск</button>
</div>
</div>
<div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="margin-top:10px;">
 <div class="{activetab-1}"><a href="/?{query-people}" onClick="Page.Go(this.href); return false;"><div><b>Люди</b></div></a></div>
 <div class="{activetab-4}"><a href="/?go=search{query-groups}" onClick="Page.Go(this.href); return false;"><div><b>Сообщества</b></div></a></div>
<!-- <div class="{activetab-5}"><a href="/?go=search{query-audios}" onClick="Page.Go(this.href); return false;"><div><b>Аудиозаписи</b></div></a></div>-->
 <div class="{activetab-2}"><a href="/?go=search{query-videos}" onClick="Page.Go(this.href); return false;"><div><b>Видеозаписи</b></div></a></div>
 <div class="{activetab-3}"><a href="/?go=search{query-notes}" onClick="Page.Go(this.href); return false;"><div><b>Заметки</b></div></a></div>
</div>
<input type="hidden" value="{type}" id="se_type_full" />
 <div class="search_clear"></div>
</div>

<div class="row search_content_box">
		<div class="medium-12 columns">
		[yes]<div class="msg_speedbar margin_bottom_10">Найдено {count}</div>[/yes]
		<div id="jquery_jplayer"></div>
		<input type="hidden" id="teck_id" value="0" />
		<input type="hidden" id="typePlay" value="standart" />
		<input type="hidden" id="teck_prefix" value="" />
		</div>
		[search-tab]
			<div class="medium-4 small-12 columns">
			<div class="search_sotrt_tab border_radius_5">

			   
			 <b>Основное</b>
			 <div class="search_clear"></div>
			   
			 <div class="padstylej"><select name="country" id="country" class="inpst search_sel" onChange="Profile.LoadCity(this.value); gSearch.go();"><option value="0">Любая страна</option>{country}</select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
			 <div class="search_clear"></div>

			 <div class="padstylej"><select name="city" id="select_city" class="inpst search_sel" onChange="gSearch.go();"><option value="0">Любой город</option>{city}</select></div>
			 <div class="search_clear"></div>
			 
			 <div class="html_checkbox" id="online" onClick="myhtml.checkbox(this.id); gSearch.go();">сейчас на сайте</div>

			 <div class="clear"></div>

			 <div class="html_checkbox" id="user_photo" onClick="myhtml.checkbox(this.id); gSearch.go();" style="margin-top:9px">с фотографией</div>

			 <div class="search_clear" style="margin-top:40px"></div>

			 
			 <b>Пол</b>
			 <div class="search_clear"></div>
			  
			 <div class="padstylej"><select name="sex" id="sex" class="inpst search_sel" onChange="gSearch.go();"><option value="0">Все</option>{sex}</select></div>
			 <div class="search_clear"></div>

			 <b>День рождения</b>
			 <div class="search_clear"></div>
			 
			 <div class="padstylej"><select name="day" class="inpst search_sel" id="day" onChange="gSearch.go();"><option value="0">Любой день</option>{day}</select>
			 <div class="search_clear"></div>
			  
			 <select name="month" class="inpst search_sel" id="month" onChange="gSearch.go();"><option value="0">Любой месяц</option>{month}</select>
			 <div class="search_clear"></div>
			  
			 <select name="year" class="inpst search_sel" id="year" onChange="gSearch.go();"><option value="0">Любой год</option>{year}</select></div>
			 <div class="search_clear"></div>
			 </div>
		</div>[/search-tab]
<script type="text/javascript">
$(document).ready(function(){
	music.jPlayerInc();
	[search-tab]$('#page').css('min-height', '444px');
	$(window).scroll(function(){
		if($(window).scrollTop() > 103)
			$('.search_sotrt_tab').css('position', 'fixed').css('margin-top', '-80px');
		else
			$('.search_sotrt_tab').css('position', 'absolute').css('margin-top', '39px');
	});[/search-tab]
	myhtml.checked(['{checked-online}', '{checked-user-photo}']);	
	var query = $('#query_full').val();
	if(query == '������� ������� ����� ����� ��� ���')
		$('#query_full').css('color', '#c1cad0');
});
</script>
<div class="search_form_tab">
<input type="text" value="{query}" class="fave_input" id="query_full" 
	onBlur="if(this.value==''){this.value='������� ������� ����� ����� ��� ���';this.style.color = '#c1cad0';}" 
	onFocus="if(this.value=='������� ������� ����� ����� ��� ���'){this.value='';this.style.color = '#000'}" 
	onKeyPress="if(event.keyCode == 13)gSearch.go();" 
maxlength="65" />
<div class="button_div fl_r"><button onClick="gSearch.go(); return false">�����</button></div>
<div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="margin-top:10px;height:22px">
 <div class="{activetab-1}"><a href="/?{query-people}" onClick="Page.Go(this.href); return false;"><div><b>����</b></div></a></div>
 <div class="{activetab-4}"><a href="/?go=search{query-groups}" onClick="Page.Go(this.href); return false;"><div><b>����������</b></div></a></div>
 <div class="{activetab-6}"><a href="/?go=search{query-recommendation}" onClick="Page.Go(this.href); return false;"><div><b>�������������</b></div></a></div>
 <div class="{activetab-5}"><a href="/?go=search{query-audios}" onClick="Page.Go(this.href); return false;"><div><b>�����������</b></div></a></div>
 <div class="{activetab-2}"><a href="/?go=search{query-videos}" onClick="Page.Go(this.href); return false;"><div><b>�����������</b></div></a></div>
 <div class="{activetab-3}"><a href="/?go=search{query-notes}" onClick="Page.Go(this.href); return false;"><div><b>�������</b></div></a></div>
</div>
<input type="hidden" value="{type}" id="se_type_full" />
</div>

[search-tab]<div class="search_sotrt_tab">
   
 <b>��������</b>
 <div class="search_clear"></div>
   
 <div class="padstylej"><select name="country" id="country" class="inpst search_sel" onChange="Profile.LoadCity(this.value); gSearch.go();"><option value="0">����� ������</option>{country}</select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
 <div class="search_clear"></div>

 <div class="padstylej"><select name="city" id="select_city" class="inpst search_sel" onChange="gSearch.go();"><option value="0">����� �����</option>{city}</select></div>
 <div class="search_clear"></div>
 
 <div class="html_checkbox" id="online" onClick="myhtml.checkbox(this.id); gSearch.go();">������ �� �����</div>
 <div class="html_checkbox" id="user_photo" onClick="myhtml.checkbox(this.id); gSearch.go();" style="margin-top:9px">� �����������</div>
 <div class="search_clear" style="margin-top:60px"></div>
 
 <b>���</b>
 <div class="search_clear"></div>
  
 <div class="padstylej"><select name="sex" id="sex" class="inpst search_sel" onChange="gSearch.go();"><option value="0">���</option>{sex}</select></div>
 <div class="search_clear"></div>

 <b>���� ��������</b>
 <div class="search_clear"></div>
 
 <div class="padstylej"><select name="day" class="inpst search_sel" id="day" onChange="gSearch.go();"><option value="0">����� ����</option>{day}</select>
 <div class="search_clear"></div>
  
 <select name="month" class="inpst search_sel" id="month" onChange="gSearch.go();"><option value="0">����� �����</option>{month}</select>
 <div class="search_clear"></div>
  
 <select name="year" class="inpst search_sel" id="year" onChange="gSearch.go();"><option value="0">����� ���</option>{year}</select></div>
 <div class="search_clear"></div>
  
</div>[/search-tab]

<div class="clear"></div>
[yes]<div class="margin_top_10"></div><div class="search_result_title">������� {count}</div>[/yes]
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="0" />
<input type="hidden" id="typePlay" value="standart" />

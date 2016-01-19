<script type="text/javascript">
$(document).ready(function(){
	$('.blog_left_tab').css('min-height', ($('.blog_left_tab').height()+10)+'px').css('height', ($('.blog_left').height()+10)+'px');
});
</script>
<style>.speedbar{background:#fff;color:#5081b1}</style>
<div class="row">
<div class="medium-9 columns">
	<div class="blogthr"></div>
	<div class="blog_left">
	<div class="notes_ava"><img src="{theme}/images/support2.png" alt="" /></div>
	<div class="one_note border_radius_5" >
	 <span><a href="/blog?id={id}" onClick="Page.Go(this.href); return false">{title}</a></span><br />
	 <div>{date}</div>
	</div>
	<div class="clear"></div>
	<div class="note_text clear page_bg border_radius_5 margin_top_10" >{story}</div>
	</div>
</div>
<div class="medium-3 columns">
	<div class="blog_left_tab">
	 {last-news}
	 [group=1]<br />
	 <a href="?act=add" onClick="Page.Go(this.href); return false">Добавить новость</a>
	 <a href="" onClick="blog.del('{id}'); return false">Удалить новость</a>
	 <a href="?act=edit&id={id}" onClick="Page.Go(this.href); return false">Редактировать новость</a>
	 [/group]
	</div>
</div>
</div>
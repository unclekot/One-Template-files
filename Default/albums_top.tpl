[all-albums]
[admin-drag][owner]<script type="text/javascript">
$(document).ready(function(){
	Albums.Drag();
});
</script>[/owner][/admin-drag]
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <div class="activetab"><a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;"><div>[not-owner]��� ������� {name}[/not-owner][owner]��� �������[/owner]</div></a></div>
 [owner]<a href="" onClick="Albums.CreatAlbum(); return false;">������� ������</a>[/owner]
 <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">����������� � ��������</a>
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
 [new-photos]<a href="/albums/newphotos" onClick="Page.Go(this.href); return false;">����� ���������� �� ���� (<b>{num}</b>)</a>[/new-photos]
</div>
<div class="clear"></div>
[/all-albums]
[view]
<input type="hidden" id="all_p_num" value="{all_p_num}" />
<input type="hidden" id="aid" value="{aid}" />
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">[not-owner]��� ������� {name}[/not-owner][owner]��� �������[/owner]</a>
 <div class="activetab"><a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;"><div>{album-name}</div></a></div>
 <a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;">����������� � �������</a>
 [owner]<a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;">�������� ������� ����������</a>
 <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">�������� ����������</a>[/owner]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:8px;"></div>
[/view]
[editphotos]
[admin-drag]<script type="text/javascript">
$(document).ready(function(){
	Photo.Drag();
});
</script>[/admin-drag]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<input type="hidden" id="all_p_num" value="{all_p_num}" />
<input type="hidden" id="aid" value="{aid}" />
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">��� �������</a>
 <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">{album-name}</a>
 <a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;">����������� � �������</a>
 <div class="activetab"><a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;"><div>�������� ������� ����������</div></a></div>
 <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">�������� ����������</a>
</div>
<div class="clear"></div><div style="margin-top:8px;"></div>
[/editphotos]
[comments]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<div class="buttonsprofile albumsbuttonsprofile">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">[not-owner]��� ������� {name}[/not-owner][owner]��� �������[/owner]</a>
 [owner]<a href="" onClick="Albums.CreatAlbum(); return false;">������� ������</a>[/owner]
 <div class="activetab"><a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;"><div>����������� � ��������</div></a></div>
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div>
[/comments]
[albums-comments]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<div class="buttonsprofile albumsbuttonsprofile">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">[not-owner]��� ������� {name}[/not-owner][owner]��� �������[/owner]</a>
 <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">{album-name}</a>
 <div class="activetab"><a href="/albums/view/{aid}/comments/" onClick="Page.Go(this.href); return false;"><div>����������� � �������</div></a></div>
 [owner]<a href="/albums/editphotos/{aid}" onClick="Page.Go(this.href); return false;">�������� ������� ����������</a>
 <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">�������� ����������</a>[/owner]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div>
[/albums-comments]
[all-photos]
<script type="text/javascript" src="{theme}/js/albums.view.js"></script>
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">[not-owner]��� ������� {name}[/not-owner][owner]��� �������[/owner]</a>
 [owner]<a href="" onClick="Albums.CreatAlbum(); return false;">������� ������</a>[/owner]
 <a href="/albums/comments/{user-id}" onClick="Page.Go(this.href); return false;">����������� � ��������</a>
 <div class="activetab"><a href="/photos{user-id}" onClick="Page.Go(this.href); return false;"><div>����� ����������</div></a></div>
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:8px;"></div>
[/all-photos]
[all]<div class="buttonsprofile albumsbuttonsprofile" style="height:10px">
 <div class="activetab"><a href="/notes/{user-id}" onClick="Page.Go(this.href); return false;"><div>[owner]��� �������[/owner][not-owner]������� {name}[/not-owner]</div></a></div>
 [owner]<a href="/notes/add" onClick="Page.Go(this.href); return false;">�������� ������</a>[/owner]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:10px;"></div>
[/all]
[add]<div class="buttonsprofile albumsbuttonsprofile" style="height:10px">
 <a href="/notes" onClick="Page.Go(this.href); return false;">��� �������</a>
 <div class="activetab"><a href="/notes/add" onClick="Page.Go(this.href); return false;"><div>�������� ������</div></a></div>
</div>
<div class="clear"></div><div class="hralbum" style="margin-top:10px;"></div>
[/add]
[edit]<div class="buttonsprofile albumsbuttonsprofile" style="height:10px">
 <a href="/notes" onClick="Page.Go(this.href); return false;">��� �������</a>
 <div class="activetab"><a href="/notes/edit/{note-id}" onClick="Page.Go(this.href); return false;"><div>�������������� ������</div></a></div>
 <a href="/notes/add" onClick="Page.Go(this.href); return false;">�������� ������</a>
</div>
<div class="clear"></div><div class="hralbum" style="margin-top:10px;"></div>
[/edit]
[view]<div class="buttonsprofile albumsbuttonsprofile" style="height:10px">
 <a href="/notes/{user-id}" onClick="Page.Go(this.href); return false;">[owner]��� �������[/owner][not-owner]������� {name}[/not-owner]</a>
 <div class="activetab"><a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false;"><div>�������� �������</div></a></div>
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
 [owner]<a href="/notes/add" onClick="Page.Go(this.href); return false;">�������� ������</a>[/owner]
</div>
<div class="clear"></div>
[/view]
[all-friends]
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <div class="activetab"><a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;"><div>��� ������</div></a></div>
 <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">������ �� �����</a>
 [owner]<a href="/friends/requests" onClick="Page.Go(this.href); return false;">������ � ������ {demands}</a>[/owner]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:10px;"></div>
[/all-friends]

[request-friends]
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">��� ������</a>
 <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">������ �� �����</a>
 <div class="activetab"><a href="/friends/requests" onClick="Page.Go(this.href); return false;"><div>������ � ������ {demands}</div></a></div>
</div>
<div class="clear"></div><div style="margin-top:10px;"></div>
[/request-friends]

[online-friends]
<div class="buttonsprofile albumsbuttonsprofile" style="height:10px;">
 <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">��� ������</a>
 <div class="activetab"><a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;"><div>������ �� �����</div></a></div>
 [owner]<a href="/friends/requests" onClick="Page.Go(this.href); return false;">������ � ������ {demands}</a>[/owner]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">� �������� {name}</a>[/not-owner]
</div>
<div class="clear"></div><div style="margin-top:10px;"></div>
[/online-friends]
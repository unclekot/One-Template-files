[new]<script type="text/javascript">
document.getElementById('new_ubm').innerHTML = '';
document.getElementById('ubm_link').setAttribute('href', '/balance');
</script>[/new]
<div class="buttonsprofile">
 <div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
  [no-new]<div class="buttonsprofileSec">[/no-new]<a href="/gifts{uid}" onClick="Page.Go(this.href); return false;"><div><b>[not-owner]������� {name}[/not-owner][owner]��� �������[/owner]</b></div></a>[no-new]</div>[/no-new]
  [new]<div class="buttonsprofileSec"><a href="/gifts{uid}?new=1" onClick="Page.Go(this.href); return false;"><div><b>����� �������</b></div></a></div>[/new]
  <a href="/u{uid}" onClick="Page.Go(this.href); return false;"><div><b>[not-owner]� �������� {name}[/not-owner][owner]� ���� ��������[/owner]</b></div></a>
  [not-owner]<a href="/" onClick="gifts.box('{uid}'); return false;"><div><b>��������� ������� ��� {name}</b></div></a>[/not-owner]
 </div>
</div>
<div class="msg_speedbar clear margin_bottom_10" [yes]style="margin-bottom:0px;border-bottom:0px"[/yes]>[no-new][yes]� [not-owner]{name}[/not-owner][owner]���[/owner] {gifts-num}[/yes][no]��� �� ������ �������[/no][/no-new][new]��������������� �������[/new]</div><br>
[no]<div class="info_center"><br /><br />[not-owner]� {name} ��� ��� ��������.<br />�� ������ ����� ������, ��� �������� �������. ��� ����� ������� <a href="/" onClick="gifts.box('{uid}'); return false;">�����</a>.[/not-owner][owner]� ��� ��� ��� ��������.[/owner]<br /><br /><br /></div>[/no]
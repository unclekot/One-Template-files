[new]<script type="text/javascript">
document.getElementById('new_ubm').innerHTML = '';
document.getElementById('ubm_link').setAttribute('href', '/balance');
</script>[/new]
<div class="buttonsprofile">
 <div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
  [no-new]<div class="buttonsprofileSec">[/no-new]<a href="/gifts{uid}" onClick="Page.Go(this.href); return false;"><div><b>[not-owner]Подарки {name}[/not-owner][owner]Мои Подарки[/owner]</b></div></a>[no-new]</div>[/no-new]
  [new]<div class="buttonsprofileSec"><a href="/gifts{uid}?new=1" onClick="Page.Go(this.href); return false;"><div><b>Новые подарки</b></div></a></div>[/new]
  <a href="/u{uid}" onClick="Page.Go(this.href); return false;"><div><b>[not-owner]К странице {name}[/not-owner][owner]К моей странице[/owner]</b></div></a>
  [not-owner]<a href="/" onClick="gifts.box('{uid}'); return false;"><div><b>Отправить подарок для {name}</b></div></a>[/not-owner]
 </div>
</div>
<div class="msg_speedbar clear margin_bottom_10" [yes]style="margin-bottom:0px;border-bottom:0px"[/yes]>[no-new][yes]У [not-owner]{name}[/not-owner][owner]Вас[/owner] {gifts-num}[/yes][no]Нет ни одного подарка[/no][/no-new][new]Непросмотренные подарки[/new]</div><br>
[no]<div class="info_center"><br /><br />[not-owner]У {name} еще нет подарков.<br />Вы можете стать первым, кто отправит подарок. Для этого нажмите <a href="/" onClick="gifts.box('{uid}'); return false;">здесь</a>.[/not-owner][owner]У Вас еще нет подарков.[/owner]<br /><br /><br /></div>[/no]
<div id="note_{note-id}" class="page_bg border_radius_5 margin_bottom_10 notes_padding">
<div class="notes_ava"><a href="/u{user-id}" onClick="Page.Go(this.href); return false"><img src="{ava}" alt="" /></a></div>
<div class="one_note">
 <span><a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false">{title}</a></span><br />
 <div><a href="/u{user-id}" onClick="Page.Go(this.href); return false">{name}</a> {date}</div>
</div>
<div class="note_text clear"><div class="note_pos">{short-text}</div> <a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false"><b>������ �����..</b></a></b></u></i><div class="clear"></div></div>
<div class="note_inf_panel">
 <a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false">{comm-num}</a> [owner]&nbsp;|&nbsp; <a href="/notes/edit/{note-id}" onClick="Page.Go(this.href); return false">�������������</a> &nbsp;|&nbsp; <a href="/" onClick="notes.delet({note-id}, false, {user-id}); return false">�������</a>[/owner]
</div>
<div class="clear"></div>
</div>
<div class="albums_cover_photo" [owner]onMouseOver="Photo.Panel({id}, 'show')" onMouseOut="Photo.Panel({id}, 'hide')" id="a_photo_{id}"[/owner]>
    <a href="/photo{uid}_{id}{aid}{section}" onClick="Photo.Show(this.href); return false">
        <div class="albums_new_cover" id="albums_new_cover_{id}"></div>
    </a>
    [owner]<div class="albums_photo_panel" id="albums_photo_panel_{id}"><a href="/" class="albums_ic ic_del" title="�������" onClick="Photo.MsgDelete({id}, null); return false"></a><a href="/" class="albums_ic ic_edit" title="�������������" onClick="Photo.EditBox({id}, 1); return false"></a><a href="/" class="albums_ic ic_cover" title="������� �������� �������" onClick="Photo.SetCover({id}, {id}); return false"></a></div>[/owner]
    <a href="/photo{uid}_{id}{aid}{section}" onClick="Photo.Show(this.href); return false"><img src="{photo}" alt="" /></a></div>

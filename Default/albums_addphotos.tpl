<script type="text/javascript" src="{theme}/js/albums.photos.js"></script>
<div class="buttonsprofile albumsbuttonsprofile">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">��� �������</a>
 <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">{album-name}</a>
 <div class="activetab"><a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;"><div>���������� ����������</div></a></div>
</div>
<div class="clear"></div>
<div class="load_photo_quote">�������������� ������� ������:  JPG, PNG � GIF.</div>
<div class="h1" id="l_text" style="display:none;">����������� ����������</div>
<span id="photos"></span>
<div class="clear"></div>
<div class="load_photo_but" style="margin-left:245px;">
<div class="button_div fl_l"><button id="upload">������� ����������</button></div>
<div class="button_div_gray fl_l" style="margin-left:10px;"><button onClick="Page.Go('/albums/view/{aid}'); return false;">�������� �������</button></div>
</div>
<input type="hidden" value="{aid}" id="aid" />
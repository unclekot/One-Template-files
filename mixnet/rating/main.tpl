<script type="text/javascript">
$(document).ready(function(){
  $('#rate_num').focus().val('1');
  rating.update();
});
</script>
<div class="miniature_box">
 <div class="miniature_pos" style="width:400px">
  <div class="miniature_title fl_l apps_box_text">��������� ��������</div><a class="cursor_pointer fl_r" style="font-size:12px" onClick="viiBox.clos('rate', 1)">�������</a>
  <div class="clear"></div>
   <div class="rating_text">������� ����, �� ������� �� ������ �������� �������.<br />
   �������� ��������, ��� ������ ��������� ��������� � ������ ���������� ��������, ������� ����������.</div>
   <div class="rating_iny">
    +<input type="text" class="inpst" maxlength="3" id="rate_num" onKeyUp="rating.update()" />
	<div class="rating_text_balance">� ��� <span id="rt">���������</span> <b id="num">{num}</b> �������</div>
	<input type="hidden" id="balance" value="{balance}" />
   </div>
   <div class="button_div fl_l" style="margin-left:150px"><button class="button" onClick="rating.save('{user-id}')" id="saverate">�������� �������</button></div>
  <div class="clear"></div>
 </div>
 <div class="clear" style="height:20px"></div>
</div>
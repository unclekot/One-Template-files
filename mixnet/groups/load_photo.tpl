<script type="text/javascript">
$(document).ready(function(){
	Xajax = new AjaxUpload('upload', {
		action: '/index.php?go=groups&act=loadphoto&id={id}',
		name: 'uploadfile',
		onSubmit: function (file, ext){
			if (!(ext && /^(jpg|png|jpeg|gif|jpe)$/.test(ext))) {
				Box.Info('load_photo_er', lang_dd2f_no, lang_bad_format, 400);
				return false;
			}
			butloading('upload', '113', 'disabled', '');
		},
		onComplete: function (file, data){
			butloading('upload', '113', 'enabled', '������� ����������');
			if(data == 'big_size'){
				Box.Info('load_photo_er2', lang_dd2f_no, lang_max_size, 250);
				return false
			} else {
				Box.Close(0, 1);
				$('#ava').attr('src', '/uploads/groups/{id}/'+data);
				$('#del_pho_but').show();
			}
		}
	});
});
</script>
<div class="load_photo_pad">
<div class="err_red" style="display:none;font-weight:normal;"></div>
<div class="load_photo_quote">�� ������ ��������� ���� ������ ����������� ����������. �������������� ������� JPG, PNG � GIF.</div>
<div class="load_photo_but"><div class="button_div fl_l"><button class="button" id="upload">������� ����������</button></div></div>
<small>���� �� ������ ��������� 5 M�. ���� � ��� ��������� �������� � ���������, ���������� ������������ ���������� �������� �������.</small>
</div>
<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<h4 class="col-xs-12 col-sm-12 col-md-12 col-lg-12 small">{$distro_editor} {$realname}</h4>
	<textarea class="form-control filecontent" rows="<if $numbrows <= 8 >{$numbrows}</if><if 8 < $numbrows >8</if>" cols="70">{$file_content}</textarea>
</div>
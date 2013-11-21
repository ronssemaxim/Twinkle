<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<h4 class="col-xs-12 col-sm-12 col-md-12 col-lg-12">{$realname}</h4>
	<textarea class="form-control" rows="<if $numbrows <= 8 >{$numbrows}</if><if 8 < $numbrows >8</if>" cols="70" readonly="readonly">{$file_content}</textarea>
</div>
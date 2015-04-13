<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script src="./media/js/contact-us.js"></script>
<script>
	$(function() {
		App.init();
		ContactUs.init();
	});
</script>
<div class="padding-center">
	<div class="span12">
		<div class="row-fluid">
			<div class="span6">
				<h3 class="form-section">联系方式</h3>
				<p>Lorem ipsum dolor sit amet, Ut wisi enim ad minim veniam,
					quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
					aliquip ex ea commodo consequat consectetuer adipiscing elit, sed
					diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam
					erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
					tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
					consequat.</p>

				<div class="well">
					<h4>地址</h4>
					<address>
						<strong>北京大学</strong><br> 北京市海淀区颐和园路5号<br> 邮编：100871<br>
						<abbr title="Phone">TEL:</abbr> 18611451923
					</address>
					<address>
						<strong>Email</strong><br> <a
							href="mailto:gorljimmy@pku.edu.cn">gorljimmy@pku.edu.cn</a>
					</address>
					<ul class="social-icons margin-bottom-10">
						<li><a href="#" data-original-title="facebook"
							class="facebook"></a></li>
						<li><a href="https://github.com/GorlJimmy"
							data-original-title="github" class="github"></a></li>
						<li><a href="#" data-original-title="Goole Plus"
							class="googleplus"></a></li>
						<li><a href="#" data-original-title="linkedin"
							class="linkedin"></a></li>
						<li><a href="#" data-original-title="rss" class="rss"></a></li>
						<li><a href="#" data-original-title="skype" class="skype"></a></li>
						<li><a href="#" data-original-title="twitter" class="twitter"></a></li>

						<li><a href="#" data-original-title="youtube" class="youtube"></a></li>

					</ul>

				</div>

			</div>

			<div class="span6">

				<form action="#" class="horizontal-form">

					<h3 class="form-section">您的反馈</h3>

					<div class="control-group">

						<label class="control-label">姓名</label>

						<div class="controls">

							<input type="text" class="m-wrap span12" />

						</div>

					</div>

					<div class="control-group">

						<label class="control-label">Email</label>

						<div class="controls">

							<input type="text" class="m-wrap span12">

						</div>

					</div>

					<div class="control-group">

						<label class="control-label">留言</label>

						<div class="controls">

							<textarea class="m-wrap span12" rows="3"></textarea>

						</div>

					</div>

					<button type="submit" class="btn blue">
						<i class="icon-ok"></i> 发送
					</button>

					<button type="button" class="btn">取消</button>

				</form>

				<!-- END FORM-->

			</div>

		</div>
		<!-- Google Map -->
		<div class="row-fluid">
			<div id="map" class="gmaps margin-bottom-40" style="height: 700px;">
				<img alt="" src="/bootstrap/bootstrap/image/location.jpg"
					style="height: 100%; width: 100%;">

			</div>

		</div>

	</div>

</div>
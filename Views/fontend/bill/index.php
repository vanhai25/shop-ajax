
	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(public/site/images/heading-pages-01.jpg);">
		<h2 class="l-text2 t-center">
			Giỏ hàng
		</h2>
	</section>

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
		<div class="container">
			<!-- Cart item -->
	



			<!-- Total -->
			<div class="bo9 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
				<h5 class="m-text20 p-b-24">
					Hóa đơn của bạn
				</h5>

				<!--  -->
				<div class="flex-w flex-sb-m p-b-12">
					<span class="s-text18 w-size19 w-full-sm">
						Tên KH:
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						<?php if(isset($_COOKIE['name_checkout'])) echo  $_COOKIE['name_checkout']?>
					</span>
					<span class="s-text18 w-size19 w-full-sm">
						SĐT:
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						<?php if(isset($_COOKIE['tel_checkout'])) echo  $_COOKIE['tel_checkout']?>
					</span>
					<span class="s-text18 w-size19 w-full-sm">
						Địa chỉ:
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						<?php if(isset($_COOKIE['address'])) echo  $_COOKIE['address']?>
					</span>
				</div>
				<!--  -->


				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">

				</div>

				<!--  -->
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="m-text22 w-size19 w-full-sm">
						Tổng tiền:
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						 <?php if(isset($_COOKIE['total_price'])) echo  number_format($_COOKIE['total_price']). 'đ'?>
					</span>
				</div>
				<div class="alert-checkout"></div>
				<div class="size9 trans-0-4">
					
					<!-- Button -->
					<a href="index.php" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">Quay về</a>
				</div>
			</div>
		</div>
	</section>
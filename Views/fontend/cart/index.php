
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
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite">
					<div id="show_cart"></div>
				</div>
			</div>



			<!-- Total -->
			<div class="bo9 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
				<h5 class="m-text20 p-b-24">
					Tổng giỏ hàng
				</h5>

				<!--  -->
				<div class="flex-w flex-sb-m p-b-12">
					<span class="s-text18 w-size19 w-full-sm">
						Tạm tính:
					</span>

					<span class="m-text21 w-size20 w-full-sm total_cart">
						
					</span>
				</div>
				<!--  -->
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="s-text18 w-size19 w-full-sm">
						Phí ship:
					</span>

					<div class="w-size20 w-full-sm">
						<p class="s-text8 p-b-23 ship" >
							0đ
						</p>

						<span class="s-text19">
							Calculate Shipping
						</span>

						<div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12">
							<select class="selection-2" id="province">
								<option>--Thành phố/Tỉnh--</option>
								<?php foreach($province as $show): ?>
			    <option value="<?=$show->id?>"><?=$show->name?></option>
				<?php endforeach ?>
							</select>
						</div>
							<div class="alert-ship"></div>
						<div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12">
							<select class="selection-2 district" name="district" id="district">

							</select>
					
						</div>


				

						<div class="size13 bo4 m-b-22">
							<input class="sizefull s-text7 p-l-15 p-r-15" id="adr-ship" type="text" name="postcode" placeholder="613 Thống Nhất">
						</div>
						

						
					</div>
				</div>

				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<div class="s-text18 w-size19 w-full-md">
						<span class="s-text16 w-size19 w-full-sm">
							Tên :
						</span>
						<div class="size13 bo4 m-b-22">
							<input class="sizefull s-text7 p-l-15 p-r-15" id="name-checkout" type="text" name="name-checkout" placeholder="">
						</div>
						<span class="s-text16 w-size19 w-full-sm">
							Số điện thoại :
						</span>
						<div class="size13 bo4 m-b-22">
							<input class="sizefull s-text7 p-l-15 p-r-15" id="tel-checkout" type="text" name="tel-checkout" placeholder="">
						</div>
					</div>

					<div class="w-size20 w-full-md">
						<span class="s-text16 w-size19 w-full-sm">
							Email :
						</span>
						<div class="size13 bo4 m-b-22">
							<input class="sizefull s-text7 p-l-15 p-r-15" id="mail-checkout" type="email" name="mail-checkout" placeholder="">
						</div>
						<span class="s-text16 w-size19 w-full-sm">
							Ghi chú :
						</span>
						<div class="size13 bo4 m-b-22">
							<input class="sizefull s-text7 p-l-15 p-r-15" id="note-checkout" type="text" name="note-checkout" placeholder="">
						</div>
					</div>
				</div>

				<!--  -->
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="m-text22 w-size19 w-full-sm">
						Tổng tiền:
					</span>

					<span class="m-text21 w-size20 w-full-sm total_cart" id="total">
					
					</span>
				</div>
				<div class="alert-checkout"></div>
				<div class="size9 trans-0-4">
					<!-- Button -->
					<button type="button" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4 btn-next-checkout">Thanh toán</button>
				</div>
			</div>
		</div>
	</section>
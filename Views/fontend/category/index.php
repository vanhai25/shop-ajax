<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(public/site/images/heading-pages-02.jpg);">
		<h2 class="l-text2 t-center">
			Women
		</h2>
		<p class="m-text13 t-center">
			New Arrivals Women Collection 2018
		</p>
	</section>


	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Danh mục
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="Tat-ca" class="s-text13 active1">
									Tất cả
								</a>
							</li>
							<?php foreach($allCategory as $show):?>
							<li class="p-t-4">
								<a href="<?=$show->name_no?>" class="s-text13">
									<?=$show->name?>
								</a>
							</li>
							<?php endforeach ?>


						</ul>



						<div class="search-product pos-relative bo4 of-hidden">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="search-product" placeholder="Search Products...">

							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
				

					<!-- Product -->
					<div class="row">
						<?php foreach($product as $show): ?>
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
										<img src="upload/product/<?=$show->img?>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											

												<input type="hidden" name="hiddenname" id="name<?=$show->id?>" value="<?=$show->title?>">
												<?php if($show->promotion_price == null): ?>
												<input type="hidden" name="hiddenprice" id="price<?=$show->id?>" value="<?=$show->price?>">
												<?php else: ?>
												<input type="hidden" name="hiddenprice" id="price<?=$show->id?>" value="<?=$show->promotion_price?>">
												<?php endif ?>
												<input type="hidden" name="hiddenimg" id="img<?=$show->id?>" value="<?=$show->img?>">
												<input type="hidden" name="hiddenqty" id="quantity<?=$show->id?>" value="1">
												<!-- Button -->
												
													<?php if($show->price==null): ?>
														<div class="block2-btn-addcart w-size1 trans-0-4">
														<a href="?controller=product&id=<?=$show->id?>" class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Lựa chọn 
												</a>
													<?php else: ?>
														<div class="block2-btn-addcart w-size1 trans-0-4 btn-addcart">
														<button name="addcart" id="<?=$show->id?>"  class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4 add_to_cart">
														Thêm vào giỏ 
														</button>
													<?php endif ?>
												
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="?controller=product&id=<?=$show->id?>" class="block2-name dis-block s-text3 p-b-5">
											<?=$show->title?>
										</a>
										<?php if($show->promotion_price == null): ?>
											<?php if($show->price==null): 
												
												$a = $homeModel->getPriceSelect($show->id);
												
											?>
										<span class="block2-price m-text6 p-r-5">
											<?=fromTo($a)?>
										</span>
											<?php else: ?>
										<span class="block2-price m-text6 p-r-5">
											<?=number_format($show->price)?> vnd
										</span>
											<?php endif ?>
										<?php else: ?>
											<span class="block2-oldprice m-text7 p-r-5">
											<?=number_format($show->price)?> vnd
										</span>

										<span class="block2-newprice m-text8 p-r-5">
											<?=number_format($show->promotion_price)?> vnd
										</span>
									<?php endif ?>
									</div>
								</div>
						</div>
						<?php endforeach ?>
					</div>

					<!-- Pagination -->
			
						<?=$showPagination?>
						
				
				</div>
			</div>
		</div>
	</section>
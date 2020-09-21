	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(images/heading-pages-05.jpg);">
		<h2 class="l-text2 t-center">
			Blog
		</h2>
	</section>

	<!-- content page -->
	<section class="bgwhite p-t-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-75">
					<div class="p-r-50 p-r-0-lg">
						<!-- item blog -->
						<?php foreach($blog as $show): ?>
						<div class="item-blog p-b-80">
							<a href="<?=$show->title_no?>-<?=$show->id?>.html" class="item-blog-img pos-relative dis-block hov-img-zoom">
								<img src="upload/news/<?=$show->img?>" alt="IMG-BLOG">

								<span class="item-blog-date dis-block flex-c-m pos1 size17 bg4 s-text1">
									<?=$show->update_at?>
								</span>
							</a>

							<div class="item-blog-txt p-t-33">
								<h4 class="p-b-11">
									<a href="<?=$show->title_no?>-<?=$show->id?>.html" class="m-text24">
										<?=$show->title?>
									</a>
								</h4>

	

								<p class="p-b-12">
									<?=$show->description?>
								</p>

								<a href="<?=$show->title_no?>-<?=$show->id?>.html" class="s-text20">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
								</a>
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
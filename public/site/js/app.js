$(document).ready(function(){
			show_cart();
			load_cart_data();


			// in sản phẩm ở giỏ hàng sidebar

			function load_cart_data(){
				$.ajax({
					url:"app/Ajax/fetch_cart_sidebar.php",
					method:"POST",
					dataType:"json",
					success:function(data){
						$('.cart_details').html(data.cart_details);
						$('.total_price').text(data.total_price);
						$('.badge').text(data.total_item);
					
					}
				});
			};
			// in sản phẩm ở giỏ hàng page 
			function show_cart(){
				$.ajax({
					url:"app/Ajax/fetch_cart_page.php",
					method:"POST",
					dataType:"json",
					success:function(data){
						$('#show_cart').html(data.show_cart);
						$('.total_cart').text(data.total_cart);
	
					}
				});
			};
			// Sửa sản phẩm
			$(document).on('change','.itemQty',function(){

		      	var $el = $(this).closest('tr');

		      	var product_id = $el.find('.pid').val();
		      	var product_quantity = $el.find('.itemQty').val();
		     	var action = 'update';
		   
		      // location.reload('true');

		      	$.ajax({
		        	url:'app/Ajax/cart.php',
		        	method:'POST',
		        	data:{product_quantity:product_quantity,product_id:product_id,action:action},
		        	success:function(){
		   				load_cart_data();
		          		show_cart();
						
		        	}
		      	})
		    });

			// thêm sản phẩm
			$(document).on('click', '.add_to_cart', function(){
				
			
				var product_id = $(this).attr("id");
				var product_name = $('#name'+product_id+'').val();
				var product_img = $('#img'+product_id+'').val();
				var check = $('#price'+product_id+'').val();
				var color = $('#color'+product_id+'').val();
				if(check){
					var product_price = check;
				}
				else{
					var option = $('.option-product').val();
					if(option == 0){
						var product_price = 0;
					}
					else{
					var product_price = option;
				}
					
					
				}
				
				var product_quantity = $('#quantity'+product_id+'').val();
				var product_color = $('#color'+product_id+'').val();
				var product_size = $('#size'+product_id+'').children("option:selected").text();
				var action = 'add';
				console.log(color);
				console.log(product_price);
			
				if(product_price != 0 && color !=0){
					if(product_price !=0){
						$('#alert-option-product-size').html('<p style="color:red"></p>');
					}
					if(color !=0){
						$('#alert-option-product-color').html('<p style="color:red"></p>');
					}
					
					
					$.ajax({
						url:"app/Ajax/cart.php",
						method:"POST",
						data:{product_color:product_color,product_size:product_size,product_id:product_id, product_name:product_name, product_img:product_img, product_price:product_price, product_quantity:product_quantity, action:action},
						success:function(data){
							console.log(data);
							load_cart_data();
							show_cart();
							
							swal("Done", "is added to cart !", "success");
						}
					});
				}
				else{
					if(product_price == 0){
						$('#alert-option-product-size').html('<p style="color:red">Chọn kích thước cho sản phẩm</p>');
					}
					if(color == 0){
						$('#alert-option-product-color').html('<p style="color:red">Chọn màu sắc cho sản phẩm</p>');
					}
					
				}
			
			});

			
			// Xoá sản phẩm trong giỏ hàng
			$('.header-cart').on('click', '.delete', function(){
				var product_id = $(this).attr("id");
				var action = "remove";
				
				$.ajax({
					url:"app/Ajax/cart.php",
					method:"POST",
					data:{product_id:product_id, action:action},
					success:function(){

						load_cart_data();
						show_cart();
						
					}
				});
			});
			// Xoá sản phẩm trong giỏ hàng
			$('#show_cart').on('click', '.delete', function(){
				var product_id = $(this).attr("id");
				var action = "remove";
				alert('a');
				
				$.ajax({
					url:"app/Ajax/cart.php",
					method:"POST",
					data:{product_id:product_id, action:action},
					success:function(){

						load_cart_data();
						show_cart();
						
					}
				});
			});
			// in ra quận huyện dựa vào id thành phố/ tỉnh
			$('#province').change(function(){
				var aid = $('#province').val();
				$.ajax({
					url:'app/Ajax/fetch_district.php',
					method:"POST",
					dataType:"JSON",
					data:{aid:aid},
					success:function(data){
						$('#district').html(data.state);
					}
				})
			});
			// in ra tiền ship và tổng tiền khi có ship
             $("select.district").change(function(){
                var option = $(this).children("option:selected").val();

                $.ajax({
                	url:'app/Ajax/ship_price.php',
                	method:'POST',
                	dataType:'JSON',
                	data:{option:option},
                	success:function(data){
						$('.ship').text(data.ship);
						$('#total').text(data.total);
                	}
                });
            });
             // lấy giá tiền theo sản phẩm
            $("select.option-product").change(function(){
                var price_option = Number($(this).children("option:selected").val()).toLocaleString("en-AU") + 'vnd';
                if(price_option != '0vnd'){
					$('.price-option').text(price_option);
				}
		

            });
            // check null option 
            $(document).on('click','.btn-next-checkout',function(){
            	var province = $('#province').children("option:selected").text();
            	var adr_ship = $('#adr-ship').val();
            	var district = $('#district').children("option:selected").text();
            	var ship_price = $('#district').val(); 
            	var name_checkout = $('#name-checkout').val();
            	var tel_checkout = $('#tel-checkout').val();
            	var mail_checkout = $('#mail-checkout').val();
            	var note_checkout = $('#note-checkout').val();

            	


            	if(adr_ship =='' || ship_price =='' || name_checkout =='' || tel_checkout =='' || mail_checkout ==''){
            		$('.alert-ship').html('<p style="color:red">Xin vui lòng điền thông tin địa chỉ</p>');
            		if(adr_ship ==''){
            			$('#adr-ship').css('border','0.5px solid red');
            		}
            		if(ship_price == null){
            			$('.alert-ship').html('<p style="color:red">Xin vui lòng điền thông tin địa chỉ</p>');
            		}
            		if(name_checkout ==''){
            			$('#name-checkout').css('border','0.5px solid red');
            		}
            		if(tel_checkout ==''){
            			$('#tel-checkout').css('border','0.5px solid red');
            		}
            		if(mail_checkout ==''){
            			$('#mail-checkout').css('border','0.5px solid red');
            		}
            		$('.alert-checkout').html('<p style="color:red">Xin vui lòng điền đầy đủ thông tin</p>');
            	}
            	else{
            		$('#adr-ship').css('border','none');
            		$('#name-checkout').css('border','none');
            		$('#tel-checkout').css('border','none');
            		$('#mail-checkout').css('border','none');
           
            		$.ajax({
						url:"app/Ajax/checkout.php",
						method:"POST",
						data:{province:province,adr_ship:adr_ship,district:district,ship_price:ship_price,name_checkout:name_checkout,tel_checkout:tel_checkout,mail_checkout:mail_checkout,note_checkout:note_checkout},
						success:function(data){
							if(data == 'yes'){
								window.location.href = "?controller=bill";
							}
							
						}
					});
            	}

            });

          


		});
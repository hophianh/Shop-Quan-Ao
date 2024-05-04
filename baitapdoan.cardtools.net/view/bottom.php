</div>
      <br>
      <!--footer-->
    <section id="footer">
        <div class="container">
            <div class="row text-center text-xs-center text-sm-left text-md-left">

                <div class="col-sm-4 col-md-4">
                    <h5>PET PARADISE</h5>
                    <ul class="list-unstyled quick-links">
                      <li><a href="index.php"><i class="fa fa-angle-double-right"></i>Trang chủ</a></li>
                      <li><a href="index.php?action=gioithieu"><i class="fa fa-angle-double-right"></i>Giới thiệu đồ án</a></li>
                      <li><a href=""><i class="fa fa-angle-double-right"></i>Điều khoản sử dụng</a></li>
                    </ul>
                </div>

                <div class="col-sm-4 col-md-4">
                    <h5>HỖ TRỢ KHÁCH HÀNG</h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href=""><i class="fa fa-angle-double-right"></i>Hướng dẫn đặt hàng</a></li>
                        <li><a href=""><i class="fa fa-angle-double-right"></i>Chính sách đổi trả</a></li>
                        <li><a href=""><i class="fa fa-angle-double-right"></i>Chính sách bảo mật - thanh toán</a></li>
                      
                    </ul>
                </div>

                <div class="col-sm-4 col-md-4">
                    <h5>THÔNG TIN LIÊN HỆ</h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href=""><i class="bi bi-envelope"></i>Email: hao.2174802010097@vanlanguni.vn</a></li>
                        <li><a href=""><i class="bi bi-telephone"></i>Hotline: 0933725xxx</a></li>
                        <li><a href=""><i class="bi bi-geo-alt"></i>Địa chỉ: 80/68 Dương Quảng Hàm, Phường 5, Quận Gò Vấp</a></li>
                    </ul>
                </div>
            
            </div>
          
            <div class="row">
                <div class="col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                    <br><p>&copy;<?php echo date("Y"); ?> <a href="#">PET PARADISE</a>. Designed & Developed by Nhóm Đồ Án.</p>
                </div>
            </div>  
        </div>
    </section>
    
        <!--end-footer-->
        <script src="public/js/shop.js"></script>
        <script>
            $(window).scroll(function(){
                if($(window).scrollTop() >= 10) {
                $('.button_scroll2top').show();
                } else {
                $('.button_scroll2top').hide();
                }
            });
            function page_scroll2top(){
                $('html,body').animate({
                scrollTop: 0
                }, 'fast');
            }
    </script>
    
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
    <script>
	$(document).ready(function(){
				$('#PhanTrang').DataTable({
					'language': {
						'sProcessing':   'Đang xử lý...',
						'sLengthMenu':   'Hiển thị _MENU_ dòng',
						'sZeroRecords':  'Không tìm thấy dòng nào phù hợp',
						'sInfo':         'Đang xem _START_ đến _END_ trong tổng số _TOTAL_ dòng',
						'sInfoEmpty':    'Đang xem 0 đến 0 trong tổng số 0 dòng',
						'sInfoFiltered': '(được lọc từ _MAX_ dòng)',
						'sInfoPostFix':  '',
						'sSearch':       'Tìm kiếm:',
						'sUrl':          '',
						'oPaginate': {
							'sFirst':    '<i class="bi bi-chevron-bar-left"></i>',
							'sPrevious': '<i class="bi bi-chevron-double-left"></i>',
							'sNext':     '<i class="bi bi-chevron-double-right"></i>',
							'sLast':     '<i class="bi bi-chevron-bar-right"></i>'
						}
					}
				});
			});
    </script>   
</body> 
</html>
    <!-- start footer -->
    <div class="container box-footer">
        <div class="row">
            <div class="col-md-12">
                <footer class="footer">
                    <?php if($categories){ ?>
                    <ul class="list-catogories-footer">
                    <?php foreach($categories as $category){ ?>
                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                        <li><a href="<?php echo $special; ?>">Акции</a></li>
                        <li><a href="<?php echo $action; ?>">SALE!</a></li>
                        <li><a href="<?php echo $manufacturer; ?>">Бренды</a></li>
                        <li><a href="<?php echo $payment; ?>">Оплата и доставка</a></li>
                        <li><a href="<?php echo $about_us; ?>">О магазине</a></li>
                    </ul>
                    <?php } ?>

                    <p>Контакты: <i class="fa fa-phone" aria-hidden="true"></i><a href="tel: <?php echo $telephone; ?>"><?php echo $telephone; ?></a>, <a href="tel: <?php echo $fax; ?>"><?php echo $fax; ?></a> <i class="fa fa-envelope" aria-hidden="true"></i><a href="email:<?php echo $email; ?>"><?php echo $email; ?></a><i class="fa fa-skype" aria-hidden="true"></i><a href="skype:<?php echo $skype; ?>"><?php echo $skype; ?></a><img class="payment" src="catalog/view/theme/odri/image/payment.jpg" alt=""></p>

                    <address>
                        <ul class="contact-details">
                            <li><?php echo $powered; ?></li>
                            <li><?php echo $name_store; ?> (<?php echo $owner_store; ?>)</li>
                            <li><?php echo $address; ?></li>
                            <li><?php echo $registration; ?></li>
                            <li><?php echo $сommercial_registry; ?></li>
                        </ul>
                    </address>
                    <ul class="social-list">
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                    <p class="make-in"><a href="http://mkvadrat.com/">Сайт разработан в <img src="catalog/view/theme/odri/image/m2.jpg" alt=""></a></p>
                    <div class="footer-line"></div>
                </footer>
            </div>
        </div>
    </div>

    <!-- end footer -->
    
<script type="text/javascript">
    $(document).ready(function() {
        $(".fancybox").fancybox();
    });
</script>

</body>
</html>
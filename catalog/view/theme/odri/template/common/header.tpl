<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />

<!-- THEME STYLE -->
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/odri/css/reset.css">
<link rel="stylesheet" href="catalog/view/theme/odri/css/fonts.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="catalog/view/theme/odri/css/styles.css">
<link rel="stylesheet" href="catalog/view/theme/odri/css/media.css">
<!-- OWL-CAROUSEL -->
<link rel="stylesheet" href="catalog/view/theme/odri/css/owl.carousel.min.css">
<link rel="stylesheet" href="catalog/view/theme/odri/css/owl.theme.default.css">
<!-- FANCYBOX -->
<link rel="stylesheet" href="catalog/view/theme/odri/js/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/odri/js/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- OWL-CAROUSEL -->
<script src="catalog/view/theme/odri/js/owl.carousel.min.js"></script>
<!-- FANCYBOX -->
<script type="text/javascript" src="catalog/view/theme/odri/js/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<script src="catalog/view/theme/odri/js/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="catalog/view/theme/odri/js/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="catalog/view/theme/odri/js/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
<link rel="stylesheet" href="catalog/view/theme/odri/js/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/odri/js/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
<!-- EZ-GALLERY -->
<script src="catalog/view/theme/odri/js/ezgallery/jquery.easing.min.js"></script>
<script src="catalog/view/theme/odri/js/ezgallery/jquery.fancybox-plus.js"></script>
<script src="catalog/view/theme/odri/js/ezgallery/jquery.ez-plus.js"></script>
<script src="catalog/view/theme/odri/js/ezgallery/web.js"></script>
<link rel="stylesheet" href="catalog/view/theme/odri/css/ezgallery/jquery.fancybox-plus.css">
<link rel="stylesheet" href="catalog/view/theme/odri/css/ezgallery/jquery.ez-plus.css">

<!-- HTML5 for IE -->
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/odri.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
    <!-- start header -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="logo">
                        <a href="<?php echo $home; ?>"><h1><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></h1></a>
                    </div>

                    <div class="phones">
                        <p><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
                        <p><a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a></p>
                    </div>

                    <div class="mail">
                        <p><i class="fa fa-envelope" aria-hidden="true"></i><a href="email:<?php echo $email; ?>"><?php echo $email; ?></a></p>
                        <p><i class="fa fa-skype" aria-hidden="true"></i><a href="skype:<?php echo $skype; ?>"><?php echo $skype; ?></a></p>
                    </div>
    
                    <ul class="top-menu">
                        <li><a href="<?php echo $beauty; ?>">Бьюти-проба</a></li>
                        <li><a href="<?php echo $action; ?>">SALE!</a></li>
                        <li><a href="<?php echo $manufacturer; ?>">Бренды</a></li>
                        <li><a href="<?php echo $payment; ?>">Оплата и доставка</a></li>
                        <li><a href="<?php echo $about_us; ?>">О магазине</a></li>
                    </ul>
                </div>
                <div class="col-md-12 pad-none">
                    <div class="block-main-menu">
                        <?php if($categories){ ?>
                        <ul class="main-menu">
                        <?php foreach($categories as $category){ ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                        <?php } ?>
                            <li><a href="<?php echo $special; ?>">Акции</a></li>
                        </ul>
                        <?php } ?>
                    </div>
                </div>

                <div class="bottom-line-header">
                    <div class="col-md-3">
                        <?php echo $search; ?>
                    </div>

                    <div class="col-md-6">
                        <div class="personal-area-block">
                        <?php if ($logged) { ?>
                            <p>
                                Здравствуйте,  <span><?php echo $first_name; ?></span> <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                            </p>
                        <?php } else { ?>
                            <p>
                                Личный кабинет <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a> или <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
                            </p>
                        <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <?php echo $cart; ?>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->

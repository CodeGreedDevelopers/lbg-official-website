<?php
$month=$_GET['name'];

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Profit/ loss spreadsheet for all matches shared. Includes all matches won and lost for VIP only">
    <meta name="author" content="CodeGreed Developers">
    <meta name="keywords" content="Live Betting Goal, Live bet, In play, First Half Goals, Live Betting, LiveBettingGoal, LiveBettingGoal app, Betting app. Live Betting Tips, Football Tips, Football live betting, football betting tips "./>
    <title>LiveBettingGoal - Results</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">
    <link href="images/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">
    <link href="css/akslider.css" rel="stylesheet" type="text/css" />
    <link href="css/donate.css" rel="stylesheet" type="text/css" />
    <link href="css/theme.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>

<body class="tm-isblog tt-players-page">

    <div class="preloader">
        <div class="loader"></div>
    </div>


    <div class="over-wrap">
        <div class="toolbar-wrap">
            <div class="uk-container uk-container-center">
                <div class="tm-toolbar uk-clearfix uk-hidden-small">


                    <div class="uk-float-right">
                        <div class="uk-panel">
                            <div class="social-top">
                                <a href="https://www.facebook.com/livebettinggoall" target="blank"><i class="fa fa-facebook uk-icon-small uk-icon-hover"></i></a>
                                <a href="https://www.telegram.me/livebettinggoal" target="blank"><i class="fa fa-telegram uk-icon-small uk-icon-hover"></i></a>
                                <a href="https://www.instagram.com/livebettinggoal" target="blank"><i class="fa fa-instagram uk-icon-small uk-icon-hover"></i></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="tm-menu-box">

            <div style="height: 70px;" class="uk-sticky-placeholder">
                <nav style="margin: 0px;" class="tm-navbar uk-navbar" data-uk-sticky="">
                    <div class="uk-container uk-container-center">
                        <a class="tm-logo uk-float-left" href="index.html">
                            <img src="images/logo-img.png" alt="logo" title="logo"> <span>LBG<em>.com</em></span>
                        </a>

                        <ul class="uk-navbar-nav uk-hidden-small">
                            <li class="uk-parent" data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="index.php">Home</a></li>
                            <li data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="rules.php">Rules</a></li>
                            <li data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="betting-types.php">Betting Types</a></li>
                            <li data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="testimonials.php">Testimonials</a></li>
                            <li data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="subscribe.php">Subscribe</a></li>
                            <li class="uk-active" data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="web-results.php">Results</a></li>
                            <li class="uk-parent" data-uk-dropdown="{'preventflip':'y'}" aria-haspopup="true" aria-expanded="false"><a href="#">Help</a>
                                <div class="uk-dropdown uk-dropdown-navbar uk-dropdown-width-1">
                                    <div class="uk-grid uk-dropdown-grid">
                                        <div class="uk-width-1-1">
                                            <ul class="uk-nav uk-nav-navbar">
                                                <li><a href="about-us.php">About</a>
                                                </li>
                                                <li><a href="faq.php">FAQs</a>
                                                </li>
                                                <li><a href="contact.php">Contact</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <a href="#offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas=""></a>
                    </div>
                </nav>
            </div>
        </div>


        <div class="tm-top-a-box tm-full-width tm-box-bg-1 ">
            <div class="uk-container uk-container-center">
                <section id="tm-top-a" class="tm-top-a uk-grid uk-grid-collapse" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

                    <div class="uk-width-1-1 uk-row-first">
                        <div class="uk-panel">
                            <div class="uk-cover-background uk-position-relative head-wrap" style="height: 290px; background-image: url('images/head-bg.jpg');">
                                <img class="uk-invisible" src="images/head-bg.jpg" alt="" height="290" width="1920">
                                <div class="uk-position-cover uk-flex uk-flex-center head-title">
                                    <h1>Results</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <div class="uk-container uk-container-center alt">
            <ul class="uk-breadcrumb">
                <li><a href="index.php">Home</a>
                </li>
                <li><a href="web-results.php">Results</a>
                </li>                
                <li><a href="#"><?php echo ucfirst($month); ?></a>
                </li>
            </ul>
        </div>

        <?php
        switch ($month) {
            case "sept 2017":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vR5xhacjgcsdOFMp1CfFHTep2cswtLFgLcJBfGXXT36opOqgEBAhQJbwE_Tngdx3CMVOnXxzwPCPyPD/pubhtml?gid=1277293381&amp;single=true&amp;widget=true&amp;headers=false";
                break;
            case "oct 2017":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vQB5Wiqylv2L7Nba5ycpRn3qdBRyAtmFNvxi56pkIJpuehqfnUzeBOdKdVD2NC6Ixobo7r2AjahtqRW/pubhtml?widget=true&amp;headers=false";
                break;
            case "nov 2017":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vQ-zeRIqUAmz9zYjNi7MlvGch3qXUphZABK_9-HGf-CM_Ti4FUc3Twg8G7oy4qVYuXTLSkRLJzffDWJ/pubhtml?widget=true&amp;headers=false";
                break;
            case "jan 2018":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vReM0EftdGBqCt2DCa4zcWGnxjJx7qyH9wOzSsIKlvtOAEz3-yKa6Jx5XDwvZz5DGnkMvInnyzmx7OS/pubhtml?widget=true&amp;headers=false";
                break;
            case "feb 2018":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vTM_483KBWHJuQ97jKQm4teN4YlOzhQGdWbkfzxwOextMmpcYr-9vxRLkjlPleGnoO9Mj-DNblqC6dk/pubhtml?widget=true&amp;headers=false";
                break;
            case "mar 2018":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vQJKDwdHXe7HMVkS1f_R23jrnlXwfrXl6wjtCGnyzYbCidVXKDgzIOpEyxoiMJXRsPaFBRBMxSzPGtX/pubhtml?widget=true&amp;headers=false";
                break;
            case "april 2018":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vQzM23YDTtFpdRqQcVYjbPTFKudEGQFs0SqBZwQNvqCHoAp7CKTJd9rLlPgv5YRFWHN1kBmMAhnTBzE/pubhtml?widget=true&amp;headers=false";
                break;
            case "may 2018":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vQk2AxPL85jptMH1Lts-fEs4bpwrZC_hJF6VYMc-OsTOV2cL-QnEJ1sC7XXfxOp5XoUmI_5wjb2yIub/pubhtml?widget=true&amp;headers=false";
                break;
            case "june 2018":
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vSifT3cKx0VKHxkRAXM6K6jvew_5OF2PaoQun3Ae1s_XmUA1EYH30lc1T5LdNIbGQSgByX_ml-Ghuub/pubhtml?widget=true&amp;headers=false";
                break;
            default:
                $link="https://docs.google.com/spreadsheets/d/e/2PACX-1vQJKDwdHXe7HMVkS1f_R23jrnlXwfrXl6wjtCGnyzYbCidVXKDgzIOpEyxoiMJXRsPaFBRBMxSzPGtX/pubhtml?widget=true&amp;headers=false";
                break;
        }
                
        ?>

        <iframe src="<?php echo $link ?>" onload='javascript:(function(o){o.style.height=o.contentWindow.document.body.scrollHeight+"px";}(this));' style="height:1400px;width:100%;border:none;overflow:hidden;"></iframe>

        <!-- side-navbar start -->
        <div id="offcanvas" class="uk-offcanvas">
                <div class="uk-offcanvas-bar">
                    <ul class="uk-nav uk-nav-offcanvas">
                        <li class="uk-parent"><a href="index.php">Home</a></li>
                        <li><a href="rules.php">Rules</a></li>
                        <li><a href="betting-types.php">Betting Types</a></li>
                        <li><a href="testimonials.php">Testimonials</a></li>
                        <li><a href="subscribe.php">Subscribe</a></li>
                        <li><a href="web-results.php">Results</a></li>
                        <li class="uk-parent uk-active"><a href="#">Help</a>
                            <ul class="uk-nav-sub">
                                <li><a href="about-us.php">About</a>
                                </li>
                                <li><a href="faq.php">FAQs</a>
                                </li>
                                <li><a href="contact.php">Contact</a>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
         <!-- side-navbar stop -->
        <?php include 'footer.php'; ?>

    </div>


    

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/uikit.js"></script>
<script type="text/javascript" src="js/components/grid.js"></script>
<script type="text/javascript" src="js/components/slider.js"></script>
<script type="text/javascript" src="js/components/slideshow.js"></script>
<script type="text/javascript" src="js/components/slideset.js"></script>
<script type="text/javascript" src="js/components/sticky.js"></script>
<script type="text/javascript" src="js/components/lightbox.js"></script>
<script type="text/javascript" src="js/components/accordion.js"></script>
<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>

<script type="text/javascript" src="js/theme.js"></script>

</body>

</html>
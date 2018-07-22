<div class="bottom-wrapper">
            <div class="tm-bottom-f-box  ">
                <div class="uk-container uk-container-center">
                    <section id="tm-bottom-f" class="tm-bottom-f uk-grid" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

                        <div class="uk-width-1-1">
                            <div class="uk-panel">
                                <div class="footer-logo">
                                    <a href="index.php"><img src="images/footer-logo-img.png" alt=""><span>LBG</span>.com</a>
                                </div>
                                <div class="footer-socials">
                                    <div class="social-top">
                                        <a href="https://www.facebook.com/livebettinggoall" target="blank"><i class="fa fa-facebook uk-icon-small uk-icon-hover"></i></a>
                                        <a href="https://www.telegram.me/livebettinggoal" target="blank"><i class="fa fa-telegram uk-icon-small uk-icon-hover"></i></a>
                                        <a href="https://www.instagram.com/livebettinggoal" target="blank"><i class="fa fa-instagram uk-icon-small uk-icon-hover"></i></a>
                                    </div>
                                </div>
                                <div class="clear"></div>

                                <p class="footer-about-text">
                                    Refine your predictions on placing inplay or live bets that live statistics are predicting that there is a high probability of winnings.
                                </p>
                            </div>
                        </div>
                    </section>
                </div>
            </div>

            <div class="tm-bottom-g-box  ">
                <div class="uk-container uk-container-center">
                    <section id="tm-bottom-g" class="tm-bottom-f uk-grid" data-uk-grid-match="{target:'> div > .uk-panel'}" data-uk-grid-margin="">

                        <div class="uk-width-1-1 uk-width-large-1-2">
                            <div class="uk-panel">
                                <div class="match-list-wrap foot">
                                    <div id="carusel-7" class="uk-slidenav-position" data-uk-slideshow="{ height : 37, autoplay:true, animation:'scroll' }">
                                        <div class="last-match-top">
                                            <div class="last-match-title">Important Tips</div>
                                            <div class="footer-slider-btn">
                                                <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                                                <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <ul class="uk-slideshow">
                                        <?php
                                        include('connection.php');
                                            $res=mysqli_query($db,"SELECT * FROM `web_tips`");
                                            while ($cols=mysqli_fetch_array($res)) {
                                        ?>
                                            <li class="" aria-hidden="true">
                                                <div class="match-list-item alt foot">
                                                    <div class="wrapper">                                                                                                            
                                                        <div class="versus" style="font-size: 16px; letter-spacing: 2px; text-transform: lowercase;"><?php echo $cols['tips']; ?></div>

                                                    </div>
                                                </div>
                                            </li>
                                            <?php
                                            }
                                            ?>	
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                      
                    </section>
                </div>
            </div>

            <footer id="tm-footer" class="tm-footer">


                <div class="uk-panel">
                    <div class="uk-container uk-container-center">
                        <div class="uk-grid">
                            <div class="uk-width-1-1">
                                <div class="footer-wrap">
                                    <div class="foot-menu-wrap">
                                        <ul class="nav menu">
                                            <li class="item-165"><a href="about.php">About</a>
                                            </li>
                                            <li class="item-166"><a href="faq.php">Faqs</a>
                                            </li>
                                            <li class="item-167"><a href="subscribe.php">Subscribe</a>
                                            </li>
                                            <li class="item-168"><a href="web-results.php">Results</a>
                                            </li>
                                            <li class="item-169"><a href="rules.php">Rules/Guidance</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="copyrights">Copyright © 2018 LiveBettingGoal. All Rights Reserved.</div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>

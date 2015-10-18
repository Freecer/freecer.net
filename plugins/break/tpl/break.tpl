<!-- BEGIN: MAIN -->

<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
        <title>Sky Under Construction</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width,initial-scale=1">

        <!-- CSS concatenated and minified via ant build script-->
        <link rel="stylesheet" type="text/css" href="/plugins/break/css/style.css"  media="screen" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700' rel='stylesheet' type='text/css'>

        <!-- end CSS-->

        <!--[if IE 6]>
              <script src="/plugins/break/js/DD_belatedPNG_0.0.8a.js"></script>
              <script type="text/javascript">
              DD_belatedPNG.fix('#logo,#header,#footer,#main,#logo,#box,#subscribe,#action,#info');
              </script>
          
          
              <![endif]-->
        <!--[if gte IE 9]>
                <style type="text/css">
                  .gradient {
                     filter: none;
                  }
                </style>
              <![endif]-->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

        <script>
            $(document).ready(function () {

                // hide #back-top first
                $("#back-top").hide();

                // fade in #back-top
                $(function () {
                    $(window).scroll(function () {
                        if ($(this).scrollTop() > 100) {
                            $('#back-top').fadeIn();
                        } else {
                            $('#back-top').fadeOut();
                        }
                    });

                    // scroll body to 0px on click
                    $('#back-top a').click(function () {
                        $('body,html').animate({
                                scrollTop: 0
                            }, 800);
                            return false;
                        });
                    });

                });
        </script>

    </head>

    <body id="top">

        <!-- BEGIN HEADER -->

        <div id="header">

            <div class="full">
                <!--Logo -->
                <h1 id="logo"><img src="/themes//{PHP.theme}/img/logo.png" alt=""></h1>
                <!--Phone number -->
                <ul id="social">
                    <li class="facebook"><a href="http://www.facebook.com/layersky">Like us on Facebook</a></li>
                    <li class="twitter"><a href="http://twitter.com/#!/layersky">Follow us on Twitter</a></li>
                </ul>
                <div id="phone">
                    <p>Call 1900 900 768</p>
                </div>
                <div class="clear"></div>						
            </div><!--end .full-->
        </div>

        <!-- END HEADER -->


        <!-- BEGIN CONTENT -->

        <!--Countdown Section -->
        <div id="main">
            <div id="main-body">
                <div id="box">
                    <h1 class="tcenter">{BREAK_TITLE}</h1>
                    <!--Countdown Timer-->
                    <div id="countdown">
                        <div id="counter"></div>
                        <div class="desc">
                            <div>Days</div>
                            <div>Hours</div>
                            <div>Minutes</div>
                            <div>Seconds</div>
                        </div>
                    </div>
                    <!--End Countdown Timer-->	

                    <!--Subscribe Section 
                    <div id='action'>
                        <div class="sign_up"><img src="/plugins/break/images/sign_up.png" width="160" height="30" alt="sign up now"></div>
                        <p>Sign up and we will let you know when it's ready</p>
                        <form action='#' method='post' id='notify'>
                            <input type='email' id='input' name='email' placeholder='Enter your email address' class='required'>
                            <input type='submit' id='submit' value="Subscribe" class='required email'>
                        </form>
                        <div class="clear"></div>
                    </div><!--! end #action -->	

                </div><!--! end #box -->          
            </div><!--! end #main-body -->   
        </div><!--! end #main--> 

        <!--Information Section -->

        <div id="info">
            <div class="full">
                <div class="w300">
                    <h3 id="h3_who" >Who we are</h3>
                    <p>Posuere. In justo quis consectetuer lacus. Auam interdum arcu massa, tincidunt vel dapibus non tristique enim aliquet a ipsum. vulputate nullaed necem sagittis. Mauris da susci par fringilla risus dapibus ultrices. Sed ut nisi a turpis tincidunt ultrices. </p>
                    <p>Aliquam ut massa ac turpis imperdiet sollicitudin uteard eget arcu fliquam non quam ante sited amet faucibus sem. Praesent velr heinder the er dui varius vel. In in erat orci tincidunt urna.</p>
                </div>

                <div class="w300">
                    <h3 id="h3_contact">Contact</h3>
                    <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.If you'd prefer to email us, please direct your inquiry to <a href="#">support@layersky.com</a></p>
                    <h4>Address</h4>
                    <p>LayerSky Studio New York 50 Spring Seven Street, 12th Floor New York </p>
                    <p><span class="bold">Tel:</span> 1800 322 024<br><span class="bold">Fax:</span> 1800 322 025</p>
                </div>

                <div class="w300 last">
                    <h3 id="h3_conect">Conect with Us</h3>
                    <p>Lorem ipsum aenean aliquet posuere felis, a com nsequat urna euismod sit amet. Mar ecenas auctor massa non ligula are pretium auctor. Sed elit ipsum luctus et consectetur sedp in ligula. </p>
                    <div class="social">
                        <ul>
                            <li><a href="#" class="twitter tool_tip" title="Twitter">Twitter</a></li>
                            <li><a href="#" class="facebook tool_tip" title="Facebook">Facebook</a></li>
                            <li><a href="#" class="vimeo tool_tip" title="Vimeo">Vimeo</a></li>
                        </ul>			
                    </div><!-- end #social -->
                </div>

                <div class="clear"></div>
            </div><!-- end .full -->
        </div><!-- end #info -->

        <!-- END CONTENT -->

        <!-- BEGIN FOOTER  -->	
        <div id="footer">
            <div class="full relative">
                <p class="tleft copyright">Copyright © 2012-2013 LayerSky.com. All rights reserved. </p>

                <div id="footer-link">
                    <p><a href="#" title="Terms &lt; Conditions">Terms &amp; Conditions</a> | <a href="#" title="Privacy">Privacy Policy</a> </p>
                </div>

                <div class="clear"></div>
            </div>
            <p id="back-top">
                <a href="#top"><span></span>Back to Top</a>
            </p>
        </div><!-- end #footer -->

        <!-- END FOOTER  -->	

        <!-- ========================  Script AND jQuery  ======================== -->

        <!-- Twitter Share Button -->
        <script>!function (d, s, id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document, "script", "twitter-wjs")
        ;</script>

        <!-- jQuery -->

        <script src="/plugins/break/js/jquery-1.4.4.min.js" type="text/javascript"></script>

        <!--Validate form-->
        <script type="text/javascript" src='/plugins/break/js/form/jquery.form.js'></script>
        <script type="text/javascript" src='/plugins/break/js/validate/jquery.validate.js'></script>
        <script>
                jQuery.noConflict()(function ($) {
                    $(function () {
                        $('#notify').validate({
                            submitHandler: function (form) {
                                $(form).ajaxSubmit({
                                    url: 'notify.php',
                                    success: function () {
                                        $('#notify').hide();
                                        $('#action').append("<h4 id='formPopup'>You will be notified when we launch. Thank you!</h4>")
                                    }
                                });
                            }
                        });
                    });
                });
        </script>

        <!-- jQuery - Modernizr -->
        <script src="/plugins/break/js/modernizr/modernizr-2.0.6.min.js"></script>

        <!-- scripts concatenated and minified via ant build script-->
        <script defer src="/plugins/break/js/scripts.js"></script>
        <script defer src="/plugins/break/js/plugins.js"></script>

        <!-- jQuery - Countdown -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="/plugins/break/js/countdown/jquery.countdown.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">

                $(function () {
                    var _date = new Date({BREAK_DATE});
                    $('#counter').countdown({
                        startTime: _date,
                        stepTime: 1,
                        digitImages: 6,
                        digitWidth: 53,
                        digitHeight: 77,
                        image: '/plugins/break/images/digits.png'
                    });
                });

        </script>

        <!--[if lt IE 7 ]>
            <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
            <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
        <![endif]-->

    </body>
</html>


<!-- END: MAIN -->
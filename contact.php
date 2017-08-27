<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plan of Action</title>
<link href="css/blog.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
                     
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <?php include("menu.php");?>
    <br><br>
 
  <!--===| Contact Body Start|===-->
  <section class="section-padding contact-wrapper">
    <div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
             
            <div class="form-wrapper">
          <h2>leave a message</h2>
         <p> </p>
         <form id='contact_form' method="post" action = "contact_be.php" role="form">
              <div class="row">
                <div class="col-xs-12 col-sm-12">
                  <input type="text" class="form-control" name="name" placeholder="name">
                </div>
                
                <div class="col-xs-12 col-sm-12">
                    <input id="email" type="email" class="form-control" name="email" placeholder="e-mail" style="text-align: left;">
                </div>
				 <div class="col-xs-12 col-sm-12">
                  <input id="phone" type="text" class="form-control" name="phone" placeholder="phone">
                </div>
                <div class="col-xs-12 col-sm-12">
                  <input type="text" class="form-control" name="subject" placeholder="subject">
                </div>
                <div class="col-xs-12 col-sm-12">
                  <textarea id="message" class="form-control" rows="4" name="message" placeholder="message"></textarea>
                </div>
                <div class="form-group col-xs-12">
                  <div id="mail_success" class="success" style="display:none;">Your message has been sent successfully. </div>
                  <div id="mail_fail" class="error" style="display:none;"> Sorry, error occured this time sending your message. </div>
                </div>
                <button id="send_message" class="btn" name="submit" type="submit">submit message</button>
              </div>
            </form>
          </div>
        </div>
         <div class="address-wrapper">
            <div class="row">
              <div class="col-xs-12 col-sm-6">
                <div class="left">
                  <h2>Reach us</h2>
                  <p><i class="fa fa-phone"></i><a href="tel:+09717305546"> +0-91-9717305546  </a></p>
           <p><i class="fa fa-envelope"></i><a href="mailto:info@planofaction.in"> info@planofaction.in</a></p>
				
                </div>
              </div>
                     
            </div>
          </div>
      </div>
      
        </div>
  </section>
  <!--===| Contact Body End|===-->
<?php include("footer.php");?>

  </body>

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</html>
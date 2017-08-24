<?php
include("connections/connections.php");
$result="";
    $query="SELECT * FROM posts ORDER BY id DESC LIMIT 12";
$result=mysqli_query($connect,$query);
?>
<!DOCTYPE html>


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plan of Action</title>

    <!-- Bootstrap Core CSS -->

   
 


   
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css"href="css/blog.css">
    
 
</head>

<body>
   <?php include("menu.php");?>
    <!--#################################
    - THEMEPUNCH BANNER -
#################################-->
    <div class="tp-banner-container" style="margin-top:3%; ">
    <div class="tp-banner" >
      <ul>  <!-- SLIDE  -->
  <?php

    $query1="SELECT * FROM posts ORDER BY RAND() LIMIT 3 ";

$result1=mysqli_query($connect,$query1);


             while ($rows = mysqli_fetch_assoc($result1)){
              if(isset($rows['imgname'])){
                  if ($rows['imgname'] == "no") {
            $img = "img/poa.jpg";
        } else {
            $img = "img/" . $rows['imgname'];
        }
        ?>
   <!-- data-transition="curtain-2" data-slotamount="1" data-masterspeed="1000" -->
   <li data-transition="slotfade-horizontal" data-slotamount="1" data-masterspeed="500" data-title="">
    <!-- MAIN IMAGE -->
    <img id="banimg" src="<?php echo $img;?>"  alt="" data-lazyload="<?php echo $img;?>" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
<!-- LAYERS -->
<!-- LAYER NR. 1 -->

    <div class="tp-caption tp-resizeme sft" id="banner-text"
        data-x="15"
      data-y="340"
     
        data-speed="1000"
        data-start="2400"
        data-easing="Power4.easeOut"
        data-endspeed="300"
        data-endeasing="Power1.easeIn"
        data-captionhidden="off"
        ><a href="post.php?pid=<?php echo $rows['id'];?>"><?php echo $rows['title'];?></a>
      </div>  
  
<!-- LAYER NR. 2 -->
    <div class="tp-caption tp-resizeme sft" id="readmore"
      data-x="25"
      data-y="440"
      data-speed="1000"
      data-start="3000"
      data-easing="Power3.easeInOut"
      data-splitin="none"
      data-splitout="none"
      data-elementdelay="0.1"
      data-endelementdelay="0.1"
      data-linktoslide="next"
      ><a href="post.php?pid=<?php echo $rows['id'];?>" class='tr-slider-btn'>READ MORE</a>
    </div>
   </li>
  <?php } }?>
 
 </ul>
<div class="tp-bannertimer"></div>
    </div>
  </div>
  
    

    <!--Banner Ends-->
<div class="container" id="content">

        <br>
        <h2>
            Latest Stories
        </h2>
        <br>
        
        <?php 
             while ($row = mysqli_fetch_assoc($result)){
          ?>
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 try ">
            <div class='pro_part '>
            <?php if(isset($row['recimg'])){
     if ($row['recimg'] == "no") {
                        $img = "img/poa.jpg";
                    } else {
                        $img = "img/" . $row['recimg'];
                    }
            }
                    ?>
                             
      <div class='h1'  style='background-image: url(img/<?php echo $row['recimg'];?>);
         '><a href="post.php?pid=<?php echo $row['id'];?>"></a>
<div class='h2'>
          <div class='fl'><span><a href="category.php?cat=<?php echo str_replace(" & ", "_and_",$row['category']);?>"><?php echo $row['category'];?></a></span></div><br>
          <div class='f2'><span><a href="post.php?pid=<?php echo $row['id'];?>"><?php echo $row['title'];?></a></span></div><br>
          <div class='f3'><span><a href="blogger.php?blogger=<?php echo $row['author'];?>"><?php echo $row['author'];?></a></span></div>
      </div>
       
        <div class='clear'></div>
 
      </div>  
                </div>
               
    </div>
        

            <?php  } ?>
        <br>
        
        <div class="row load">
            <div class="col-xs-12 col-sm-12 col-lg-4 col-md-4 col-lg-offset-4 col-md-offset-4"> 

            <a href="allpost.php" name="count" class="btn btn-lg btn-alert">LOAD MORE</a>



</div>
        </div>
        
      <section id="con">
            <div class="container"  >
                <div class="row " >
                    
                    
                        <div class="mini-posts col-xs-12 col-lg-9 col-md-9 col-sm-9" >
                     
                    <h2 id="heading" >Other Genres</h2>
                        <br>
                        <br>
                        <!-- Mini Post -->

                        <article class="mini-post col-xs-12 col-sm-6 col-lg-6 col-md-6">

                            <header>
                                <h3><a href="category.php?cat=LIFESTYLE" id="genre">Lifestyle</a></h3>
                            </header>
                            <a href="category.php?cat=LIFESTYLE" class="image"><img src="img/lifestyle.png" alt="" /></a>
                        </article>



                        <article class="mini-post col-xs-12 col-sm-6 col-lg-6 col-md-6">

                            <header>
                                <h3><a href="category.php?cat=Entertainment" id="genre">Entertainment</a></h3>
                            </header>
                            <a href="category.php?cat=Entertainment" class="image"><img src="img/enter.jpg" alt="" /></a>
                        </article>



                        <article class="mini-post col-xs-12 col-sm-6 col-lg-6 col-md-6">

                            <header>
                                <h3><a href="category.php?cat=Art,Culture_and_Heritage" id="genre">Art,Culture &amp; Heritage</a></h3>
                            </header>
                            <a href="category.php?cat=Art,Culture_and_Heritage" class="image"><img src="img/art.jpg" alt="" /></a>
                        </article>

                        <article class="mini-post col-xs-12 col-sm-6 col-lg-6 col-md-6">

                            <header>
                                <h3><a href="category.php?cat=Health_and_Wellness" id="genre">Health &amp; Wellness</a></h3>
                            </header>
                            <a href="category.php?cat=Health_and_Wellness" class="image"><img src="img/health.jpg" alt="" /></a>
                        </article>



                        <article class="mini-post col-xs-12 col-sm-6 col-lg-6 col-md-6">

                            <header>
                                <h3><a href="category.php?cat=Food_and_Beverages" id="genre">Food &amp; Beverages</a></h3>
                            </header>
                            <a href="category.php?cat=Food_and_Beverages" class="image"><img src="img/food.jpg" alt="" /></a>
                        </article>

                        <article class="mini-post col-xs-12 col-sm-6 col-lg-6 col-md-6">

                            <header>
                                <h3><a href="category.php?cat=Travel_and_Adventure" id="genre">Travel &amp; Adventure</a></h3>
                            </header>
                            <a href="category.php?cat=Travel_and_Adventure" class="image"><img src="img/travel2.jpg" alt="" /></a>
                        </article>

                    </div>
                        <div id="right-wrapper" class="col-xs-12 col-sm-3 col-lg-3 col-md-3">

                <!-- Posts List -->
                <section id="right" class="row">
                    <div>
                        
                        <ul class="posts col-xs-12 col-sm-12 col-lg-12 col-md-12">

                            <div class="row"><h2 id="heading">Recommended Posts</h2></div>
                            
                            <br>
           
                            <?php 
                            $p=1;

$query="SELECT * FROM posts ORDER BY RAND() LIMIT 4";
$result=mysqli_query($connect,$query);
                            while ($row = mysqli_fetch_assoc($result)){
                            ?>
                                <li style='padding:3px;'>
                                        <article>
                                            <header>
                                                <center>
                                               <h3><a href='post.php?pid=<?php echo $row['id'];?>' id='genre'><?php echo $row['title'];?></a></h3>
                                               <a href="blogger.php?blogger=<?php echo $row['author'];?>"><p><?php echo $row['author'];?></p></a>
                                                </center>                                    
                                                                                           </header>
                                            
                                            <a href='post.php?pid=<?php echo $row['id'];?>' class='image img-responsive'><img src='<?php echo"img/".$row['recimg'];?>' alt='' /></a>
                                        </article>
                                    </li>
                              <?php 
                            }
                        ?>

                        </ul>
                         
        
                    </div>
                </section>


            </div>
                </div>
                
                
            </div>
                </section>

            
        <hr>
<?php include("sliderimg.php"); ?>    

        </div>
    
    <?php include("footer.html");?>
    

    <script src="js/script.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>

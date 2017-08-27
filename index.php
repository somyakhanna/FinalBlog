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
                    
  <?php include("genre.php");?>          
                   
                       
 <?php include("sidebar.php");?>          
                </div>
                
                
            </div>
                </section>

            
        <hr>
<?php include("sliderimg.php"); ?>    

        </div>
    
    <?php include("footer.php");?>
    
    

    <script src="js/script.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>

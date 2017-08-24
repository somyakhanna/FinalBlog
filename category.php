    <?php 
include("connections/connections.php");
if(isset($_GET['cat'])){
  $s=str_replace("_and_", " & ",$_GET['cat']);
 $s1=str_replace(" & ","_and_",$_GET['cat']);
 
$category=mysqli_real_escape_string($connect,$s);
$query="SELECT * FROM posts WHERE category='$s' LIMIT 3";

}





?><!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plan of Action</title>

     
    <!-- Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,300italic,300,100italic,100,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
 
   
  <!-- Font Awesome 4.3.0 -->
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="screen">
  <!-- Bootstrap Core CSS -->



    <link rel="stylesheet" type="text/css"href="css/blog.css">
    <!-- Responsive -->
  <link rel="stylesheet" type="text/css" href="css/responsive.css" media="screen">
    
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
 
</head>

<body>
         <?php include("menu.php");?>
  <div id="category" id="content">

    <br>
    <br>
    <br>
    <!--Banner Ends-->
    <div class="container" id="content">
        
         <br>
        
         <h2><?php echo $s;?></h2>
         
      <h1>Featured Posts</h1>
      
 
     <?php
         
        
$query1="SELECT * FROM posts WHERE category='$category'  order by RAND() LIMIT 3";

$result1=mysqli_query($connect,$query1);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){
          ?>
               
     <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 try">
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
    
<?php 
          

}            ?>


        <div class="row load">
            </div>
            <hr>
                
      <h1>Latest Posts</h1>
      
     <?php
         
        
$query="SELECT * FROM posts WHERE category='$s' LIMIT 6";
$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){
          ?>
              
     <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 try">
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
              
<?php 
          
}            ?>
            
           
        <div class="row load">
            <div class="col-xs-12 col-sm-12 col-lg-4 col-md-4 col-lg-offset-4 col-md-offset-4"> <a href="allpost.php?cat=<?php echo $s1;?>" class="btn btn-lg btn-alert">View All</a></div></div>

            <hr>
          <section id="con">
            <div class="container"  >
                <div class="row " >
                    
                    
                          <?php include("genre.php");?>   
                    <?php include("sidebar.php");?>  
                </div>
                
                
            </div>
                </section>
    </div>


         <?php include("footer.html");?>
                    </div>
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="js/script.js"></script>


    
   

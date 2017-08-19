<?php
 
if(isset($_GET['blogger'])){
  $name=$_GET['blogger'];
  include("connections/connections.php");
 
$s="SELECT * from posts,bloggers where posts.author='$name' AND bloggers.name='$name'";
 
$s1="SELECT * from posts,bloggers where posts.author='$name' AND bloggers.name='$name'";

// $sql="select * from bloggers where name='$name'";
 
 
// $sql1="select * from posts where author='$name'";
// $result1=mysqli_query($connect,$sql1);
 
 
}
 
?>
<!DOCTYPE html>
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
    
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
 
</head>

<body>
<?php include("menu.php");?>
   
    <!--Banner Ends-->
   
       
         <br>
         <br>
       
                   <?php
                   $result=mysqli_query($connect,$s);
       $row=mysqli_fetch_assoc($result);
  if ($row) {
         
     
          ?>
         <br>
         <img class="img-responsive"  style="border:none;"id="circle" src="img/<?php echo $row['image'];?>"/>
                  
         <h2><?php echo $row['name'];?></h2>
         <hr>
         <center>
             <div class="blogger"><p><?php echo $row['description'];?></p></div>
         </center>
             <div class="container" id="content">
        <br>
    <?php }
    else {
      ?>
      <img class="img-responsive" src="img/male.png"/>
          </div>        
         <h2>No INFO</h2>
         <hr>
       
             <div class="container" id="content">
 
    <?php }
 
     ?>
 
 
 
 
 
        <center> <h1>
            RECENT BLOGS
        </h1>
        </center>
        <div id="blogs">
 
 
<?php
$result1=mysqli_query($connect,$s1);
while($rows=mysqli_fetch_assoc($result1)){
 
  ?>
 
          <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 try ">
            <div class='pro_part '>
      <div class='h1' style='background-image: url(img/<?php echo $rows['imgname'];?>);'
><a href="post.php?pid=<?php echo $rows['id'];?>"></a>
<div class='h2'>
          <div class='fl'><span><a href="category.php?cat=<?php echo str_replace(" & ", "_and_",$rows['category']);?>"><?php echo $rows['category'];?></a></span></div><br>
          <div class='f2'><span><a href="post.php?pid=<?php echo $rows['id'];?>"><?php echo $rows['title'];?></a></span></div><br>
          <div class='f3'><span><a href="blogger.php?blogger=<?php echo $rows['author'];?>"><?php echo $rows['author'];?></a></span></div>
      </div>
       
        <div class='clear'></div>
 
      </div>
            </div>
    </div>
    <?php }?>
   
        </div>        
          
         
                    <?php include("sliderimg.php"); ?>
           
                   
           
         </div>
         
  <?php include("footer.html"); ?>
 
 
 
<script src="js/script.js"></script>
    <script src="js/index.js"></script>
    <script src="plugin/jq.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
 

    </html>

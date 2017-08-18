<?php include("menu.php");

include("connections/connections.php");

if (isset($_GET['cat'])) {
    $s=str_replace("_and_", " & ",$_GET['cat']);
$query="SELECT * FROM posts WHERE category='$s'";



}
else{
$result="";

    $query="SELECT * FROM posts ORDER BY id DESC";


}


$result=mysqli_query($connect,$query);


?>

<!DOCTYPE html>
<html>

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
  <!--Banner Ends-->
<div class="container" id="content">
    <br>
        <br>
        <br>
        <h2>
            All Post
        </h2>
        <br>
        
        <?php 
             while ($row = mysqli_fetch_assoc($result)){
          ?>
           
            <div class='pro_part col-xs-12 col-sm-6 col-md-4 col-lg-4'>
            <?php if(isset($row['imgname'])){
                if($row['imgname']=="no")
                    $img="img/poa.jpg";
                else
                $img ="img/".$row['imgname'];
            ?>
      <div class='h1' id='try' style='background-image: url("<?php echo $img;?>");
background-position: center;background-size:cover;'><a href='#'></a><?php }?>
<div class='h2'>
          <div class='fl'><span><a href="category.php?pid=<?php echo $row['id'];?>">  <?php echo $row['category'];?></a></span></div><br>
          <div class='f2'><span><a href="post.php?pid=<?php echo $row['id'];?>">  <?php echo $row['title'];?>.</a></span></div>
          <br>
          <div class='f3'><span><a href="blogger.php?bid=<?php echo $row['id'];?>"> <?php echo $row['author'];?></a></span></div>
      </div>
       
        <div class='clear'></div>
      </div>
    </div>
        

<?php  } ?>
</div>

 <?php include("footer.html");?>
    

    <script src="js/script.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  
</body>

</html>
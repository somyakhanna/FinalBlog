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
           
          <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 try">
            <div class='pro_part '>
            <?php if(isset($row['imgname'])){
     if ($row['imgname'] == "no") {
                        $img = "img/poa.jpg";
                    } else {
                        $img = "img/" . $row['imgname'];
                    }
            }
                    ?>
                             
      <div class='h1'  style='background-image: url(img/<?php echo $row['imgname'];?>);
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
   <section id="con">
            <div class="container"  >
                <div class="row " >
                    
                    
                        <div class="mini-posts col-xs-12 col-lg-9 col-md-9 col-sm-9" >
                     
                        <h1 id="heading" >Browse Our Other Genres</h1>
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

                            <h1 id="heading">Recommended Posts</h1>
                            
                            <br>
           
                            <?php 
                            $p=1;

$query="SELECT * FROM posts LIMIT 4";
$result=mysqli_query($connect,$query);
                            while ($row = mysqli_fetch_assoc($result)){
                            ?>
                                <li style='padding:5px;'>
                                        <article>
                                            <header>
                                                <center>
                                               <h3><a href='post.php?pid=<?php echo $row['id'];?>' id='genre'><?php echo $row['title'];?></a></h3>
                                               <a href="blogger.php?blogger=<?php echo $row['author'];?>"><p><?php echo $row['author'];?></p></a>
                                                </center>                                    
                                                                                           </header>
                                            
                                            <a href='post.php?pid=<?php echo $row['id'];?>' class='image img-responsive'><img src='<?php echo"img/".$row['imgname'];?>' alt='' /></a>
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

</div>

 <?php include("footer.html");?>
    

    <script src="js/script.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  
</body>

</html>
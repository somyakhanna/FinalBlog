<?php
    include("connections/connections.php");
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
  <?php include("menu.php");?>
<div class="container" id="content">
    <br>
        <br>
        <br>
        <h2>
           Search Result
        </h2>
        <br>
        

<?php
    $query = $_GET['query']; 
     
    $min_length = 2;
    
    if(strlen($query) >= $min_length){
         
        $query = htmlspecialchars($query); 
         
        //$query = mysqli_real_escape_string($query);
        
         
        $raw_results = mysqli_query($connect,"SELECT * FROM posts
            WHERE (`title` LIKE '%".$query."%') OR (`category` LIKE '%".$query."%') OR (`body` LIKE '%".$query."%') OR (`author` LIKE '%".$query."%')") or die(mysqli_error());
             
       
         
        if(mysqli_num_rows($raw_results) > 0){ 
            while($results = mysqli_fetch_array($raw_results)){
                  ?>

              <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 try">
            <div class='pro_part '>
            <?php if(isset($results['recimg'])){
     if ($results['recimg'] == "no") {
                        $img = "img/poa.jpg";
                    } else {
                        $img = "img/" . $results['recimg'];
                    }
            }
                    ?>
                 <div class='h1'  style='background-image: url(img/<?php echo $results['recimg'];?>);'><a href="post.php?pid=<?php echo $results['id'];?>"></a>
     <div class='h2'>
          <div class='fl'><a href="category.php?cat=<?php echo str_replace(" & ", "_and_",$results['category']);?>"><?php echo $results['category'];?></a></div><br>
          <div class='f2'><a href="post.php?pid=<?php echo $results['id'];?>"><?php echo $results['title'];?></a></div><br>
          <div class='f3'><a href="blogger.php?blogger=<?php echo $results['author'];?>"><?php echo $results['author'];?></a></div>
      </div>
       
        <div class='clear'></div>
 
      </div>  
                </div>
               
    </div>
        

    <?php  
          }
             
        }
        else{ 
            echo "No results";
        }
         
    }
    else{ 
        echo "Minimum length is ".$min_length;
    }
?>



       
                             
     
   <section id="con">
            <div class="container"  >
                <div class="row" >
                    
                    
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
                        <?php include("sidebar.php");?>  
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
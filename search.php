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



      
</div> 
                             
     
   <section id="con">
            <div class="container"  >
                <div class="row" >
                    
                    
                        <?php include("genre.php");?> 
                        <?php include("sidebar.php");?>  
                </div>
                
                
            </div>
                </section>


 <?php include("footer.php");?>


    <script src="js/script.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  
</body>

</html>
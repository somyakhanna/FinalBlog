<?php 

include("connections/connections.php");
if(isset($_GET['pid'])){
 $postid=$_GET['pid'];

$query="SELECT * FROM posts WHERE id='$postid'";
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

     <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,300italic,300,100italic,100,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
 
    <!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css" href="css/main.css" media="screen">
    <link href="css/blog.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<script>
function Change()
{
 document.getElementById('like').innerHTML = 'Liked';
 document.getElementById('btn-like').setAttribute("background-color", "red");
}</script>
</head>

<body>
<?php include("menu.php");?>
    <!-- Navigation -->
    <!-- Page Header -->
     <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
    <div class="container" id="maincon">
    <?php if(isset($row['imgname'])){
                if($row['imgname']=="no")
                    $img="img/poa.jpg";
                else
                $img ="img/".$row['imgname'];
            ?>
        <div id="postbackground" style='background-image: url("<?php echo $img;?>")'>
        <?php } }?>
        <br>
        <br>
        <div class="container post-post">
            <div class="row">
                <div class="col-xs-11 col-lg-9 col-md-9 col-sm-9">
                    <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);

//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
                    
                    <a href="#" id="post-heading"><?php echo $row['title'];?></a>
                   
            </div>
        </div>
    </div>
    </div>
      <br>
    <div class="blog">
        <article>
       
            <div class="row">
                <p >Posted by <a href="#"><?php echo $row['author'];?></a> on <?php echo $row['date'];?></p>
<br>
            </div>
            <div class="row">

        </div>
            <?php }?>
           

                                <div class="row">
                                    <br>              

    <!-- Facebook -->
   
    <div class="col-xs-12 col-lg-2 col-md-2 col-sm-3"><div class="fb-share-button" data-href="http://planofaction.in/blog/post.php?pid=" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fplanofaction.in%2Fblog%2Fpost.php%3Fpid&amp;src=sdkpreparse"><button  type="button" class="btn btn-facebook btn-lg"><i class="fa fa-facebook fa-2"> Facebook</i></button></a><!-- Twitter -->
    
       </div></div>
      
    <div class="col-xs-12 col-lg-2 col-md-2 col-sm-3">
    <a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button type="button" class="btn btn-twitter btn-lg"><i class="fa fa-twitter fa-2"> Twitter</i></button></a><!-- Twitter -->
    </div>
   
    <div class="col-xs-12 col-lg-2 col-md-2 col-sm-3">
    <a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button  type="button" class="btn btn-pinterest btn-lg"><i class="fa fa-pinterest fa-2"> Pinterest</i></button></a><!-- Twitter -->
    </div>
    </div>

                        <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
        <br>    <div class="row col-xs-12 col-lg-9 col-md-9 col-sm-9">
           
<?php echo $row['body'];}?>
        </div>
             <div id="right-wrapper" class="col-xs-12 col-sm-3 col-lg-3 col-md-3">

                <!-- Posts List -->
                <section id="right" class="row">
                    <div>
                        
                        <ul class="posts col-xs-12 col-sm-12 col-lg-12 col-md-12">

                            <h1 id="heading">Most Liked Posts</h1>
                            
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
           

    </article>
    </div>
    <hr>
    <br>
   
    
    
             
    
    <br>
         
   
    <?php include("footer.html");?>
    
    <!-- Bootstrap core JavaScript -->

    
    <script src="vendor/tether/tether.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>
    <script src="js/script.js"></script>
</body>

</html>
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




<?php 
$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row3 = mysqli_fetch_assoc($result1)){?>

<meta property="og:url"                content="http://www.nytimes.com/2015/02/19/arts/international/when-great-minds-dont-think-alike.html" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="When Great Minds Don’t Think Alike" />
<meta property="og:description"        content="How much does culture influence creative thinking?" />
<meta property="og:image"              content="http://static01.nyt.com/images/2015/02/19/arts/international/19iht-btnumbers19A/19iht-btnumbers19A-facebookJumbo-v2.jpg" />


<?php }?>

    <title>Plan of Action</title>

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
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.10&appId=1832248837104350";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.10&appId=1832248837104350";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>  
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
        
        <br>

<iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&width=100&layout=standard&action=like&size=small&show_faces=true&share=true&height=80&appId=1832248837104350" width="100" height="80" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>


<br>


        <br>
<?php } }?>
        <div class="container post-post">
            <div class="row">
                <div class="col-xs-11 col-lg-10 col-md-10 col-sm-11">
                    <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);

//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
                    
                    <a href="#" id="post-heading"><?php echo $row['title'];?></a>
                    <br>
                    <h5><a href="index.php">HOME</a>/<a href="category.php"><?php echo $row['category'];?></a></h5>
            </div>
        </div>
    </div>
    </div>
      <br>
    <div class="blog">
        <article>
       
            <div class="row">
                <p style="margin-left:1.5%">Posted by <a href="#"><?php echo $row['author'];?></a> on <?php echo $row['date'];?></p>
<br>
            </div>
            <div class="row">
 <div class="col-xs-12 col-lg-3 col-md-3 col-sm-12">
     <a href="#" target="" onclick="Change();" ><button type="button" class="btn btn-like btn-md" id="btn-like"><i class="fa fa-thumbs-up " id="thumbs"> <b id="like">Like</b></i><b id="count"></b></button></a><!-- Twitter -->
    </div>
        </div>
                                <div class="row">
                                    <br>              

    <!-- Facebook -->
   
    <div class="col-xs-12 col-lg-3 col-md-3 col-sm-12"><div class="fb-share-button" data-href="http://planofaction.in/post.php?pid=<?php echo $row['id'];?>" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fplanofaction.in%2Fblog%2Fpost.php%3Fpid&amp;src=sdkpreparse"><button  type="button" class="btn btn-facebook btn-lg"><i class="fa fa-facebook fa-2"> Share on Facebook</i></button></a><!-- Twitter -->
    
       </div></div>
      
    <div class="col-xs-12 col-lg-3 col-md-3 col-sm-12">
    <a href="https://twitter.com/share?url=http://somyakhanna.16mb.com/BlogPoa/post.php?pid=<?php echo $row['id'];?>"&amp; target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button type="button" class="btn btn-twitter btn-lg"><i class="fa fa-twitter fa-2"> Share on Twitter</i></button></a><!-- Twitter -->
    </div>
   
<a href="https://twitter.com/share" class="twitter-share-button" data-hashtags="poa" data-show-count="false">Tweet</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


    <div class="col-xs-12 col-lg-3 col-md-3 col-sm-12">
    <a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button  type="button" class="btn btn-pinterest btn-lg"><i class="fa fa-pinterest fa-2"> Share on Pinterest</i></button></a><!-- Twitter -->
    </div>
    </div>
 <?php }?>
                        <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
        <br>    <div class="row col-xs-12 col-lg-12 col-md-12 col-sm-12">
           
<?php echo $row['body'];?>

               </div>
           

    </article>
    </div>
    <hr>
    <br>
   
    
    
<div class="fb-comments" data-href="http://somyakhanna.16mb.com/BlogPoa/post.php?pid=<?php echo $row['id'];?>" data-width="200" data-numposts="10"></div>    
    <br>
         <?php }?>

             </div>
    <!-- Posts List -->
                <section id="right" class="row">
                    <div>
                        <br>
                        <ul class="posts col-xs-12 col-sm-12 col-lg-12 col-md-12">

                            <h1 id="heading">Most Liked Posts</h1>
                            
           
           
                            <?php 
                            $p=1;

$query="SELECT * FROM posts LIMIT 4";
$result=mysqli_query($connect,$query);
                            while ($row = mysqli_fetch_assoc($result)){
                            ?>
                                <li style='padding:5px;'>
                                        <article>
                                            <header>

                                                <h3><a href='post.php?pid=<?php echo $row['id'];?>' id='genre'><?php echo $row['title'];?></a></h3>
                                                <a href="blogger.php"><p><?php echo $row['author'];?></p></a>
                                                                                             
                                                 <time class='published'><a href="category.php"><?php echo $row['category'];?></a></time>
<!-- d6b50480983b95cf39058442325e382bbaf57ae4-->
                                            </header>
                                            
                                            <a href='post.php?pid=<?php echo $row['id'];?>' class='image'><img src='<?php echo"img/".$row['imgname'];?>' alt='' /></a>
                                        </article>
                                    </li>
                              <?php 
                            }
                        ?>

                        </ul>
                         <div class="row load">
            <div class="col-xs-12 col-sm-12 col-lg-4 col-md-4 col-lg-offset-4 col-md-offset-4"> 

            <a href="index.php" name="count" class="btn btn-lg btn-alert">View More</a>



</div>
        </div>
                    </div>
                </section>

</div>
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
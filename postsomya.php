<?php 

include("connections/connections.php");
if(isset($_GET['pid'])){
 $postid=$_GET['pid'];

$query="SELECT * FROM posts WHERE id='$postid'";
}

$result3=mysqli_query($connect,$query);
//echo $result1;
        $row3 = mysqli_fetch_assoc($result3);

        if(isset($row3['imgname'])){
                if($row3['imgname']=="no"){
        $img="img/poa.jpg";}
                else{
                $img ="img/".$row3['imgname'];
        }}
        ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
   <meta property="og:url"                content="http://somyakhanna.16mb.com/BlogPoa/post.php?pid=<?php echo $row3['id'];?>" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="<?php echo $row3['title'];?>" />
<meta property="og:description"        content="<?php echo "";?>" />
<meta property="og:image"              content="<?php echo "http://somyakhanna.16mb.com/BlogPoa/img/".$row3['imgname'];?>" />
    <meta property="fb:app_id" content="1832248837104350" />
<title>Plan of Action</title>

     <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,300italic,300,100italic,100,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
 
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" type="text/css" href="css/main.css" media="screen">
<link href="css/blog.css" rel="stylesheet" media="screen">
<!-- Responsive -->
  <link rel="stylesheet" type="text/css" href="css/responsive.css" media="screen">
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
<?php include("menu.php");?>
    <!-- Navigation -->
    <!-- Page Header -->
     <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
    <div class="container-fluid">
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
                <div class="col-xs-11 col-lg-9 col-md-9 col-sm-8">
                    <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);

//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


$authorname=$row['author'];


$query1="SELECT * FROM bloggers WHERE name='$authorname'";

$result1=mysqli_query($connect,$query1);


          ?>
                    
                    <a href="#" id="post-heading"><?php echo $row['title'];?></a>
                   


            </div>      
        </div>
    </div>
    </div>
    </div>
      
      <div class="container-fluid" id="maincon">
    <div class="blog">
               
            <div class="row">
                
               <div class="author-info">
                   <div class="author-image pull-left">
                       <a href="blogger.php?blogger=<?php echo $row['author'];?>">
                       <?php while ($row23 = mysqli_fetch_assoc($result1)){?>
                           <img alt="<?php echo $row['author'];?>" src="img/<?php echo $row23['image'];?>" class="img-circle" ></a></div>
                           <?php }?>
                           <div class="pull-left" >
                               <span class="author-name text-uppercase" >
                                   <a href="blogger.php?blogger=<?php echo $row['author'];?>" >
                                       <span><?php echo $row['author'];?></span></a>
                                   &nbsp;<label class="piping" >&nbsp;|</label>
                               </span>
                               <span class="published-time publish-time text-capitalize" >
                                   <time > <?php echo $row['date'];?></time></span>
                           </div>
                   <div class="clearfix" >
                       
                   </div></div> 
               
            </div>
            <div class="row">

        </div>
            
       
              <div class="row" id="buttonslaptop">
                                               

    <!-- Facebook -->
   
    <div class="col-xs-12 col-lg-1 col-md-1 col-sm-1">
   <a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fsomyakhanna.16mb.com/BlogPoa/post.php%3Fpid=<?php echo $row['id'];?>&amp;src=sdkpreparse">
                
             <button  type="button" data-href="http://planofaction.in/post.php?pid=<?php echo $row['id'];?>" class="btn btn-facebook btn-lg"><i class="fa fa-facebook fa-2"> </i></button></a><!-- Twitter -->
        </div>
      
    <div class="col-xs-12 col-lg-1 col-md-1 col-sm-1">
    <a href="https://twitter.com/share?url=http://planofaction.in/post.php?pid=<?php echo $row['id'];?>&amp;text=Plan%20OF%20Action&amp;hashtags=poa" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button type="button" class="btn btn-twitter btn-lg"><i class="fa fa-twitter fa-2"></i></button></a><!-- Twitter -->
    </div>
   
    <div class="col-xs-12 col-lg-1 col-md-1 col-sm-1">
    <a href="http://pinterest.com/pin/create/button/?url=/node/[nid]&description=[title]" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button  type="button" class="btn btn-pinterest btn-lg"><i class="fa fa-pinterest fa-2"> </i></button></a><!-- Twitter -->
    </div>





    
    </div>
        <br>
         <div class="row" id="buttonsmobile">
                                                 

    <!-- Facebook -->
   
    <div class="col-xs-2 col-lg-2 col-md-2 col-sm-2">
        
        <a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fsomyakhanna.16mb.com/BlogPoa/post.php%3Fpid=<?php echo $row['id'];?>&amp;src=sdkpreparse">
       
           <button  type="button" data-href="http://somyakhanna.16mb.com/BlogPoa/post.php?pid=<?php echo $row['id'];?>" class="btn btn-facebook btn-lg"><i class="fa fa-facebook fa-2"> </i></button></a><!-- Twitter -->
            
       </div>
      
    <div class="col-xs-2 col-lg-2 col-md-2 col-sm-2">
    <a href="https://twitter.com/share?url=https//planofaction.in/post.php?pid=<?php echo $row['id'];?>&amp;text=Plan%20OF%20Action&amp;hashtags=poa" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button type="button" class="btn btn-twitter btn-lg"><i class="fa fa-twitter fa-2"> </i></button></a><!-- Twitter -->
    </div>
   
    <div class="col-xs-2 col-lg-2 col-md-2 col-sm-2">
    <a href="http://pinterest.com/pin/create/button/?url=/node/[nid]&description=[title]" target="_blank" onclick="window.open(this.href,'targetWindow','toolbar=no,location=0,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=230'); return false"><button  type="button" class="btn btn-pinterest btn-lg"><i class="fa fa-pinterest fa-2"> </i></button></a><!-- Twitter -->
    </div>
    </div>
<?php }?>
                        <?php 
         
         
//$query="SELECT * FROM posts WHERE category='$category'";

$result1=mysqli_query($connect,$query);
//echo $result1;
        while ($row = mysqli_fetch_assoc($result1)){


          ?>
        <br>    <div class="container-fluid col-xs-12 col-lg-9 col-md-9 col-sm-8 " id="blog_text" >
           
<?php echo $row['body'];?>

<div class="fb-comments" data-href="http://localhost/FinalBlog/post.php?pid=<?php echo $row['id'];?>" data-width="100%" data-numposts="10"></div>

   
<?php }?>
        </div>
        
        <div id="right-wrapper"  class="col-xs-12 col-sm-4 col-lg-3 col-md-3">

                <!-- Posts List -->
                <section id="right" class="row">
                    <div>
                        
                        <ul class="posts col-xs-12 col-sm-12 col-lg-12 col-md-12">

                            <div class="row"><h2 id="heading">Recommended Posts</h2></div>
                            
                            <br>
           
                            <?php 
                            $p=1;

$query="SELECT * FROM posts Where id NOT IN($postid) ORDER BY RAND() LIMIT 4";
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
<br><br><br>                                
<!-- Grid column -->
<div class="col-md-12 mb-r">
    <a href="index.php?menux=inap&&menu=rawat"><button type="button" class="btn btn-rounded btn-amber"><i class="fa fa-users pr-2" aria-hidden="true"></i>Inap</button></a>
    <a href="index.php?menux=jalan&&menu=rawat"><button type="button" class="btn btn-rounded btn-brown"><i class="fa fa-users  pr-2" aria-hidden="true"></i>Jalan</button></a>
</div>
<!-- Grid column -->

<?php

    include ("config.php");
    $var=$_GET['menux'];

    if ($var=="inap")
    {
        include("inap.php");
    }
    else if($var=="jalan")
    {
        include("jalan.php");
    }
    else
    {
        include("inap.php");
    }
?>

<h1><?=$judul ?></h1>
<!-- HTML -->
<div id="chartdiv"></div>

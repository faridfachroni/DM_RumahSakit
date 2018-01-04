<br><br><br>                                
<!-- Grid column -->
<div class="col-md-12 mb-r">
    <a href="index.php?me=hiv&&menu=penyakit"><button type="button" class="btn btn-rounded btn-amber"><i class="fa fa-users pr-2" aria-hidden="true"></i>HIV/AIDS</button></a>
    <a href="index.php?me=dbd&&menu=penyakit"><button type="button" class="btn btn-rounded btn-brown"><i class="fa fa-users  pr-2" aria-hidden="true"></i>DBD</button></a>
    <a href="index.php?me=sma&&menu=penyakit"><button type="button" class="btn btn-rounded btn-mdb"><i class="fa fa-users pr-2" aria-hidden="true"></i>TBC</button></a>
</div>
<!-- Grid column -->

<?php

    include ("config.php");
    $var=$_GET['me'];

    if ($var=="hiv")
    {
        include("hiv.php");
    }
    else if($var=="dbd")
    {
        include("dbd.php");
    }
    else if($var=="tbc")
    {
        include("tbc.php");
    }
    else
    {
        include("hiv.php");
    }

?>

<h1><?=$judul ?></h1>
<!-- HTML -->
<div id="chartdiv"></div>

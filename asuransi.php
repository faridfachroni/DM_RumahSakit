<br><br><br>                                
<!-- Grid column -->
<div class="col-md-12 mb-r">
    <a href="index.php?men=bpjs&&menu=asuransi"><button type="button" class="btn btn-rounded btn-amber"><i class="fa fa-users pr-2" aria-hidden="true"></i>BPJS</button></a>
    <a href="index.php?men=alience&&menu=asuransi"><button type="button" class="btn btn-rounded btn-brown"><i class="fa fa-users  pr-2" aria-hidden="true"></i>ALIENCE</button></a>
    <a href="index.php?men=axa&&menu=asuransi"><button type="button" class="btn btn-rounded btn-mdb"><i class="fa fa-users pr-2" aria-hidden="true"></i>AXA MANDIRI</button></a>
</div>
<!-- Grid column -->

<?php

    include ("config.php");
    $var=$_GET['men'];

    if ($var=="bpjs")
    {
        include("bpjs.php");
    }
    else if($var=="alience")
    {
        include("alience.php");
    }
    else if($var=="axa")
    {
        include("axa.php");
    }
    else
    {
        include("bpjs.php");
    }

?>

<h1><?=$judul ?></h1>
<!-- HTML -->
<div id="chartdiv"></div>

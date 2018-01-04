     <script>
        var chart = AmCharts.makeChart( "chartdiv", {
            "type": "serial",
            "theme": "light",
            "dataProvider": [ {
                    "country": "2015",
                    "visits": <?=$lima ?>
                }, {
                    "country": "2016",
                    "visits": <?=$enam ?>
                }, {
                    "country": "2017",
                    "visits": <?=$tuju ?>
                } ],
                "valueAxes": [ {
                "gridColor": "#FFFFFF",
                "gridAlpha": 0.2,
                "dashLength": 0
             } ],
            "gridAboveGraphs": true,
            "startDuration": 1,
            "graphs": [ {
                "balloonText": "[[category]]: <b>[[value]] <?=$ket ?></b>",
                "fillAlphas": 0.8,
                "lineAlpha": 0.2,
                "type": "column",
                "valueField": "visits"
            } ],
            "chartCursor": {
                "categoryBalloonEnabled": false,
                "cursorAlpha": 0,
                "zoomable": false
            },
            "categoryField": "country",
            "categoryAxis": {
                "gridPosition": "start",
                "gridAlpha": 0,
                "tickPosition": "start",
                "tickLength": 20
            },
            "export": {
                "enabled": true
            }
        } );
    </script>
/** Library to build customized graphs **/

/**
 * Build a new graph bars bottoms in divName div 
 * 
 * @param bar               The data to build the bar bottoms graph in format [value,...]
 * @param ticks             The label of the line graph data in format [key,...]
 * @param color				The color sequence to paint the bar in format ['color haxe value',...]
 * @param divName           The div name to build the graph
 * @param formatStringValue Optional. String to format the labels in y axis or null if the label haven't to be formated
 * @param callBack          Optional. A function to be called when a graph bar was clicked or null if doesn't necessary
 * @param graphsArray       Optional. A array to add the new graph to future customizations, or null if doesn't necessary
 * @param minValue          Optional. Minimun value to use on the y axis, or null to use an auto calculated default value
 * @param maxValue          Optional. Maximun value to use on the y axis, or null to use an auto calculated default value
 * @param backgroundColor   Optional. The graph background hex color ('#000000'). Default value is set to 'transparent'
 */
function graphBar(bar, ticks, color, divName, formatStringValue, callBack, graphsArray, minValue, maxValue, backgroundColor) {
	
    var graphBar;
    var hasValues = false;
    if (bar == null || bar == undefined || bar.length == 0) {
        graphBar = [null];
    } else {
        graphBar = bar;
        hasValues = true;
    }

	var yaxisOptions = {
        rendererOptions: {
            forceTickAt0: true
        },
        showTicks: hasValues,
        pad: 0
    };
    if (minValue != undefined && minValue != null) {
        yaxisOptions.min = minValue;
    }
    if (maxValue != undefined && maxValue != null) {
        yaxisOptions.max = maxValue;
    }
	if(formatStringValue != undefined && formatStringValue != null)
		yaxisOptions.tickOptions = { formatString: formatStringValue }
	
    var gridOptions = {
        shadow: false,
        borderWidth: 0,
        backgroundColor: 'transparent',
        gridLineColor: '#172032',
        borderColor: 'transparent',
        drawBorder: false,
        shadowColor: 'transparent'
    }
    if (backgroundColor != null && backgroundColor != undefined && backgroundColor != "") {
        gridOptions.backgroundColor = backgroundColor;
    }

	var plot = $.jqplot(divName, [ graphBar ], {
        // Turns on animatino for all series in this plot.
        animate      : true,
        // Will animate plot on calls to plot1.replot({resetAxes:true})
        animateReplot: true,
        series:[
            {
                renderer: $.jqplot.BarRenderer,
                showHighlight: true,
                rendererOptions: {
                    barMargin: 30,
                    highlightMouseOver: false
                }
            }
        ],
        seriesColors: color,
        grid: gridOptions,
        axesDefaults: {
	        tickRenderer: $.jqplot.CanvasAxisTickRenderer,
            showTickMarks:false,
            rendererOptions: {
                drawBaseline: false
            }
	    },
	    axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: ticks,
                showTicks:true,
                tickOptions:{
                    showGridline: false
                }
            },
            yaxis: yaxisOptions
        },
        highlighter: {
            show: true, 
            showTooltip: true,
            tooltipAxes: 'y',
            sizeAdjust: 0, 
            tooltipLocation : 'ne',
            tooltipContentEditor: tooltipContentEditor
        }
    });
	
    function tooltipContentEditor(str, seriesIndex, pointIndex, plot) {
        // display series_label, x-axis_tick, y-axis value
        return plot.axes.xaxis.ticks[pointIndex] + ", " + str;
    }

    $('#' + divName).bind('jqplotDataClick', 
        function (ev, seriesIndex, pointIndex, data) {
            if(seriesIndex == 0)
                if(callBack != undefined && callBack != null)
                    callBack(pointIndex);
        }
    );

	if(graphsArray != undefined && graphsArray != null)
		graphsArray.push(plot);
}


function graphDonut(donut, ticks, color, divName, graphsArray, donutDiameter, donutThickness, backgroundColor) {
    
    var graphDonut;
    var hasValues = false;
    if (donut == null || donut == undefined || donut.length == 0) {
        graphDonut = [null];
    } else {
        graphDonut = donut;
        hasValues = true;
    }

    var yaxisOptions = {
        rendererOptions: {
            forceTickAt0: true
        },
        showTicks: hasValues,
        pad: 0
    };

    var gridOptions = {
        shadow: false,
        borderWidth: 0,
        backgroundColor: 'transparent',
        gridLineColor: '#172032',
        borderColor: 'transparent',
        drawBorder: false,
        shadowColor: 'transparent'
    }
    if (backgroundColor != null && backgroundColor != undefined && backgroundColor != "") {
        gridOptions.backgroundColor = backgroundColor;
    }

    var plot = $.jqplot(divName, [ graphDonut ], {
        // Turns on animatino for all series in this plot.
        animate      : true,
        // Will animate plot on calls to plot1.replot({resetAxes:true})
        animateReplot: true,
        seriesColors: color,
        grid: gridOptions,
        axesDefaults: {
            tickRenderer: $.jqplot.CanvasAxisTickRenderer,
            showTickMarks:false,
            rendererOptions: {
                drawBaseline: false
            }
        },
        seriesDefaults: {
            // make this a donut chart.
            renderer:$.jqplot.DonutRenderer,
            rendererOptions:{
                // Pies and donuts can start at any arbitrary angle.
                startAngle: -90,
                showDataLabels: false,
                diameter: donutDiameter,
                thickness: donutThickness,
                padding: 0
            }
        },
        highlighter: { show: false }
    });
    
    if(graphsArray != undefined && graphsArray != null)
        graphsArray.push(plot);
}

/********** PRIVATE METHODS **********/

/**
 * Build a new graph line series in divName div 
 * 
 * @param line              The data to build the line graph in format [value,...]
 * @param ticks             The label of the line graph data in format [key,...]
 * @param divName           The div name to build the graph
 * @param isFill            Inform if have or not to create the fill area under the line
 * @param formatStringValue Optional. String to format the labels in y axis or null if the label haven't to be formated
 * @param graphsArray       Optional. A array to add the new graph to future customizations, or null if doesn't necessary
 * @param minValue          Optional. Minimun value to use on the y axis, or null to use an auto calculated default value
 * @param maxValue          Optional. Maximun value to use on the y axis, or null to use an auto calculated default value
 * @param backgroundColor   Optional. The graph background hex color ('#000000'). Default value is set to 'transparent'
 */
function _performCreateGraphLine(line, ticks, divName, isFill, formatStringValue, graphsArray, minValue, maxValue, backgroundColor, lineColor) {

    var graphLine;
    var hasValues = false;
    if (line == null || line == undefined || line.length == 0) {
        graphLine = [null];
    } else {
        graphLine = line;
        hasValues = true;
    }

	var yaxisOptions = {
        rendererOptions: {
            forceTickAt0: true
        },
        showTicks: hasValues,
        pad: 0
    };
    if (minValue != undefined && minValue != null) {
        yaxisOptions.min = minValue;
    }
    if (maxValue != undefined && maxValue != null) {
        yaxisOptions.max = maxValue;
    }
	if(formatStringValue != undefined && formatStringValue != null)
		yaxisOptions.tickOptions = { formatString: formatStringValue }
	
    var gridOptions = {
        shadow: false,
        borderWidth: 0,
        backgroundColor: 'transparent',
        gridLineColor: '#172032',
        borderColor: 'transparent',
        drawBorder: false,
        shadowColor: 'transparent'
    }
    if (backgroundColor != null && backgroundColor != undefined && backgroundColor != "") {
        gridOptions.backgroundColor = backgroundColor;
    }
    var lineFillColor;
    if (lineColor != null && lineColor != undefined && lineColor != "") {
        lineFillColor = convertHex(lineColor, 0.2);
    }

	var plot = $.jqplot(divName, [ graphLine ], {
		// Turns on animatino for all series in this plot.
        animate      : true,
        // Will animate plot on calls to plot1.replot({resetAxes:true})
        animateReplot: true,
        seriesDefaults: {
            renderer: $.jqplot.LineRenderer,
            fill: isFill,
            showMarker: !isFill
        },
        series: [
            {
                color: lineColor,
                fillColor: lineFillColor,
                fillAndStroke: true
            }
        ],
        grid: gridOptions,
        axesDefaults: {
            tickRenderer: $.jqplot.CanvasAxisTickRenderer,
            showTickMarks:false,
            rendererOptions: {
                drawBaseline: false
            }
        },
        axes: {
            xaxis: {
                pad: 1,
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: ticks,
                showTicks:true,
                tickOptions:{
                    showGridline: false
                }
            },
            yaxis: yaxisOptions
        },
        highlighter: {
            show: true, 
            showTooltip: true,
            tooltipAxes: 'y',
            sizeAdjust: 0, 
            tooltipLocation : 'ne'
        }
	});
	
	if(graphsArray != undefined && graphsArray != null)
		graphsArray.push(plot);
}
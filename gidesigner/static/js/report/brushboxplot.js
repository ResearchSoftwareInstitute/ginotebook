//initialize the dimensions
var margin = {top: 10, right: 10, bottom: 10, left: 10},
    width = 400 - margin.left - margin.right,
    height = 100 - margin.top - margin.bottom,
    padding = 20
    midline = (height - padding) / 2;

//initialize the x scale
var xScale = d3.scale.linear()
               .range([padding, width - padding]);  

//initialize the x axis
var xAxis = d3.svg.axis()
              .scale(xScale)
              .orient("bottom");

var parseDate = d3.time.format("%b %Y").parse;

//initialize the time scale
var timeScale = d3.scale.linear()
                  .range([padding / 2, width - padding / 2]);

//initialize boxplot statistics
var data = [],
    outliers = [],
    minVal = Infinity,
    lowerWhisker = Infinity,
    q1Val = Infinity,
    medianVal = 0,
    q3Val = -Infinity,
    iqr = 0,
    upperWhisker = -Infinity,
    maxVal = -Infinity;

// initialize time stats
var yearArr = [],
    dates = []
    selectedYear = 0;

d3.csv("datadate.csv", type, function(error,csv) { // load the data
  
  data = csv.map(function(d) {
    return d.value;
  });

  data = data.sort(d3.ascending);

  //calculate the boxplot statistics
  minVal = data[0],
  q1Val = d3.quantile(data, .25),
  medianVal = d3.quantile(data, .5),
  q3Val = d3.quantile(data, .75),
  iqr = q3Val - q1Val,
  maxVal = data[data.length - 1];

  var index = 0;

  //search for the lower whisker, the mininmum value within q1Val - 1.5*iqr
  while (index < data.length && lowerWhisker == Infinity) {

    if (data[index] >= (q1Val - 1.5*iqr))
      lowerWhisker = data[index];
    else
      outliers.push(data[index]);
    index++;
  }

  index = data.length-1; // reset index to end of array

  //search for the upper whisker, the maximum value within q1Val + 1.5*iqr
  while (index >= 0 && upperWhisker == -Infinity) {

    if (data[index] <= (q3Val + 1.5*iqr))
      upperWhisker = data[index];
    else
      outliers.push(data[index]);
    index--;
  }

  dates = csv.map(function(d) {
    return d.date;
  });

  for (i = 0; i < dates.length; i++) {

    // get year
    var year = parseDate(dates[i]).getMonth();

    if (!(yearArr.indexOf(year) > -1))
      yearArr.push(year);
  }

  yearArr = yearArr.sort(d3.ascending);
 
  //map the domain to the x scale +10%
  xScale.domain([0,maxVal*1.10]);

  //map the time scale
  timeScale.domain([yearArr[0],yearArr[yearArr.length-1]+1]);

 
  var svg = d3.select("body")
              .append("svg")
              .attr("width", width)
              .attr("height", height);

  //append the axis
  svg.append("g")
     .attr("class", "axis")
     .attr("transform", "translate(0, " + (height - padding) + ")")
     .call(xAxis);

  //draw verical line for lowerWhisker
  svg.append("line")
     .attr("x1", xScale(lowerWhisker))
     .attr("x2", xScale(lowerWhisker))
     .attr("y1", midline - 15)
     .attr("y2", midline + 15);

  //draw vertical line for upperWhisker
  svg.append("line")
     .attr("x1", xScale(upperWhisker))
     .attr("x2", xScale(upperWhisker))
     .attr("y1", midline - 15)
     .attr("y2", midline + 15);

  //draw horizontal line from lowerWhisker to upperWhisker
  svg.append("line")
     .attr("x1",  xScale(lowerWhisker))
     .attr("x2",  xScale(upperWhisker))
     .attr("y1", midline)
     .attr("y2", midline);

  //draw rect for iqr
  svg.append("rect")
     .attr("x", xScale(q1Val))
     .attr("y", padding-5)
     .attr("width", xScale(iqr) - padding)
     .attr("height", 30);

  //draw vertical line at median
  svg.append("line")
     .attr("x1", xScale(medianVal))
     .attr("x2", xScale(medianVal))
     .attr("y1", midline - 15)
     .attr("y2", midline + 15);

  //draw data as points
  svg.append("g")
     .selectAll("circle")
     .data(csv)     
     .enter()
     .append("circle")
     //double point size for outliers
     .attr("r", function(d) {
      if (d.value < 118 || d.value > 9)
        return 4;
      else 
        return 2;
     })
     .attr("class", function(d) {
      return "year" + parseDate(d.date).getMonth();
     })     
     .attr("cy", function(d) { // jitter the points to reduce overplotting
      return random_jitter();
     }) 
     .attr("cx", function(d) {
      return xScale(d.value);   
     })
     //add linked highlighting to interval on point mouseover
     .on("mouseover", function(d) {
        d3.selectAll(".year"+parseDate(d.date).getMonth())
          .attr("class", "selected");
        d3.select("#interval"+parseDate(d.date).getMonth())
          .attr("class", "selectedInterval");
     })
     .on("mouseout", function(d) {
        d3.selectAll(".selected")
          .attr("class", "year"+parseDate(d.date).getMonth());
        d3.selectAll(".selectedInterval")
          .attr("class", "none"); 
     })
     //add tooltip on hover
     .append("title")
     .text(function(d) {
      return "Date: " + d.date + "; value: " + d.value;
     });

});

//add random jitter to points around midline
function random_jitter() {
  if (Math.round(Math.random() * 1) == 0)
    var seed = -5;
  else
    var seed = 5; 
  return midline + Math.floor((Math.random() * seed) + 1);
}

function type(d) {
  d.value = +d.value; // coerce to number
  d.date = d.date;
  return d;
}
<<DOCTYPE html>
<html>
<head>
	<title>Bebe?</title>
	<style type="text/css">
	body{
		background-color: black;
		}</style>
</head>
<body>
<center>
<a href="http://3spooky5me.com">Home</a>
<br>

<script type="text/javascript">

//<![CDATA[

var trailimage=["numa.gif", width="900px"]
var offsetfrommouse=[-66,-66]
var displayduration=0

if (document.getElementById || document.all)
document.write('<div id="trailimageid" style="position:absolute;visibility:visible;left:0px;top:100px;width:1px;height:1px"><img border="" src="'+trailimage[0]+'"></div>')

function gettrailobj(){
if (document.getElementById)
return document.getElementById("trailimageid").style
else if (document.all)
return document.all.trailimagid.style
}

function truebody(){
return (!window.opera && document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}

function hidetrail(){
gettrailobj().visibility="hidden"
document.onmousemove=""

}

function followmouse(e){
var xcoord=offsetfrommouse[0]
var ycoord=offsetfrommouse[1]
if (typeof e != "undefined"){
xcoord+=e.pageX
ycoord+=e.pageY
}
else if (typeof window.event !="undefined"){
xcoord+=truebody().scrollLeft+event.clientX
ycoord+=truebody().scrollTop+event.clientY
}
var docwidth=document.all? truebody().scrollLeft+truebody().clientWidth : pageXOffset+window.innerWidth-15
var docheight=document.all? Math.max(truebody().scrollHeight, truebody().clientHeight) : Math.max(document.body.offsetHeight, window.innerHeight)
if (xcoord+trailimage[1]+3>docwidth || ycoord+trailimage[2]> docheight)
gettrailobj().display="none"
else
gettrailobj().display=""
gettrailobj().left=xcoord+"px"
gettrailobj().top=ycoord+"px"
}

document.onmousemove=followmouse

if (displayduration>0)
setTimeout("hidetrail()", displayduration*1000)
//]]>


</script>

</center>
</audio>
<audio loop autoplay>
  <source src="numa.mp3" type="audio/mp3">
  
</body>
</html>

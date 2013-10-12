ScienceForums.Net
========================================================
author: Philipp Burckhardt, Alex Reinhart, Jerry Zhang
date: October 15, 2013

Overview of SFN
===============

* Founded in 2002
* 750,000 posts
* 65,000 members
* 5,000 new posts per month
* 3rd largest science discussion forum

Userbase
========

* Mostly non-scientists interested in science
* "Real" scientists don't have the time to waste
* Lots of crazy people
* Recent topics:
  * "Is It Possible to Artificially Induce Hair or Fur Growth All Over The Human Body?"
  * "i have disproved EVOLUTION!!!!!!!!!!! darwin was wrong!"
  * "Where can i buy chemicals?"

Posting activity
================

![plot of chunk unnamed-chunk-1](ScienceforumsPresentation-figure/unnamed-chunk-1.png) 


New registrations
=================

![plot of chunk unnamed-chunk-2](ScienceforumsPresentation-figure/unnamed-chunk-2.png) 


Problem: most topics are boring
===============================

![plot of chunk unnamed-chunk-3](ScienceforumsPresentation-figure/unnamed-chunk-3.png) 


Problem: most people don't stay
===============================

![plot of chunk unnamed-chunk-4](ScienceforumsPresentation-figure/unnamed-chunk-4.png) 


Slide With Code
========================================================


```r
library(googleVis)
op <- options(gvis.plot.tag='chart')
load("ForumPosts.RData")
colnames(motion.data3)[1:4] <- c("Category","Date","Posts","Views")
levels(motion.data3$Category) <- c("Biology","Chemistry","Chemistry","Climate","CS","Engineering","General","Math",
                                   "Philosophy & Religion","Physics","Politics","Speculations","Staff")
motion.data3$Date <-as.POSIXlt(motion.data3$Date)$year + 1900
motion.data3 <- aggregate(formula=cbind(Views,Posts)~Category+Date,FUN=sum,data=motion.data3)
```

Slide With Plot
========================================================

<!-- MotionChart generated in R 3.0.1 by googleVis 0.4.5 package -->
<!-- Sat Oct 12 13:54:50 2013 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMotionChartID2881489b28b1 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Biology",
2002,
138521,
1372 
],
[
 "Chemistry",
2002,
31251,
213 
],
[
 "CS",
2002,
51268,
457 
],
[
 "Engineering",
2002,
20156,
133 
],
[
 "General",
2002,
130092,
1452 
],
[
 "Math",
2002,
26983,
154 
],
[
 "Philosophy & Religion",
2002,
35553,
585 
],
[
 "Physics",
2002,
163265,
1832 
],
[
 "Politics",
2002,
55719,
187 
],
[
 "Speculations",
2002,
84816,
1264 
],
[
 "Staff",
2002,
217,
32 
],
[
 "Biology",
2003,
462426,
3207 
],
[
 "Chemistry",
2003,
215905,
945 
],
[
 "CS",
2003,
100849,
770 
],
[
 "Engineering",
2003,
25003,
154 
],
[
 "General",
2003,
524628,
6925 
],
[
 "Math",
2003,
184246,
1094 
],
[
 "Philosophy & Religion",
2003,
133080,
2521 
],
[
 "Physics",
2003,
337265,
3549 
],
[
 "Politics",
2003,
185983,
2673 
],
[
 "Speculations",
2003,
133553,
1551 
],
[
 "Staff",
2003,
4955,
835 
],
[
 "Biology",
2004,
1696804,
9655 
],
[
 "Chemistry",
2004,
1339971,
8867 
],
[
 "CS",
2004,
349305,
4271 
],
[
 "Engineering",
2004,
181660,
1353 
],
[
 "General",
2004,
1131630,
18573 
],
[
 "Math",
2004,
677692,
4826 
],
[
 "Philosophy & Religion",
2004,
323791,
6293 
],
[
 "Physics",
2004,
1226842,
11179 
],
[
 "Politics",
2004,
391746,
7437 
],
[
 "Speculations",
2004,
193897,
2162 
],
[
 "Staff",
2004,
8175,
1562 
],
[
 "Biology",
2005,
2237712,
14668 
],
[
 "Chemistry",
2005,
1751386,
10718 
],
[
 "CS",
2005,
435806,
5489 
],
[
 "Engineering",
2005,
234174,
1301 
],
[
 "General",
2005,
912619,
12723 
],
[
 "Math",
2005,
715223,
5252 
],
[
 "Philosophy & Religion",
2005,
327492,
9455 
],
[
 "Physics",
2005,
1525502,
17738 
],
[
 "Politics",
2005,
411799,
9273 
],
[
 "Speculations",
2005,
252785,
3446 
],
[
 "Staff",
2005,
6496,
1204 
],
[
 "Biology",
2006,
1860416,
9176 
],
[
 "Chemistry",
2006,
1221383,
4484 
],
[
 "Climate",
2006,
14518,
47 
],
[
 "CS",
2006,
309778,
3522 
],
[
 "Engineering",
2006,
261479,
1525 
],
[
 "General",
2006,
703713,
11398 
],
[
 "Math",
2006,
401218,
2505 
],
[
 "Philosophy & Religion",
2006,
359406,
9426 
],
[
 "Physics",
2006,
989243,
8961 
],
[
 "Politics",
2006,
387003,
8941 
],
[
 "Speculations",
2006,
260997,
4062 
],
[
 "Staff",
2006,
7797,
1529 
],
[
 "Biology",
2007,
1729401,
8365 
],
[
 "Chemistry",
2007,
996198,
2958 
],
[
 "Climate",
2007,
34196,
336 
],
[
 "CS",
2007,
227859,
1255 
],
[
 "Engineering",
2007,
184489,
910 
],
[
 "General",
2007,
452211,
6902 
],
[
 "Math",
2007,
395090,
1652 
],
[
 "Philosophy & Religion",
2007,
62467,
500 
],
[
 "Physics",
2007,
1292503,
11325 
],
[
 "Politics",
2007,
292996,
7855 
],
[
 "Speculations",
2007,
245963,
3017 
],
[
 "Staff",
2007,
9846,
2151 
],
[
 "Biology",
2008,
1388963,
8826 
],
[
 "Chemistry",
2008,
1088936,
3478 
],
[
 "CS",
2008,
184465,
1519 
],
[
 "Engineering",
2008,
171467,
903 
],
[
 "General",
2008,
581074,
7382 
],
[
 "Math",
2008,
372994,
1586 
],
[
 "Philosophy & Religion",
2008,
37896,
253 
],
[
 "Physics",
2008,
1312705,
11848 
],
[
 "Politics",
2008,
402098,
10264 
],
[
 "Speculations",
2008,
340550,
5295 
],
[
 "Staff",
2008,
6914,
1277 
],
[
 "Biology",
2009,
1334587,
7597 
],
[
 "Chemistry",
2009,
992579,
3428 
],
[
 "Climate",
2009,
19027,
150 
],
[
 "CS",
2009,
223781,
1659 
],
[
 "Engineering",
2009,
124586,
868 
],
[
 "General",
2009,
423850,
6219 
],
[
 "Math",
2009,
280551,
1219 
],
[
 "Philosophy & Religion",
2009,
45457,
408 
],
[
 "Physics",
2009,
1267330,
10897 
],
[
 "Politics",
2009,
489183,
9814 
],
[
 "Speculations",
2009,
482155,
7145 
],
[
 "Staff",
2009,
6017,
1190 
],
[
 "Biology",
2010,
1300202,
5361 
],
[
 "Chemistry",
2010,
661046,
2115 
],
[
 "Climate",
2010,
179579,
1131 
],
[
 "CS",
2010,
169727,
742 
],
[
 "Engineering",
2010,
188078,
1259 
],
[
 "General",
2010,
488267,
4900 
],
[
 "Math",
2010,
329392,
1549 
],
[
 "Philosophy & Religion",
2010,
520624,
5338 
],
[
 "Physics",
2010,
1259533,
10530 
],
[
 "Politics",
2010,
498452,
7997 
],
[
 "Speculations",
2010,
430684,
5523 
],
[
 "Staff",
2010,
5526,
1231 
],
[
 "Biology",
2011,
1284749,
6220 
],
[
 "Chemistry",
2011,
656740,
2427 
],
[
 "Climate",
2011,
149912,
1108 
],
[
 "CS",
2011,
229110,
1114 
],
[
 "Engineering",
2011,
250406,
1664 
],
[
 "General",
2011,
370792,
3186 
],
[
 "Math",
2011,
373631,
2378 
],
[
 "Philosophy & Religion",
2011,
576350,
7612 
],
[
 "Physics",
2011,
1441989,
12314 
],
[
 "Politics",
2011,
390933,
4816 
],
[
 "Speculations",
2011,
674009,
8703 
],
[
 "Staff",
2011,
3079,
668 
],
[
 "Biology",
2012,
626320,
5274 
],
[
 "Chemistry",
2012,
289771,
1737 
],
[
 "Climate",
2012,
69947,
646 
],
[
 "CS",
2012,
143096,
1052 
],
[
 "Engineering",
2012,
167696,
1656 
],
[
 "General",
2012,
220359,
3691 
],
[
 "Math",
2012,
205898,
1666 
],
[
 "Philosophy & Religion",
2012,
453776,
10526 
],
[
 "Physics",
2012,
746602,
10779 
],
[
 "Politics",
2012,
236581,
6141 
],
[
 "Speculations",
2012,
498871,
11642 
],
[
 "Staff",
2012,
6030,
1186 
],
[
 "Biology",
2013,
162754,
2381 
],
[
 "Chemistry",
2013,
86862,
1002 
],
[
 "Climate",
2013,
25605,
505 
],
[
 "CS",
2013,
39291,
422 
],
[
 "Engineering",
2013,
36266,
757 
],
[
 "General",
2013,
68283,
2120 
],
[
 "Math",
2013,
59865,
1101 
],
[
 "Philosophy & Religion",
2013,
186728,
4866 
],
[
 "Physics",
2013,
275071,
6718 
],
[
 "Politics",
2013,
33879,
1299 
],
[
 "Speculations",
2013,
202805,
8058 
],
[
 "Staff",
2013,
2965,
651 
] 
];
data.addColumn('string','Category');
data.addColumn('number','Date');
data.addColumn('number','Views');
data.addColumn('number','Posts');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMotionChartID2881489b28b1() {
var data = gvisDataMotionChartID2881489b28b1();
var options = {};
options["width"] =    600;
options["height"] =    500;

    var chart = new google.visualization.MotionChart(
    document.getElementById('MotionChartID2881489b28b1')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "motionchart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMotionChartID2881489b28b1);
})();
function displayChartMotionChartID2881489b28b1() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartID2881489b28b1"></script>
 
<!-- divChart -->
  
<div id="MotionChartID2881489b28b1"
  style="width: 600px; height: 500px;">
</div>


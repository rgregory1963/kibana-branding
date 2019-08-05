import 'plugins/ma-branding/less/main.less';


$(document).ready(function () {
  var header= $(".header-global-wrapper");
  console.log("setting header");
  header.prepend("<div id='banner' class='euiHeader'>This is the banner</div>");
  
});



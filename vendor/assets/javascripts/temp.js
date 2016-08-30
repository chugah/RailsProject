/*

Setup the Facebook SDK for JavaScript
The following snippet of code will give the basic version of the SDK
  where the options are set to their most common defaults. 
  You should insert it directly after the opening <body> tag 
  on each page you want to load it:

window.fbAsyncInit = function() {
  FB.init({
    appId      : '582871805218975',
    xfbml      : true,
    version    : 'v2.6'
  });
};

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

*/
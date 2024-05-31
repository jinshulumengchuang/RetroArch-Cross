function mykeydown(key) {
  var xhr= new XMLHttpRequest();
  xhr.open('GET', "cgi-bin/keydown.sh?" + key , true);
  xhr.send();
}
function mykeyupmain(key) {
  var xhr= new XMLHttpRequest();
  xhr.open('GET', "cgi-bin/keyup.sh?" + key , true);
  xhr.send();
}
function mykeyup(key) {
   mykeyupmain(key);
   setTimeout(mykeyupmain(key), 100);
}
mymain = document.getElementById('main');
mymain.height = document.documentElement.clientHeight ;
mymain.width = document.documentElement.clientWidth ;
mymain.src =  "http://" + window.location.hostname + ":19001"
document.body.style.overflow = 'hidden';

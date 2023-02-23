function createBubble()
{
    const section = document.getElementById("bubblecontainer");
    const createElement = document.createElement('span');
    var size = Math.random() * 60;

    createElement.style.width = size+'px'
    createElement.style.height = size+'px'
    createElement.style.left = Math.random() * innerWidth - 200 + "px";
    section.appendChild(createElement);

    setTimeout(() => {
        createElement.remove()
    },25000)
}
window.onscroll = function() {progressanimation()};

function progressanimation() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("myBar").style.width = scrolled + "%";
}

setInterval(createBubble,3000)



$(document).ready(function(){
    $(".grid-item").mouseover(function(){
        $(this).css("transform","rotate(0deg)");
    }).mouseout(function(){
        $(this).css("transform","rotate(-2deg)");
    });;
});
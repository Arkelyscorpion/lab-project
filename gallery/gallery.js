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

setInterval(createBubble,3000)
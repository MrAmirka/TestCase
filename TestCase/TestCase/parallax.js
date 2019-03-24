function func() {
    const picture = background;
    // const maxMove = document.body.children[0].offsetWidth / 30;
    // const maxMoveY = document.body.children[0].offsetHeight / 30;
    const boxcenterX = picture.offsetLeft + (picture.offsetWidth / 2);
    const boxcenterY = picture.offsetTop + (picture.offsetHeigth / 2);

    function getMousePos(xRef, yRef) {
    let Rect = document.body.children[0].getBoundingClientRect();
    return {
    y: Math.floor(yRef - Rect.top)/(Rect.bottom - Rect.top)*document.body.children[0].offsetHeigth,
    x: Math.floor(xRef - Rect.left)/(Rect.right - Rect.left)*document.body.children[0].offsetWidth
    };
    }

    document.body.addEventListener('mousemove', function(e) {
    let mousePos = getMousePos(e.clientX, e.clientY);
    let posX = -(mousePos.x - boxcenterX);
    let posY = -(mousePos.y - boxcenterY);
    if( Math.abs(posX) < 300 ) {
    picture.style.transform = "translate(" + (-1 * posX) / 12 + "px)";
    }
    if( Math.abs(posY) < 300 ) {
    picture.style.transform = "translate(" + (-1 * posY) / 12 + "px)";
    }
    })
}

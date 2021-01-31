const animatedText = document.getElementById('animate');
const animatedTextStroke = document.getElementById('animate-stroke');
const guideText = document.getElementById('guide');
const guideSpans = guideText.getElementsByTagName('span');
const animatedSpans = animatedText.getElementsByTagName('span');
const animatedSpansStroke = animatedTextStroke.getElementsByTagName('span');
const textLength = guideSpans.length;

const placeSpans = () => {
    for (var i = 0; i < textLength; i++) {
        let guide = guideSpans[i];
        let animated = animatedSpans[i];
        let animatedStroke = animatedSpansStroke[i];
        let rect = guide.getBoundingClientRect();
        animated.style.left = rect.left + 'px';
        animatedStroke.style.left = rect.left + 'px';
    }
}

const animateLetterIn = (i) => {
    setTimeout(() => {
        TweenLite.fromTo(animatedSpans[i], 0.4, { opacity: 0, y: 40 }, { opacity: 1, y: 0, ease: Power3.easeOut });
        TweenLite.fromTo(animatedSpans[i], 0.4, { scale: 0 }, { scale: 1, ease: Back.easeOut });
        TweenLite.fromTo(animatedSpansStroke[i], 0.4, { opacity: 0, y: 40 }, { opacity: 1, y: 0, ease: Power3.easeOut });
        TweenLite.fromTo(animatedSpansStroke[i], 0.4, { scale: 0 }, { scale: 1, ease: Back.easeOut });
    }, i * 200);
}

const animateLetterOut = (i) => {
    setTimeout(() => {
        TweenLite.to(animatedSpans[i], 0.4, { opacity: 0, y: 40, scale: 0, ease: Power3.easeIn });
    }, i * 200);
    if (i === textLength - 1) {
        setTimeout(() => {
            animateIn();
        }, (textLength + 3) * 200);
    }
}

const animateIn = () => {
    for (var i = 0; i < textLength; i++) {
        animateLetterIn(i);
    }
}

const animateOut = () => {
    for (var i = 0; i < textLength; i++) {
        animateLetterOut(i);
    }
}

const resizeText = (text, fontSize) => {
    text.style.fontSize = fontSize + 'px';
    text.style.height = fontSize + 'px';
    text.style.lineHeight = fontSize + 'px';
}

const resize = () => {
    let fontSize = window.innerWidth / 8;
    if (fontSize > 100) fontSize = 100;
    (fontSize * -0.5) + 'px';
    resizeText(animatedText, fontSize);
    resizeText(guideText, fontSize);
    resizeText(animatedTextStroke, fontSize);
    placeSpans();
}

if (document.fonts && document.fonts.ready) {
    document.fonts.ready.then(() => {
        resize();
        animateIn();
        window.addEventListener('resize', resize);
    });
} else {
    setTimeout(() => {
        resize();
        animateIn();
        window.addEventListener('resize', resize);
    }, 500);
}

var speed = 1.5;
var crawls = [];
var offset;

const title = document.getElementById('title');
const subtitle = document.getElementById('subtitle');
const headline = document.getElementById('main-headline');

async function updateHeadlines() {
    crawls.push('#Headlines')
    const data = await fetch('/data/headline.json')
    .then(response => response.json())
    .then(data => {return data});
    if (data.visible == true) {
        title.innerText = data.title;
        subtitle.innerText = data.subtitle;
        headline.style.animationName = 'headline-in';
    } else {
        headline.style.animationName = 'headline-out';
    }
};

setInterval(updateHeadlines,1000)
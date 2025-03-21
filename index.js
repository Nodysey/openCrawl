var speed = 1.5;
var crawls = [];
var offset;

const container = document.getElementById('container');

var doWeHaveAlerts;
async function getAlerts() {
    const details = await fetch(`/data/wx_alerts.json`)
        .then(response => response.json())
        .then(data => {return data});
    if (details.length > 0) {
        for (let idx = 0; idx < details.length; idx++) {
            const itm = details[idx];
            crawls.push('!!' + itm);
            crawls.push('%'); // Add ARN Logo to seperate News Stories
        };
        doWeHaveAlerts = true;
    } else {
        doWeHaveAlerts = false;
    };
};

async function getNewsStories() {
    crawls.push('#Headlines')
    const feed = await fetch('/data/feed.json')
    .then(response => response.json())
    .then(data => {return data});
    const stories = await feed.items;
    for (let idx = 0; idx < stories.length; idx++) {
        const itm = stories[idx];
        crawls.push(itm.title);
        crawls.push('%'); // Add ARN Logo to seperate News Stories
    };
};

async function getWeather() {
    crawls.push('#Weather')
    const details = await fetch(`/data/wx.json`)
        .then(response => response.json())
        .then(data => {return data.now});
    for (let idx = 0; idx < details.length; idx++) {
        const itm = details[idx];
        crawls.push(`${itm.name} ${itm.temp}° ${itm.phrase}`);
        crawls.push('%'); // Add ARN Logo to seperate News Stories
    };
};

async function getStocks() {
    crawls.push('#Stocks')
    const details = await fetch(`/data/stock.json`)
        .then(response => response.json())
        .then(data => {return data});
    for (let idx = 0; idx < details.length; idx++) {
        const itm = details[idx];
        crawls.push('^' + `${itm.name} ${itm.oneDayReturn} ${itm.change}`);
        crawls.push('%'); // Add ARN Logo to seperate News Stories
    };
};

async function getSports() {
    const details = await fetch(`/data/sport.json`)
        .then(response => response.json())
        .then(data => {return data});
    var currentLeague = '';
    for (let idx = 0; idx < details.length; idx++) {
        const itm = details[idx];
        if (itm.league != currentLeague) {
            crawls.push(`#${itm.league}`);
            currentLeague = itm.league
        }
        crawls.push(`${itm.home_name} ${itm.home_score} ​ ${itm.away_name} ${itm.away_score} | ${itm.time}`);
        crawls.push('%'); // Add ARN Logo to seperate News Stories
    };
};

function advanceCrawl() {
    const crawlWidth = document.getElementById('crawl').getBoundingClientRect().width;
    const containerWidth = document.getElementById('container').getBoundingClientRect().width;
    container.style.transform = `translateX(${offset}px)`;
    offset = offset - speed;
    if ((offset * -1) - containerWidth > 0) {
        crawls = [];
        clearInterval(crawlAdvancer);
        start();
    }
};

async function displayHeader(text) {
    const header = document.getElementById('start');
    const headText = document.getElementsByClassName('header')[0];
    headText.innerText = text;
    header.style.animationName = "header-in";
    setTimeout(() => {header.style.animationName = "header-out"}, 4500);
}

async function changeHeader(text) {
    const headline = document.getElementsByClassName('headline')[0];
    const mask = document.getElementById('lesser-mask');
    mask.style.animationName = 'to-left';
    mask.style.animationTimingFunction = 'ease-in';
    headline.style.animationName = 'to-right';
    headline.style.animationTimingFunction = 'ease-in';
    setTimeout(() => {
        headline.innerText = text.toUpperCase();
        mask.style.animationName = 'from-right';
        mask.style.animationTimingFunction = 'ease-out';
        headline.style.animationName = 'from-left';
        headline.style.animationTimingFunction = 'ease-out';
    },200);
}

async function tracker(idx) {
    const crawlWidth = document.getElementById('crawl').getBoundingClientRect().width;
    const trackInt = setInterval(check, 200);
    console.log('tracker placed on item', idx)
    function check() {
        const itm = document.querySelector(`[data-id="${String(idx)}"]`);
        const xPos = itm.getBoundingClientRect().left;
        if (xPos - 348 < crawlWidth) {
            if (itm.id.substring(0,2) == '!!') {
                daddyCantore(true);
                const beep = cueAndPlay('beep');
                beep.addEventListener('ended', () => {
                    if (itm.id.includes('tor')) {
                        cueAndPlay('tor');
                    } else if (itm.id.includes('svr')) {
                        cueAndPlay('svr');
                    } else if (itm.id.includes('ffw')) {
                        cueAndPlay('ffw');
                    }
                });
                console.log('tracker', idx, 'triggered, changing header');
                clearInterval(trackInt);
            } else {
                daddyCantore(false);
                changeHeader(itm.id);
                console.log('tracker', idx, 'triggered, changing header');
                clearInterval(trackInt);
        }
        }
    };
}

function cueAndPlay(type) {
    var audio;
    if (type == 'beep') {
        audio = new Audio('audio/warningbeep.wav');
    } else if (type == 'tor') {
        audio = new Audio('audio/tor.wav');
    } else if (type == 'svr') {
        audio = new Audio('audio/svr.wav');
    } else if (type == 'ffw') {
        audio = new Audio('audio/ffw.wav');
    };
    audio.play();
    return audio
}

function daddyCantore(enableOrDisable) {
    if (enableOrDisable == true) {
        document.getElementById('crawl').style.background = 'var(--severe-background)';
        document.getElementById('logo-wrapper').style.background = 'var(--severe-background)';
        document.getElementById('datetime-wrap').style.color = 'var(--severe-background)';
        document.getElementById('headcont').style.display = 'none';
    } else {
        document.getElementById('crawl').style.background = 'var(--background)';
        document.getElementById('logo-wrapper').style.background = 'var(--background)';
        document.getElementById('datetime-wrap').style.color = 'var(--text-color)';
        document.getElementById('headcont').style.display = 'flex';
    }
}

function start() {
    crawls = [];
    document.getElementById('container').innerHTML = '';
    setTimeout(() => {getAlerts()}, 0);
    setTimeout(() => {getNewsStories()}, 500);
    setTimeout(() => {getWeather()}, 1000);
    setTimeout(() => {getStocks()}, 1500);
    setTimeout(() => {getSports()}, 2000);

    // display starter
    displayHeader(config.adBanner)

    offset = document.getElementById('crawl').getBoundingClientRect().width;
    setTimeout(() => {
        for (let idx = 0; idx < crawls.length; idx++) {
            const itm = crawls[idx];
            const element = document.createElement('div');
            element.setAttribute('data-id', idx);
            if (itm.substr(0, 2) === '!!') { // alerts
                element.setAttribute('class', 'item');
                const str = itm.substr(2);
                if (str.toLowerCase().includes('tornado warning')) {
                    element.setAttribute('id', `!!tor`)
                } else if (str.toLowerCase().includes('severe thunderstorm warning')) {
                    element.setAttribute('id', `!!svr`)
                } else if (str.toLowerCase().includes('flash flood farning')) {
                    element.setAttribute('id', `!!ffw`)
                } else {
                    element.setAttribute('id', '!!');
                };
                tracker(idx);
                element.innerText = str;
            } else if (itm.substr(0, 1) === '#') { // headlines
                element.setAttribute('class', 'crawl-header');
                element.setAttribute('id', itm.substr(1));
                tracker(idx);
                element.innerText = '';
            } else if (itm.substr(0, 1) === '%') { // seperators
                element.setAttribute('class', 'logo');
                element.innerText = itm.substr(1);
            } else if (itm.substr(0, 1) === '^') { // stocks
                element.setAttribute('class', 'stock');
                element.innerText = itm.substr(1);
            } else {
                element.setAttribute('class', 'item');
                element.innerText = itm;
            };
            container.appendChild(element);
        }
        crawlAdvancer = setInterval(advanceCrawl,10);
    }, 5000);
};
start();

async function dateTime() {
    const date = new Date(Date.now());
    const hour = ((date.getHours() - 1) % 12) + 1;
    const minute = String(date.getMinutes()).padStart(2,'0');

    const wxPromise = await fetch(`/data/wx.json`);
    const wx = await wxPromise.json();
    const temp = wx[0].now.temp;

    document.getElementById('time').innerText = `${hour}:${minute}`;
    document.getElementById('temp').innerText = `${temp}°`;
}

setInterval(dateTime,1000)
const title = document.getElementById('title');
const subtitle = document.getElementById('subtitle');
async function show() {
    const titleText = title.value;
    const subtitleText = subtitle.value;
    await fetch('/api/save/headline', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            visible: true,
            title: titleText,
            subtitle: subtitleText
        })
    });
};
async function hide() {
    const titleText = title.value;
    const subtitleText = subtitle.value;
    await fetch('/api/save/headline', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            visible: false,
            title: titleText,
            subtitle: subtitleText
        })
    });
};

document.getElementById('show').addEventListener('click', show);
document.getElementById('hide').addEventListener('click', hide);
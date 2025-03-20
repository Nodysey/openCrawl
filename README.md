# openCrawl

A customizable news crawl system that simulates TV news tickers with live data integration. Built with Node.js and modern web technologies.

## Features

- Live news ticker with smooth scrolling animation
- Real-time data integration:
  - RSS news feed integration
  - Weather updates with alerts
  - Stock market data
  - Sports scores and updates
  - Time and temperature display
- Alert system with audio notifications for severe weather
- Customizable styling and branding
- Automatic data refresh at configurable intervals

## Prerequisites

- Node.js
- NPM or Yarn package manager

## Installation

1. Clone the repository:
```bash
git clone https://github.com/Nodysey/openCrawl.git
cd openCrawl
```

2. Install dependencies:
```bash
npm install
```

3. Configure the application by editing `server.js` config object:
```javascript
const config = {
    "port": 40,                    // Web server port
    "feed": "https://6abc.com/feed", // RSS feed URL
    "adBanner": "The Latest News from ARN 4 News",
    "fetchInterval": 15,           // Data refresh interval (minutes)
    "twcApiKey": "your-api-key",   // The Weather Channel API key
    "weatherCities": ["08054:US"], // ZIP codes for weather data
    "stockIndicies": ["^GSPC"],    // Stock symbols to track
    "sportLeagues": ["baseball/mlb"] // Sports leagues to follow
}
```

## Usage

1. Start the server:
```bash
node server.js
```

2. Access the news crawl in your browser at:
```
http://localhost:40
```

## Data Sources

- **News**: RSS feed (configurable)
- **Weather**: The Weather Channel API
- **Stocks**: Yahoo Finance API
- **Sports**: ESPN API

## Customization

### Styling
The appearance can be customized by modifying `style.css`. The project includes two style variants:
- Default style (`style.css`)
- Fox News style (`style fox.css`)

### Fonts
The project uses custom fonts:
- ARN Affiliate Sans
- Benton Sans
- Proxima Nova

Place your font files in the `fonts/` directory and update the `@font-face` declarations in the CSS.

## Alert System

The system includes special handling for weather alerts:
- Tornado Warnings
- Severe Thunderstorm Warnings
- Flash Flood Warnings

Alerts trigger:
- Visual styling changes
- Audio notifications
- Priority display in the crawl

## API Keys Required

You'll need to obtain the API key for:
- The Weather Channel (for weather data)

## Technical Details

### Main Components

- `server.js`: Backend server and data fetching
- `index.js`: Frontend logic and animation
- `index.html`: Main display template
- `style.css`: Visual styling

### Data Refresh

The system automatically refreshes data at intervals specified in the config:
- News stories
- Weather conditions
- Stock prices
- Sports scores

## License

MIT License

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Support

For support, please open an issue in the repository.
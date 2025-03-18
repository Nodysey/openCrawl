(iwr "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2F6abc.com%2Ffeed").Content > data/feed.json

(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/%5EGSPC").Content > data/stock_0.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/%5EDJI").Content > data/stock_1.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/NVDA").Content > data/stock_2.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/F").Content > data/stock_3.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/MSFT").Content > data/stock_4.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/BA").Content > data/stock_5.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/GE").Content > data/stock_6.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/HD").Content > data/stock_7.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/DIS").Content > data/stock_8.json
(iwr -Headers @{'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0'} "https://query2.finance.yahoo.com/v8/finance/chart/AAPL").Content > data/stock_9.json

(iwr "https://api.weather.com/v3/wx/observations/current?postalKey=08054:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_0.json
(iwr "https://api.weather.com/v3/location/point?postalKey=08054:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_0_loc.json
(iwr "https://api.weather.com/v3/wx/observations/current?postalKey=08002:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_1.json
(iwr "https://api.weather.com/v3/location/point?postalKey=08002:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_1_loc.json
(iwr "https://api.weather.com/v3/wx/observations/current?postalKey=08043:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_2.json
(iwr "https://api.weather.com/v3/location/point?postalKey=08043:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_2_loc.json
(iwr "https://api.weather.com/v3/wx/observations/current?postalKey=08060:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_3.json
(iwr "https://api.weather.com/v3/location/point?postalKey=08060:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_3_loc.json
(iwr "https://api.weather.com/v3/wx/observations/current?postalKey=08360:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_4.json
(iwr "https://api.weather.com/v3/location/point?postalKey=08360:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_4_loc.json
(iwr "https://api.weather.com/v3/wx/observations/current?postalKey=08401:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_5.json
(iwr "https://api.weather.com/v3/location/point?postalKey=08401:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525").Content > data/wx_5_loc.json

echo "Fetched crawl data sucessfully."
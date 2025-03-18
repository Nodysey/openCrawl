curl "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2F6abc.com%2Ffeed" > data/feed.json

curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/%5EGSPC" > data/stock_0.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/%5EDJI" > data/stock_1.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/NVDA" > data/stock_2.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/F" > data/stock_3.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/MSFT" > data/stock_4.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/BA" > data/stock_5.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/GE" > data/stock_6.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/HD" > data/stock_7.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/DIS" > data/stock_8.json
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0" "https://query2.finance.yahoo.com/v8/finance/chart/AAPL" > data/stock_9.json

curl "https://api.weather.com/v3/wx/observations/current?postalKey=08054:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_0.json
curl "https://api.weather.com/v3/location/point?postalKey=08054:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_0_loc.json
curl "https://api.weather.com/v3/wx/observations/current?postalKey=08002:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_1.json
curl "https://api.weather.com/v3/location/point?postalKey=08002:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_1_loc.json
curl "https://api.weather.com/v3/wx/observations/current?postalKey=08043:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_2.json
curl "https://api.weather.com/v3/location/point?postalKey=08043:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_2_loc.json
curl "https://api.weather.com/v3/wx/observations/current?postalKey=08060:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_3.json
curl "https://api.weather.com/v3/location/point?postalKey=08060:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_3_loc.json
curl "https://api.weather.com/v3/wx/observations/current?postalKey=08360:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_4.json
curl "https://api.weather.com/v3/location/point?postalKey=08360:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_4_loc.json
curl "https://api.weather.com/v3/wx/observations/current?postalKey=08401:US&units=e&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_5.json
curl "https://api.weather.com/v3/location/point?postalKey=08401:US&language=en-US&format=json&apiKey=e1f10a1e78da46f5b10a1e78da96f525" > data/wx_5_loc.json

echo "Fetched crawl data sucessfully."
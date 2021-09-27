library(RCurl)
library(XML)

loadTableByURL <- function(URL) {
  agent="Mozilla/5.0 (Windows NT 6.3; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0"
  agent="Mozilla/5.0"
  curl = getCurlHandle(encoding = "UTF-8")
  curlSetOpt(cookiejar="cookies.txt",  useragent = agent, 
             followlocation = TRUE, curl=curl, encoding = "UTF-8" )
  PopPage <- getURL(URL, curl=curl, encoding = "UTF-8"  )
  tabs = readHTMLTable(PopPage, stringsAsFactors = FALSE)
  tabs
}
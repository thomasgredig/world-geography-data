# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# generates the database:
#
# - Country Name
# - Capital
# - Population
# - Area
# - Currency
#
# Author: Thomas Gredig
# Date: 2021-09-26
#
# based on an earlier program from 1988
#
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

source('func.R')

# DATA
url.data = 'https://www.worldometers.info/world-population/population-by-country/'
url.capitals = 'https://en.wikipedia.org/wiki/List_of_national_capitals'
url.currency = 'https://www.countries-ofthe-world.com/world-currencies.html'

# Load countries and populations
d = loadTableByURL(url.data)[[1]]

# retrieve relevant parameters
cName = d$`Country (or dependency)`
Population = as.numeric(gsub(',','',d$`Population (2020)`))
Area = as.numeric(gsub(',','',d$`Land Area (Km²)`))
q1 = data.frame(
  cName,
  Population,
  Area
)

# Load Capitals
d1 = loadTableByURL(url.capitals)[[2]]
Capital = d1$V1
tail(Capital)
cName2 = d1$V2
q2 = data.frame(
  cName = cName2,
  Capital
)

# Load currencies
d2 = loadTableByURL(url.currency)[[1]]
cName3 = d2$`Country or territory`
Currency = d2$Currency

q3 = data.frame(
  cName = cName3,
  Currency
)


q = merge(q1, q2, by='cName')
q = merge(q, q3, by='cName')
head(q)
plot(q$Area, q$Population, log='xy')


write.csv(q,'world-database.csv', row.names = FALSE)

library(knitr)
kable(q[22:32,])

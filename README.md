# world-geography-data

 Generate current World Geography Data

## Usage

Run `make-database.R`. Generates a file `world-database.csv`.


## Sample Output

Use the UTF-8 encoding to have accents in capitals and countries render properly.

|   |cName                    | Population|    Area|Capital             |Currency                                |
|:--|:------------------------|----------:|-------:|:-------------------|:---------------------------------------|
|22 |Bosnia and Herzegovina   |    3280819|   51000|Sarajevo            |Bosnia and Herzegovina convertible mark |
|23 |Botswana                 |    2351627|  566730|Gaborone            |Botswana pula                           |
|24 |Brazil                   |  212559417| 8358140|Brasília            |Brazilian real                          |
|25 |Brunei                   |     437479|    5270|Bandar Seri Begawan |Brunei dollar                           |
|26 |Bulgaria                 |    6948445|  108560|Sofia               |Bulgarian lev                           |
|27 |Burkina Faso             |   20903273|  273600|Ouagadougou         |West African CFA franc                  |
|28 |Burundi                  |   11890784|   25680|Gitega (official)   |Burundi franc                           |
|29 |Cambodia                 |   16718965|  176520|Phnom Penh          |Cambodian riel                          |
|30 |Cameroon                 |   26545863|  472710|Yaoundé             |Central African CFA franc               |
|31 |Canada                   |   37742154| 9093510|Ottawa              |Canadian dollar                         |
|32 |Central African Republic |    4829767|  622980|Bangui              |Central African CFA franc               |



## Local Testing

For Firefox browser, go to `about:config` and set `security.fileuri.strict_origin_policy` to **false** in order to bypass CORS errors. For [other browsers, you can bypass CORS](https://www.thepolyglotdeveloper.com/2014/08/bypass-cors-errors-testing-apis-locally/) as well.

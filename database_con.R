#libraries---

#libraries and Data
library(DBI)
library(odbc)
library(RPostgreSQL)
library(RPostgres)
library(dplyr)
library(plotly)

#create connection to db
con <- DBI::dbConnect(RPostgreSQL::PostgreSQL(),
                       dbname = "xxxx",
                      user ="xxxx",
                      password = "xxxxx",
                      host = "xxxx",
                      port = xxxx)

#view tables

dbListTables(con)

#tidy queries
delivery_tbl = tbl(con,"delivery")

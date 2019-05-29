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
                       dbname = "twigadms",
                      user ="handel_owour",
                      password = "8p68B6Gz",
                      host = "replica.dmsv1.db.twiga.tech",
                      port = 5432)

#view tables

dbListTables(con)

#tidy queries
delivery_tbl = tbl(con,"delivery")

library(testthat)

rm(list = ls())
source("./200401011/Vize_Q1_200401011_fatih_unal.R")

# T 1.1
test_that("Global Workspace’de spotify_token adlı bir değişken olmalı.", {
  expect_true(exists("spotify_token"))
})

# 1.2
test_that("spotify_token adlı değişkenin tipi “function” olmalı.", {
  expect_true(is.function(spotify_token))
})

# 1.3
test_that("spotify_token() çağrıldığında döndürdüğü çıktı bir liste olmalı", {
  result <- spotify_token()
  expect_true(typeof(result) == "list")
})

# 1.4
test_that("spotify_token() çağrıldığında döndürdüğü listenin iki elementi olmalı", {
  result <- spotify_token()
  expect_true(length(result) == 2)
})

# 1.5
test_that("spotify_token() çağrıldığında döndürdüğü listenin ilk elementinin ismi status_code olmalı", {
  result <- spotify_token()
  expect_true(names(result)[1]=="status_code")
})

# T 1.6
test_that("spotify_token() çağrıldığında döndürdüğü listenin ilk elementinin class’ı numeric olmalı", {
  result <- spotify_token()
  expect_true(is.numeric(result[[1]]))
})

# T 1.7
test_that("spotify_token() çağrıldığında döndürdüğü listenin status_code adlı elementinin değeri 200’e eşit olmalı", {
  result <- spotify_token()
  expect_true(result$status_code == 200)
})

# T 1.8
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementinin ismi token olmalı", {
  result <- spotify_token()
  expect_true(names(result)[2]=="token")
})

# T 1.9
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementinin class’ı character olmalı", {
  result <- spotify_token()
  expect_true(is.character(result[[2]]))
})

# T 1.10
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementinin class’ı character olmalı", {
  result <- spotify_token()
  expect_true(grepl("^Bearer ",result[[2]]))
})

# T 1.11
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementi character değişkeninin içinde 122 adet harf bulunmalı", {
  result <- spotify_token()
  expect_true(nchar(result[[2]]) == 122)
})








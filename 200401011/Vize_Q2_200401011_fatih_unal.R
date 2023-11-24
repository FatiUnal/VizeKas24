
spotify_search_artist <- function(artist_name){
  resp <- httr::GET(
    "https://api.spotify.com/v1/search",
    config = add_headers(Authorization = spotify_token()$token),
    query = list(q = artist_name, type = "artist")
  )
  content <- content(resp)
  search_result <- data.frame(
    artist = sapply(content$artists$items, function(artist_info){
      artist_info$name
    }),
    id = sapply(content$artists$items, function(artist_info){
      artist_info$id
    })
  )
  return(list(status_code=resp$status_code, search_results=search_result))
}
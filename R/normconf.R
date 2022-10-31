#' ASCII Goodness
#'
#' Retrieves and prints ascii from the ascii endpoint.
#' You may want to have your R console set nice and wide for this one.
#'
#' @export
ascii <- function(){
  req <- httr2::request("api.normconf.com/ascii")
  resp <- httr2::req_perform(req)
  cat(httr2::resp_body_string(resp))
}


#' Random Goodness
#'
#' Does something a bit random.
#' You may want to have your R console set nice and wide for this one.
#'
#' @export
random <- function(){
  req <- httr2::request("api.normconf.com/random")
  resp <- httr2::req_perform(req)
  if (httr2::resp_content_type(resp) == 'image/png'){
    grid::grid.raster(png::readPNG(httr2::resp_body_raw(resp)))
  } else {
    cat(httr2::resp_body_string(resp))
}
}


#' Normconf Schedule Goodness
#'
#' Retrieves and prints the schedule from the schedule endpoint.
#' You may want to have your R console set nice and wide for this one.
#'
#' @export
schedule <- function(){
  req <- httr2::request("api.normconf.com/schedule")
  resp <- httr2::req_perform(req)
  cat(httr2::resp_body_string(resp))
}


#' Wisdom Goodness
#'
#' Opens a URL containing some wisdom
#'
#' @export
wisdom <- function(){
  req <- httr2::request("api.normconf.com/wisdom")
  resp <- httr2::req_perform(req)
  utils::browseURL(httr2::resp_body_string(resp))
}


#' Find out what someone's talk will be about according to GPT-2
#'
#' @param title A talk title
#' @export
get_talk <- function(title){
  req <- httr2::request("api.normconf.com/get_talk")
  req <- httr2::req_headers(req, "Accept" = "application/json", "Content-Type" = "application/json")
  req <- httr2::req_body_json(req, list(talk_title = title))
  resp <- httr2::req_perform(req)
  cat(httr2::resp_body_string(resp))
}

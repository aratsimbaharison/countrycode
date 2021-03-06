library(jsonlite)

context('Known country name variations')

variations <- fromJSON('country_name_known_variations.json')

test_that('correct matches are returned for known country name variations', {
  match_known <- function(known_variations) countrycode(known_variations, 'country.name', 'country.name')

  for (i in 1:length(variations)) {
    expect_match(match_known(variations[[i]]), names(variations)[i], all = T)
  }
})

check: data/chicago_to_harvard_monday_through_friday.rda
	Rscript --verbose --vanilla -e "devtools::check()"

data/chicago_to_harvard_monday_through_friday.rda: data-raw/chicago_to_harvard_monday_through_friday.csv R/chicago_to_harvard_monday_through_friday.R tests/testthat/test_data_chicago_to_harvard_monday_through_friday.R
	Rscript --verbose --vanilla data-raw/chicago_to_harvard_monday_through_friday.R

.PHONY: check

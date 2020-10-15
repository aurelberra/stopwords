# Test current Quanteda stopwords -----------------------------------------

# https://github.com/quanteda/stopwords
install.packages("stopwords")
stopwords::stopwords("grc", source = "ancient")
stopwords::stopwords("latin", source = "ancient")
stopwords::stopwords("latin", source = "stopwords-iso")

# Test Quanteda stopwords -------------------------------------------------
# https://github.com/quanteda/stopwords

library("pacman")
p_load("quanteda")
p_load("readtext")
p_load("tidyverse")
p_load("stopwords")
# remotes::install_github("quanteda/stopwords", ref = "add-voyant", force = T)

stopwords::stopwords("grc", source = "ancient")
stopwords::stopwords("latin", source = "ancient")
stopwords::stopwords("latin", source = "stopwords-iso")

# Frequency plots with stopwords ----

cp_dem <-
    readtext(
        "/Users/aurel/Documents/github/hn3-dev/data/demosthenes/demosthenes_works/",
        cache = FALSE
    )
cp_dem$doc_id <- cp_dem$doc_id %>% str_replace_all("\\D", "")
cp_dem <- corpus(cp_dem)

dfm_cp_dem <- cp_dem %>%
    dfm(remove = stopwords::stopwords("grc", source = "ancient"),
        remove_punct = TRUE) %>%
    # dfm(remove = stopwords::stopwords("grc", source = "perseus"), remove_punct = TRUE) %>%
    dfm_trim(min_termfreq = 10, verbose = FALSE)

features_dfm_cp_dem <- textstat_frequency(dfm_cp_dem, n = 100)

features_dfm_cp_dem$feature <-
    with(features_dfm_cp_dem, reorder(feature, -frequency))

ggplot(features_dfm_cp_dem, aes(x = feature, y = frequency)) +
    geom_point() +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))

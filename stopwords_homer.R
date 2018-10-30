# ----------------+
# Stopwords: Homer
# ----------------+

source("~/Documents/github/helpers/R/packages_ab.R")


# Iliad -------------------------------------------------------------------

iliad <-
    read_lines("data/corpus_test/greek_iliade.txt") %>%
    str_replace_all("\\{.+?\\}", " ") %>%
    str_replace_all("\\s+", " ") %>%
    str_replace_all("^\\s", "")
iliad_df <- iliad %>%
    data_frame(text = iliad) %>%
    unnest_tokens(word, text)
iliad_df %>% count(word, sort = TRUE)

iliad_lem <-
    read_lines("data/corpus_test/greek_iliade_perseus_lem.txt") %>%
    str_replace_all("\n+", " ")
iliad_lem_df <-
    data_frame(text = iliad_lem) %>%
    unnest_tokens(word, text)
iliad_lem_df %>% count(word, sort = TRUE)

iliad_top_100 <-
    iliad_df %>% count(word, sort = TRUE) %>% slice(1:100)
tlg_top_100 <- read_lines("data/tlg_data/tlg_top_100.txt")
iliad_100_not_in_tlg_100 <- setdiff(iliad_top_100$word, tlg_top_100)
write_lines(iliad_100_not_in_tlg_100,
            "data/homer_data/iliad_100_not_in_tlg_100.txt")

iliad_top_1000 <-
    iliad_df %>% count(word, sort = TRUE) %>% slice(1:1000)
write_lines(iliad_top_1000$word,
            "data/homer_data/iliad_top_1000.txt")
tlg_top_1000 <- read_lines("data/tlg_data/tlg_top_1000.txt")
iliad_1000_not_in_tlg_1000 <-
    setdiff(iliad_top_1000$word, tlg_top_1000)
write_lines(iliad_1000_not_in_tlg_1000,
            "data/homer_data/iliad_1000_not_in_tlg_1000.txt")

iliad_lem_top_1000 <-
    iliad_lem_df %>% count(word, sort = TRUE) %>% slice(1:1000)
tlg_lem_top_1000 <-
    read_lines("data/tlg_data/tlg_top_1000_lemmatised_corrected.txt")
iliad_lem_1000_not_in_tlg_lem_1000 <-
    setdiff(iliad_lem_top_1000$word, tlg_lem_top_1000)
write_lines(
    iliad_lem_1000_not_in_tlg_lem_1000,
    "data/homer_data/iliad_lem_1000_not_in_tlg_lem_1000.txt"
)

iliad_candidates_100 <-
    read_lines("data/homer_data/iliad_100_not_in_tlg_100_selection.txt")
iliad_candidates_1000 <-
    read_lines("data/homer_data/iliad_1000_not_in_tlg_1000_selection.txt")
setdiff(iliad_candidates_100, iliad_candidates_1000)
iliad_lem_candidates_1000 <-
    read_lines("data/homer_data/iliad_lem_1000_not_in_tlg_lem_1000_selection.txt")
sort(setdiff(iliad_lem_candidates_1000, iliad_candidates_1000))
sort(setdiff(iliad_candidates_1000, iliad_lem_candidates_1000))
iliad_all_candidates_1000 <-
    sort(union(iliad_candidates_1000, iliad_lem_candidates_1000))
write_lines(iliad_all_candidates_1000,
            "data/homer_data/iliad_all_candidates_1000.txt")

current_greek <- read_lines("stopwords_greek.txt")
iliad_candidates_not_in_current_greek <-
    sort(setdiff(iliad_all_candidates_1000, current_greek)) %>% str_extract_all("^[^#].*") %>% unlist()
write_lines(
    iliad_candidates_not_in_current_greek,
    "data/homer_data/iliad_candidates_not_in_current_greek.txt"
)


# Odyssey -----------------------------------------------------------------

odyssey <-
    read_lines("data/corpus_test/greek_odyssee.txt") %>%
    str_replace_all("\\{.+?\\}", " ") %>%
    str_replace_all("\\s+", " ") %>%
    str_replace_all("^\\s", "")
odyssey_df <- odyssey %>%
    data_frame(text = odyssey) %>%
    unnest_tokens(word, text)
odyssey_df %>% count(word, sort = TRUE)

odyssey_lem <-
    read_lines("data/corpus_test/greek_odyssee_perseus_lem.txt") %>%
    str_replace_all("\n+", " ")
odyssey_lem_df <-
    data_frame(text = odyssey_lem) %>%
    unnest_tokens(word, text)
odyssey_lem_df %>% count(word, sort = TRUE)

odyssey_top_100 <-
    odyssey_df %>% count(word, sort = TRUE) %>% slice(1:100)
tlg_top_100 <- read_lines("data/tlg_data/tlg_top_100.txt")
odyssey_100_not_in_tlg_100 <-
    setdiff(odyssey_top_100$word, tlg_top_100)
write_lines(odyssey_100_not_in_tlg_100,
            "data/homer_data/odyssey_100_not_in_tlg_100.txt")

odyssey_top_1000 <-
    odyssey_df %>% count(word, sort = TRUE) %>% slice(1:1000)
write_lines(odyssey_top_1000$word,
            "data/homer_data/odyssey_top_1000.txt")
tlg_top_1000 <- read_lines("data/tlg_data/tlg_top_1000.txt")
odyssey_1000_not_in_tlg_1000 <-
    setdiff(odyssey_top_1000$word, tlg_top_1000)
write_lines(
    odyssey_1000_not_in_tlg_1000,
    "data/homer_data/odyssey_1000_not_in_tlg_1000.txt"
)

odyssey_lem_top_1000 <-
    odyssey_lem_df %>% count(word, sort = TRUE) %>% slice(1:1000)
tlg_lem_top_1000 <-
    read_lines("data/tlg_data/tlg_top_1000_lemmatised_corrected.txt")
odyssey_lem_1000_not_in_tlg_lem_1000 <-
    setdiff(odyssey_lem_top_1000$word, tlg_lem_top_1000)
write_lines(
    odyssey_lem_1000_not_in_tlg_lem_1000,
    "data/homer_data/odyssey_lem_1000_not_in_tlg_lem_1000.txt"
)

odyssey_candidates_100 <-
    read_lines("data/homer_data/odyssey_100_not_in_tlg_100_selection.txt")
odyssey_candidates_1000 <-
    read_lines("data/homer_data/odyssey_1000_not_in_tlg_1000_selection.txt")
setdiff(odyssey_candidates_100, odyssey_candidates_1000)
setdiff(odyssey_candidates_1000, odyssey_candidates_100)
odyssey_candidates_union_100_1000 <-
    union(odyssey_candidates_1000, odyssey_candidates_100)
write_lines(
    odyssey_candidates_union_100_1000,
    "data/homer_data/odyssey_candidates_union_100_1000.txt"
)

odyssey_lem_candidates_1000 <-
    read_lines("data/homer_data/odyssey_lem_1000_not_in_tlg_lem_1000_selection.txt")
odyssey_all_candidates_1000 <-
    sort(union(
        odyssey_lem_candidates_1000,
        odyssey_candidates_union_100_1000
    ))
write_lines(odyssey_all_candidates_1000,
            "data/homer_data/odyssey_all_candidates_1000.txt")

current_greek <- read_lines("stopwords_greek.txt")
odyssey_candidates_not_in_current_greek <-
    sort(setdiff(odyssey_all_candidates_1000, current_greek)) %>% str_extract_all("^[^#].*") %>% unlist()
write_lines(
    odyssey_candidates_not_in_current_greek,
    "data/homer_data/odyssey_candidates_not_in_current_greek.txt"
)


# Homer : Iliad + Odyssey -------------------------------------------------

homer_all_candidates <-
    sort(
        union(
            iliad_candidates_not_in_current_greek,
            odyssey_candidates_not_in_current_greek
        )
    )
write_lines(homer_all_candidates,
            "data/homer_data/homer_all_candidates.txt")


# Summarise ---------------------------------------------------------------

length(read_lines("data/homer_data/homer_all_candidates.txt"))
length(read_lines("data/homer_data/odyssey_candidates_not_in_current_greek.txt"))
length(read_lines("data/homer_data/iliad_candidates_not_in_current_greek.txt"))

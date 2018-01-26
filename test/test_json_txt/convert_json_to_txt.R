# -------------------------- #
# Stopwords: Latin and Greek #
# Make TXT from JSON         #
# -------------------------- #

source("~/Documents/github/r-dev/helpers.R")


# Initial conversion to JSON
# --------------------------

# Test RJSON package
# R to/from JSON with flattened output: not what I need
# install.packages("rjson")
library(rjson)

# memo: needed R structure to reproduce my levels/headings with rjson
test_from_r <- list(
    "TYPOGRAPHICAL SYMBOLS" = c("!", "$"),
    "PRONOUNS" = list(
        "ego" = c("ego", "egon"),
        "meus" = c("mea", "meae")
    )
)
test_from_r <- unlist(test_from_r, use.names = TRUE)
test_r_to_json <- toJSON(test_from_r)
write_lines(test_r_to_json, "./test/test_json_txt/test_r_to_json.json")

test_r_from_json <- read_file("./versions/stopwords_latin_v2_1.json")
test_r_from_json <- fromJSON(test_r_from_json)
write_lines(test_r_from_json, "./test/test_json_txt/test_r_from_json.txt")

# TXT/Markdown to JSON
# too complicated: can't close brackets easily
# if used at all, JSON has to be the structured source format
# test_input <- read_file("./test/test_json_txt/test_input.txt")
# test_output <- c("{", test_input, "}")
# test_output <- str_replace_all(test_output, "#\\s(.*)\n(?=\n##)", "\"\\1\": {\n")
# test_output <- str_replace_all(test_output, "#+\\s(.*)\n", "\"\\1\": [\n")
# test_output <- str_replace_all(test_output, "\\{\n\n", "\\{\n")
# test_output <- str_replace_all(test_output, "\n\n", "\n],\n")
# test_output <- str_replace_all(test_output, "\n([^\\]\"].*)", "\n\"\\1\",")
# test_output <- str_replace_all(test_output, ",\n([\\]\\}])", "\n\\1")
# test_output <- str_replace_all(test_output, ",\\n\\n\\}", "\n}")  # breaking here
# write_lines(test_output, "./test/test_json_txt/test_output.md")

# or try Markdown to R list, then toJSON?

# for now use a CLI Python Markdown to JSON converter
# https://github.com/njvack/markdown-to-json
# result: stopwords_latin_v2_1.json and stopwords_greek_v2_2.json


# Test JSON to TXT/Markdown with my headings
# ------------------------------------------

test_input_json <- read_file("./test/test_json_txt/test_input.json")
test_input_json %>%
    str_replace_all("^\\{\n", "") %>%
    str_replace_all("\\}\n\\}\n", "") %>%
    str_replace_all("\\s*\"([A-Z]+.*)\": [\\[\\{\\],]+\n", "# \\1\n") %>%
    str_replace_all("\\s*\"(.*)\": \\[\n", "## \\1\n") %>%
    # str_replace_all("[\":\\{\\}\\[\\],]", "\n") %>%
    str_replace_all("\\:(?!\")", "\n") %>%
    str_replace_all("\\[(?!\")", "\n") %>%
    str_replace_all("\\](?!\")", "\n") %>%
    str_replace_all("\\{(?!\")", "\n") %>%
    str_replace_all("\\}(?!\")", "\n") %>%
    str_replace_all("\\\\(?!\")", "\n") %>%
    str_replace_all(",", "\n") %>%
    str_replace_all('\\"(?!\")', "\n") %>%
    str_replace_all("\\\\", "\n") %>%
    str_replace_all("\n\\s+", "\n") %>%
    str_replace_all("##", "\n##") %>%
    str_replace_all("\n#(.)", "\n\n#\\1") %>%
    str_replace_all("\n\n\n", "\n\n") %>%
    write_file("./test/test_json_txt/test_output.md")

# Add metadata
today <- format(Sys.time(), "%Y-%m-%d")
version_latin <- "2.1"
current_latin_count <- count_items_in_txt_list("stopwords_latin.txt")
test_output <- read_file("./test/test_json_txt/test_output.md")
# meta <- read_file("stopwords_latin_metadata.txt")
current_metadata <- paste0(
    "# Ancient Latin stopwords", "\n",
    "# version ", version_latin, "\n",
    "# ", today, "\n",
    "# Aurélien Berra", "\n",
    "# ", "\n",
    "# Ancient Latin stopwords for textual analysis", "\n",
    "# language: Latin (la, lat)", "\n",
    "# type: dataset", "\n",
    "# items count: ", current_latin_count, "\n",
    "# https://github.com/aurelberra/stopwords", "\n",
    "# rights: CC-BY-NC-SA", "\n",
    "\n"
)
test_stopwords <- paste0(current_metadata, test_output)
write_file(test_stopwords, "./test/test_json_txt/test_stopwords.txt")

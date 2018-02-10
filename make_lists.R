# ------------------------------------- #
# Stopwords: Latin and Greek            #
# Make TXT/Markdown stoplists from JSON #
# ------------------------------------- #

source("~/Documents/github/r-dev/helpers.R")

# GREEK

# Set version number
version_greek <- "2.3"

# Convert current JSON list to TXT with Markdown headings
greek_json <- read_file("stopwords_greek.json")
greek_json %>%
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
    write_file("./test/test_json_txt/stopwords_greek_raw.txt")

# Add metadata
today <- format(Sys.time(), "%Y-%m-%d")
greek_raw <- read_file("./test/test_json_txt/stopwords_greek_raw.txt")
current_greek_count <- count_items_in_txt_list("./test/test_json_txt/stopwords_greek_raw.txt")
greek_metadata <- paste0(
    "# Ancient Greek stopwords", "\n",
    "# version ", version_greek, "\n",
    "# ", today, "\n",
    "# Aurélien Berra", "\n",
    "# ", "\n",
    "# Ancient Greek stopwords for textual analysis", "\n",
    "# language: Ancient Greek (grc)", "\n",
    "# type: dataset", "\n",
    "# items count: ", current_greek_count, "\n",
    "# https://github.com/aurelberra/stopwords", "\n",
    "# rights: CC-BY-NC-SA", "\n",
    "\n"
)
stopwords_greek <- paste0(greek_metadata, greek_raw)
stopwords_greek <- utf8::utf8_normalize(stopwords_greek)
write_file(stopwords_greek, "stopwords_greek.txt")


# LATIN

# Set version number
version_latin <- "2.2"

# Convert current JSON list to TXT with Markdown headings
latin_json <- read_file("stopwords_latin.json")
latin_json %>%
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
    write_file("./test/test_json_txt/stopwords_latin_raw.txt")

# Add metadata
today <- format(Sys.time(), "%Y-%m-%d")
latin_raw <- read_file("./test/test_json_txt/stopwords_latin_raw.txt")
current_latin_count <- count_items_in_txt_list("./test/test_json_txt/stopwords_latin_raw.txt")
latin_metadata <- paste0(
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
stopwords_latin <- paste0(latin_metadata, latin_raw)
write_file(stopwords_latin, "stopwords_latin.txt")

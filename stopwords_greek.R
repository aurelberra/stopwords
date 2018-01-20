# ---------------- #
# Stopwords: Greek #
# ---------------- #

source("../hn3-dev/sextus/code/corpus_functions.R")
library(tidyverse)

# Current list

current_greek <- read_lines("stopwords_greek.txt")

# Version 1: Comparing existing lists
# -----------------------------------

# Perseus Digital Library list
## http://www.perseus.tufts.edu/hopper/stopwords 2017-10-14

grk_stop_perseus <- c("ἄλλος", "ἄν", "ἄρα", "ἀλλ'", "ἀλλά", "ἀπό", "αὐτός", "δ'", "δαί", "δαίς", "δέ", "δή", "διά", "ἑαυτοῦ", "ἔτι", "ἐάν", "ἐγώ", "ἐκ", "ἐμός", "ἐν", "ἐπί", "εἰ", "εἴμι", "εἰμί", "εἰς", "γάρ", "γα ", "γε", "ἡ", "ἤ", "καί", "κατά", "μέν", "μετά", "μή", "ὁ", "ὅδε", "ὅς", "ὅστις", "ὅτι", "οἱ", "οὕτως", "οὗτος", "οὐ", "οὔτε", "οὖν", "οὐδέ", "οὐδείς", "οὐκ", "παρά", "περί", "πρός", "σός", "σύ", "σύν", "τά", "τε", "τήν", "τῆς", "τῇ", "τι", "τί", "τίς", "τις", "τό", "τόν", "τοί", "τοιοῦτος", "τούς", "τοῦ", "τῶν", "τῷ", "ὑμός", "ὑπέρ", "ὑπό", "ὥστε", "ὡς", "ὦ")

# Digital Classicist list
## http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_greek
## originally from Perseus list, augmented AB 2016

grk_stop_digiclass <- c("ἄλλος", "ἄλλοσ", "ἄν", "ἂν", "ἄρα", "ἀλλ", "ἀλλ'", "ἀλλ’", "ἀλλά", "ἀλλὰ", "ἀπό", "ἀπὸ", "αὐτός", "αὐτόσ", "αὐτὸς", "αὐτὸσ", "δ", "δ'", "δ’", "δαί", "δαὶ", "δαίς", "δαίσ", "δαὶς", "δαὶσ", "δέ", "δὲ", "δή", "δὴ", "διά", "διὰ", "ἑαυτοῦ", "ἔτι", "ἐάν", "ἐὰν", "ἐγώ", "ἐγὼ", "ἐκ", "ἐμός", "ἐμόσ", "ἐμὸς", "ἐμὸσ", "ἐν", "ἐπί", "ἐπὶ", "εἰ", "εἴμι", "εἰμί", "εἰς", "εἰσ", "γάρ", "γὰρ", "γᾶ", "γε", "ἡ", "ἤ", "ἢ", "καί", "καὶ", "κατά", "κατὰ", "μέν", "μὲν", "μετά", "μετὰ", "μή", "μὴ", "ὁ", "ὅδε", "ὅς", "ὅσ", "ὃς", "ὃσ", "ὅστις", "ὅστισ", "ὅτι", "οἱ", "οὕτως", "οὕτωσ", "οὗτος", "οὗτοσ", "οὐ", "οὔτε", "οὖν", "οὐδέ", "οὐδὲ", "οὐδείς", "οὐδείσ", "οὐδεὶς", "οὐδεὶσ", "οὐκ", "οὔκ", "οὐχ", "παρά", "παρὰ", "περί", "περὶ", "πρός", "πρόσ", "πρὸς", "πρὸσ", "σός", "σόσ", "σὸς", "σὸσ", "σύ", "σὺ", "σύν", "σὺν", "τά", "τὰ", "τάσ", "τάς", "τὰσ", "τὰς", "ταῖς", "ταῖσ", "τε", "τήν", "τὴν", "τῆς", "τῆσ", "τῇ", "τι", "τί", "τὶ", "τίς", "τίσ", "τις", "τισ", "τό", "τὸ", "τόν", "τὸν", "τοί", "τοὶ", "τοιοῦτος", "τοιοῦτοσ", "τοῖς", "τοῖσ", "τούς", "τούσ", "τοὺς", "τοὺσ", "τοῦ", "τῶν", "τῷ", "ὑμός", "ὑμὸς", "ὑμόσ", "ὑμὸσ", "ὑπέρ", "ὑπό", "ὑπὸ", "ὥσ", "ὥστε", "ὡς", "ὡσ", "ὦ")

# Classical Language Toolkit Greek
## CLTK currently uses the Perseus list with grave accent variants added
## https://github.com/cltk/cltk/blob/master/cltk/stop/greek/stops.py

grk_stop_cltk <- c("ἀλλ", "ἀλλὰ", "ἀλλά", "ἀπὸ", "ἀπό", "ἂν", "ἄλλος", "ἄν", "ἄρα", "αὐτὸς", "αὐτός", "γε", "γὰρ", "γάρ", "δ", "δαὶ", "δαὶς", "δαί", "δαίς", "διὰ", "διά", "δὲ", "δέ", "δὴ", "δή", "ἐὰν", "ἐάν", "ἑαυτοῦ", "ἐγὼ", "ἐγώ", "εἰ", "εἰμὶ", "εἰμί", "εἴμι", "εἰς", "ἐκ", "ἐμὸς", "ἐμός", "ἐν", "ἐξ", "ἐπὶ", "ἐπί", "ἔτι", "ἡ", "ἢ", "ἤ", "κατὰ", "κατά", "καὶ", "καί", "μετὰ", "μετά", "μὲν", "μέν", "μὴ", "μή", "ξύν", "ξὺν", "ὁ", "ὃδε", "ὅδε", "οἱ", "ὅς", "ὃς", "ὅστις", "ὅτι", "οὐ", "οὐδεὶς", "οὐδείς", "οὐδὲ", "οὐδέ", "οὐκ", "οὖν", "οὔτε", "οὗτος", "οὕτως", "παρὰ", "παρά", "περὶ", "περί", "πρὸς", "πρός", "σύν", "σὸς", "σός", "σὺ", "σὺν", "σὺν", "σύ", "σύν", "τε", "τι", "τις", "τοιοῦτος", "τοὶ", "τοί", "τοὺς", "τούς", "τοῖς", "τοῦ", "τὰ", "τά", "τᾶς", "τῇ", "τὴν", "τήν", "τῆς", "τὶ", "τί", "τὶς", "τίς", "τὸ", "τό", "τὸν", "τόν", "τῶν", "τῷ", "ὑμὸς", "ὑμός", "ὑπὲρ", "ὑπέρ", "ὑπὸ", "ὑπό", "ὦ", "ὡς", "ὥστε")

# Words in Annette von Stockhausen’s list
## https://github.com/pharos-alexandria/grk-stoplist/blob/master/stoplist-greek.txt
## source credited in https://github.com/stopwords-iso/

grk_stop_pharos <- c("ἃ", "αἱ", "αἵ", "αἳ", "ἄν", "ἀλλ'", "ἀλλὰ", "ἄλλος", "ἅμα", "ἂν", "ἀπ", "ἀπὸ", "ἄρα", "αὖ", "αὐτὸς", "ἀφ", "δ'", "δι'", "δὲ", "δέ", "δή", "δὴ", "διά", "διὰ", "δαὶ", "δαὶς", "ἐὰν", "ἑαυτοῦ", "ἔτι", "ἐγὼ", "ἐκ", "ἐμὸς", "ἐν", "ἐξ", "επ", "ἐπὶ", "εἰ", "εἴ", "εἰμὶ", "εἴμι", "εἰς", "εἴτε", "ἐπεὶ", "ἐστι", "ἐφ", "γάρ", "γὰρ", "γε", "γα^", "γοῦν", "ἡ", "ἢ", "ἥ", "ἣ", "ἧς", "ἵνα", "καί", "καὶ", "καίτοι", "κἀν", "κἂν", "καθ", "κατ", "κατὰ", "κατά", "μεθ", "μἐν", "μὲν", "μετ", "μετὰ", "μή", "μὴ", "μὴν", "μήτε", "ὁ", "ὃ", "ὅ", "ὅδε", "ὅθεν", "οἷς", "ὃν", "ὅπερ", "ὅς", "ὃς", "ὅστις", "ὅτε", "ὅτι", "οὓς", "οὕτω", "οὕτως", "οὗτος", "οὔτε", "οὖν", "οὐδ", "οὐδεὶς", "οὐδὲν", "οἱ", "οἳ", "οὗ", "οὐ", "οὐδὲ", "οὐκ", "οὐχ", "οὐχὶ", "παρ", "παρὰ", "περὶ", "ποτε", "που", "ποῦ", "πρὸ", "προ", "πρὸς", "πως", "σὸς", "σὺ", "σὺν", "τά", "τὰ", "ταῖς", "τὰς", "τε", "τὴν", "τῆς", "τῇ", "τι", "τί", "τινα", "τις", "τίς", "τὸ", "τοι", "τοῖς", "τοιοῦτος", "τὸν", "τότε", "τοὺς", "τοῦ", "τῶν", "τῷ", "ὑπ", "ὑπὲρ", "ὑπὸ", "ὡς", "ὥς", "ὦ", "ᾧ", "ὥστε")

# Compare lists

cltk_not_in_perseus <- setdiff(grk_stop_cltk, grk_stop_perseus)
length(cltk_not_in_perseus)
cltk_not_in_perseus <- sort(cltk_not_in_perseus)

cltk_not_in_digiclass <- setdiff(grk_stop_cltk, grk_stop_digiclass)
length(cltk_not_in_digiclass)
cltk_not_in_digiclass <- sort(cltk_not_in_digiclass)

digiclass_not_in_cltk <- setdiff(grk_stop_digiclass, grk_stop_cltk)
length(digiclass_not_in_cltk)
digiclass_not_in_cltk <- sort(digiclass_not_in_cltk)

digiclass_cltk <- c(grk_stop_digiclass, grk_stop_cltk)

perseus_only <- setdiff(grk_stop_perseus, digiclass_cltk)
length(perseus_only)
perseus_only <- sort(perseus_only)

perseus_digiclass_cltk <-
    c(grk_stop_perseus, grk_stop_digiclass, grk_stop_cltk)

pharos_only <- setdiff(grk_stop_pharos, perseus_digiclass_cltk)
length(pharos_only)
pharos_only <- sort(pharos_only)

# View all lists

grk_max <-
    max(
        length(grk_stop_perseus),
        length(grk_stop_digiclass),
        length(grk_stop_cltk),
        length(grk_stop_pharos),
        length(cltk_not_in_perseus),
        length(cltk_not_in_digiclass)
    )
length(grk_stop_perseus) <- grk_max
length(grk_stop_digiclass) <- grk_max
length(grk_stop_cltk) <- grk_max
length(grk_stop_pharos) <- grk_max
length(cltk_not_in_perseus) <- grk_max
length(cltk_not_in_digiclass) <- grk_max
length(digiclass_not_in_cltk) <- grk_max
length(pharos_only) <- grk_max
length(perseus_only) <- grk_max

m_all <-
    cbind(
        grk_stop_perseus,
        grk_stop_digiclass,
        grk_stop_cltk,
        grk_stop_pharos,
        cltk_not_in_perseus,
        cltk_not_in_digiclass,
        digiclass_not_in_cltk,
        pharos_only,
        perseus_only
    )
colnames(m_all) <-
    c(
        "Perseus",
        "DigiClass",
        "CLTK",
        "Pharos",
        "CLTK not Perseus",
        "CLTK not DigiClass",
        "DigiClass not CLTK",
        "Pharos only",
        "Perseus only"
    )

View(m_all)

# Potential addenda to DigiClass list

perseus_cltk_pharos <-
    c(grk_stop_perseus, grk_stop_cltk, grk_stop_pharos)
grk_not_in_digiclass <-
    setdiff(perseus_cltk_pharos, grk_stop_digiclass)
length(grk_not_in_digiclass)
grk_not_in_digiclass <- sort(grk_not_in_digiclass)

# Compare with DCC Greek list

dcc_greek <- read_lines("data/data_dcc/dcc_greek_lemmas.txt")

v.dcc_greek_100 <- as.vector(dcc_greek[1:100])
addenda_dcc_greek_100 <- setdiff(v.dcc_greek_100, current_greek)
v.dcc_greek_200 <- as.vector(dcc_greek[1:200])
addenda_dcc_greek_200 <- setdiff(v.dcc_greek_200, current_greek)
v.dcc_greek_all <- as.vector(dcc_greek)
addenda_dcc_greek <- setdiff(v.dcc_greek_all, current_greek)

not_in_dcc_greek_100 <- setdiff(current_greek, v.dcc_greek_100)

# Version 2: Rebasing lists on corpus statistics
# ----------------------------------------------

# Demosthenes most frequent words (no lemmatisation)

dem_top_100 <- c("καὶ", "τῶν", "μὲν", "τὴν", "δὲ", "δ", "τὸν", "τοῦ", "τοὺς", "ἂν", "γὰρ", "τὰ", "τὸ", "τῆς", "ὡς", "τοῖς", "ἐν", "τῷ", "ὁ", "ἢ", "μὴ", "πρὸς", "οὐ", "εἰ", "οὐκ", "εἰς", "ὅτι", "ὦ", "περὶ", "ἄνδρες", "ὑμῖν", "ἀλλ", "τούτων", "εἶναι", "ὑμᾶς", "ταῦτα", "ἀλλὰ", "τῇ", "οἱ", "τὰς", "ὧν", "ἐκ", "τις", "τοίνυν", "τι", "ἐπὶ", "ἐγὼ", "ὑμῶν", "νῦν", "οὖν", "ἀθηναῖοι", "ἦν", "μοι", "ὑπὲρ", "οὐδ", "ἡ", "τοῦτο", "τί", "ταῦτ", "παρ", "ἃ", "διὰ", "παρὰ", "οὗτος", "οὐδὲν", "οὐδὲ", "αὐτῷ", "τούτου", "αὐτὸν", "κατὰ", "τε", "τοῦτον", "ὑμεῖς", "δικασταί", "οὔτε", "αὐτῶν", "λέγειν", "δεῖ", "ἄν", "ἐστιν", "μετὰ", "αὐτὸς", "ἐξ", "οὐχ", "τούτοις", "ἐὰν", "δὴ", "αὐτοῦ", "τούτῳ", "αὐτοῖς", "ὑπὸ", "δίκην", "οἷς", "δι", "τοῦτ", "πάντα", "νόμον", "ἐπειδὴ", "πρῶτον", "δέ")

# bug with dem_top_500 as list in r file: length? encoding?
dem_top_500 <-
    read_lines("/Users/aurel/Documents/github/stopwords/data/dem_top_500.txt")

addenda_dem_top_100 <- setdiff(dem_top_100, current_greek)
addenda_dem_top_100
addenda_dem_top_500 <- setdiff(dem_top_500, current_greek)
addenda_dem_top_500

not_in_dem_top_100 <- setdiff(current_greek, dem_top_100)
not_in_dem_top_100

# TLG E most frequent words (no lemmatisation)

tlg_e_top_100 <- c("καὶ", "δὲ", "τὸ", "τοῦ", "τῶν", "τὴν", "τῆς", "ὁ", "ἐν", "γὰρ", "τὸν", "τὰ", "μὲν", "ἡ", "τῷ", "ὡς", "εἰς", "πρὸς", "τοῖς", "ἢ", "τε", "ὅτι", "ἐπὶ", "διὰ", "κατὰ", "μὴ", "τοὺς", "οἱ", "οὐ", "τῇ", "δ", "οὐκ", "περὶ", "εἰ", "ἐκ", "τὰς", "τοῦτο", "αὐτοῦ", "ἀπὸ", "ἀλλὰ", "οὖν", "ἀλλ", "εἶναι", "ἂν", "παρὰ", "ταῦτα", "μετὰ", "αὐτῶν", "ὑπὸ", "αὐτὸν", "αὐτῷ", "τι", "ἦν", "ἐστιν", "ἐξ", "τις", "ἐστι", "οὕτως", "δέ", "τί", "οὐδὲ", "ταῖς", "αἱ", "δὴ", "θεοῦ", "πάντα", "τούτων", "οὕτω", "δι", "ἵνα", "ὥσπερ", "αὐτοῖς", "πάλιν", "γε", "νῦν", "οὔτε", "ὧν", "καθ", "ἔχει", "μόνον", "αὐτὸς", "οἷον", "μᾶλλον", "ἡμῖν", "οὐχ", "γάρ", "κατ", "πῶς", "οὐδὲν", "ἡμῶν", "α", "ὥστε", "ἔστι", "ἔτι", "ὃ", "παρ", "σου", "δύο", "λέγει", "μοι")

addenda_tlg_e_top_100 <- setdiff(tlg_e_top_100, current_greek)
addenda_tlg_e_top_100

not_in_tlg_e_top_100 <- setdiff(current_greek, tlg_e_top_100)
not_in_tlg_e_top_100

setdiff(tlg_e_top_100, dem_top_100)
setdiff(addenda_tlg_e_top_100, addenda_dem_top_100)

tlg_top_1000 <-
    read_lines("data/tlg_top_1000_lemmatised_corrected.txt")

addenda_tlg_top_1000 <- setdiff(tlg_top_1000, current_greek)

tlg_top_1000_selection <-
    read_lines("data/tlg_top_1000_selection.txt")

addenda_tlg_top_1000_selection <- setdiff(tlg_top_1000_selection, current_greek)
View(addenda_tlg_top_1000_selection)

write_lines(addenda_tlg_top_1000_selection, "addenda_tlg_top_1000_selection.txt")

# Test from data files

tlg_100 <- read_lines("data/tlg_top_100.txt")
tlg_500 <- read_lines("data/tlg_top_500.txt")
tlg_1000 <- read_lines("data/tlg_top_1000.txt")

test <- read_lines("data/greek_paradigms/ho_articles.txt")
intersect(tlg_100, test) %>% length
intersect(tlg_500, test) %>% length
intersect(tlg_1000, test) %>% length
intersect(dem_top_100, test) %>% length
intersect(dem_top_500, test) %>% length

setdiff(tlg_100, current_greek)
setdiff(tlg_500, current_greek)
setdiff(tlg_1000, current_greek)
setdiff(dem_top_100, current_greek)
setdiff(dem_top_500, current_greek)
setdiff(union(tlg_100, dem_top_100), current_greek)
setdiff(union(tlg_500, dem_top_500), current_greek)

test <- read_lines("test.txt")
setdiff(test, current_greek)
intersect(test, tlg_100)
intersect(test, tlg_500)
intersect(test, tlg_1000)
intersect(test, dem_top_100)
intersect(test, dem_top_500)
setdiff(tlg_1000, current_greek)

# Add variant form with grave last vowel

test <- read_lines("test.txt")
test <- utf8::utf8_normalize(test)
## acute to grave
test_out <- str_replace_all(test, "^(.*)ά(.)?$", "\\1ά\\2\n\\1ὰ\\2")
test_out <- str_replace_all(test_out, "^(.*)έ(.)?$", "\\1έ\\2\n\\1ὲ\\2")
test_out <- str_replace_all(test_out, "^(.*)ή(.)?$", "\\1ή\\2\n\\1ὴ\\2")
test_out <- str_replace_all(test_out, "^(.*)ί(.)?$", "\\1ί\\2\n\\1ὶ\\2")
test_out <- str_replace_all(test_out, "^(.*)ό(.)?$", "\\1ό\\2\n\\1ὸ\\2")
test_out <- str_replace_all(test_out, "^(.*)ύ(.)?$", "\\1ύ\\2\n\\1ὺ\\2")
test_out <- str_replace_all(test_out, "^(.*)ώ(.)?$", "\\1ώ\\2\n\\1ὼ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾴ(.)?$", "\\1ᾴ\\2\n\\1ᾲ\\2")
test_out <- str_replace_all(test_out, "^(.*)ῄ(.)?$", "\\1ῄ\\2\n\\1ῂ\\2")
test_out <- str_replace_all(test_out, "^(.*)ῴ(.)?$", "\\1ῴ\\2\n\\1ῲ\\2")
## acute to grave with smooth breathing
test_out <- str_replace_all(test_out, "^(.*)ἄ(.)?$", "\\1ἄ\\2\n\\1ἂ\\2")
test_out <- str_replace_all(test_out, "^(.*)ἔ(.)?$", "\\1ἔ\\2\n\\1ἒ\\2")
test_out <- str_replace_all(test_out, "^(.*)ἤ(.)?$", "\\1ἤ\\2\n\\1ἢ\\2")
test_out <- str_replace_all(test_out, "^(.*)ἴ(.)?$", "\\1ἴ\\2\n\\1ἲ\\2")
test_out <- str_replace_all(test_out, "^(.*)ὄ(.)?$", "\\1ὄ\\2\n\\1ὂ\\2")
test_out <- str_replace_all(test_out, "^(.*)ὔ(.)?$", "\\1ὔ\\2\n\\1ὒ\\2")
test_out <- str_replace_all(test_out, "^(.*)ὤ(.)?$", "\\1ὤ\\2\n\\1ὢ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾄ(.)?$", "\\1ᾄ\\2\n\\1ᾂ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾔ(.)?$", "\\1ᾔ\\2\n\\1ᾒ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾤ(.)?$", "\\1ᾤ\\2\n\\1ᾢ\\2")
## acute to grave with rough breathing
test_out <- str_replace_all(test_out, "^(.*)ἅ(.)?$", "\\1ἅ\\2\n\\1ἃ\\2")
test_out <- str_replace_all(test_out, "^(.*)ἕ(.)?$", "\\1ἕ\\2\n\\1ἓ\\2")
test_out <- str_replace_all(test_out, "^(.*)ἥ(.)?$", "\\1ἥ\\2\n\\1ἣ\\2")
test_out <- str_replace_all(test_out, "^(.*)ἵ(.)?$", "\\1ἵ\\2\n\\1ἳ\\2")
test_out <- str_replace_all(test_out, "^(.*)ὅ(.)?$", "\\1ὅ\\2\n\\1ὃ\\2")
test_out <- str_replace_all(test_out, "^(.*)ὕ(.)?$", "\\1ὕ\\2\n\\1ὓ\\2")
test_out <- str_replace_all(test_out, "^(.*)ὥ(.)?$", "\\1ὥ\\2\n\\1ὣ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾅ(.)?$", "\\1ᾅ\\2\n\\1ᾃ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾕ(.)?$", "\\1ᾕ\\2\n\\1ᾓ\\2")
test_out <- str_replace_all(test_out, "^(.*)ᾥ(.)?$", "\\1ᾥ\\2\n\\1ᾣ\\2")
## acute to grave with diaeresis
test_out <- str_replace_all(test_out, "^(.*)ΐ(.)?$", "\\1ΐ\\2\n\\1ῒ\\2")
test_out <- str_replace_all(test_out, "^(.*)ΰ(.)?$", "\\1ΰ\\2\n\\1ῢ\\2")
write_lines(test_out, "test.txt")

# Add variant forms with non final sigma

test <- read_lines("test.txt")
test_out <- str_replace_all(test, "^(.*)ς$", "\\1ς\n\\1σ")
write_lines(test_out, "test.txt")

# Add variant forms with final lunate sigma (for articles)

test <- read_lines("test.txt")
test_out <- str_replace_all(test, "^(.*?)ς$", "\\1ς\n\\1ϲ")
test_out <- str_replace_all(test_out, "^(.*?)σ(.*?)$", "\\1σ\\2\n\\1ϲ\\2")
write_lines(test_out, "test_out.txt")

# Normalise Unicode encoding of combined characters

current_greek <- read_lines("stopwords_greek.txt")
current_greek <- utf8::utf8_normalize(current_greek)
write_lines(current_greek, "stopwords_greek.txt")

# Check lists of MFW

current_greek <- read_lines("stopwords_greek.txt")
setdiff(tlg_100, current_greek)
setdiff(tlg_500, current_greek)
setdiff(tlg_1000, current_greek)

# Test from resulting lists in Voyant Tools

cyrille_stopped_100 <- c("θεοῦ", "γάρ", "πάντων", "δέ", "πάντα", "ὅλων", "τί", "θεὸν", "θεὸς", "τούτοις", "γενέσθαι", "μωσέως", "πάλιν", "τοίνυν", "δόξαν", "γῆν", "ἑλλήνων", "λόγον", "λόγος", "φύσιν", "οἶμαι", "θεόν", "τούτων", "θεός", "καίτοι", "τρόπον", "λέγειν", "λέγων", "φύσει", "γῆς", "εἶναί", "δόξης", "θεῷ", "λόγου", "οὐρανὸν", "πλάτων", "τούτου", "ἀληθείας", "ἀνωτάτω", "μόνον", "ὀλυμπιάδι", "οὐδέν", "τούτῳ", "χρῆναι", "ἕνα", "ὅλως", "αὐτόν", "καί", "κόσμου", "σαφῶς", "γένεσιν", "λόγους", "λόγῳ", "μάλα", "φύσις", "φῶς", "εἰκόνα", "μάλιστα", "οὐρανόν", "ἀληθῶς", "δεῖν", "δογμάτων", "δύνασθαι", "ἔτει", "εἷς", "κόσμον", "μωσῆς", "νοῦν", "πλάτωνος", "τίς", "φρονεῖν", "κατά", "ἄνθρωπον", "ἀνθρώπου", "θεοῖς", "κύριος", "μωσέα", "οὐρανοῦ", "χριστιανῶν", "γῆ", "ἐκείνου", "ἕλλησι", "ἑτέροις", "θεσπέσιος", "θεῶν", "μόνος", "πρός", "σοφῶν", "στοιχείων", "φησί", "χρῆμα", "ἀβραάμ", "ἁγίων", "αὐτός", "γεγονότες", "δύναμις", "εἰκότως", "θεοὺς", "ὁμοίωσιν", "πάντως")

demosthenes_stopped_100 <- c("ἄνδρες", "ἀθηναῖοι", "δικασταί", "δεῖ", "δίκην", "νόμον", "πόλει", "δεῖν", "νόμους", "πόλιν", "πόλεως", "οἶμαι", "δικαίως", "χρήματα", "ἀληθῆ", "τρόπον", "δίκαιον", "νόμων", "λαβεῖν", "καλῶς", "ἀνθρώπων", "χρόνον", "ἀργύριον", "χρημάτων", "μάρτυρας", "πραγμάτων", "δίκαια", "ἀρχῆς", "λόγον", "νόμος", "προσήκει", "πράττειν", "πατὴρ", "μαρτυρίας", "φίλιππον", "φίλιππος", "λόγους", "εἰκότως", "ἀθηναίων", "δοκεῖ", "μαρτυρίαν", "ναῦν", "πατρὸς", "χρὴ", "ὀρθῶς", "βούλομαι", "εἰρήνην", "μνᾶς", "νόμοι", "ἁγνίου", "κακῶς", "ὕστερον", "ἑλλήνων", "νομίζω", "πόλις", "ψήφισμα", "φιλίππου", "νόμου", "λαβὼν", "πράγματα", "δοῦναι", "ψευδῆ", "φιλίππῳ", "ἡγοῦμαι", "χάριν", "ἀκούειν", "ἄξιον", "ἔδει", "πόλεμον", "δήμῳ", "λόγῳ", "μαρτυρια", "νόμοις", "χρήματ", "εἷς", "μαρτυριαι", "δύο", "οἶδ", "δῆμος", "πρᾶγμα", "ἓν", "ἰδίᾳ", "σαφῶς", "δῆλον", "ὁμοίως", "ἄνθρωπον", "ἀποδοῦναι", "δήμου", "νομοσ", "δῆμον", "κοινῇ", "πράγματ", "ἀνθρώπους", "δί", "πρέσβεις", "ἀκριβῶς", "εἰρήνης", "ὅλως", "πατρὶ", "δεινὸν")

xenophon_stopped_100 <- c("λακεδαιμόνιοι", "πόλιν", "ἀθηναῖοι", "λακεδαιμονίων", "ναῦς", "στράτευμα", "ἀγησίλαος", "ἀθηναίων", "θηβαῖοι", "λακεδαιμονίοις", "ἱππεῖς", "θάλατταν", "πόλεως", "χρήματα", "ἄνδρες", "πόλει", "λακεδαιμονίους", "πρέσβεις", "ὅπλα", "γῆν", "χώραν", "βασιλέως", "ἱππέας", "θηβαίων", "λακεδαίμονα", "πρόσθεν", "ἀρκάδες", "συμμάχων", "τριάκοντα", "λύσανδρος", "τριήρεις", "οἴκαδε", "δέκα", "πόλις", "σύμμαχοι", "συμμάχους", "τεῖχος", "εἰρήνην", "ἡμέρᾳ", "ἀπέκτειναν", "πολεμίων", "ὁπλίτας", "ὑστεραίᾳ", "ἀθηναίους", "λαβὼν", "πολεμίους", "ταχὺ", "ἀγησιλάου", "χώρας", "νεῶν", "χρόνον", "δύο", "ἄνδρας", "ἀργεῖοι", "ἀρκάδων", "βασιλέα", "φαρνάβαζος", "ἐδόκει", "νυκτὸς", "πλείους", "ἐκέλευον", "θηβαίους", "ἱππέων", "ἀγησίλαον", "ἀθηναίοις", "αὐτονόμους", "βοηθεῖν", "ὁπλῖται", "χρὴ", "ἐπορεύετο", "πολεμίοις", "ἡμέρας", "φαρναβάζου", "πολέμιοι", "τρεῖς", "φίλους", "ἀφίκετο", "δερκυλίδας", "ἡσυχίαν", "τείχη", "χρημάτων", "δοκεῖ", "μάχην", "πόλεμον", "ἀκούσαντες", "ἀπέθανον", "ἡμέραν", "κορινθίων", "πολέμῳ", "στρατιώτας", "τροπαῖον", "ἀλκιβιάδης", "ἀπῆλθον", "δέοι", "δώδεκα", "εἰρήνης", "ἠλεῖοι", "κορίνθιοι", "ὁπότε", "προθύμως")

iliade_stopped_100 <- c("αὐτὰρ", "μιν", "ἀχαιῶν", "ἐνὶ", "κεν", "ἕκτωρ", "ἀνδρῶν", "μέγα", "τρώων", "ῥ", "ἵππους", "διὸς", "νῆας", "θυμὸν", "ῥα", "ἠδὲ", "τρῶες", "ζεὺς", "ἠδ", "θυμῷ", "μένος", "προσέφη", "θεῶν", "δουρὶ", "ἔγχος", "φίλον", "υἱὸν", "ἀγαμέμνων", "αὖτε", "υἱὸς", "ἀπόλλων", "ἀχαιοὶ", "μάχεσθαι", "πολέμοιο", "ἥρη", "θυμὸς", "αἴας", "ὄφρα", "μῦθον", "ἀχιλλεύς", "δῖος", "χαλκῷ", "προσηύδα", "ἀθήνη", "αὖτις", "βῆ", "ἀνὴρ", "αἴ", "ἵπποι", "ἵππων", "ἠὲ", "ἀχιλλεὺς", "θεοὶ", "νηυσὶν", "ἕκτορα", "τρώεσσι", "ἄστυ", "ἄγε", "ἰδὼν", "αὖτ", "λαῶν", "ἂψ", "ἄναξ", "ἔπος", "νηυσὶ", "θεὰ", "μάχης", "ῥά", "ἴλιον", "τρῶας", "νηῶν", "τεύχεα", "ἀτρεΐδης", "ἀχαιούς", "ἕκτορι", "ἀχαιοί", "ἔπεα", "κῦδος", "ὄφρ", "πόδας", "τεῖχος", "γέρων", "δαναῶν", "δύω", "ἔπι", "λαὸν", "μήτηρ", "πριάμοιο", "βάλε", "μενέλαος", "φρεσὶ", "ἀμφ", "πόλεμον", "χεῖρας", "πατὴρ", "ἔργα", "κακὸν", "πὰρ", "πτερόεντα", "χερσὶν")

menandre_stopped_100 <- c("σω", "γο", "κν", "σικ", "σι", "πυ", "σιμ", "κακὸν", "δα", "δεῖ", "θεῶν", "θύραν", "κακῶς", "παῖ", "χαι", "βούλει", "κόρην", "μόνος", "τρόπον", "χρόνον", "δί", "εἶ", "οἶδ", "βούλομαι", "δία", "δοκεῖ", "εἷς", "μειράκιον", "γοργία", "γραῦ", "δίκελλαν", "θεοί", "πάτερ", "παῖδες", "πρᾶγμ", "σώστρατε", "ἄξιον", "εἴσω", "ἰδεῖν", "νοῦν", "οἴμοι", "πρᾶγμα", "βέλτιστε", "βίωι", "γέροντα", "γέρων", "δοκῶ", "ἡδέως", "θεῶι", "θύραι", "θύρας", "κακῶν", "κνήμων", "κο", "λαβεῖν", "λεβήτιον", "μικρὸν", "ον", "παιδίον", "παντελῶς", "πράγματ", "προσιέναι", "φήις", "φίλον", "φρέαρ", "χωρίον", "ἄνδρες", "ἄνθρωπε", "ἀνθρώπων", "ἀπολέσειαν", "γάμου", "γέτα", "γοργίας", "γυναῖκες", "δυναίμην", "ἔργον", "ἐλθὼν", "ἥκω", "ἡράκλεις", "θεοὺς", "θεούς", "καλῶς", "λαβὼν", "λόγον", "μηδαμῶς", "μητέρα", "μικροῦ", "νύμφαι", "ὅλως", "ὁρῶ", "οἰκίαν", "οἰκίας", "πλησίον", "προσιόντα", "τάλας", "τόπον", "τρόπωι", "τύχηι", "τυχὸν", "φέρειν")

sophocles_stopped_100 <- c("οι", "κρ", "χο", "ιο", "αγ", "θε", "γῆς", "θεῶν", "νιν", "εἶ", "δῆτ", "ant", "str", "οἰδίπους", "κακῶν", "πόλιν", "ὧδ", "ἄναξ", "λαΐου", "ἄνδρα", "βροτῶν", "γύναι", "θεοῦ", "κακά", "ἀνὴρ", "βίου", "καλῶς", "πατρός", "ποῖον", "ἀνδρὸς", "κάρα", "ὁρᾶν", "οἶδ", "σαφῶς", "φεῦ", "ὦναξ", "δεῖ", "δῆτα", "ἔσω", "ἰδεῖν", "μητρὸς", "πόλις", "πόλυβος", "ἀνήρ", "ἀρτίως", "δαιμόνων", "δεινὰ", "ἔπη", "ἔφυν", "θανεῖν", "ἰὼ", "κακὸς", "κρέων", "λάϊον", "λόγον", "λόγῳ", "οἴμοι", "πατρὸς", "πρόσθεν", "φοῖβος", "χάριν", "ἀκούειν", "ἀπόλλων", "γᾶς", "δεινὸν", "εἰδὼς", "εἷς", "ἦλθε", "κἀπὶ", "κακὰ", "κακός", "κεἰ", "κλύων", "κοὐκ", "μάντις", "μαθεῖν", "μέγαν", "μέγας", "μήποτ", "ὀρθὸν", "οἴκους", "οἶσθ", "οἰδίπου", "οὕνεκ", "πατέρα", "πατὴρ", "πέλας", "πόλει", "ποίας", "τὰν", "τανῦν", "τέκνων", "τοὔπος", "τύχης", "ὕπερ", "φέρειν", "φονεὺς", "χθονὸς", "χρόνῳ", "ἄγαν")

dion_cassius_stopped_100 <- c("καῖσαρ", "xiph", "ἔς", "καίσαρος", "ῥωμαίων", "exc", "κἀκ", "st", "καίπερ", "ἀρχὴν", "χρήματα", "προσέτι", "καίσαρα", "στρατιώτας", "ὁμοίως", "πόλιν", "σφων", "στρατιωτῶν", "δύο", "val", "ὕστερον", "ἀρχῆς", "τρόπον", "ῥώμην", "υἱ", "πλῆθος", "ἡμέρας", "χώραν", "ὄνομα", "ἀντώνιος", "πλεῖστον", "χρόνον", "ῥωμαῖοι", "ῥώμῃ", "τέλος", "ἀνθρώπων", "πόλεμον", "ταῦτά", "πλείω", "πομπήιος", "ἔργῳ", "ἔτη", "πόλει", "ἰσχυρῶς", "πλείους", "παραχρῆμα", "ἀντωνίου", "στρατιῶται", "et", "καίσαρι", "αὐγούστου", "λόγῳ", "πόλεως", "πολέμου", "αὔγουστος", "ῥωμαίους", "χρημάτων", "ἀκριβῶς", "ἀντώνιον", "ῥωμαίοις", "γνώμην", "μέγα", "βουλῆς", "ὅπλα", "πέντε", "πλήθει", "τιβέριος", "δεινῶς", "αἰτίαν", "δήμου", "πλεῖον", "ἀνδρῶν", "δεινὸν", "καλῶς", "στρατιώταις", "συχνοὺς", "νυκτὸς", "συχνοὶ", "ἰταλίαν", "μαθὼν", "δεῖ", "ἔτει", "ἰδίᾳ", "ἱππέων", "λαβεῖν", "πομπηίου", "βουλευτῶν", "πράγματα", "φοβηθεὶς", "ἡμέρᾳ", "πραγμάτων", "κακῶς", "δόξαν", "ἡμέραν", "ὀλίγου", "πομπήιον", "ἀρχὰς", "ἰταλίᾳ", "ἔπεμψε", "zon")

u1 <- union(demosthenes_stopped_100, xenophon_stopped_100)
u2 <- union(iliade_stopped_100, menandre_stopped_100)
u3 <- union(sophocles_stopped_100, dion_cassius_stopped_100)
u4 <- union(u1, u2)
u5 <- union(u3, u4)
length(u5)
setdiff(u5, current_greek)

setdiff(demosthenes_stopped_100, current_greek)
setdiff(xenophon_stopped_100, current_greek)
setdiff(iliade_stopped_100, current_greek)
setdiff(menandre_stopped_100, current_greek)
setdiff(sophocles_stopped_100, current_greek)
setdiff(dion_cassius_stopped_100, current_greek)
setdiff(cyrille_stopped_100, current_greek)

setdiff(dem_top_100, current_greek)

current_greek <- read_lines("stopwords_greek.txt")
test <- read_lines("test.txt")
setdiff(test, current_greek)

current_greek <- read_lines("stopwords_greek.txt")
greek_v1 <- read_lines("stopwords_greek_v1.txt")
tlg_100 <- read_lines("data/tlg_top_100.txt")
tlg_500 <- read_lines("data/tlg_top_500.txt")
tlg_1000 <- read_lines("data/tlg_top_1000.txt")

setdiff(tlg_100, current_greek) %>% length
setdiff(tlg_500, current_greek) %>% length
setdiff(tlg_1000, current_greek) %>% length

not_in_greek_v1 <- setdiff(current_greek, greek_v1)
intersect(tlg_100, not_in_greek_v1)
intersect(tlg_500, not_in_greek_v1)
intersect(tlg_1000, not_in_greek_v1)

# Version 2.1 after implementation of GreekCustomFilter in Voyant Tools
# which made variant forms of *sigma* redundant

# Make test files for Voyant

# initial oxia sample taken from TLGU converted Unicode text
# of TLG E Betacode file
test_oxia <-
    read_lines("voyant_test_files/voyant_test_grc_oxia.txt")
test_tonos_nfc <- utf8::utf8_normalize(test_oxia)
write_lines(test_tonos_nfc,
            "voyant_test_files/voyant_test_grc_tonos_nfc.txt")

test_oxia <- tolower(test_oxia)
test_oxia_split <- splitText(test_oxia)
write_lines(test_oxia_split,
            "voyant_test_files/voyant_test_grc_oxia_split.txt")
test_tonos_nfc <- tolower(test_tonos_nfc)
test_tonos_nfc_split <- splitText(test_tonos_nfc)
write_lines(test_tonos_nfc_split,
            "voyant_test_files/voyant_test_grc_tonos_nfc_split.txt")
setdiff(test_oxia_split, test_tonos_nfc_split)

test_oxia_split_nfc <- utf8::utf8_normalize(test_oxia_split)
write_lines(test_oxia_split_nfc,
            "voyant_test_files/voyant_test_grc_oxia_split_nfc.txt")
setdiff(test_oxia_split_nfc, test_tonos_nfc_split)

test_el <- read_lines("voyant_test_files/voyant_test_el.txt")
test_el_split <- splitText(test_el)
write_lines(test_el_split, "voyant_test_files/voyant_test_el_split.txt")

length(test_oxia_split)
length(test_tonos_nfc_split)
length(test_el_split)

# Totals
greek_v2 <- read_lines("stopwords_greek_v2.txt")
(empty <- sum(str_count(greek_v2, "^$")))  # empty lines
(comments <- sum(str_count(greek_v2, "^#(.*)")))  # comments
(stopwords_v2 <-
        sum(str_count(greek_v2, "^(.*)$")) - empty - comments)  # stop items

# Remove variant forms with non final sigma

sum(str_count(greek_v2, "^(.+)σ$"))
greek_v2_1 <- str_replace_all(greek_v2, "^(.+)σ$", "TEMP")
greek_v2_1 <- greek_v2_1[which(greek_v2_1 != "TEMP")]
write_lines(greek_v2_1, "stopwords_greek_v2_1.txt")
(stopwords_v2_1 <-
        sum(str_count(greek_v2_1, "^(.*)$")) - empty - comments)  # stop items

# Remove variant forms with final lunate sigma (for articles)

greek_v2_1 <- read_lines("stopwords_greek_v2_1.txt")
sum(str_count(greek_v2_1, "^(.*?)ϲ(.*?)$"))
greek_v2_1 <- str_replace_all(greek_v2_1, "^(.*?)ϲ(.*?)$", "TEMP")
greek_v2_1 <- greek_v2_1[which(greek_v2_1 != "TEMP")]
write_lines(greek_v2_1, "stopwords_greek_v2_1.txt")
(stopwords_v2_1 <-
        sum(str_count(greek_v2_1, "^(.*)$")) - empty - comments)  # stop items

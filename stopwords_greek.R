# Stopwords : Greek

# Perseus Digital Library list
## http://www.perseus.tufts.edu/hopper/stopwords 2017-10-14

grk_stop_perseus <- c("ἄλλος", "ἄν", "ἄρα", "ἀλλ'", "ἀλλά", "ἀπό", "αὐτός", "δ'", "δαί", "δαίς", "δέ", "δή", "διά", "ἑαυτοῦ", "ἔτι", "ἐάν", "ἐγώ", "ἐκ", "ἐμός", "ἐν", "ἐπί", "εἰ", "εἴμι", "εἰμί", "εἰς", "γάρ", "γα ", "γε", "ἡ", "ἤ", "καί", "κατά", "μέν", "μετά", "μή", "ὁ", "ὅδε", "ὅς", "ὅστις", "ὅτι", "οἱ", "οὕτως", "οὗτος", "οὐ", "οὔτε", "οὖν", "οὐδέ", "οὐδείς", "οὐκ", "παρά", "περί", "πρός", "σός", "σύ", "σύν", "τά", "τε", "τήν", "τῆς", "τῇ", "τι", "τί", "τίς", "τις", "τό", "τόν", "τοί", "τοιοῦτος", "τούς", "τοῦ", "τῶν", "τῷ", "ὑμός", "ὑπέρ", "ὑπό", "ὥστε", "ὡς", "ὦ")

# Digital Classicist list
## http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_greek
## originally from Perseus list, augmented AB 2016

grk_stop_digiclass <- c("ἄλλος", "ἄλλοσ", "ἄν", "ἂν", "ἄρα", "ἀλλ", "ἀλλ'", "ἀλλ’", "ἀλλά", "ἀλλὰ", "ἀπό", "ἀπὸ", "αὐτός", "αὐτόσ", "αὐτὸς", "αὐτὸσ", "δ", "δ'", "δ’", "δαί", "δαὶ", "δαίς", "δαίσ", "δαὶς", "δαὶσ", "δέ", "δὲ", "δή", "δὴ", "διά", "διὰ", "ἑαυτοῦ", "ἔτι", "ἐάν", "ἐὰν", "ἐγώ", "ἐγὼ", "ἐκ", "ἐμός", "ἐμόσ", "ἐμὸς", "ἐμὸσ", "ἐν", "ἐπί", "ἐπὶ", "εἰ", "εἴμι", "εἰμί", "εἰς", "εἰσ", "γάρ", "γὰρ", "γᾶ", "γε", "ἡ", "ἤ", "ἢ", "καί", "καὶ", "κατά", "κατὰ", "μέν", "μὲν", "μετά", "μετὰ", "μή", "μὴ", "ὁ", "ὅδε", "ὅς", "ὅσ", "ὃς", "ὃσ", "ὅστις", "ὅστισ", "ὅτι", "οἱ", "οὕτως", "οὕτωσ", "οὗτος", "οὗτοσ", "οὐ", "οὔτε", "οὖν", "οὐδέ", "οὐδὲ", "οὐδείς", "οὐδείσ", "οὐδεὶς", "οὐδεὶσ", "οὐκ", "οὔκ", "οὐχ", "παρά", "παρὰ", "περί", "περὶ", "πρός", "πρόσ", "πρὸς", "πρὸσ", "σός", "σόσ", "σὸς", "σὸσ", "σύ", "σὺ", "σύν", "σὺν", "τά", "τὰ", "τάσ", "τάς", "τὰσ", "τὰς", "ταῖς", "ταῖσ", "τε", "τήν", "τὴν", "τῆς", "τῆσ", "τῇ", "τι", "τί", "τὶ", "τίς", "τίσ", "τις", "τισ", "τό", "τὸ", "τόν", "τὸν", "τοί", "τοὶ", "τοιοῦτος", "τοιοῦτοσ", "τοῖς", "τοῖσ", "τούς", "τούσ", "τοὺς", "τοὺσ", "τοῦ", "τῶν", "τῷ", "ὑμός", "ὑμὸς", "ὑμόσ", "ὑμὸσ", "ὑπέρ", "ὑπό", "ὑπὸ", "ὥσ", "ὥστε", "ὡς", "ὡσ", "ὦ")

# Classical Language Toolkit Latin
## CLTK currently uses the Perseus list with grave accent variants added as stated here: https://github.com/cltk/cltk/blob/master/cltk/stop/greek/stops.py

grk_stop_cltk <- c("ἀλλ", "ἀλλὰ", "ἀλλά", "ἀπὸ", "ἀπό", "ἂν", "ἄλλος", "ἄν", "ἄρα", "αὐτὸς", "αὐτός", "γε", "γὰρ", "γάρ", "δ", "δαὶ", "δαὶς", "δαί", "δαίς", "διὰ", "διά", "δὲ", "δέ", "δὴ", "δή", "ἐὰν", "ἐάν", "ἑαυτοῦ", "ἐγὼ", "ἐγώ", "εἰ", "εἰμὶ", "εἰμί", "εἴμι", "εἰς", "ἐκ", "ἐμὸς", "ἐμός", "ἐν", "ἐξ", "ἐπὶ", "ἐπί", "ἔτι", "ἡ", "ἢ", "ἤ", "κατὰ", "κατά", "καὶ", "καί", "μετὰ", "μετά", "μὲν", "μέν", "μὴ", "μή", "ξύν", "ξὺν", "ὁ", "ὃδε", "ὅδε", "οἱ", "ὅς", "ὃς", "ὅστις", "ὅτι", "οὐ", "οὐδεὶς", "οὐδείς", "οὐδὲ", "οὐδέ", "οὐκ", "οὖν", "οὔτε", "οὗτος", "οὕτως", "παρὰ", "παρά", "περὶ", "περί", "πρὸς", "πρός", "σύν", "σὸς", "σός", "σὺ", "σὺν", "σὺν", "σύ", "σύν", "τε", "τι", "τις", "τοιοῦτος", "τοὶ", "τοί", "τοὺς", "τούς", "τοῖς", "τοῦ", "τὰ", "τά", "τᾶς", "τῇ", "τὴν", "τήν", "τῆς", "τὶ", "τί", "τὶς", "τίς", "τὸ", "τό", "τὸν", "τόν", "τῶν", "τῷ", "ὑμὸς", "ὑμός", "ὑπὲρ", "ὑπέρ", "ὑπὸ", "ὑπό", "ὦ", "ὡς", "ὥστε")

# Words in Annette von Stockhausen’s list
## https://github.com/pharos-alexandria/grk-stoplist/blob/master/stoplist-greek.txt
## source credited in https://github.com/stopwords-iso/

grk_stop_pharos <- c("ἃ", "αἱ", "αἵ", "αἳ", "ἄν", "ἀλλ'", "ἀλλὰ", "ἄλλος", "ἅμα", "ἂν", "ἀπ", "ἀπὸ", "ἄρα", "αὖ", "αὐτὸς", "ἀφ", "δ'", "δι'", "δὲ", "δέ", "δή", "δὴ", "διά", "διὰ", "δαὶ", "δαὶς", "ἐὰν", "ἑαυτοῦ", "ἔτι", "ἐγὼ", "ἐκ", "ἐμὸς", "ἐν", "ἐξ", "επ", "ἐπὶ", "εἰ", "εἴ", "εἰμὶ", "εἴμι", "εἰς", "εἴτε", "ἐπεὶ", "ἐστι", "ἐφ", "γάρ", "γὰρ", "γε", "γα^", "γοῦν", "ἡ", "ἢ", "ἥ", "ἣ", "ἧς", "ἵνα", "καί", "καὶ", "καίτοι", "κἀν", "κἂν", "καθ", "κατ", "κατὰ", "κατά", "μεθ", "μἐν", "μὲν", "μετ", "μετὰ", "μή", "μὴ", "μὴν", "μήτε", "ὁ", "ὃ", "ὅ", "ὅδε", "ὅθεν", "οἷς", "ὃν", "ὅπερ", "ὅς", "ὃς", "ὅστις", "ὅτε", "ὅτι", "οὓς", "οὕτω", "οὕτως", "οὗτος", "οὔτε", "οὖν", "οὐδ", "οὐδεὶς", "οὐδὲν", "οἱ", "οἳ", "οὗ", "οὐ", "οὐδὲ", "οὐκ", "οὐχ", "οὐχὶ", "παρ", "παρὰ", "περὶ", "ποτε", "που", "ποῦ", "πρὸ", "προ", "πρὸς", "πως", "σὸς", "σὺ", "σὺν", "τά", "τὰ", "ταῖς", "τὰς", "τε", "τὴν", "τῆς", "τῇ", "τι", "τί", "τινα", "τις", "τίς", "τὸ", "τοι", "τοῖς", "τοιοῦτος", "τὸν", "τότε", "τοὺς", "τοῦ", "τῶν", "τῷ", "ὑπ", "ὑπὲρ", "ὑπὸ", "ὡς", "ὥς", "ὦ", "ᾧ", "ὥστε")

# Compare lists

cltk_not_in_perseus <- setdiff(grk_stop_cltk,grk_stop_perseus)
length(cltk_not_in_perseus)
cltk_not_in_perseus <- sort(cltk_not_in_perseus)

cltk_not_in_digiclass <- setdiff(grk_stop_cltk,grk_stop_digiclass)
length(cltk_not_in_digiclass)
cltk_not_in_digiclass <- sort(cltk_not_in_digiclass)

digiclass_not_in_cltk <- setdiff(grk_stop_digiclass,grk_stop_cltk)
length(digiclass_not_in_cltk)
digiclass_not_in_cltk <- sort(digiclass_not_in_cltk)

digiclass_cltk <- c(grk_stop_digiclass,grk_stop_cltk)

perseus_only <- setdiff(grk_stop_perseus,digiclass_cltk)
length(perseus_only)
perseus_only <- sort(perseus_only)

perseus_digiclass_cltk <- c(grk_stop_perseus,grk_stop_digiclass,grk_stop_cltk)

pharos_only <- setdiff(grk_stop_pharos,perseus_digiclass_cltk)
length(pharos_only)
pharos_only <- sort(pharos_only)

# View all lists

grk_max <- max(length(grk_stop_perseus),length(grk_stop_digiclass),length(grk_stop_cltk),length(grk_stop_pharos),length(cltk_not_in_perseus),length(cltk_not_in_digiclass))
length(grk_stop_perseus) <- grk_max
length(grk_stop_digiclass) <- grk_max
length(grk_stop_cltk) <- grk_max
length(grk_stop_pharos) <- grk_max
length(cltk_not_in_perseus) <- grk_max
length(cltk_not_in_digiclass) <- grk_max
length(digiclass_not_in_cltk) <- grk_max
length(pharos_only) <- grk_max
length(perseus_only) <- grk_max

m.all <- cbind(grk_stop_perseus,grk_stop_digiclass,grk_stop_cltk,grk_stop_pharos,cltk_not_in_perseus,cltk_not_in_digiclass,digiclass_not_in_cltk,pharos_only,perseus_only)
colnames(m.all) <- c("Perseus","DigiClass","CLTK","Pharos","CLTK not Perseus","CLTK not DigiClass","DigiClass not CLTK","Pharos only","Perseus only")

View(m.all)

# Potential addenda to DigiClass list

perseus_cltk_pharos <- c(grk_stop_perseus,grk_stop_cltk,grk_stop_pharos)
grk_not_in_digiclass <- setdiff(perseus_cltk_pharos,grk_stop_digiclass)
length(grk_not_in_digiclass)
grk_not_in_digiclass <- sort(grk_not_in_digiclass)

# Compare with DCC greek list

current_greek <- scan("stopwords_greek.txt", what = "character", sep = "\n")

v.dcc_greek_100 <- as.vector(dcc_greek[1:100])
addenda_dcc_greek_100 <- setdiff(v.dcc_greek_100,current_greek)
v.dcc_greek_200 <- as.vector(dcc_greek[1:200])
addenda_dcc_greek_200 <- setdiff(v.dcc_greek_200,current_greek)
v.dcc_greek_all <- as.vector(dcc_greek)
addenda_dcc_greek <- setdiff(v.dcc_greek_all,current_greek)

View(addenda_dcc_greek)
<<<<<<< HEAD

not_in_dcc_greek_100 <- setdiff(current_greek,v.dcc_greek_100)
=======
>>>>>>> 02340e4d25d2d30fb55941acc6222ecd1a3ee4c0

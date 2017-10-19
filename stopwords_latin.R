# Stopwords : Latin

# Perseus Digital Library list
## http://www.perseus.tufts.edu/hopper/stopwords 2017-10-09

lat_stop_perseus <- c("ab", "ac", "ad", "adhic", "aliqui", "aliquis", "an", "ante", "apud", "at", "atque", "aut", "autem", "cum", "cur", "de", "deinde", "dum", "ego", "enim", "ergo", "es", "est", "et", "etiam", "etsi", "ex", "fio", "haud", "hic", "iam", "idem", "igitur", "ille", "in", "infra", "inter", "interim", "ipse", "is", "ita", "magis", "modo", "mox", "nam", "ne", "nec", "necque", "neque", "nisi", "non", "nos", "o", "ob", "per", "possum", "post", "pro", "quae", "quam", "quare", "qui", "quia", "quicumque", "quidem", "quilibet", "quis", "quisnam", "quisquam", "quisque", "quisquis", "quo", "quoniam", "sed", "si", "sic", "sive", "sub", "sui", "sum", "super", "suus", "tam", "tamen", "trans", "tu", "tum", "ubi", "uel", "uero", "unus", "ut")

# Digital Classicist list
## http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin
## originally from Perseus list, but differs from the online Perseus list ("unus" and "ut" were removed or lost)

## 95-word stoplist augmented AB 2017-10-07
lat_stop_digiclass <- c("a", "ab", "ac", "ad", "adhic", "aliqui", "aliquis", "an", "ante", "apud", "at", "atque", "aut", "autem", "cum", "cur", "de", "deinde", "dum", "ego", "enim", "ergo", "es", "est", "et", "etiam", "etsi", "ex", "fio", "haud", "hic", "iam", "jam", "idem", "igitur", "ille", "in", "infra", "inter", "interim", "ipse", "is", "ita", "magis", "modo", "mox", "nam", "ne", "nec", "necque", "neque", "nisi", "non", "nos", "o", "ob", "per", "possum", "post", "pro", "quae", "quam", "quare", "qui", "quia", "quicumque", "quidem", "quilibet", "quis", "quisnam", "quisquam", "quisque", "quisquis", "quo", "quoniam", "sed", "si", "sic", "sive", "siue", "sub", "sui", "sum", "super", "suus", "tam", "tamen", "trans", "tu", "tum", "ubi", "uel", "vel", "uero", "vero")

# Classical Language Toolkit Latin
## CLTK currently uses the Perseus list as stated here: https://github.com/cltk/cltk/blob/master/cltk/stop/latin/stops.py

## However, Patrick Burns is working towards better Latin stopwords for the CLTK
## I refer here to the NLP-based lists quoted in https://github.com/diyclassics/stopwords (slides) and loosely call them `cltk` lists 2017-10-07

## 100-word stoplist by mean probability
lat_stop_cltk_mean <- c("et", "in", "est", "non", "ad", "ut", "cum", "quod", "qui", "sed", "si", "de", "quae", "quam", "per", "ex", "nec", "sunt", "esse", "se", "hoc", "enim", "ab", "aut", "autem", "etiam", "quid", "te", "atque", "uel", "eius", "me", "quo", "sit", "iam", "quia", "ne", "haec", "mihi", "tamen", "ac", "tibi", "nam", "sic", "ita", "id", "pro", "eo", "nunc", "uero", "neque", "inter", "quem", "erat", "ille", "ergo", "ipse", "eum", "quibus", "quoque", "sibi", "ego", "quidem", "nisi", "qua", "omnia", "hic", "post", "fuit", "tu", "nihil", "ea", "illa", "his", "omnes", "nos", "esset", "modo", "dum", "sine", "quis", "ubi", "sicut", "ante", "sub", "tam", "secundum", "deus", "potest", "dei", "nobis", "quos", "igitur", "ei", "omnibus", "res", "cui", "sua", "apud", "eorum")

## 100-word stoplist by variance probability
lat_stop_cltk_var <- c("et", "in", "est", "non", "quod", "ad", "ut", "cum", "qui", "de", "si", "sed", "quae", "per", "ex", "quam", "esse", "nec", "te", "sunt", "autem", "me", "enim", "se", "dig", "hoc", "aut", "ab", "bibit", "quid", "uel", "atque", "mihi", "eius", "quaestio", "pro", "etiam", "tibi", "quia", "sit", "iam", "secundum", "quo", "ac", "ne", "ergo", "od", "nihil", "tu", "haec", "sic", "id", "nam", "ego", "neque", "tamen", "eum", "deus", "nunc", "dei", "ita", "eo", "uero", "sicut", "uos", "hic", "erat", "nouus", "fuit", "nos", "ille", "inter", "dum", "quem", "quoque", "quidem", "esset", "bellum", "ipse", "sibi", "nummus", "anno", "quibus", "post", "his", "omnia", "ea", "super", "qua", "sub", "illa", "dominus", "deo", "rex", "nisi", "totus", "dixit", "dicitur", "ed", "ante")

## 100-word stoplist by entropy
lat_stop_cltk_ent <- c("et", "in", "est", "non", "ad", "ut", "cum", "quod", "qui", "sed", "si", "de", "quae", "quam", "per", "ex", "nec", "sunt", "esse", "se", "hoc", "ab", "enim", "aut", "autem", "etiam", "quid", "quo", "atque", "eius", "te", "uel", "sit", "me", "iam", "ne", "haec", "quia", "tamen", "nam", "ac", "mihi", "ita", "sic", "tibi", "id", "pro", "eo", "inter", "nunc", "quem", "ipse", "uero", "neque", "quibus", "ille", "erat", "eum", "sibi", "qua", "nisi", "quoque", "ergo", "quidem", "omnia", "post", "hic", "fuit", "ego", "ea", "nihil", "omnes", "his", "illa", "modo", "tu", "esset", "sine", "nos", "dum", "ubi", "ante", "quis", "tam", "sub", "sicut", "quos", "omnibus", "potest", "nobis", "sua", "cui", "igitur", "res", "ei", "tantum", "cuius", "apud", "contra", "magis")

## 100-word aggregate stoplist by Borda sort
lat_stop_cltk_borda <- c("et", "in", "est", "non", "ad", "ut", "quod", "cum", "qui", "si", "sed", "de", "quae", "quam", "per", "ex", "nec", "esse", "sunt", "se", "hoc", "enim", "autem", "ab", "aut", "te", "quid", "uel", "etiam", "atque", "me", "eius", "quo", "sit", "quia", "iam", "ne", "ac", "mihi", "haec", "tamen", "tibi", "pro", "nam", "id", "ita", "sic", "eo", "neque", "uero", "eum", "nunc", "inter", "ergo", "erat", "quem", "ipse", "ego", "quibus", "nihil", "ille", "quoque", "quidem", "sibi", "dig", "nisi", "qua", "post", "ea", "tu", "hic", "fuit", "omnia", "his", "esset", "nos", "sicut", "illa", "omnes", "sine", "secundum", "bibit", "modo", "dum", "quis", "quaestio", "ubi", "deus", "od", "ante", "dei", "potest", "tam", "sub", "ei", "uos", "nouus", "quos", "nobis", "bellum")

# List from "Stopwords ISO" Latin
## https://github.com/stopwords-iso/stopwords-la
lat_stop_iso <- c("a","ab","ac","ad","at","atque","aut","autem","cum","de","dum","e","erant","erat","est","et","etiam","ex","haec","hic","hoc","in","ita","me","nec","neque","non","per","qua","quae","quam","qui","quibus","quidem","quo","quod","re","rebus","rem","res","sed","si","sic","sunt","tamen","tandem","te","ut","vel")

# Compare CLTK lists

cm <- sort(lat_stop_cltk_mean)
cv <- sort(lat_stop_cltk_var)
ce <- sort(lat_stop_cltk_ent)
cb <- sort(lat_stop_cltk_borda)

cltk_all <- c(lat_stop_cltk_mean,lat_stop_cltk_var,lat_stop_cltk_ent,lat_stop_cltk_borda)
t.cltk_all <- as.data.frame(table(cltk_all))
t.cltk_all.sorted <- as.data.frame(sort(table(cltk_all)))

## Words in 1, 2, 3, 4 lists
t.1 <- t.cltk_all[t.cltk_all$Freq == 1,]$cltk_all
t.2 <- t.cltk_all[t.cltk_all$Freq == 2,]$cltk_all
t.3 <- t.cltk_all[t.cltk_all$Freq == 3,]$cltk_all
t.4 <- t.cltk_all[t.cltk_all$Freq == 4,]$cltk_all
t.1
length(t.1)

# Compare lists

cltk_not_in_digiclass <- setdiff(cltk_all,lat_stop_digiclass)
length(cltk_not_in_digiclass)
sort(cltk_not_in_digiclass)

digiclass_not_in_cltk <- setdiff(lat_stop_digiclass,cltk_all)
length(digiclass_not_in_cltk)
sort(digiclass_not_in_cltk)

digiclass_cltk <- c(lat_stop_digiclass,cltk_all)
iso_only <- setdiff(lat_stop_iso,digiclass_cltk)

digiclass_cltk_iso <- c(lat_stop_digiclass,cltk_all,lat_stop_iso)
perseus_only <- setdiff(lat_stop_perseus,digiclass_cltk_iso)

# View all lists

lat_max <- max(length(lat_stop_perseus),length(lat_stop_digiclass),length(lat_stop_cltk_mean),length(lat_stop_cltk_var),length(lat_stop_cltk_ent),length(lat_stop_cltk_borda),length(lat_stop_iso),length(cltk_not_in_digiclass),length(digiclass_not_in_cltk),length(iso_only),length(perseus_only))
length(lat_stop_perseus) <- lat_max
length(lat_stop_digiclass) <- lat_max
length(lat_stop_cltk_mean) <- lat_max
length(lat_stop_cltk_var) <- lat_max
length(lat_stop_cltk_ent) <- lat_max
length(lat_stop_cltk_borda) <- lat_max
length(lat_stop_iso) <- lat_max
length(cltk_not_in_digiclass) <- lat_max
length(digiclass_not_in_cltk) <- lat_max
length(iso_only) <- lat_max
length(perseus_only) <- lat_max

m.all <- cbind(lat_stop_perseus,lat_stop_digiclass,cm,cv,ce,cb,lat_stop_iso,cltk_not_in_digiclass,digiclass_not_in_cltk,iso_only,perseus_only)
colnames(m.all) <- c("Perseus","DigiClass","CLTK mean","CLTK var","CLTK ent","CLTK borda","ISO","CLTK not DigiClass","DigiClass not CLTK","ISO only","Perseus only")

View(m.all)

# Potential addenda to DigiClass list

perseus_cm_ce_cv_cb_iso <- c(lat_stop_perseus,lat_stop_cltk_mean,lat_stop_cltk_var,lat_stop_cltk_ent,lat_stop_cltk_borda,lat_stop_iso)
lat_not_in_digiclass <- setdiff(perseus_cm_ce_cv_cb_iso,lat_stop_digiclass)
length(lat_not_in_digiclass)
lat_not_in_digiclass <- sort(lat_not_in_digiclass)

# Compare with DCC latin list

dcc_latin <- scan("data/data_dcc/dcc_latin_lemmas.txt", what = "character", sep = "\n")
dcc_latin <- gsub("ā", "a", dcc_latin)
dcc_latin <- gsub("ā", "a", dcc_latin)
dcc_latin <- gsub("ē", "e", dcc_latin)
dcc_latin <- gsub("ī", "i", dcc_latin)
dcc_latin <- gsub("ī", "i", dcc_latin)
dcc_latin <- gsub("ō", "o", dcc_latin)
dcc_latin <- gsub("ō", "o", dcc_latin)
dcc_latin <- gsub("ū", "u", dcc_latin)
dcc_latin <- gsub("ū", "u", dcc_latin)

current_latin <- scan("stopwords_latin.txt", what = "character", sep = "\n")

v.dcc_latin_100 <- as.vector(dcc_latin[1:100])
addenda_dcc_latin_100 <- setdiff(v.dcc_latin_100,current_latin)
v.dcc_latin_200 <- as.vector(dcc_latin[1:200])
addenda_dcc_latin_200 <- setdiff(v.dcc_latin_200,current_latin)
v.dcc_latin_all <- as.vector(dcc_latin)
addenda_dcc_latin <- setdiff(v.dcc_latin_all,current_latin)

View(addenda_dcc_latin)

not_in_dcc_latin_100 <- setdiff(current_latin,v.dcc_latin_100)
>>>>>>> 02340e4d25d2d30fb55941acc6222ecd1a3ee4c0

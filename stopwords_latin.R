# Stopwords: Latin

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

# View(addenda_dcc_latin)

not_in_dcc_latin_100 <- setdiff(current_latin,v.dcc_latin_100)

# Cicero most frequent words (no lemmatisation)

cic_top_100 <- c("et", "in", "non", "est", "ut", "cum", "quod", "ad", "qui", "si", "esse", "de", "sed", "quae", "quam", "aut", "enim", "a", "quid", "me", "te", "ex", "etiam", "hoc", "atque", "id", "mihi", "sunt", "se", "sit", "quo", "autem", "nihil", "quidem", "ne", "tamen", "nec", "ego", "ab", "tum", "neque", "haec", "ea", "ita", "ac", "modo", "re", "tu", "tibi", "iam", "esset", "nam", "quem", "eius", "vero", "eo", "qua", "quibus", "causa", "igitur", "rem", "per", "res", "ille", "nisi", "tam", "omnia", "illa", "pro", "nunc", "eum", "nos", "fuit", "illud", "sic", "potest", "rei", "rebus", "ipse", "sine", "vel", "erat", "is", "an", "nobis", "ante", "c", "m", "omnibus", "quis", "omnium", "his", "hic", "omnis", "itaque", "at", "publicae", "con", "rerum", "primum")

cic_top_500 <- scan("/Users/aurel/Documents/github/stopwords/data/cic_top_500.txt", what = "character", sep = "\n")

# bug: length?
# cic_top_500 <- c("et", "in", "non", "est", "ut", "cum", "quod", "ad", "qui", "si", "esse", "de", "sed", "quae", "quam", "aut", "enim", "a", "quid", "me", "te", "ex", "etiam", "hoc", "atque", "id", "mihi", "sunt", "se", "sit", "quo", "autem", "nihil", "quidem", "ne", "tamen", "nec", "ego", "ab", "tum", "neque", "haec", "ea", "ita", "ac", "modo", "re", "tu", "tibi", "iam", "esset", "nam", "quem", "eius", "vero", "eo", "qua", "quibus", "causa", "igitur", "rem", "per", "res", "ille", "nisi", "tam", "omnia", "illa", "pro", "nunc", "eum", "nos", "fuit", "illud", "sic", "potest", "rei", "rebus", "ipse", "sine", "vel", "erat", "is", "an", "nobis", "ante", "c", "m", "omnibus", "quis", "omnium", "his", "hic", "omnis", "itaque", "at", "publicae", "con", "rerum", "primum", "quos", "fuisse", "posse", "idem", "sibi", "sint", "omnes", "apud", "satis", "eos", "cuius", "aliquid", "ei", "ipsa", "eam", "contra", "solum", "publica", "quasi", "semper", "eorum", "dicere", "l", "magis", "ipsum", "illi", "homines", "possit", "maxime", "vos", "hominum", "iis", "quoniam", "multa", "iudices", "natura", "illum", "causam", "verum", "saepe", "tua", "hanc", "erit", "p", "inquit", "deinde", "hac", "mea", "cui", "senatus", "minus", "e", "inter", "nulla", "genere", "propter", "cicero", "illo", "ista", "fieri", "quas", "nemo", "facere", "populi", "sum", "animi", "quoque", "huius", "quia", "numquam", "cur", "omni", "tantum", "tempore", "hunc", "animo", "vobis", "videtur", "quorum", "loco", "sua", "ob", "litteras", "potius", "post", "num", "litteris", "certe", "necesse", "romani", "huic", "ipsi", "umquam", "publicam", "hominem", "ergo", "ratio", "nostra", "unum", "ipso", "iure", "omnino", "suis", "alia", "denique", "quin", "d", "que", "vita", "summa", "factum", "dum", "essent", "genus", "una", "suo", "aliud", "vi", "iudicium", "eadem", "s", "ratione", "modi", "q", "vim", "vis", "velim", "habere", "verbis", "quantum", "habet", "illam", "oratio", "posset", "quamquam", "fore", "iudicio", "tanta", "modum", "lege", "tuis", "iste", "multis", "illius", "illis", "quaedam", "facile", "bene", "meo", "videatur", "eis", "etsi", "nomen", "sin", "eodem", "multo", "populo", "di", "dicam", "magna", "ubi", "fuerit", "consilio", "o", "plus", "nullum", "tempus", "es", "video", "bellum", "nostri", "tuum", "suum", "die", "tuo", "meum", "rationem", "tuae", "dixi", "sive", "hominis", "uti", "postea", "praeter", "uno", "quicquam", "nomine", "homo", "sal", "cn", "sententia", "vitae", "praesertim", "attico", "nostrum", "sane", "virtute", "erant", "nullo", "senatu", "vir", "tui", "nostris", "tota", "fortasse", "ius", "meam", "fere", "sumus", "dies", "bonis", "dicitur", "ulla", "tuam", "tur", "dicendi", "locum", "etenim", "viri", "aliis", "ceteris", "possunt", "prae", "bus", "istius", "aliqua", "consilium", "puto", "oportere", "item", "opus", "suam", "partem", "dico", "dixit", "simul", "recte", "alterum", "antea", "inquam", "potuit", "facta", "magno", "studio", "plane", "parte", "valde", "eas", "paulo", "sui", "deorum", "rum", "venit", "pecuniam", "dici", "tamquam", "omnem", "possum", "scribis", "utrum", "profecto", "scire", "kal", "senatum", "com", "civium", "meae", "nescio", "auctoritate", "romae", "animum", "fuerunt", "bona", "duo", "pecunia", "vitam", "equidem", "fit", "hominibus", "nullam", "civitatis", "romano", "aliquando", "ipsis", "mei", "meis", "fuisset", "credo", "forte", "bonum", "domum", "civis", "leges", "causae", "diu", "alii", "locus", "tot", "multi", "fidem", "naturae", "ipsius", "salutem", "totum", "iuris", "bonorum", "deos", "isto", "locis", "fortuna", "melius", "vehementer", "adhuc", "legem", "omne", "statim", "consul", "provincia", "mus", "boni", "caesaris", "homine", "t", "bello", "minime", "arbitror", "oratione", "horum", "videri", "i", "tandem", "tecum", "corporis", "praeterea", "paene", "partim", "memoria", "fecit", "istum", "vix", "noster", "mecum", "civitate", "legibus", "neminem", "populus", "quisquam", "nostro", "urbem", "caesar", "dis", "suae", "tem", "idque", "lex", "verborum", "cura", "ferre", "naturam", "belli", "multum", "summo", "debet", "genera", "prope", "licet", "animus", "futurum", "vestra", "orationis", "mi", "videretur", "domi", "isti", "consules", "magnum", "nonne", "aliquo", "diem", "unde", "urbe", "dolore", "mortem", "numero", "quare", "tuas", "videntur", "causis", "sex", "cetera", "homini", "partes", "sis", "alter", "patres", "plura", "quisque", "sententiam", "verba", "litterae")

addenda_cic_top_100 <- setdiff(cic_top_100,current_latin)
addenda_cic_top_100
addenda_cic_top_500 <- setdiff(cic_top_500,current_latin)
addenda_cic_top_500

not_in_cic_top_100 <- setdiff(current_latin,cic_top_100)
not_in_cic_top_100

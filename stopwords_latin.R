# Stopwords : Latin

# Digital Classicist list
## http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin
## originally from Perseus list – but origin of Perseus list unclear and it differs from the version quoted in CLTK material below

## 95-word stoplist augmented AB 2017-10-07
lat_stop_digiclass <- c("a", "ab", "ac", "ad", "adhic", "aliqui", "aliquis", "an", "ante", "apud", "at", "atque", "aut", "autem", "cum", "cur", "de", "deinde", "dum", "ego", "enim", "ergo", "es", "est", "et", "etiam", "etsi", "ex", "fio", "haud", "hic", "iam", "jam", "idem", "igitur", "ille", "in", "infra", "inter", "interim", "ipse", "is", "ita", "magis", "modo", "mox", "nam", "ne", "nec", "necque", "neque", "nisi", "non", "nos", "o", "ob", "per", "possum", "post", "pro", "quae", "quam", "quare", "qui", "quia", "quicumque", "quidem", "quilibet", "quis", "quisnam", "quisquam", "quisque", "quisquis", "quo", "quoniam", "sed", "si", "sic", "sive", "siue", "sub", "sui", "sum", "super", "suus", "tam", "tamen", "trans", "tu", "tum", "ubi", "uel", "vel", "uero", "vero")

# CLTK Latin
## as quoted in https://github.com/diyclassics/stopwords (slides) 2017-10-07

## 100-word stoplist by mean probability
lat_stop_cltk_mean <- c("et", "in", "est", "non", "ad", "ut", "cum", "quod", "qui", "sed", "si", "de", "quae", "quam", "per", "ex", "nec", "sunt", "esse", "se", "hoc", "enim", "ab", "aut", "autem", "etiam", "quid", "te", "atque", "uel", "eius", "me", "quo", "sit", "iam", "quia", "ne", "haec", "mihi", "tamen", "ac", "tibi", "nam", "sic", "ita", "id", "pro", "eo", "nunc", "uero", "neque", "inter", "quem", "erat", "ille", "ergo", "ipse", "eum", "quibus", "quoque", "sibi", "ego", "quidem", "nisi", "qua", "omnia", "hic", "post", "fuit", "tu", "nihil", "ea", "illa", "his", "omnes", "nos", "esset", "modo", "dum", "sine", "quis", "ubi", "sicut", "ante", "sub", "tam", "secundum", "deus", "potest", "dei", "nobis", "quos", "igitur", "ei", "omnibus", "res", "cui", "sua", "apud", "eorum")

## 100-word stoplist by variance probability
lat_stop_cltk_var <- c("et", "in", "est", "non", "quod", "ad", "ut", "cum", "qui", "de", "si", "sed", "quae", "per", "ex", "quam", "esse", "nec", "te", "sunt", "autem", "me", "enim", "se", "dig", "hoc", "aut", "ab", "bibit", "quid", "uel", "atque", "mihi", "eius", "quaestio", "pro", "etiam", "tibi", "quia", "sit", "iam", "secundum", "quo", "ac", "ne", "ergo", "od", "nihil", "tu", "haec", "sic", "id", "nam", "ego", "neque", "tamen", "eum", "deus", "nunc", "dei", "ita", "eo", "uero", "sicut", "uos", "hic", "erat", "nouus", "fuit", "nos", "ille", "inter", "dum", "quem", "quoque", "quidem", "esset", "bellum", "ipse", "sibi", "nummus", "anno", "quibus", "post", "his", "omnia", "ea", "super", "qua", "sub", "illa", "dominus", "deo", "rex", "nisi", "totus", "dixit", "dicitur", "ed", "ante")

## 100-word stoplist by entropy
lat_stop_cltk_ent <- c("et", "in", "est", "non", "ad", "ut", "cum", "quod", "qui", "sed", "si", "de", "quae", "quam", "per", "ex", "nec", "sunt", "esse", "se", "hoc", "ab", "enim", "aut", "autem", "etiam", "quid", "quo", "atque", "eius", "te", "uel", "sit", "me", "iam", "ne", "haec", "quia", "tamen", "nam", "ac", "mihi", "ita", "sic", "tibi", "id", "pro", "eo", "inter", "nunc", "quem", "ipse", "uero", "neque", "quibus", "ille", "erat", "eum", "sibi", "qua", "nisi", "quoque", "ergo", "quidem", "omnia", "post", "hic", "fuit", "ego", "ea", "nihil", "omnes", "his", "illa", "modo", "tu", "esset", "sine", "nos", "dum", "ubi", "ante", "quis", "tam", "sub", "sicut", "quos", "omnibus", "potest", "nobis", "sua", "cui", "igitur", "res", "ei", "tantum", "cuius", "apud", "contra", "magis")

## 100-word aggregate stoplist by Borda sort
lat_stop_cltk_borda <- c("et", "in", "est", "non", "ad", "ut", "quod", "cum", "qui", "si", "sed", "de", "quae", "quam", "per", "ex", "nec", "esse", "sunt", "se", "hoc", "enim", "autem", "ab", "aut", "te", "quid", "uel", "etiam", "atque", "me", "eius", "quo", "sit", "quia", "iam", "ne", "ac", "mihi", "haec", "tamen", "tibi", "pro", "nam", "id", "ita", "sic", "eo", "neque", "uero", "eum", "nunc", "inter", "ergo", "erat", "quem", "ipse", "ego", "quibus", "nihil", "ille", "quoque", "quidem", "sibi", "dig", "nisi", "qua", "post", "ea", "tu", "hic", "fuit", "omnia", "his", "esset", "nos", "sicut", "illa", "omnes", "sine", "secundum", "bibit", "modo", "dum", "quis", "quaestio", "ubi", "deus", "od", "ante", "dei", "potest", "tam", "sub", "ei", "uos", "nouus", "quos", "nobis", "bellum")


# Compare CLTK lists

cm <- sort(lat_stop_cltk_mean)
cv <- sort(lat_stop_cltk_var)
ce <- sort(lat_stop_cltk_ent)
cb <- sort(lat_stop_cltk_borda)

m.cltk <- matrix(c(cm,cv,ce,cb), ncol = 4)
colnames(m.cltk) <- c("CLTK_mean","CLTK_var","CLTK_ent","CLTK_borda")
View(m.cltk)

all <- c(lat_stop_cltk_mean,lat_stop_cltk_var,lat_stop_cltk_ent,lat_stop_cltk_borda)
t.all <- as.data.frame(table(all))
t.all.sorted <- as.data.frame(sort(table(all)))

## Words in 1 to 4 lists
t.4 <- t.all[t.all$Freq == 4,]$all
t.3 <- t.all[t.all$Freq == 3,]$all
t.2 <- t.all[t.all$Freq == 2,]$all
t.1 <- t.all[t.all$Freq == 1,]$all
t.1
length(t.1)


# Compare CLTK lists with Digiclass list

cltk_not_in_digiclass <- setdiff(all,lat_stop_digiclass)
sort(cltk_not_in_digiclass)

digiclass_not_in_cltk <- setdiff(lat_stop_digiclass,all)
sort(digiclass_not_in_cltk)

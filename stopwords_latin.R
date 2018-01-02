# Stopwords: Latin

# Current list

current_latin <- read_lines("stopwords_latin.txt")

# Perseus Digital Library list
## http://www.perseus.tufts.edu/hopper/stopwords 2017-10-09

lat_stop_perseus <- c("ab", "ac", "ad", "adhic", "aliqui", "aliquis", "an", "ante", "apud", "at", "atque", "aut", "autem", "cum", "cur", "de", "deinde", "dum", "ego", "enim", "ergo", "es", "est", "et", "etiam", "etsi", "ex", "fio", "haud", "hic", "iam", "idem", "igitur", "ille", "in", "infra", "inter", "interim", "ipse", "is", "ita", "magis", "modo", "mox", "nam", "ne", "nec", "necque", "neque", "nisi", "non", "nos", "o", "ob", "per", "possum", "post", "pro", "quae", "quam", "quare", "qui", "quia", "quicumque", "quidem", "quilibet", "quis", "quisnam", "quisquam", "quisque", "quisquis", "quo", "quoniam", "sed", "si", "sic", "sive", "sub", "sui", "sum", "super", "suus", "tam", "tamen", "trans", "tu", "tum", "ubi", "uel", "uero", "unus", "ut")

# Digital Classicist list
## http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin
## originally from Perseus list
## but differs from online Perseus list ("unus" and "ut" were removed or lost)

## 95-word stoplist augmented AB 2017-10-07
lat_stop_digiclass <- c("a", "ab", "ac", "ad", "adhic", "aliqui", "aliquis", "an", "ante", "apud", "at", "atque", "aut", "autem", "cum", "cur", "de", "deinde", "dum", "ego", "enim", "ergo", "es", "est", "et", "etiam", "etsi", "ex", "fio", "haud", "hic", "iam", "jam", "idem", "igitur", "ille", "in", "infra", "inter", "interim", "ipse", "is", "ita", "magis", "modo", "mox", "nam", "ne", "nec", "necque", "neque", "nisi", "non", "nos", "o", "ob", "per", "possum", "post", "pro", "quae", "quam", "quare", "qui", "quia", "quicumque", "quidem", "quilibet", "quis", "quisnam", "quisquam", "quisque", "quisquis", "quo", "quoniam", "sed", "si", "sic", "sive", "siue", "sub", "sui", "sum", "super", "suus", "tam", "tamen", "trans", "tu", "tum", "ubi", "uel", "vel", "uero", "vero")

# Classical Language Toolkit Latin
## CLTK currently uses the Perseus list
## https://github.com/cltk/cltk/blob/master/cltk/stop/latin/stops.py

## But Patrick Burns is working towards better Latin stopwords for the CLTK
## I refer here to the NLP-based lists quoted
## in https://github.com/diyclassics/stopwords (slides)
## and loosely call them `cltk` lists 2017-10-07

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

cltk_all <-
    c(lat_stop_cltk_mean,
      lat_stop_cltk_var,
      lat_stop_cltk_ent,
      lat_stop_cltk_borda)
t.cltk_all <- as.data.frame(table(cltk_all))
t.cltk_all.sorted <- as.data.frame(sort(table(cltk_all)))

## Words in 1, 2, 3, 4 lists
t.1 <- t.cltk_all[t.cltk_all$Freq == 1, ]$cltk_all
t.2 <- t.cltk_all[t.cltk_all$Freq == 2, ]$cltk_all
t.3 <- t.cltk_all[t.cltk_all$Freq == 3, ]$cltk_all
t.4 <- t.cltk_all[t.cltk_all$Freq == 4, ]$cltk_all
t.1
length(t.1)

# Compare lists

cltk_not_in_digiclass <- setdiff(cltk_all, lat_stop_digiclass)
length(cltk_not_in_digiclass)
sort(cltk_not_in_digiclass)

digiclass_not_in_cltk <- setdiff(lat_stop_digiclass, cltk_all)
length(digiclass_not_in_cltk)
sort(digiclass_not_in_cltk)

digiclass_cltk <- c(lat_stop_digiclass, cltk_all)
iso_only <- setdiff(lat_stop_iso, digiclass_cltk)

digiclass_cltk_iso <- c(lat_stop_digiclass, cltk_all, lat_stop_iso)
perseus_only <- setdiff(lat_stop_perseus, digiclass_cltk_iso)

# View all lists

lat_max <-
    max(
        length(lat_stop_perseus),
        length(lat_stop_digiclass),
        length(lat_stop_cltk_mean),
        length(lat_stop_cltk_var),
        length(lat_stop_cltk_ent),
        length(lat_stop_cltk_borda),
        length(lat_stop_iso),
        length(cltk_not_in_digiclass),
        length(digiclass_not_in_cltk),
        length(iso_only),
        length(perseus_only)
    )
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

m.all <-
    cbind(
        lat_stop_perseus,
        lat_stop_digiclass,
        cm,
        cv,
        ce,
        cb,
        lat_stop_iso,
        cltk_not_in_digiclass,
        digiclass_not_in_cltk,
        iso_only,
        perseus_only
    )
colnames(m.all) <-
    c(
        "Perseus",
        "DigiClass",
        "CLTK mean",
        "CLTK var",
        "CLTK ent",
        "CLTK borda",
        "ISO",
        "CLTK not DigiClass",
        "DigiClass not CLTK",
        "ISO only",
        "Perseus only"
    )

View(m.all)

# Potential addenda to DigiClass list

perseus_cm_ce_cv_cb_iso <-
    c(
        lat_stop_perseus,
        lat_stop_cltk_mean,
        lat_stop_cltk_var,
        lat_stop_cltk_ent,
        lat_stop_cltk_borda,
        lat_stop_iso
    )
lat_not_in_digiclass <-
    setdiff(perseus_cm_ce_cv_cb_iso, lat_stop_digiclass)
length(lat_not_in_digiclass)
lat_not_in_digiclass <- sort(lat_not_in_digiclass)

# Compare with DCC Latin list

dcc_latin <- read_lines("data/data_dcc/dcc_latin_lemmas.txt")

dcc_latin <- gsub("ā", "a", dcc_latin)
dcc_latin <- gsub("ā", "a", dcc_latin)
dcc_latin <- gsub("ē", "e", dcc_latin)
dcc_latin <- gsub("ī", "i", dcc_latin)
dcc_latin <- gsub("ī", "i", dcc_latin)
dcc_latin <- gsub("ō", "o", dcc_latin)
dcc_latin <- gsub("ō", "o", dcc_latin)
dcc_latin <- gsub("ū", "u", dcc_latin)
dcc_latin <- gsub("ū", "u", dcc_latin)

v.dcc_latin_100 <- as.vector(dcc_latin[1:100])
addenda_dcc_latin_100 <- setdiff(v.dcc_latin_100, current_latin)
v.dcc_latin_200 <- as.vector(dcc_latin[1:200])
addenda_dcc_latin_200 <- setdiff(v.dcc_latin_200, current_latin)
v.dcc_latin_all <- as.vector(dcc_latin)
addenda_dcc_latin <- setdiff(v.dcc_latin_all, current_latin)

# View(addenda_dcc_latin)

not_in_dcc_latin_100 <- setdiff(current_latin, v.dcc_latin_100)

# Cicero most frequent words (no lemmatisation)

cic_top_100 <- c("et", "in", "non", "est", "ut", "cum", "quod", "ad", "qui", "si", "esse", "de", "sed", "quae", "quam", "aut", "enim", "a", "quid", "me", "te", "ex", "etiam", "hoc", "atque", "id", "mihi", "sunt", "se", "sit", "quo", "autem", "nihil", "quidem", "ne", "tamen", "nec", "ego", "ab", "tum", "neque", "haec", "ea", "ita", "ac", "modo", "re", "tu", "tibi", "iam", "esset", "nam", "quem", "eius", "vero", "eo", "qua", "quibus", "causa", "igitur", "rem", "per", "res", "ille", "nisi", "tam", "omnia", "illa", "pro", "nunc", "eum", "nos", "fuit", "illud", "sic", "potest", "rei", "rebus", "ipse", "sine", "vel", "erat", "is", "an", "nobis", "ante", "c", "m", "omnibus", "quis", "omnium", "his", "hic", "omnis", "itaque", "at", "publicae", "con", "rerum", "primum")

# bug with cic_top_500 as list: length?
cic_top_500 <-
    read_lines("/Users/aurel/Documents/github/stopwords/data/cic_top_500.txt")

addenda_cic_top_100 <- setdiff(cic_top_100, current_latin)
addenda_cic_top_100
addenda_cic_top_500 <- setdiff(cic_top_500, current_latin)
addenda_cic_top_500

not_in_cic_top_100 <- setdiff(current_latin, cic_top_100)
not_in_cic_top_100

# PHI 5 most frequent words (no lemmatisation)

phi_top_100 <- c("et", "in", "est", "non", "ut", "cum", "si", "ad", "quod", "qui", "sed", "quae", "ex", "a", "quam", "de", "esse", "aut", "hoc", "nec", "se", "sunt", "etiam", "enim", "quid", "per", "ab", "sit", "atque", "id", "autem", "quo", "me", "ne", "te", "ac", "nam", "tamen", "eius", "haec", "mihi", "ita", "iam", "neque", "eo", "quidem", "pro", "ea", "quoque", "tibi", "uel", "e", "quia", "ego", "nihil", "eum", "modo", "an", "libro", "sic", "nunc", "qua", "quem", "inter", "quibus", "esset", "erat", "causa", "m", "nisi", "hic", "potest", "tu", "tum", "ipse", "quis", "fuit", "ille", "ante", "sine", "res", "omnia", "his", "i", "idem", "sibi", "ubi", "illa", "post", "rem", "ei", "tam", "re", "c", "s", "apud", "is", "vel", "magis", "tantum")

addenda_phi_top_100 <- setdiff(phi_top_100, current_latin)
addenda_phi_top_100

not_in_phi_top_100 <- setdiff(current_latin, phi_top_100)
not_in_phi_top_100

setdiff(phi_top_100, cic_top_100)
setdiff(addenda_phi_top_100, addenda_cic_top_100)

phi_top_1000 <-
    read_lines("data/phi_top_1000_lemmatised_corrected.txt")

addenda_phi_top_1000 <- setdiff(phi_top_1000, current_latin)
View(addenda_phi_top_1000)

write_lines(addenda_phi_top_1000, "addenda_phi_top_1000.txt")

phi_top_1000_selection <-
    read_lines("data/phi_top_1000_selection.txt")
View(phi_top_1000_selection)

addenda_phi_top_1000_selection <- setdiff(phi_top_1000_selection, current_latin)
View(addenda_phi_top_1000_selection)

write_lines(addenda_phi_top_1000_selection, "addenda_phi_top_1000_selection.txt")

# Test from data files

phi_100 <- read_lines("data/phi_top_100.txt")
phi_500 <- read_lines("data/phi_top_500.txt")
phi_1000 <- read_lines("data/phi_top_1000.txt")

test <- read_lines("data/latin_paradigms/omnis.txt")
intersect(phi_100, test) %>% length
intersect(phi_500, test) %>% length
intersect(phi_1000, test) %>% length
intersect(cic_top_100, test) %>% length
intersect(cic_top_500, test) %>% length

setdiff(phi_100, current_latin)
setdiff(phi_500, current_latin)
setdiff(phi_1000, current_latin)
setdiff(cic_top_100, current_latin)
setdiff(cic_top_500, current_latin)
setdiff(union(phi_100, cic_top_100), current_latin)
setdiff(union(phi_500, cic_top_500), current_latin)

test <- read_lines("test.txt")
setdiff(test, current_latin)
intersect(test, phi_100)
intersect(test, phi_500)
intersect(test, phi_1000)
intersect(test, cic_top_100)
intersect(test, cic_top_500)

# Test from resulting lists in Voyant Tools

cicero_stopped_100 <- c("publicae", "publica", "hominum", "homines", "natura", "maxime", "causam", "iudices", "verum", "senatus", "genere", "cicero", "populi", "tempore", "animi", "animo", "loco", "litteras", "necesse", "publicam", "litteris", "romani", "hominem", "unum", "iure", "vita", "iudicium", "summa", "ratio", "genus", "ratione", "una", "vim", "verbis", "velim", "modi", "iudicio", "vis", "oratio", "lege", "modum", "facile", "nomen", "consilio", "populo", "magna", "tempus", "bene", "rationem", "bellum", "hominis", "sententia", "die", "uno", "nomine", "vi", "homo", "vitae", "attico", "sal", "virtute", "senatu", "tota", "consilium", "ius", "dies", "bonis", "locum", "oportere", "viri", "partem", "puto", "opus", "recte", "deorum", "vir", "auctoritate", "pecuniam", "magno", "studio", "valde", "parte", "paulo", "senatum", "hominibus", "scribis", "venit", "animum", "scire", "kal", "civium", "nescio", "civitatis", "pecunia", "bonum", "romae", "vitam", "romano", "bona", "vehementer")

apulee_stopped_100 <- c("prorsus", "deae", "modum", "cuncta", "manibus", "psyche", "rursum", "domus", "manu", "domum", "capite", "longe", "manus", "mariti", "alioquin", "faciem", "saltem", "uerum", "die", "latrones", "commodum", "nomine", "animo", "asinum", "corporis", "exitium", "ilico", "maritum", "nocte", "quanquam", "mora", "oculis", "sermone", "summo", "veneris", "deum", "maritus", "mortis", "mulier", "noctis", "passim", "sermonis", "uiam", "unus", "cubiculum", "en", "nomen", "partim", "uoce", "cunctis", "hercules", "quoad", "totum", "uxor", "animi", "diem", "dies", "fortunae", "iuuenis", "puer", "studio", "anus", "asino", "domo", "facie", "fidem", "oculos", "pedibus", "salutis", "totis", "confestim", "corpus", "facile", "puellae", "animum", "dei", "dominus", "fortuna", "marito", "modi", "mulieris", "puella", "solis", "venus", "caput", "ciuitatem", "dehinc", "identidem", "numero", "probe", "totius", "admodum", "dominae", "dudum", "insuper", "iuuenem", "mortem", "populi", "precibus", "religionis")

cesar_stopped_100 <- c("caesar", "castris", "castra", "hostes", "loco", "hostium", "caesarem", "parte", "milia", "bellum", "locum", "partem", "die", "fines", "romani", "galliae", "militum", "exercitum", "milites", "proelio", "numero", "circiter", "tempore", "celeriter", "una", "copias", "gallia", "passuum", "hostibus", "iubet", "legiones", "magna", "magno", "consilio", "equites", "copiis", "equitatu", "rhenum", "flumen", "belli", "finibus", "locis", "legatos", "oppidum", "populi", "naves", "oppido", "bello", "legionibus", "caesaris", "hominum", "pars", "iter", "obsides", "longius", "armis", "multitudine", "equitum", "reliquis", "unum", "itinere", "mittit", "tempus", "virtute", "civitates", "fuga", "galliam", "haeduorum", "navibus", "praesidio", "adventu", "arma", "munitiones", "periculo", "consilium", "exercitus", "gallorum", "paulo", "totius", "coeperunt", "diem", "iussit", "loci", "numerum", "proelium", "animo", "dies", "germani", "haeduis", "partes", "subito", "summa", "civitatibus", "impetum", "constituit", "contendit", "galli", "haeduos", "maxime", "romanis")

petrone_stopped_100 <- c("trimalchio", "manus", "coepit", "puer", "eumolpus", "giton", "manu", "ascyltos", "homo", "die", "nocte", "coepi", "corpus", "iussit", "homines", "rogo", "totum", "bene", "caput", "male", "gitona", "numquid", "pedes", "fidem", "manibus", "oculos", "servus", "ancilla", "mehercules", "nescio", "parte", "puerum", "puto", "triclinium", "voce", "diutius", "longe", "partem", "arma", "mulier", "venit", "familia", "manum", "summam", "tryphaena", "fortuna", "fortunata", "lichas", "mensam", "unum", "verba", "hominem", "ingenti", "medio", "miles", "puero", "sanguine", "vinum", "vultum", "amici", "domum", "frater", "iniuriam", "locum", "mille", "pater", "placet", "pueri", "quartilla", "subinde", "terram", "dii", "duo", "invenit", "lectum", "mare", "melius", "oculis", "paulo", "pectus", "populus", "subito", "tellus", "totam", "tres", "una", "unus", "valde", "verum", "aliquot", "lacrimas", "loco", "mentem", "meos", "navis", "oportet", "pectore", "putes", "sestertium", "trimalchionis")

tacite_stopped_100 <- c("caesar", "principis", "senatus", "tiberius", "nero", "cuncta", "bellum", "tiberio", "nomen", "patres", "legiones", "urbem", "caesaris", "germanici", "exercitus", "militum", "principem", "senatum", "annos", "modum", "dies", "tempus", "arma", "fama", "metu", "vim", "consulibus", "romani", "senatu", "postremo", "bello", "augusti", "tiberium", "agrippina", "manu", "mortem", "publica", "augustus", "magna", "pars", "publicae", "agrippinae", "ius", "armis", "caesarem", "populi", "die", "miles", "imperium", "nomine", "publicam", "anno", "legionum", "maxime", "urbe", "vi", "animum", "augusto", "cura", "neronis", "patrum", "romanum", "castra", "domum", "neronem", "urbis", "vitae", "diem", "iubet", "fortuna", "loco", "piso", "filio", "hostem", "manus", "metum", "morte", "patris", "perinde", "primo", "provincias", "romanis", "dehinc", "italia", "legionibus", "preces", "princeps", "rursum", "tempore", "tiberii", "domus", "exim", "ira", "romanus", "specie", "eques", "germanico", "germanicum", "imperii", "neroni")

virgile_stopped_100 <- c("aeneas", "arma", "armis", "pater", "urbem", "manu", "moenia", "sanguine", "ora", "ingens", "prima", "fata", "tela", "ferro", "pectore", "alta", "manus", "bello", "litora", "auras", "genus", "fortuna", "magna", "ore", "alto", "interea", "turnus", "caelo", "caput", "dextra", "uirum", "muros", "fama", "sidera", "corpore", "corpora", "una", "auro", "diuum", "magno", "acies", "litore", "pars", "rex", "agmina", "caelum", "deum", "aequora", "nomen", "oculos", "regna", "domus", "infelix", "longe", "proelia", "bella", "terra", "aenean", "uiri", "coniunx", "dea", "limina", "belli", "equos", "fatur", "uertice", "undis", "medio", "nequiquam", "nomine", "terras", "teucri", "troiae", "animis", "dona", "genitor", "hostis", "iter", "iuno", "iuppiter", "pectora", "saxa", "tecta", "tellus", "tempora", "toto", "troia", "uictor", "cursu", "dido", "dies", "fatis", "heu", "ingentem", "nate", "pugnae", "ter", "teucros", "uiam", "aras")

setdiff(cicero_stopped_100, current_latin)
setdiff(apulee_stopped_100, current_latin)
setdiff(cesar_stopped_100, current_latin)
setdiff(tacite_stopped_100, current_latin)
setdiff(virgile_stopped_100, current_latin)
setdiff(petrone_stopped_100, current_latin)

setdiff(cicero_stopped_100, phi_1000)
setdiff(apulee_stopped_100, phi_1000)
setdiff(cesar_stopped_100, phi_1000)
setdiff(tacite_stopped_100, phi_1000)
setdiff(virgile_stopped_100, phi_1000)
setdiff(petrone_stopped_100, phi_1000)

test <- read_lines("test.txt")
setdiff(test, phi_1000)

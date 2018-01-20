# Stopwords: revision notes

See also the [project rationale and history](rationale.md), as well as the relevant [Voyant Tools GitHub issue](https://github.com/sgsinclair/Voyant/issues/382).

# TODO

* [ ] Follow up on Peter Heslin's suggestions on Digital Classicist listserv
* [ ] Explain rationale and update or link to lists on [DigiClass wiki page](http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin)
* [ ] Design shorter, custom stoplists for certain uses?
    * minimal lists (e.g. for search engines): based on frequency only, or including the paradigms of articles and a few verbs?
    * generic lists: separate versions for epic poetry, tragedy, oratory, theology, etc.?

# Latin stopwords

Current list: [https://github.com/aurelberra/stopwords/blob/master/stopwords_latin.txt](stopwords_latin.txt).

## Sources and code

Details about the sources and full lists can be found in the [R code used to compare the existing lists and update my proposals through statistical analysis of large corpora](stopwords_latin.R).

## Revision notes

* [x] Correct erroneous *adhic* to *adhuc* in Perseus/DigiClass list
* [x] Ignore editorial artefacts (e.g. *dig*, *ed*, *od*) and pseudo-words due to a wrong treatment of hyphenation (e.g. *con*, *tur*)
* [x] Add u/v and i/j variants systematically, as corpora cannot be assumed to be normalized
    * In all positions to take into account words written in capitals (e.g. both PRIMUS and PRIMVS, ATTICUS and ATTICVS)? – No, this should be fixed in the data or taken into account in the software.
* [x] Include one-letter words (*a* for *ab* and *e* for *ex*)
    * Add all single letters, whose interpretation is always ambiguous (cognomina, editorial divisions, etc.), including both the letters used in Roman numerals (i, v, x, l, c, d, m, ɔ, adding the latter symbol) and the other letters (a, b, e, f, g, h, j, k, n, o, p, q, r, s, t, u, w, y, z)
* [x] Add abbreviations of common praenomina
* [x] Add most frequent Roman numerals
    * 1-100 except for ambiguous *vi* (6 or form of *vis*)
* [x] Add most frequent Arabic numerals
* [x] Add most frequent typographical symbols (as in other lists in Voyant Tools)
* [x] Add words from the following categories – extended to their whole paradigms when relevant
    * [x] Conjunctions
        * Added not in PHI 1000: *necque*, *quanquam*, *quomodo*, *ue*, *utcunque*, *utlibet*, *utne*, *utque*, *utue*, *utve*, *uterque*, *ve*, *tametsi*
    * [x] Prepositions
        * Added not in PHI 1000: *abs*, *aduersum*, *adversum*, *circum*, *infra*, *trans*
    * [x] Adverbs
        * Added not in PHI 1000: *jam*, *jamque*, *juxta*, *minusne*, *minusque*, *minusue*, *minusve*, *nonne*, *plusne*, *plusque*, *plusue*, *plusve*, *priusquam*, *qualibet*, *quodammodo*, *quolibet*, *quot*, *rursum*, *sat*, *sicuti*, *tantummodo*, *totiens*
    * [x] Pronouns (personal, demonstrative, relative, possessive)
        * *ego*, *meus*, *tu*, *tuus*, *hic*, *ille*, *iste*, *ipse*, *is*, *idem*, *suus*, *sui*, *nos*, *noster*, *vos*, *vester*, *qui*, *quis*, *quisquam*, *quisnam*, *quisquis*, *quisque*, *quicumque*, *quivis*, *quidam*, *aliqui*, *aliquis*
    * [x] Nouns
        * *res*, *nihil*, *causa*, *nemo*
        * for *causa*, only the ablative, very frequent in the prepositional turn “genitive + *causa*”, is included
        * other terms used in similar turns are less frequent
    * [x] Adjectives
        * *omnis*, *nullus*, *ullus*, *multus*, *plus*/*plures*, *alius*, *alter*, *ceter*/*ceterus*, *qualis*, *talis*, *quantus*, *tantus*
    * [x] Verbs
        * *sum*, *possum*, *do*, *video*, *facio*, *dico*, *habeo*, *fero*, *fio*, *inquam*, *aio*
        * Keep the other verbs, less frequent and too meaningful
        * Based on PHI 1000 MFW and DCC vocabulary: *sum*, *possum*, *do*, *video*, *facio*, *dico*, *habeo*, *fero*, *venio*, *volo*, *ago*, *peto*, *iubeo*, *eo*, *vinco*, *pono*, *teneo*, *sequor*, *credo*, *accipio*, *quaero*, *mitto*, *capio*, *duco*, *relinquo*, *fio*, *timeo*, *debeo*, *vivo*, *voco*, *paro*, *inquam*
* [x] Integrate additions suggested by Peter Heslin on Digital Classicist listserv (2017-10-16, [source](https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=DIGITALCLASSICIST;a0f93c9c.1710)) with this *caveat*: “I generated that list when looking at frequencies in a small subset of Latin epic”
    * *sum*, *possum*, *facio*, *do*, *dico*, *video*, *fero*, *facio*, *venio*, *habeo*, *voco*, *inquam*; *meus*, *tuus*, *suus*; *ille*, *hic*, *ipse*; *omnis*; *qui*, *quis*; *res*
    * All words are indeed included in version 2, except for *venio* and *voco*
* [x] Decide if some extremely frequent words from PHI 100 MFW and Cicero 100 MFW are to be excluded from the stopwords
    * *libro*: mostly in meaningful intratextual or intertextual references, not in editorial indications
    * *publicae*, *publica*, *publicam*: used in forms of *res publica*
* [x] Check manual selection from PHI 1000 MFW
    * Keep *solus*, *uter* (add later?)
* [x] Add "Total number of items (tokens or symbols)" in files metadata headers

# Greek stopwords

Current list: [https://github.com/aurelberra/stopwords/blob/master/stopwords_greek.txt](stopwords_greek.txt).

## Sources and code

Details about the sources and full lists can be found in the [R code used to compare the existing lists and update my proposals through statistical analysis of large corpora](stopwords_greek.R).

## Revision notes

* [x] Ignore editorial artefacts in Latin script (e.g. *dig*, *ed*, *od*) and pseudo-words due to a wrong treatment of hyphenation
* [x] Include one-letter (abbreviated) words (e.g. γ’, ’γ’, δ’, θ’, κ’, μ’, ’μ’, ’π’, ρ’, σ’, τ’, χ’)
    * Add all single letters without diacritics, whose interpretation is always ambiguous (abbreviated forms, numerals, editorial divisions, etc.), including *stigma* and variant forms of *beta* and *sigma*: α, β, ϐ, γ, δ, ε, ϵ, ζ, η, θ, ι, κ, λ, μ, ν, ξ, ο, π, ρ, σ, ς, ϲ, ϛ, τ, υ, φ, χ, ψ, ω
* [x] Add most frequent Greek numerals
    * 1-100
* [x] Add most frequent Roman numerals
    * 1-100 (including *vi*, ambiguous only in Latin)
* [x] Add most frequent Arabic numerals
* [x] Add most frequent typographical symbols (as in other lists in Voyant Tools)
* [x] Remove δαίς, strange item in Perseus list
* [x] Remove ὑμός, rare Epic form?
    * I finally reinserted ἡμός and ὑμός, for the sake of consistency with ἡμέτερος and ὑμέτερος
* [x] Use Diogenes morphology lists as they are
    * [x] Add missing parts of paradigms but keep all forms
    * [x] Add relevant dialectal forms, e.g. of the articles [hence: take into account epic, doric, aeolic forms]
    * [x] Add crasis (ταὐ-/τοὐ-, χἡ-/χἠ-)
* [x] Add words from the following categories – extended to their whole paradigms when relevant
    * [x] Articles
    * [x] Particles
    * [x] Interjections
        * Interjections other than ὦ, ὤ are rare and too meaningful (e.g. φεῦ)
    * [x] Conjunctions
    * [x] Prepositions/postpositions
        * Add neutral forms of ἐναντίος in TLG 1000: ἐναντίον, ἐναντία
    * [x] Adverbs
    * [x] Pronouns
        * Indefinite pronouns: τις, τίς
        * Personal pronouns: ἐγώ, ἡμεῖς, νώ, σύ, ὑμεῖς, αὐτός, νιν, μιν, ἀμφότερος, ἄμφω, σφεῖς
        * Demonstrative pronouns: οὗτος, ὅδε, ἐκεῖνος
        * Relative pronouns: ὅς, ὅσπερ, ὅστις
        * Possessive pronouns: ἑαυτοῦ, ἐμαυτοῦ, σαυτοῦ
    * [x] Nouns
        * None currently included
        * Keep even the most frequent nouns: λόγος, πρᾶγμα
        * Next most frequent nouns according to DCC list: θεός, ἄνθρωπος, ἀνήρ
    * [x] Verbs
        * Add: εἰμί, λέγω, γίγνομαι, ἔχω, φημί, ποιέω
        * Keep other verbs, not frequent enough or arguably too meaningful
        * Next most frequent verbs according to DCC list and my tests: ἵημι, δέω, ὁράω, λαμβάνω, δοκέω, καλέω, δεῖ, δίδωμι, δύναμαι, φύω, χράομαι, οἶδα, βούλομαι, φαίνω, γράφω, φέρω, ὑπάρχω, ἄρχω, ἀκούω, πράσσω, εὑρίσκω, ἔρχομαι, γιγνώσκω, τυγχάνω, ἵστημι, ἄγω, συμβαίνω, πλέω, χρή, δείκνυμι, τίθημι, εἶδον, οἴομαι
    * [x] Adjectives
        * οὐδεὶς, μηδείς, ἕκαστος, ἑκάτερος, ἀλλήλων, τοιοῦτος, τοσοῦτος, οἷος, πολύς, ὅσος, πᾶς, ἅπας, ἐμός, σός, ἄλλος, ἡμέτερος, ἡμός, ὑμέτερος, ὑμός, ἕτερος, πότερος, ποῖος, πόσος
* [x] Decide if some extremely frequent words from TLG 100 MFW and Demosthenes 100 MFW are to be excluded from the stopwords
    * θεοῦ, δύο
* [x] Add possible elisions
    * [x] Add elided forms for the following categories: articles, particles, interjections, conjunctions, prepositions/postpositions, adverbs
    * [x] Trust Diogenes lists for the other categories: nouns, adjectives, verbs, pronouns
* [x] Remove apostrophes: no use for Voyant Tools, where punctuation is stripped
* [x] Add most common variant forms with a final emphatic iota (e.g. οὐχὶ, τουτονί)
* [x] Add some variants systematically (via scripts and regexes), as corpora cannot be assumed to be normalized
    * [x] Add usual/final sigma
    * [x] Add forms with lunate sigmas only for the articles, as some of them appear in the TLG 1000 MFW (τῆϲ, τοῖϲ)
        * Other lunate sigmas should be modified in the data
    * [x] Add iota subscript/adscript > already in Diogenes lists
    * [x] Add acute/grave accent on last syllable
* [x] Check manual selection from TLG 1000 MFW
    * Keep εἷς and hence also ἓν
* [x] Fix UTF-8 encoding bug
    * Precombined diacritics (e.g. bug with acute accent on λέγειν, οὐκέτι)
    * Normalize data in Greek (in R with `utf8::utf8_normalize()`)
* [x] Implement normalisation in Voyant Tools (see discussion in [GitHub issue](https://github.com/sgsinclair/Voyant/issues/382), as well as Unicode codepoints at the end of this file and test files in directory `voyant_test_files`)
    * [x] Normalise Ancient Greek precomposed forms during text import to fix *oxia*/*tonos* problem
    * [x] Normalise Ancient Greek all sigmas to non final "small sigma" in the Trombone analyser (cf. Lucene [GreekLowerCaseFilter for Modern Greek](https://github.com/apache/lucene-solr/blob/a3a0e0b11e4538ccdff998c09b1145ce9036ac33/lucene/analysis/common/src/java/org/apache/lucene/analysis/el/GreekLowerCaseFilter.java))
* [x] Prepare v2.1 of the list after implementation of `GreekCustomFilter` in Voyant Tools
    * [x] Remove all forms with lunate sigma in v2
        * 18 forms of the article
    * [x] Remove all forms with non final sigma in final position in v2
        * 1044 forms
* [x] Add "Total number of items (tokens or symbols)" in files metadata headers

## Unicode Greek memo

### Forms of sigma

|                                   | Code | Char |
| --------------------------------- | :--: | ---- |
| Greek capital letter sigma        | 03A3 | Σ    |
| Greek small letter final sigma    | 03C2 | ς    |
| Greek small letter sigma          | 03C3 | σ    |
| Greek lunate sigma symbol         | 03F2 | ϲ    |
| Greek capital lunate sigma symbol | 03F9 | Ϲ    |

### Precombined diacritics

As mentioned in the [rationale](rationale.md), it is best to use the combining *tonos* and not the *oxia* accent.

The [TLG Guide to Unicode Precomposed Forms](http://tlg.uci.edu/encoding/precomposed.pdf) succinctly sums up the problem:

> * Unicode has codepoints for Greek vowels with acute accents.
> * In all instances the codepoint given in the table of precomposed forms
above is to be used and the duplicate codepoints should be regarded as
redundant.
> * The following table gives the redundant codepoints first, followed by the
correct codepoint.

Here are the codepoints. I add *iota* and *upsilon* with *diaeresis*. I rename the columns and add the actual characters, for the sake of clarity.

|                                       | Code *oxia* | Char | Code *tonos* | Char |
| ------------------------------------- | :---------: | ---- | :----------: | ---- |
| Lowercase Alpha + acute               | 1F71        | ά    | 03AC         | ά    |
| Uppercase Alpha + acute               | 1FBB        | Ά    | 0386         | Ά    |
| Lowercase Epsilon + acute             | 1F73        | έ    | 03AD         | έ    |
| Uppercase Epsilon + acute             | 1FC9        | Έ    | 0388         | Έ    |
| Lowercase Eta + acute                 | 1F75        | ή    | 03AE         | ή    |
| Uppercase Eta + acute                 | 1FCB        | Ή    | 0389         | Ή    |
| Lowercase Iota + acute                | 1F77        | ί    | 03AF         | ί    |
| Uppercase Iota + acute                | 1FDB        | Ί    | 038A         | Ί    |
| Lowercase Omicron + acute             | 1F79        | ό    | 03CC         | ό    |
| Uppercase Omicron + acute             | 1FF9        | Ό    | 038C         | Ό    |
| Lowercase Upsilon + acute             | 1F7B        | ύ    | 03CD         | ύ    |
| Uppercase Upsilon + acute             | 1FEB        | Ύ    | 038E         | Ύ    |
| Lowercase Omega + acute               | 1F7D        | ώ    | 03CE         | ώ    |
| Uppercase Omega + acute               | 1FFB        | Ώ    | 038F         | Ώ    |
| Lowercase Iota + dialytika + acute    | 1FD3        | ΐ    | 0390         | ΐ    |
| Lowercase Upsilon + dialytika + acute | 1FE3        | ΰ    | 03B0         | ΰ    |

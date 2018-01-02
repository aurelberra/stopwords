# Project status and TODOs

See the [README file](https://github.com/aurelberra/stopwords/blob/master/README.md) and the more elaborate [rationale](https://github.com/aurelberra/stopwords/blob/master/rationale.md).

# Latin stopwords

Current proposal: https://github.com/aurelberra/stopwords/blob/master/stopwords_latin.txt.

## Sources

Details about the sources and full lists can be found in the [R code used to compare the lists](https://github.com/aurelberra/stopwords/blob/master/stopwords_latin.R).

* Words currently in [DigiClass list](http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin) (95 words): a, ab, ac, ad, adhic, aliqui, aliquis, an, ante, apud, at, atque, aut, autem, cum, cur, de, deinde, dum, ego, enim, ergo, es, est, et, etiam, etsi, ex, fio, haud, hic, iam, jam, idem, igitur, ille, in, infra, inter, interim, ipse, is, ita, magis, modo, mox, nam, ne, nec, necque, neque, nisi, non, nos, o, ob, per, possum, post, pro, quae, quam, quare, qui, quia, quicumque, quidem, quilibet, quis, quisnam, quisquam, quisque, quisquis, quo, quoniam, sed, si, sic, sive, siue, sub, sui, sum, super, suus, tam, tamen, trans, tu, tum, ubi, uel, vel, uero, vero

* Words in [Patrick Burns' (CLTK) lists](https://github.com/diyclassics/stopwords) and not in DigiClass list (65 words): anno, bellum, bibit, contra, cui, cuius, dei, deo, deus, dicitur, dig, dixit, dominus, ea, ed, ei, eius, eo, eorum, erat, esse, esset, eum, fuit, haec, his, hoc, id, illa, me, mihi, nihil, nobis, nouus, nummus, nunc, od, omnes, omnia, omnibus, potest, qua, quaestio, quem, quibus, quid, quod, quoque, quos, res, rex, se, secundum, sibi, sicut, sine, sit, sua, sunt, tantum, te, tibi, totus, uos, ut

* Words currently in DigiClass list and not in CLTK lists (39 words): a, adhic, aliqui, aliquis, an, at, cur, deinde, es, etsi, fio, haud, idem, infra, interim, is, jam, mox, necque, o, ob, possum, quare, quicumque, quilibet, quisnam, quisquam, quisque, quisquis, quoniam, siue, sive, sui, sum, suus, trans, tum, vel, vero

* Word only in [Perseus Digital Library list](http://www.perseus.tufts.edu/hopper/stopwords) (1 word): unus

* Words only in ["Stopwords ISO" Latin list](https://github.com/stopwords-iso/stopwords-la) (6 words): e, erant, re, rebus, rem, tandem

## Potential addenda to DigiClass list from the other lists (72 words)

anno, bellum, bibit, contra, cui, cuius, dei, deo, deus, dicitur, dig, dixit, dominus, e, ea, ed, ei, eius, eo, eorum, erant, erat, esse, esset, eum, fuit, haec, his, hoc, id, illa, me, mihi, nihil, nobis, nouus, nummus, nunc, od, omnes, omnia, omnibus, potest, qua, quaestio, quem, quibus, quid, quod, quoque, quos, re, rebus, rem, res, rex, se, secundum, sibi, sicut, sine, sit, sua, sunt, tandem, tantum, te, tibi, totus, unus, uos, ut

## Additions suggested by Peter Heslin

* On Digital Classicist listserv (2017-10-16, [source](https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=DIGITALCLASSICIST;a0f93c9c.1710))
* caveat: "I generated that list when looking at frequencies in a small subset of Latin epic"
* sum, possum, facio, do, dico, video, fero, facio, venio, habeo, voco, inquam
* meus, tuus, suus
* ille, hic, ipse
* omnis
* qui, quis
* res [already listed]

## Revision notes

* [x] Correct erroneous "adhic" to "adhuc" in Perseus/DigiClass list
* [x] Ignore editorial artefacts (e.g. "dig", "ed", "od") and pseudo-words due to a wrong treatment of hyphenation (e.g. "con", "tur")
* [x] Add u/v and i/j variants systematically, as corpora cannot be assumed to be normalized
    * In all positions to take into account words written in capitals (e.g. both PRIMUS and PRIMVS, ATTICUS and ATTICVS)? – No, this should be fixed in the data or taken into account in the software.
* [x] Include one-letter words ("a" for "ab" and "e" for "ex")
    * Add all single letters, whose interpretation is always ambiguous (cognomina, editorial divisions, etc.), including both the letters used in Roman numerals (i, v, x, l, c, d, m, ɔ, adding the latter symbol) and the other letters (a, b, e, f, g, h, j, k, n, o, p, q, r, s, t, u, w, y, z)
* [x] Add abbreviations of common praenomina
* [x] Add most frequent Roman numerals
    * 1-100 except for ambiguous "vi" (6 or form of "vis")
* [x] Add most frequent Arabic numerals
* [x] Add most frequent typographical symbols (as in other lists in Voyant Tools)
* [x] Sort most frequent verbs
    * Based on PHI 1000 MFW and DCC vocabulary: sum, possum, do, video, facio, dico, habeo, fero, venio, volo, ago, peto, iubeo, eo, vinco, pono, teneo, sequor, credo, accipio, quaero, mitto, capio, duco, relinquo, fio, timeo, debeo, vivo, voco, paro, inquam
    * Add to stopwords: sum, possum, do, video, facio, dico, habeo, fero, fio, inquam, aio
    * Keep the other verbs, less frequent and too meaningful
* [x] Add words from the following categories – extended to their whole paradigms when relevant
    * [x] Conjunctions
        * Added not in PHI 1000: necque, quanquam, quomodo, ue, utcunque, utlibet, utne, utque, utue, utve, uterque, ve, tametsi
    * [x] Prepositions
        * Added not in PHI 1000: abs, aduersum, adversum, circum, infra, trans
    * [x] Adverbs
        * Added not in PHI 1000: jam, jamque, juxta, minusne, minusque, minusue, minusve, nonne, plusne, plusque, plusue, plusve, priusquam, qualibet, quodammodo, quolibet, quot, rursum, sat, sicuti, tantummodo, totiens
    * [x] Nouns
    * [x] Verbs
    * [x] Pronouns (personal, demonstrative, relative, possessive)
* [x] Decide if some extremely frequent words from PHI 100 MFW and Cicero 100 MFW are to be excluded from the stopwords
    * "libro": mostly in meaningful intratextual or intertextual references, not in editorial indications
    * "publicae", "publica", "publicam": used in forms of "res publica"


# Greek stopwords

Current proposal: https://github.com/aurelberra/stopwords/blob/master/stopwords_greek.txt.

## Sources

Details about the sources and full lists can be found in the [R code used to compare the lists](https://github.com/aurelberra/stopwords/blob/master/stopwords_greek.R).

* Words currently in [DigiClass list](http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin) (159 words): ἄλλος, ἄλλοσ, ἄν, ἂν, ἄρα, ἀλλ, ἀλλ', ἀλλ’, ἀλλά, ἀλλὰ, ἀπό, ἀπὸ, αὐτός, αὐτόσ, αὐτὸς, αὐτὸσ, δ, δ', δ’, δαί, δαὶ, δαίς, δαίσ, δαὶς, δαὶσ, δέ, δὲ, δή, δὴ, διά, διὰ, ἑαυτοῦ, ἔτι, ἐάν, ἐὰν, ἐγώ, ἐγὼ, ἐκ, ἐμός, ἐμόσ, ἐμὸς, ἐμὸσ, ἐν, ἐπί, ἐπὶ, εἰ, εἴμι, εἰμί, εἰς, εἰσ, γάρ, γὰρ, γᾶ, γε, ἡ, ἤ, ἢ, καί, καὶ, κατά, κατὰ, μέν, μὲν, μετά, μετὰ, μή, μὴ, ὁ, ὅδε, ὅς, ὅσ, ὃς, ὃσ, ὅστις, ὅστισ, ὅτι, οἱ, οὕτως, οὕτωσ, οὗτος, οὗτοσ, οὐ, οὔτε, οὖν, οὐδέ, οὐδὲ, οὐδείς, οὐδείσ, οὐδεὶς, οὐδεὶσ, οὐκ, οὔκ, οὐχ, παρά, παρὰ, περί, περὶ, πρός, πρόσ, πρὸς, πρὸσ, σός, σόσ, σὸς, σὸσ, σύ, σὺ, σύν, σὺν, τά, τὰ, τάσ, τάς, τὰσ, τὰς, ταῖς, ταῖσ, τε, τήν, τὴν, τῆς, τῆσ, τῇ, τι, τί, τὶ, τίς, τίσ, τις, τισ, τό, τὸ, τόν, τὸν, τοί, τοὶ, τοιοῦτος, τοιοῦτοσ, τοῖς, τοῖσ, τούς, τούσ, τοὺς, τοὺσ, τοῦ, τῶν, τῷ, ὑμός, ὑμὸς, ὑμόσ, ὑμὸσ, ὑπέρ, ὑπό, ὑπὸ, ὥσ, ὥστε, ὡς, ὡσ, ὦ

* Words in [Perseus Digital Library list](http://www.perseus.tufts.edu/hopper/stopwords) (79 words): ἄλλος, ἄν, ἄρα, ἀλλ', ἀλλά, ἀπό, αὐτός, δ', δαί, δαίς, δέ, δή, διά, ἑαυτοῦ, ἔτι, ἐάν, ἐγώ, ἐκ, ἐμός, ἐν, ἐπί, εἰ, εἴμι, εἰμί, εἰς, γάρ, γα , γε, ἡ, ἤ, καί, κατά, μέν, μετά, μή, ὁ, ὅδε, ὅς, ὅστις, ὅτι, οἱ, οὕτως, οὗτος, οὐ, οὔτε, οὖν, οὐδέ, οὐδείς, οὐκ, παρά, περί, πρός, σός, σύ, σύν, τά, τε, τήν, τῆς, τῇ, τι, τί, τίς, τις, τό, τόν, τοί, τοιοῦτος, τούς, τοῦ, τῶν, τῷ, ὑμός, ὑπέρ, ὑπό, ὥστε, ὡς, ὦ

* Words in [CLTK list](https://github.com/cltk/cltk/blob/master/cltk/stop/greek/stops.py) (126 words): ἀλλ, ἀλλὰ, ἀλλά, ἀπὸ, ἀπό, ἂν, ἄλλος, ἄν, ἄρα, αὐτὸς, αὐτός, γε, γὰρ, γάρ, δ, δαὶ, δαὶς, δαί, δαίς, διὰ, διά, δὲ, δέ, δὴ, δή, ἐὰν, ἐάν, ἑαυτοῦ, ἐγὼ, ἐγώ, εἰ, εἰμὶ, εἰμί, εἴμι, εἰς, ἐκ, ἐμὸς, ἐμός, ἐν, ἐξ, ἐπὶ, ἐπί, ἔτι, ἡ, ἢ, ἤ, κατὰ, κατά, καὶ, καί, μετὰ, μετά, μὲν, μέν, μὴ, μή, ξύν, ξὺν, ὁ, ὃδε, ὅδε, οἱ, ὅς, ὃς, ὅστις, ὅτι, οὐ, οὐδεὶς, οὐδείς, οὐδὲ, οὐδέ, οὐκ, οὖν, οὔτε, οὗτος, οὕτως, παρὰ, παρά, περὶ, περί, πρὸς, πρός, σύν, σὸς, σός, σὺ, σὺν, σὺν, σύ, σύν, τε, τι, τις, τοιοῦτος, τοὶ, τοί, τοὺς, τούς, τοῖς, τοῦ, τὰ, τά, τᾶς, τῇ, τὴν, τήν, τῆς, τὶ, τί, τὶς, τίς, τὸ, τό, τὸν, τόν, τῶν, τῷ, ὑμὸς, ὑμός, ὑπὲρ, ὑπέρ, ὑπὸ, ὑπό, ὦ, ὡς, ὥστε

* Words in [Annette von Stockhausen’s Pharos list](https://github.com/pharos-alexandria/grk-stoplist/blob/master/stoplist-greek.txt) (148 words): ἃ, αἱ, αἵ, αἳ, ἄν, ἀλλ', ἀλλὰ, ἄλλος, ἅμα, ἂν, ἀπ, ἀπὸ, ἄρα, αὖ, αὐτὸς, ἀφ, δ', δι', δὲ, δέ, δή, δὴ, διά, διὰ, δαὶ, δαὶς, ἐὰν, ἑαυτοῦ, ἔτι, ἐγὼ, ἐκ, ἐμὸς, ἐν, ἐξ, επ, ἐπὶ, εἰ, εἴ, εἰμὶ, εἴμι, εἰς, εἴτε, ἐπεὶ, ἐστι, ἐφ, γάρ, γὰρ, γε, γα^, γοῦν, ἡ, ἢ, ἥ, ἣ, ἧς, ἵνα, καί, καὶ, καίτοι, κἀν, κἂν, καθ, κατ, κατὰ, κατά, μεθ, μἐν, μὲν, μετ, μετὰ, μή, μὴ, μὴν, μήτε, ὁ, ὃ, ὅ, ὅδε, ὅθεν, οἷς, ὃν, ὅπερ, ὅς, ὃς, ὅστις, ὅτε, ὅτι, οὓς, οὕτω, οὕτως, οὗτος, οὔτε, οὖν, οὐδ, οὐδεὶς, οὐδὲν, οἱ, οἳ, οὗ, οὐ, οὐδὲ, οὐκ, οὐχ, οὐχὶ, παρ, παρὰ, περὶ, ποτε, που, ποῦ, πρὸ, προ, πρὸς, πως, σὸς, σὺ, σὺν, τά, τὰ, ταῖς, τὰς, τε, τὴν, τῆς, τῇ, τι, τί, τινα, τις, τίς, τὸ, τοι, τοῖς, τοιοῦτος, τὸν, τότε, τοὺς, τοῦ, τῶν, τῷ, ὑπ, ὑπὲρ, ὑπὸ, ὡς, ὥς, ὦ, ᾧ, ὥστε

* Words currently in CLTK list and not in Perseus list (49 words): ἀλλ, ἀλλὰ, ἂν, ἀπὸ, αὐτὸς, γὰρ, δ, δαὶ, δαὶς, δὲ, δὴ, διὰ, ἐὰν, ἐγὼ, εἰμὶ, ἐμὸς, ἐξ, ἐπὶ, ἢ, καὶ, κατὰ, μὲν, μετὰ, μὴ, ξύν, ξὺν, ὃδε, ὃς, οὐδὲ, οὐδεὶς, παρὰ, περὶ, πρὸς, σὸς, σὺ, σὺν, τὰ, τᾶς, τὴν, τὶ, τὶς, τὸ, τοὶ, τοῖς, τὸν, τοὺς, ὑμὸς, ὑπὲρ, ὑπὸ

* Words currently in CLTK list and not in DigiClass list (8 words): εἰμὶ, ἐξ, ξύν, ξὺν, ὃδε, τᾶς, τὶς, ὑπὲρ

* Words currently in DigiClass list and not in CLTK list (43 words): ἀλλ', ἀλλ’, ἄλλοσ, αὐτόσ, αὐτὸσ, γᾶ, δ', δ’, δαίσ, δαὶσ, εἰσ, ἐμόσ, ἐμὸσ, ὅσ, ὃσ, ὅστισ, οὐδείσ, οὐδεὶσ, οὔκ, οὗτοσ, οὕτωσ, οὐχ, πρόσ, πρὸσ, σόσ, σὸσ, ταῖσ, ταῖς, τάσ, τάς, τὰσ, τὰς, τῆσ, τισ, τίσ, τοιοῦτοσ, τοῖσ, τούσ, τοὺσ, ὑμόσ, ὑμὸσ, ὡσ, ὥσ

* Word only in [Perseus Digital Library list](http://www.perseus.tufts.edu/hopper/stopwords) (1 word): γα

* Words only in Pharos list (58 words): ἃ, αἱ, αἵ, αἳ, ἅμα, ἀπ, αὖ, ἀφ, γα^, γοῦν, δι', εἴ, εἴτε, επ, ἐπεὶ, ἐστι, ἐφ, ἥ, ἣ, ἧς, ἵνα, καθ, καίτοι, κἀν, κἂν, κατ, μεθ, μἐν, μετ, μὴν, μήτε, ὅ, ὃ, ὅθεν, οἳ, οἷς, ὃν, ὅπερ, ὅτε, οὗ, οὐδ, οὐδὲν, οὓς, οὕτω, οὐχὶ, παρ, ποτε, που, ποῦ, προ, πρὸ, πως, τινα, τοι, τότε, ὑπ, ᾧ, ὥς

## Potential addenda to DigiClass list from the other lists (67 words)

αἱ, αἳ, αἵ, αὖ, γα , γα^, γοῦν, δι', επ, εἰμὶ, εἴ, εἴτε, καίτοι, καθ, κατ, κἀν, κἂν, μήτε, μεθ, μετ, μἐν, μὴν, ξύν, ξὺν, οἳ, οἷς, οὐδ, οὐδὲν, οὐχὶ, οὓς, οὕτω, οὗ, παρ, ποτε, που, ποῦ, προ, πρὸ, πως, τινα, τοι, τότε, τὶς, τᾶς, ἀπ, ἀφ, ἃ, ἅμα, ἐξ, ἐπεὶ, ἐστι, ἐφ, ἣ, ἥ, ἧς, ἵνα, ὃ, ὃδε, ὃν, ὅ, ὅθεν, ὅπερ, ὅτε, ὑπ, ὑπὲρ, ὥς, ᾧ

## Revision notes

* [x] Ignore editorial artefacts in Latin script (e.g. "dig", "ed", "od") and pseudo-words due to a wrong treatment of hyphenation (e.g. "…")
* [x] Include one-letter (abbreviated) words (e.g. γ’, ’γ’, δ’, θ’, κ’, μ’, ’μ’, ’π’, ρ’, σ’, τ’, χ’)
    * Add all single letters without diacritics, whose interpretation is always ambiguous (abbreviated forms, numerals, editorial divisions, etc.), including *stigma* and variant forms of *beta* and *sigma*: α, β, ϐ, γ, δ, ε, ϵ, ζ, η, θ, ι, κ, λ, μ, ν, ξ, ο, π, ρ, σ, ς, ϲ, ϛ, τ, υ, φ, χ, ψ, ω
* [x] Add most frequent Roman numerals
    * 1-100 (including "vi", ambiguous only in Latin)
* [x] Add most frequent Arabic numerals
* [x] Add most frequent typographical symbols (as in other lists in Voyant Tools)
* [x] Keep δαίς, strange element from Perseus list
* [x] Keep ὑμός, rare Epic form
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
        * Added not in TLG 1000: …
    * [x] Prepositions/postpositions
        * Add neutral forms of ἐναντίος in TLG 1000: ἐναντίον, ἐναντία
        * Added not in TLG 1000: …
    * [x] Adverbs
        * Added not in TLG 1000: …
    * [x] Nouns
        * Keep even the most frequent nouns: λόγος, πρᾶγμα
        * Next most frequent nouns according to DCC list: θεός, ἄνθρωπος, ἀνήρ
    * [x] Verbs
        * Add: εἰμί, λέγω, γίγνομαι, ἔχω, φημί, ποιέω
        * Keep other verbs, not frequent enough or arguably too meaningful
        * Next most frequent verbs according to DCC list and my tests: ἵημι, δέω, ὁράω, λαμβάνω, δοκέω, καλέω, δεῖ, δίδωμι, δύναμαι, φύω, χράομαι, οἶδα, βούλομαι, φαίνω, γράφω, φέρω, ὑπάρχω, ἄρχω, ἀκούω, πράσσω, εὑρίσκω, ἔρχομαι, γιγνώσκω, τυγχάνω, ἵστημι, ἄγω, συμβαίνω, πλέω, χρή, δείκνυμι, τίθημι, εἶδον, οἴομαι
    * [x] Pronouns (personal, demonstrative, relative, possessive)
        * [x] Indefinite pronouns
            * τις
            * τίς
        * [x] Personal pronouns
            * ἐγώ
            * ἡμεῖς
            * νώ
            * σύ
            * ὑμεῖς
            * αὐτός
            * ἀμφότερος
            * ἄμφω
            * σφεῖς
        * [x] Demonstrative pronouns
            * οὗτος
            * ὅδε
            * ἐκεῖνος
        * [x] Relative pronouns
            * ὅς
            * ὅσπερ
            * ὅστις
        * [x] Possessive pronouns
            * ἐμαυτοῦ
            * σαυτοῦ
            * ἑαυτοῦ
    * [x] Adjectives
        * οὐδείς
        * μηδείς
        * ἕκαστος
        * ἑκάτερος
        * ἀλλήλων
        * τοιοῦτος
        * τοσοῦτος
        * οἷος
        * πολύς
        * ὅσος
        * πᾶς
        * ἅπας
        * ἐμός
        * σός
        * ἄλλος
        * ἡμέτερος
        * ὑμέτερος
        * ἕτερος
        * πότερος
        * Keep these other adjectives, not frequent enough: πλεῖστος, ποῖος, πόσος
* [x] Decide if some extremely frequent words from TLG 100 MFW and Demosthenes 100 MFW are to be excluded from the stopwords
    * θεοῦ, δύο
* [ ] Add *all* possible elisions
* [x] Remove apostrophes: no use for Voyant Tools, where punctuation is stripped
* [x] Add some variants systematically, as corpora cannot be assumed to be normalized
    * [x] usual/final sigma
        * lunate sigmas should be modified in the data
    * [x] iota subscript/adscript > already in Diogenes lists
    * [x] acute/grave accent on last syllable
* [x] Fix UTF-8 encoding bug
    * Precombined diacritics: bug with λέγειν, οὐκέτι…
    * Need to normalize data in Greek (e.g. in R with `utf8::utf8_normalize()`)

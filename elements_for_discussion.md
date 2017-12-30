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
* [x] Decide if some extremely frequent words from PHI 100 MFW and Cicero 100 MFW are to be excluded
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

* [ ] Ignore editorial artefacts in Latin script (e.g. "dig", "ed", "od") and pseudo-words due to a wrong treatment of hyphenation (e.g. "…")
* [x] Include one-letter (abbreviated) words (e.g. γ’, ’γ’, δ’, θ’, κ’, μ’, ’μ’, ’π’, ρ’, σ’, τ’, χ’)
    * Add all single letters without diacritics, whose interpretation is always ambiguous (abbreviated forms, numerals, editorial divisions, etc.), including *stigma* and variant forms of *beta* and *sigma*: α, β, ϐ, γ, δ, ε, ϵ, ζ, η, θ, ι, κ, λ, μ, ν, ξ, ο, π, ρ, σ, ς, ϲ, ϛ, τ, υ, φ, χ, ψ, ω
* [x] Add most frequent Roman numerals
    * 1-100 (including "vi", ambiguous only in Latin)
* [x] Add most frequent Arabic numerals
* [x] Add most frequent typographical symbols (as in other lists in Voyant Tools)
* [x] Remove δαίς, strange element from Perseus list
    * [x] with orthographic variants: δαίς, δαίσ, δαίϲ, δαὶς, δαὶσ, δαὶϲ
* [x] Remove ὑμός, rare Epic form (rather include ὑμέτερος, ὑμεῖς, ἡμεῖς?)
* [ ] Add some variants systematically, as corpora cannot be assumed to be normalized
    * [ ] acute/grave accent on last syllable
    * [ ] usual/lunate/final sigma
    * [ ] iota subscript/adscript
* [ ] Add relevant dialectal forms, e.g. of the articles?
    * [ ] Do not take into account epic, doric, aeolic forms
* [ ] Add *all* possible elisions
* [ ] Add crasis (ταὐ-/τοὐ-, χἡ-/χἠ-)
* [ ] Add abbreviated forms with apostrophe?
    * in which case, add both straight and curly quote (i.e. \' and ’)?
    * only δι, or also δι' and δι’?, etc.
* [ ] Add from TLG 1000 MFW
    * 90+ from `addenda_tlg_top_1000_selection_invariable.txt`
        * …
    * 9 to be declined from `addenda_tlg_top_1000_selection_variable.txt`
        * ὁ, εἷς, τοῦτο, αὐτός, οἷος, οὐδείς, ὅσπερ, ἑαυτοῦ, ὅσος, μηδείς, τοιοῦτος, ἐκεῖνος, τοσοῦτος
* [ ] Sort most frequent verbs
    * Based on TLG 1000 MFW and DCC vocabulary: …
    * Add to stopwords: …
    * Keep the other verbs, less frequent and too meaningful
* [ ] Add words from the following categories – extended to their whole paradigms when relevant
    * NB. Below: words from TLG 1000 MFW list > paradigms then extended
    * [x] Articles
        * > αἱ, αἵ, αἵπερ, αἷ, ἡ, ἥ, ἥπερ, ἧ, ἧπερ, ὁ, ὅ, ὁ̄, οἱ, οἵ, οἵπερ, οἷ, τά, τάπερ, τάς, ταῖν, ταῖς, ταῖσι, ταῖσιν, τέων, τήν, τήνπερ, τῆι, τῆισι, τῆισιν, τῆς, τῇ, τῇπερ, τῇσ', τῇσι, τῇσιν, τό, τόν, τόπερ, τοῖν, τοῖς, τοῖσ', τοῖσι, τοῖσιν, τοῖσπερ, τούς, τοῦ, τοῦπερ, τώ, τῶι, τῶν, τῶνπερ, τῷ, τῷπερ, χαἰ, χαἴ, χἡ, χἠ, χἤ, χοἰ, χοἴ, χὡ, χὥ, χὠ, χὤ
    * [ ] Particles
        * γάρ, γε, γοῦν, δέ, δή, κἂν, μέν, οὖν, οὐκοῦν, πέρ, περ, τε, τοίνυν, τοι, ἂν, ἄρα, ἐάν, ἤγουν, ἤτοι, ἥν
    * [ ] Interjections @check/regroup
        * ὦ, ὤ
    * [ ] Conjunctions
        * Added not in TLG 1000: …
        * δηλονότι, διό, διότι, εἰ, εἴπερ, εἴτε, καί, μέντοι, μήτε, μηδέ, οὔτε, οὐδέ, τε, τουτέστι, τουτέστιν, ἀλλά, ἐπεί, ἐπειδάν, ἐπειδή, ἕως, ἢ, ἤ, ἤτοι, ἵνα, ὅθεν, ὅπως, ὅταν, ὅτε, ὅτι, ὡς, ὥστε
    * [ ] Prepositions/postpositions/adverbs
        * Added not in TLG 1000: …
        * διά, εἰς, κάτω, κατά, μέχρι, μετά, μεταξύ, παρά, περί, πλήν, πρίν, πρό, πρός, σύν, χωρίς, ἀμφί, ἀνά, ἀντί, ἀπό, ἄνευ, ἄνω, ἄχρι, ἅμα, ἐκ, ἐκτός, ἐν, ἐντός, ἐξ, ἐπί, ἐς, ἔνθα, ἔξω, ἕνεκα, ἡνίκα, ὑπέρ, ὑπό, ὥς, ὥσπερ
        * αὖ, αὖθις, αὐτίκα, εὖ, εὐθύς, εἶτα, καίτοι, καθά, καθόλου, καθώς, λίαν, μάλα, μάλιστα, μηκέτι, μᾶλλον, νῦν, νυν, οὔπω, οὐδέποτε, οὐκέτι, οὕτως, πάλαι, πάλιν, πάνυ, πανταχοῦ, πολλάκις, ποτέ, ποτε, ποῦ, πως, πόθεν, σφόδρα, σχεδόν, τότε, ἀεί, ἄνωθεν, ἄρτι, ἅπαξ, ἐκεῖ, ἐκεῖθεν, ἐκεῖσε, ἐνταῦθα, ἐντεῦθεν, ἐφεξῆς, ἑξῆς, ἔμπροσθεν, ἔνδον, ἔνθα, ἔξωθεν, ἔπειτα, ἔτι, ἤδη, ἴσως, ὁμοῦ, ὅμως, ὅπου, ὡσαύτως, ὧδε
    * [ ] Adverbs @separate?
        * Added not in TLG 1000: …
    * [ ] Nouns
        * λόγος
    * [ ] Verbs
        * εἰμί
        * λέγω
        * φημί
        * γίγνομαι
        * δέω
        * χρή
        * ἵστημι
        * ὑπάρχω
    * [ ] Pronouns (personal, demonstrative, relative, possessive)
        * [ ] Personal pronouns
            * ἐγώ
                * > 'γώ, 'γωγ', 'γωγε, 'μ', 'μέ, 'μοί, 'μοιγ', 'μοιγε, 'μοῦ, ἅγωγ', ἁγώ, ἔγωγ', ἔγωγε, ἔμ', ἔμεγ', ἔμεγε, ἔμοιγ', ἔμοιγε, ἐγώ, ἐγώπερ, ἐμ', ἐμέ, ἐμοί, ἐμοῦ, ἧμιν, ἡμᾶς, ἡμεῖς, ἡμίν, ἡμῖν, ἡμῶν, κἄγωγ', κἄγωγε, κἄμ', κἄμοιγ', κἄμοιγε, κἀγώ, κἀμ', κἀμέ, κἀμοί, κἀμοῦ, κἤμ', κἠγώ, κἠμέ, κἠμοί, μ', με, μέ, μοι, μοί, μοῖ, μου, μού, μοῦ, νώ, νῶιν, νῶν, νῷν, οὕμ', οὑγώ, οὑμοί, σοὐγώ, τἄμ', τἀμοῦ, τοὐμέ, τοὐμοί, τοὐμοῦ, χἡμᾶς, χἡμεῖς, χἡμῖν, χἠμᾶς, χἠμεῖς, χἠμῖν, χἠμῶν
            * σύ
                * > ξύ, σ', σε, σέ, σφώ, σοι, σοί, σοίπερ, σοῖ, σου, σού, σούπερ, σοῦ, σοῦπερ, σύ, σύγ', σύγε, σύπερ, ὕμμιν, ὑμᾶς, ὑμεῖς, ὑμίν, ὑμῖν, ὑμῶν, χὐμεῖς, χὐμῖν
            * Third-person pronouns
                * αὐτός
                    * > αὑταί, αὑτή, αὑτός, αὑτοί, αὔθ', αὔτ', αὐτ', αὐτά, αὐτάς, αὐταί, αὐταῖν, αὐταῖς, αὐταῖσι, αὐταῖσιν, αὐτέ, αὐτή, αὐτήν, αὐτῆι, αὐτῆισι, αὐτῆισιν, αὐτῆς, αὐτῇ, αὐτῇσι, αὐτῇσιν, αὐτό, αὐτόν, αὐτός, αὐτοί, αὐτοῖν, αὐτοῖς, αὐτοῖσ', αὐτοῖσι, αὐτοῖσιν, αὐτούς, αὐτοῦ, αὐτώ, αὐτῶι, αὐτῶν, αὐτῷ, καὐτά, καὐτάς, καὐταί, καὐταῖς, καὐτή, καὐτήν, καὐτῆς, καὐτό, καὐτόν, καὐτός, καὐτοί, καὐτοῖς, καὐτούς, καὐτοῦ, καὐτῶι, καὐτῶν, καὐτῷ, ταὐτό, τὠυτό, τὠυτόν, τὠυτοῦ, τὠυτῷ, τωὔτ', τωὐτά, τωὐτό, τωὐτόν, τωὐτοῦ, τωὐτῷ, ὡυτή, ὡυτός, ὡυτοί, ωὐτά, ωὐτέων, ωὐτή, ωὐτήν, ωὐτῆς, ωὐτό, ωὐτόν, ωὐτός, ωὐτοί, ωὐτῶν
        * [ ] Demonstratives pronouns
            * οὗτος
                * > αὕτη, αὗθ', αὗται, αὑταιί, αὑτηγί, αὑτηί, οὗτοι, οὗτος, οὑτοιί, οὑτοσί, οὑτοσίν, ταύτα, ταύταιν, ταύταις, ταύταισι, ταύταισιν, ταύτας, ταύτηι, ταύτην, ταύτης, ταύτῃ, ταύτῃσι, ταύτῃσιν, ταῦθ', ταῦτ', ταῦτα, ταυτ', ταυταγί, ταυταί, ταυταισί, ταυτασί, ταυτηνδί, ταυτηνί, ταυτησί, ταυτησίν, ταυτῃί, ταυτί, τούθ', τούτ', τούτοιν, τούτοις, τούτοισ', τούτοισι, τούτοισιν, τούτου, τούτους, τούτω, τούτωι, τούτων, τούτῳ, τοῦθ', τοῦτ', τοῦτο, τοῦτον, τουθ', τουτ', τουτέων, τουτί, τουτογί, τουτοισί, τουτοισίν, τουτονί, τουτουί, τουτουσί, τουτουσίν, τουτωί, τουτωνί, τουτῳί, χαὔτη, χαὖται, χαὐτηί, χοὖτοι, χοὖτος, χοὐτοσί
            * ὅδε
                * > αἵδ', αἵδε, ἥδ', ἥδε, ἧδ', ἡδ', ἡδί, ὅδ', ὅδε, ὁδ', ὁδί, οἵδ', οἵδε, οἷδ', οἱδ', οἱδί, τάδ', τάδε, τάσδ', τάσδε, τᾶδ', ταδ', ταδί, ταῖνδ', ταῖνδε, ταῖσδ', ταῖσδε, ταισίδ', τασδί, τήνδ', τήνδε, τῆιδ', τῆιδε, τῆσδ', τῆσδε, τῇδ', τῇδε, τηνδεδί, τῃσίδε, τόδ', τόδε, τόνδ', τόνδε, τοδ', τοδί, τοῖνδ', τοῖνδε, τοῖσδ', τοῖσδε, τοῖσιδ', τοῖσιδε, τοῖσινδ', τοισδί, τοισίδ', τοισίδε, τονδ', τονδί, τούσδ', τούσδε, τοῦδ', τοῦδε, τοῦσδ', τουδ', τουδί, τουσδί, τώδ', τώδε, τώσδε, τῶιδ', τῶιδε, τῶνδ', τῶνδε, τῷδ', τῷδε, τωιδί, τωνδ', τωνδί, τῳδεδί, τῳδί, χἥδ', χἤδ', χἤδε
            * ἐκεῖνος
                * > 'κείνας, 'κείνη, 'κείνην, 'κείνης, 'κείνῃ, 'κείνοις, 'κείνου, 'κείνους, 'κείνων, 'κείνῳ, 'κεῖν', 'κεῖνα, 'κεῖναι, 'κεῖνο, 'κεῖνοι, 'κεῖνον, 'κεῖνος, ἁκείνοις, ἁκεῖνοι, ἁκεῖνος, ἐκείνα, ἐκείναιν, ἐκείναις, ἐκείνη, ἐκείνηι, ἐκείνην, ἐκείνης, ἐκείνῃ, ἐκείνῃσι, ἐκείνοιν, ἐκείνοις, ἐκείνοισι, ἐκείνοισιν, ἐκείνου, ἐκείνους, ἐκείνω, ἐκείνωι, ἐκείνων, ἐκείνῳ, ἐκεῖν', ἐκεῖνα, ἐκεῖναι, ἐκεῖνε, ἐκεῖνο, ἐκεῖνοι, ἐκεῖνον, ἐκεῖνος, ἐκεινέων, ἐκεινηί, ἐκεινοιί, ἐκεινοσί, ἐκεινοσίν, κἀκείναις, κἀκείνας, κἀκείνη, κἀκείνηι, κἀκείνην, κἀκείνης, κἀκείνῃ, κἀκείνῃσι, κἀκείνοις, κἀκείνοισι, κἀκείνοισιν, κἀκείνου, κἀκείνους, κἀκείνω, κἀκείνωι, κἀκείνων, κἀκείνῳ, κἀκεῖν', κἀκεῖνα, κἀκεῖναι, κἀκεῖνο, κἀκεῖνοι, κἀκεῖνον, κἀκεῖνος, κείνα, κείναις, κείναισιν, κείνη, κείνηι, κείνην, κείνης, κείνῃ, κείνῃσι, κείνῃσιν, κείνοιν, κείνοιο, κείνοις, κείνοισ', κείνοισι, κείνοισιν, κείνου, κείνους, κείνω, κείνωι, κείνων, κείνως, κείνῳ, κεῖν', κεῖνα, κεῖναι, κεῖνο, κεῖνοι, κεῖνον, κεῖνος, οὑκείνου, οὑκεῖνοι, τἀκείνης, τἀκείνῃ, τἀκείνοις, τἀκείνου, τἀκείνων, τἀκείνῳ, τἀκεῖν', τἀκεῖνα, τήνη, τήνης, τήνοισι, τοὐκείνης, τοὐκείνου
        * [ ] Relative pronouns
            * ὅς
                * > 
            * ὅστις
            * ἅτε
            * ὅσπερ
        * [ ] Possessive pronouns
            * ἑαυτοῦ
        * [ ] Numerals @relevant?
            * ἓν εἷς
            * δύο
            * ἀμφότερος, ἄμφω
            * τρεῖς
            * ἑπτά
            * δέκα
        * [ ] Other @sort
            * οἷος
            * τις, τίς
            * μηδείς, οὐδείς
            * μή, οὐ
            * πολύς
            * ὅσος
            * τοιοῦτος
            * τοσοῦτος
* [ ] Decide if some extremely frequent words from TLG 100 MFW and Demosthenes 100 MFW are to be excluded

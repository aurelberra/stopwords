# Latin stopwords

This is about the Latin list, but the same rationale will obviously be used in revising the Ancient Greek list (in which accents and breathings will additionally be taken into account).

Details about the sources and full lists can be found in the [R code used to compare the lists](https://github.com/aurelberra/stopwords/blob/master/stopwords_latin.R).

## Words currently in [DigiClass](http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_Latin) list (95 words)

a, ab, ac, ad, adhic, aliqui, aliquis, an, ante, apud, at, atque, aut, autem, cum, cur, de, deinde, dum, ego, enim, ergo, es, est, et, etiam, etsi, ex, fio, haud, hic, iam, jam, idem, igitur, ille, in, infra, inter, interim, ipse, is, ita, magis, modo, mox, nam, ne, nec, necque, neque, nisi, non, nos, o, ob, per, possum, post, pro, quae, quam, quare, qui, quia, quicumque, quidem, quilibet, quis, quisnam, quisquam, quisque, quisquis, quo, quoniam, sed, si, sic, sive, siue, sub, sui, sum, super, suus, tam, tamen, trans, tu, tum, ubi, uel, vel, uero, vero

## Words in [Patrick Burns' (CLTK) lists](https://github.com/diyclassics/stopwords) and not in DigiClass list (65 words)

anno, bellum, bibit, contra, cui, cuius, dei, deo, deus, dicitur, dig, dixit, dominus, ea, ed, ei, eius, eo, eorum, erat, esse, esset, eum, fuit, haec, his, hoc, id, illa, me, mihi, nihil, nobis, nouus, nummus, nunc, od, omnes, omnia, omnibus, potest, qua, quaestio, quem, quibus, quid, quod, quoque, quos, res, rex, se, secundum, sibi, sicut, sine, sit, sua, sunt, tantum, te, tibi, totus, uos, ut

## Words currently in DigiClass list and not in CLTK lists (39 words)

a, adhic, aliqui, aliquis, an, at, cur, deinde, es, etsi, fio, haud, idem, infra, interim, is, jam, mox, necque, o, ob, possum, quare, quicumque, quilibet, quisnam, quisquam, quisque, quisquis, quoniam, siue, sive, sui, sum, suus, trans, tum, vel, vero

## Word only in [Perseus Digital Library](http://www.perseus.tufts.edu/hopper/stopwords) list (1 word)

unus

## Words only in ["Stopwords ISO" Latin](https://github.com/stopwords-iso/stopwords-la) list (6 words)

e, erant, re, rebus, rem, tandem

## Elements towards a revised list to be used in Voyant Tools

* Detail rationale on DigiClass wiki
* Correct erroneous "adhic" to "adhuc" in DigiClass list
* Ignore artefacts in CLTK: "dig", "ed", "od"
* Add systematically u/v and i/j variants, as corpora cannot be assumed to be normalized
* Add words from the following categories – only most frequent forms or whole paradigms?
    * Prepositions/adverbs
        * contra, e (ex), secundum, sine, tandem
    * Conjunctions
        * sicut, ut
    * Personal pronouns
        * me, mihi
        * te, tibi
        * nobis
        * uos
    * Demonstratives pronouns
        * ea, ei, eius, eo, eorum, eum, id
        * haec, his, hoc
        * illa
    * Relative pronouns
        * qua, quem, quibus, quid, quod, quos, cui, cuius
    * Possessive pronouns
        * sua
    * Verb "esse"
        * erat, erant, esse, esset, fuit, sit, sunt
    * Noun "res"
        * re, rebus, rem

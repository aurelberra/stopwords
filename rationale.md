# Stopwords: project rationale and history

## About stopwords

[Stopwords](https://en.wikipedia.org/wiki/Stop_words), an important concept in text mining, information retrieval and natural language processing, are fundamentally relative: the decision that a given lexical element carries no information and should be filtered out as background noise depends on a specific corpus and a specific purpose. Different audiences, disciplines, projects or phases in a project will perform different searches and various types of research. In non-academic contexts the use of stopwords is typically invisible: search engines do not let users iteratively strike a balance between the frequency and the meaning of words. Rather they implement stoplists aiming at acceptable relevance and practical efficiency for as many users as possible. Alternative or complementary methods are increasingly used, involving notably phrase search.

Stoplists can be static or dynamic (or mix both methods), but always rely at some point on the determination of a statistical frequency threshold. When they are dynamic, they fit a given corpus economically by removing only the actually occurring words which reach a predetermined frequency. When they are static, more words are included in the lists, in order to fit most documents, but some research-driven, semantic decisions can be implemented by default.

## About these lists of Ancient Greek and Latin stopwords

The Ancient Greek and Latin stoplists provided here are primarily designed for use in [Voyant Tools](http://voyant-tools.org/), a platform which enables many types of (basic or more advanced) text analyses in numerous languages. Voyant Tools allows users to disable or modify the built-in lists, in a heuristic and pedagogical perspective. Therefore we need to design static, “general-use” lists, which users can adapt to their purposes. But as we have no access to lemmatisation or normalisation in this environment, many alternative forms and spellings (especially for Greek), as well as some extensive or comprehensive paradigms have to be included for the lists to be reasonably useful.

For version 1 (October 2017) I compared existing lists of stopwords and updated the one I was using, adding variant forms.

For version 2 (January-February 2018) I rebased the lists on corpus statistics and greatly augmented them. My main sources were the lists of 100, 500, 1000 most frequent words in TLG E and PHI 5. I also refined the lists by testing them on several corpora. Variant forms, several paradigms and other elements common in stoplists (typographical symbols, single letters, numerals, critical abbreviations) were added systematically. In version 2.7 (October 2018) I added stopwords specific to the Homeric poems.

Total number of items (tokens or symbols):

* Latin
    * 4011 items in [stopwords_latin_v2_5.txt](versions/stopwords_latin_v2_5.txt)
    * 4010 items in [stopwords_latin_v2_4.txt](versions/stopwords_latin_v2_4.txt)
    * 4010 items in [stopwords_latin_v2_3.txt](versions/stopwords_latin_v2_3.txt)
    * 4009 items in [stopwords_latin_v2_2.txt](versions/stopwords_latin_v2_2.txt)
    * 3845 items in [stopwords_latin_v2_1.txt](versions/stopwords_latin_v2_1.txt)
    * 3839 items in [stopwords_latin_v2_0.txt](versions/stopwords_latin_v2_0.txt)
    * 0144 items in [stopwords_latin_v1_0.txt](versions/stopwords_latin_v1_0.txt)
* Greek
    * 6872 items in [stopwords_greek_v2_8.txt](versions/stopwords_greek_v2_8.txt)
    * 6872 items in [stopwords_greek_v2_7.txt](versions/stopwords_greek_v2_7.txt)
    * 6696 items in [stopwords_greek_v2_6.txt](versions/stopwords_greek_v2_6.txt)
    * 6695 items in [stopwords_greek_v2_5.txt](versions/stopwords_greek_v2_5.txt)
    * 6695 items in [stopwords_greek_v2_4.txt](versions/stopwords_greek_v2_4.txt)
    * 6694 items in [stopwords_greek_v2_3.txt](versions/stopwords_greek_v2_3.txt)
    * 6530 items in [stopwords_greek_v2_2.txt](versions/stopwords_greek_v2_2.txt)
    * 6518 items in [stopwords_greek_v2_1.txt](versions/stopwords_greek_v2_1.txt)
    * 7573 items in [stopwords_greek_v2_0.txt](versions/stopwords_greek_v2_0.txt)
    * 0262 items in [stopwords_greek_v1_0.txt](versions/stopwords_greek_v1_0.txt)

The lists are maintained here in JSON (without metadata) and derived plain text files (including a metadata header). Items are sorted by parts of speech and a few other categories to make it easier to adapt the lists. In each category items are sorted, either alphabetically or numerically. The categories are the following:

|             Greek             |          Latin           |
|-------------------------------|--------------------------|
| Typographical symbols         | Typographical symbols    |
| Single letters (Latin)        | Single letters (Latin)   |
| Single letters (Greek)        |                          |
| Greek numerals (1-100)        |                          |
| Arabic numerals (0-100)       | Arabic numerals (0-100)  |
| Roman numerals (1-100)        | Roman numerals (1-100)   |
| Critical abbreviations        | Critical abbreviations   |
|                               | Abbreviated *praenomina* |
| Articles                      |                          |
| Particles                     |                          |
| Interjections                 |                          |
| Conjunctions                  | Conjunctions             |
| Prepositions/postpositions    | Prepositions             |
| Adverbs                       | Adverbs                  |
| Pronouns                      | Pronouns                 |
| Nouns                         | Nouns                    |
| Adjectives                    | Adjectives               |
| Verbs                         | Verbs                    |
| Homeric stopwords (*Iliad*)   |                          |
| Homeric stopwords (*Odyssey*) |                          |

These headings are comments prefixed with an [octothorpe](https://en.wiktionary.org/wiki/octothorpe) and are therefore suppressed in Voyant Tools when the software creates user-defined, alphabetically-sorted lists.

Duplicate items are also removed by Voyant Tools, so I deduplicated the lists within individual paradigms and categories, but not across them.

In Greek I have included elided forms without apostrophes and the additional dialectal forms and forms with iota adscript provided by the Diogenes software (see below). Forms with an acute accent on the last syllable are also included with a grave accent, and I added forms with an enclitic accent which the tests suggested to be very frequent.

The Unicode (UTF-8) encoding of the Greek list has been normalised to Normalization Form C (NFC) in order to avoid problems with precombined diacritics.

Details can be found in the [revision notes](revision_notes.md).

The lists are implemented in Voyant Tools as the "Ancient Greek" and "Latin" stoplists.

## Original motivation

Since 2014 I have been using Voyant Tools in my Digital Humanities courses, most often as an introduction to textual analysis, showing for example the principles and the limits of word clouds for Ancient Greek and Latin, first without and then with stopwords. This is why I needed stoplists as those built-in for many modern languages. I used and shared the lists suggested on the [Digital Classicist wiki page](http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_greek), which seemed good enough as a first approach.

In 2016 I updated the Digital Classicist wiki page by adding two articles (ταῖς and τοῖς) and relevant variant forms for the words already included: alternative accents, sigmas and apostrophes.

I also privately asked some members of the Perseus team about the rationale for their stopwords, but the conversation and the update did not go any further. However, I became fully aware that the lists needed for Voyant Tools were different from those in use on a platform like the Perseus Digital Library, where lemmatisation and other transformations of the queried terms can be implemented.

## Version 1: Comparing existing lists

In October 2017 I moved my lists to a GitHub repository and started to plan a deeper update. First for Latin, then for Greek, I checked, updated or added available lists:

* [Perseus Digital Library stopwords](http://www.perseus.tufts.edu/hopper/stopwords) from the open source files (these lists are the sources of the original Digital Classicist and CLTK lists)
* Classical Language Toolkit (CTLK) stopwords ([Greek](https://github.com/cltk/cltk/blob/master/cltk/stop/greek/stops.py) and [Latin](https://github.com/cltk/cltk/blob/master/cltk/stop/latin/stops.py)) from the open source files
* CTLK-related Latin stopwords from Patrick Burns’ 2017-07-11 [slides](https://github.com/diyclassics/stopwords) for a Perseus workshop in Leipzig (where he presented language-independent principles and their application to the design of Latin stopwords, as preliminary work towards automatic, corpus-tailored lists in CLTK)
* other stopwords openly available online: “Stopwords ISO”’s list for [Latin](https://github.com/stopwords-iso/stopwords-la) and Annette von Stockhausen’s list for [Greek](https://github.com/pharos-alexandria/grk-stoplist/blob/master/stoplist-greek.txt)

I compared those lists, which are based on non-documented or evolving criteria, and minimally updated the Digital Classicist lists, removing legacy oddities and adding variant forms.

The lists were proposed and briefly discussed in a GitHub issue: [Add default stopwords for Greek and Latin](https://github.com/sgsinclair/Voyant/issues/382). On 2017-10-16 Stéfan Sinclair implemented initial, stopgap versions in Voyant Tools.

## Version 2: Rebasing lists on corpus statistics

The need for a corpus-based, statistical revision was obvious, even though the lists only aim at making exploratory work possible for most corpora, before users adapt the stopwords to their interests, if they feel the need to do so.

In this revision process, I first compiled lists of the 1000 most frequent words (MFW) *without lemmatisation*:

* for Latin: Cicero’s works and then all texts in PHI 5
* for Greek: Demosthenes’ works and then all texts in TLG E

I went on to compile lists of the 1000 MFW *after lemmatisation* with the CLTK tool:

* for Latin: all texts in PHI 5
* for Greek: all texts in TLG E

I manually filtered the results to discard the (still numerous) lemmatisation bugs, selected the relevant invariable words and extended the relevant variable words to their whole paradigms for the sake of consistency (as far as it is possible, one should find all forms of *sum* or none, not all forms except *est*, *sum* and *es*).

In extending paradigms I mostly relied on the lists provided with the [Diogenes](http://community.dur.ac.uk/p.j.heslin/Software/Diogenes/) software by Peter Heslin, occasionally augmenting or correcting them (e.g. for the forms of *sum*). These lists include not only inflected forms, but also many contracted forms (crases) and elided forms, and dialectal forms.

I compared my results with the lists of the [Dickinson College Commentaries Core Vocabulary](http://dcc.dickinson.edu/vocab/core-vocabulary), a project led by Christopher Francese providing “the thousand most common words in Latin and the 500 most common words in ancient Greek”.

I consulted several reference works on Greek and Latin grammar and syntax to make sure that no common form had been omitted.

The **Latin list** now includes the 100 MFW in PHI 5 except for *liber* (*libro* being a common form in intratextual or intertextual references) and the 100 MFW in Cicero except for *publica* (*publicae* being used in forms of *res publica*).

I closely examined the 500 MFW in PHI 5 texts and in Cicero, and included the conjunctions and some typically less informative adverbs. I also went through the 1000 MFW in PHI 5 texts, and added several adverbs.

Finally, I tested the resulting list of stopwords in Voyant Tools on several corpora: Cicero’s works, as well as works by Apuleius, Caesar, Petronius, Tacitus, and Vergil. This helped include some common variants or poetic forms.

The **Greek list** now includes the 100 MFW in TLG E except for θεοῦ (the word being very meaningful in the corpora where it is not omnipresent) and δύο (I do not include words for numerals in this list) and the 100 MFW in Demosthenes except for five words specific to oratory and to his speeches (ἄνδρες, ἀθηναῖοι, δικασταί, δίκην, νόμον), and δεῖ (frequent, but still meaningful).

I closely examined the 500 MFW in TLG E texts and in Demosthenes, and included the conjunctions and some typically less informative adverbs. I also went through the 1000 MFW in TLG E texts, and added several adverbs.

Finally, I tested the resulting list of stopwords in Voyant Tools on several corpora: Demosthenes’ works, as well as the *Iliad* and works by Cyrillus, Dio Cassius, Menander, Sophocles and Xenophon. This helped include some common variants like elided forms, and poetic or dialectal forms.

### Greek version 2.1: Removing redundant sigma variants

Version 2 included variants with the non-final and the final forms of sigma, as well as variants of the articles with a lunate sigma, but they were removed from version 2.1, after the implementation of a Greek custom filter in Voyant Tools which made variant forms of sigma redundant. See the discussion in the relevant [Voyant Tools GitHub issue](https://github.com/sgsinclair/Voyant/issues/382).

### Latin version 2.1 and Greek version 2.2: Automating and cleaning up

I harmonised or fixed item counts, headings and typographical symbols. I also added a few missing forms found in the MFW of Greek historians. The sources are now JSON files, which are turned into text files with the same Markdown headings as before. The metadata header (including version number, date, items count, Creative Commons licence and link to the repository) is prepended in the process. It can be found only in the text files, as embedded JSON metadata are usually considered an oxymoron.

### Latin version 2.2 and Greek version 2.3: Adding critical abbreviations

I added abbreviations commonly found in critical apparatus and notes. They don't include one-letter abbreviations, abbreviations which can also be full Latin words, or abbreviations of names of authors, editors and works. Their purpose is to make it easier to work with text files where references and critical notes are embedded in the text so often that, for instance, they may appear in visualisations of most frequent words. The need actually arised from dealing with TLG E texts converted from Betacode to Unicode.

### Latin version 2.3 and Greek version 2.4: Sorting

I sorted both lists alphabetically (except for numerals) with James Tauber's [Pyuca](https://github.com/jtauber/pyuca/) software ("Python Unicode Collation Algorithm implementation"). This was mostly useful for Greek as polytonic Unicode is not handled correctly by default. I also reinserted a number ("79") missing in Roman numerals.

### Latin version 2.4 and Greek version 2.5: Fixing counts

I only corrected the item counts. The function I used was counting the octothorpe sign as a comment in the list of typographical symbols.

### Latin version 2.5 and Greek version 2.6: Trifling

I added "iiii" for "iv" in Roman numerals.

### Greek version 2.7: Adding Homeric stopwords

I added stopwords for the *Iliad* and the *Odyssey* based on the 1000 MFW of each poem in the TLG E full texts and the Perseus lemmatised texts (I extracted the lemmas from the Perseus [Lemmatized Ancient Greek Texts](https://github.com/gcelano/LemmatizedAncientGreekXML), version 1.2.5). I compared these lists with the previously used TLG E 1000 MFW, with each other, and with the current version of the Greek stopwords. In the structured source for the list I keep the 103 *Iliad* and the 100 *Odyssey* stopwords separate. Together they provide a total of 137 unique new words, which are mostly dialectal variants of common words. I also checked the whole list and removed 27 duplicates accidentally introduced in the critical abbreviations and in the articles.

### Greek version 2.8: Fixing details

I removed νῷ as a form of νώ, because it is much more common as a form of νοῦς. I added an abbreviated form for the sake of consistency (ἅσσ for ἅσσα).

## Feedback?

Questions, comments and advice are most welcome.

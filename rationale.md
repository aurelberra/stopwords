# Stopwords: project rationale and history

*Stopwords are a fundamentally relative concept: the decision that a given lexical element carries no information depends on a specific corpus and on a specific aim. However, their use is typically invisible, as it is the case in most search engines. The lists provided here are designed for use in [Voyant Tools](http://voyant-tools.org/), a text analysis platform which allows users to access and disable or modify the default list enabled by automatic language detection, in a heuristic and pedagogical perspective. Therefore we need to design default, fixed, "general-use" Ancient Greek and Latin lists, which users can iteratively adapt to their purposes. Additional advice and materials can be provided elsewhere.*

Since 2014 I have been using Voyant Tools in my Digital Humanities courses, most often as an introduction to textual analysis, showing the principles and the limits of word clouds for Ancient Greek and Latin, first without and then with stopwords. This is why I needed stopwords lists as those implemented in the platform for many modern languages. I then used and shared the lists suggested on the [Digital Classicist wiki page](http://wiki.digitalclassicist.org/Stopwords_for_Greek_and_greek), which seemed good enough as a first approach.

In 2016 I updated the Digital Classicist wiki page by adding variant forms: alternative accents, sigmas and apostrophes. I also privately asked some members of the Perseus team about the rationale for their stopwords, but the update did not go any further.

In October 2017 I moved my lists to a GitHub repository and started to plan a deeper update. First for Latin, then for Greek, I checked, updated or added available lists:

* [Perseus Digital Library stopwords](http://www.perseus.tufts.edu/hopper/stopwords) from the open source files
* Classical Language Toolkit (CTLK) stopwords ([Greek](https://github.com/cltk/cltk/blob/master/cltk/stop/greek/stops.py) and [Latin](https://github.com/cltk/cltk/blob/master/cltk/stop/latin/stops.py)) from the open source files
* CTLK-related Latin stopwords from Patrick Burns' 2017-07-11 [slides](https://github.com/diyclassics/stopwords) for a Perseus workshop in Leipzig (where he presented language-independent principles and their application to the design of Latin stopwords, as preliminary work towards automatic, corpus-tailored lists in CLTK)
* other stopwords openly available on GitHub repositories: "Stopwords ISO"’s list for [Latin](https://github.com/stopwords-iso/stopwords-la) and Annette von Stockhausen’s list for [Greek](https://github.com/pharos-alexandria/grk-stoplist/blob/master/stoplist-greek.txt)

I compared those lists, which are based on arbitrary (opaque, legacy) or evolving criteria, and minimally updated the Digital Classicist lists. On 2017-10-16 initial, stopgap versions of the lists were implemented in Voyant Tools.

The need for a corpus-based, statistical revision was obvious, even though the lists only aim at making exploratory work possible for most corpora, before users adapt the stopwords to their interests, if they feel the need to do so.

In this revision process, I first compiled lists of the 1000 most frequent words (MFW) *without lemmatisation*:

* for Latin: Cicero’s works and then all texts in PHI 5
* for Greek: Demosthenes’ works and then all texts in TLG E

I went on to compile lists of the 1000 MFW *after lemmatisation* with the CLTK tool:

* for Latin: all texts in PHI 5
* for Greek: all texts in TLG E

I manually filtered the results to discard the (still numerous) lemmatisation bugs, selected the relevant invariable words and extended the relevant words to their whole paradigms, including forms not listed in the MFW.

<!-- tentative -->
I examined the 100 MFW in PHI 5 texts and in Cicero, excluded ambiguous forms ("causa", "libro") or words I considered too meaningful ("nunc", "publicae" used in forms of "res publica") and included the others, extending them to their whole paradigms for the sake of consistency (as far as it is possible, one should find all forms of "sum" or none, not all forms except "est", "sum" and "es").

In extending paradigms I used as a basis the lists provided with the [Diogenes](http://community.dur.ac.uk/p.j.heslin/Software/Diogenes/) software by Peter Heslin, sometimes augmenting them (as for the forms of "sum").
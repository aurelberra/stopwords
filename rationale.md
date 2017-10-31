# Stopwords: project rationale and history

*Caveat. The lists are designed for use in Voyant Tools: this entails a special perspective, as we need to design default, fixed, "general-use" lists.*

Since 2014 I have been using Voyant Tools in my Digital Humanities courses, most often as an introduction to textual analysis by showing the mechanism and the limits of word clouds for Greek and Latin, first without and then with stopwords. This is why I needed stopwords lists as those implemented in the platform for many modern languages. I used and shared the lists suggested on the Digital Classicist wiki, which seemed good enough for the purpose of a demonstration.

In 2016 I updated the Digital Classicist wiki page by adding variant forms (alternative accents, sigmas and apostrophes). I also privately asked some members of the Perseus team about the rationale for their stopwords, but the update did not go any further.

In 2017-10 I moved my lists to a GitHub repository and started to plan a deeper update. First for Latin, then for Greek, I checked, updated or added available lists:

* Perseus Digital Library stopwords from the open source files
* Classical Language Toolkit (CTLK) stopwords from the open source files
* CTLK-related Latin stopwords from Patrick Burns' 2017-07-11 slides for a Perseus workshop in Leipzig (exposing language-independent principles and their application to the design of Latin stopwords, as preliminary work towards automatic, corpus-tailored lists in CLTK)
* other stopwords openly available on GitHub repositories: "Stopwords ISO"’s list for Latin and Annette von Stockhausen’s list for Greek

I compared these lists based on arbitrary (opaque, legacy) or evolving criteria and minimally updated the Digital Classicist lists. On 2017-10-16 a first, stopgap version of the lists was implemented in Voyant Tools.

The need for a corpus-based, statistical revision was obvious, even though the lists only aim at making exploratory work possible for most corpora, before users adapt the stopwords to their interests, if they want to.

In this revision process, I initially compiled lists of the 1000 most frequent words *without lemmatisation*:

* for Latin: Cicero’s works and then all texts in PHI 5
* for Greek: Demosthenes’ works and then all texts in TLG E

I went on to compile lists of the 1000 most frequent words after *CLTK lemmatisation*:

* for Latin: Cicero’s works and then all texts in PHI 5 @todo
* for Greek: Demosthenes’ works and then all texts in TLG E @todo
* for Latin: all texts in PHI 5 @todo
* for Greek: all texts in TLG E

I manually filtered the results to discard lemmatisation bugs (mostly grave accents not dealt with), selected the relevant invariable words and extended the relevant words to their whole paradigms, including forms not listed in the MFW.

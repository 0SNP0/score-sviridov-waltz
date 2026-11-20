\version "2.26.0"
\include "../../metadata.ily"
\include "../../music/flute-1.ily"
\include "../../music/clarinet-1.ily"
\include "../../music/flute-3.ily"
\include "../../music/flute-2.ily"
\include "../../music/global.ily"
\include "../../scorekit/lilypond/combined-rests.ily"
\include "../../music/combined/flutes.ily"
\include "../../scorekit/lilypond/layout/part.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Flutes I–II" tagline = ##f }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f soloText = "I" soloIIText = "II" aDueText = "a2" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \flutesDeskPrint } >> \partPrintLayout }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f soloText = "I" soloIIText = "II" aDueText = "a2" } << { \global } { \rehearsalMarks } { \flutesTogetherPlayback } >> \midi { } }

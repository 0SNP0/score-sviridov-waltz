\version "2.26.0"
\include "../../metadata.ily"
\include "../../music/trombone-1.ily"
\include "../../music/trombone-2.ily"
\include "../../music/global.ily"
\include "../../scorekit/lilypond/combined-rests.ily"
% Part-specific A4 page target for adaptive ScoreKit print size.
#(define partStaffSize 22)
#(define partMaxStaffSize 25)
#(define partTargetPages 1)
\include "../../scorekit/lilypond/layout/part.ily"
\include "../page-fill.ily"
\include "../../music/combined/trombones-1-2.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Trombones I–II" tagline = ##f }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \trombonesDeskPrint } >> \partPrintLayout }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f } << { \global } { \rehearsalMarks } { \partCombine #'(0 . 0) { << { \tromboneOneMusic } { \partCombineApart s2.*152 } >> } { \tromboneTwoMusic } } >> \midi { } }

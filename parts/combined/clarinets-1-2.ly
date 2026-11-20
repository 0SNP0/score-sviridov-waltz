\version "2.26.0"
\include "../../metadata.ily"
\include "../../music/clarinet-1.ily"
\include "../../music/clarinet-2.ily"
\include "../../music/global.ily"
\include "../../scorekit/lilypond/pitch-views.ily"
% Part-specific page target; ScoreKit fast mode selects the largest fitting size.
#(define partStaffSize 23)
#(define partMaxStaffSize 27)
#(define partTargetPages 2)
\include "../../scorekit/lilypond/layout/part.ily"
\include "../page-fill.ily"
\include "../../scorekit/lilypond/combined-rests.ily"
\include "../../music/combined/clarinets.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Clarinets in B-flat I–II" tagline = ##f }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \scorekitNotatedAt d { \clarinetsDeskPrint } } >> \partPrintLayout }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f } << { \global } { \rehearsalMarks } { \partCombine #'(0 . 0) { << { \clarinetOneMusic } { \partCombineApart s2.*152 } >> } { \clarinetTwoMusic } } >> \midi { } }

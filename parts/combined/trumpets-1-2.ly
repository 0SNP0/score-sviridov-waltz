\version "2.26.0"
\include "../../metadata.ily"
\include "../../music/trumpet-1.ily"
\include "../../music/trumpet-2.ily"
\include "../../music/global.ily"
\include "../../scorekit/lilypond/pitch-views.ily"
% Part-specific page target; ScoreKit fast mode selects the largest fitting size.
#(define partStaffSize 22)
#(define partMaxStaffSize 24.5)
#(define partTargetPages 1)
\include "../../scorekit/lilypond/layout/part.ily"
\include "../page-fill.ily"
\include "../../music/combined/trumpets.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Trumpets in B-flat I–II" tagline = ##f }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \scorekitNotatedAt d { \trumpetsDeskPrint } } >> \partPrintLayout }
\score { \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f } << { \global } { \rehearsalMarks } { \partCombine #'(0 . 0) { << { \trumpetOneMusic } { \partCombineApart s2.*152 } >> } { \trumpetTwoMusic } } >> \midi { } }

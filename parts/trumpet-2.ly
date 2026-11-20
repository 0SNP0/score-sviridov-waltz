\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/trumpet-2.ily"
\include "../scorekit/lilypond/pitch-views.ily"
% Part-specific page target; ScoreKit fast mode selects the largest fitting size.
#(define partStaffSize 22)
#(define partMaxStaffSize 24.5)
#(define partTargetPages 1)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Trumpet in B-flat II" tagline = ##f }
\score { \new Staff \with { midiInstrument = "trumpet" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \scorekitNotatedAt d { \trumpetTwoMusic } } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "trumpet" } << { \globalPlayback } { \rehearsalMarksPlayback } { \trumpetTwoMusicPlayback } >> \midi { } }

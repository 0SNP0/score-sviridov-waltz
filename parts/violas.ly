\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/violas.ily"
\include "../music/global.ily"
% Part-specific A4 page target for adaptive ScoreKit print size.
#(define partStaffSize 18)
#(define partMaxStaffSize 20)
#(define partTargetPages 1)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Violas" tagline = ##f }
\score { \new Staff \with { midiInstrument = "viola" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \violasMusic } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "viola" } << { \globalPlayback } { \rehearsalMarksPlayback } { \violasMusicPlayback } >> \midi { } }

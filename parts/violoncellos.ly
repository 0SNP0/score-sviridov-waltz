\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/bass-clarinet.ily"
\include "../music/violoncellos.ily"
\include "../music/global.ily"
% Part-specific A4 page target for adaptive ScoreKit print size.
#(define partStaffSize 22)
#(define partMaxStaffSize 29)
#(define partTargetPages 2)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Violoncellos" tagline = ##f }
\score { \new Staff \with { midiInstrument = "cello" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \violoncellosMusic } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "cello" } << { \globalPlayback } { \rehearsalMarksPlayback } { \violoncellosMusicPlayback } >> \midi { } }

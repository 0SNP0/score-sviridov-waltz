\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/bass-clarinet.ily"
\include "../music/contrabasses.ily"
\include "../music/global.ily"
\include "../scorekit/lilypond/pitch-views.ily"
% Part-specific A4 page target for adaptive ScoreKit print size.
#(define partStaffSize 22)
#(define partMaxStaffSize 29)
#(define partTargetPages 2)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Contrabasses" tagline = ##f }
\score { \new Staff \with { midiInstrument = "contrabass" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \clef bass \scorekitNotatedAt c' { \contrabassesMusic } } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "contrabass" } << { \globalPlayback } { \rehearsalMarksPlayback } { \contrabassesMusicPlayback } >> \midi { } }

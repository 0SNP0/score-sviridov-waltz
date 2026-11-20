\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/trombone-1.ily"
% Part-specific page target; ScoreKit fast mode selects the largest fitting size.
#(define partStaffSize 22)
#(define partMaxStaffSize 25)
#(define partTargetPages 1)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Trombone I" tagline = ##f }
\score { \new Staff \with { midiInstrument = "trombone" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \tromboneOneMusic } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "trombone" } << { \globalPlayback } { \rehearsalMarksPlayback } { \tromboneOneMusicPlayback } >> \midi { } }

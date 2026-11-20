\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/trombone-2.ily"
% Part-specific A4 page target for adaptive ScoreKit print size.
#(define partStaffSize 22)
#(define partMaxStaffSize 25)
#(define partTargetPages 1)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Trombone II" tagline = ##f }
\score { \new Staff \with { midiInstrument = "trombone" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \tromboneTwoMusic } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "trombone" } << { \globalPlayback } { \rehearsalMarksPlayback } { \tromboneTwoMusicPlayback } >> \midi { } }

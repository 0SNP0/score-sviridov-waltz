\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/oboe.ily"
% Fill one A4 page with the largest fitting staff.
#(define partStaffSize 23)
#(define partMaxStaffSize 30)
#(define partTargetPages 1)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Oboe" tagline = ##f }
\score { \new Staff \with { midiInstrument = "oboe" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \oboeMusic } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "oboe" } << { \globalPlayback } { \rehearsalMarksPlayback } { \oboeMusicPlayback } >> \midi { } }

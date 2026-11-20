\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/alto-saxophone.ily"
\include "../scorekit/lilypond/pitch-views.ily"
% Part-specific page target; ScoreKit fast mode selects the largest fitting size.
#(define partStaffSize 22.5)
#(define partMaxStaffSize 25)
#(define partTargetPages 1)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Alto Saxophone" tagline = ##f }
\score { \new Staff \with { midiInstrument = "alto sax" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures  \scorekitNotatedAt a { \altoSaxMusic } } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "alto sax" } << { \globalPlayback } { \rehearsalMarksPlayback } { \altoSaxMusicPlayback } >> \midi { } }

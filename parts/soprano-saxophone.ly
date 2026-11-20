\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/clarinet-1.ily"
\include "../music/soprano-saxophone.ily"
\include "../scorekit/lilypond/pitch-views.ily"
\include "../scorekit/lilypond/layout/part.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Soprano Saxophone" tagline = ##f }
\score { \new Staff \with { midiInstrument = "soprano sax" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures  \scorekitNotatedAt d { \sopranoSaxMusic } } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "soprano sax" } << { \globalPlayback } { \rehearsalMarksPlayback } { \sopranoSaxMusicPlayback } >> \midi { } }

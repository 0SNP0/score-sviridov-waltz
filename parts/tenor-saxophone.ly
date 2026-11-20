\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/clarinet-2.ily"
\include "../music/tenor-saxophone.ily"
\include "../scorekit/lilypond/pitch-views.ily"
\include "../scorekit/lilypond/layout/part.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Tenor Saxophone" tagline = ##f }
\score { \new Staff \with { midiInstrument = "tenor sax" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures  \scorekitNotatedAt d' { \tenorSaxMusic } } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "tenor sax" } << { \globalPlayback } { \rehearsalMarksPlayback } { \tenorSaxMusicPlayback } >> \midi { } }

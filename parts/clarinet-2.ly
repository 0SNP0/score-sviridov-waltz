\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/clarinet-2.ily"
\include "../scorekit/lilypond/pitch-views.ily"
\include "../scorekit/lilypond/layout/part.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Clarinet in B-flat II" tagline = ##f }
\score { \new Staff \with { midiInstrument = "clarinet" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \scorekitNotatedAt d { \clarinetTwoMusic } } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "clarinet" } << { \globalPlayback } { \rehearsalMarksPlayback } { \clarinetTwoMusicPlayback } >> \midi { } }

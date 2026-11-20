\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/accordion.ily"
\include "../scorekit/lilypond/layout/part.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Accordion" tagline = ##f }
\score {
  \new PianoStaff <<
    \new Staff \with { midiInstrument = "accordion" \consists Merge_rests_engraver } <<
      { \global } { \rehearsalMarks }
      { \compressEmptyMeasures \accordionRightMusicPrint }
    >>
    \new Dynamics = "accordionExpression" { \accordionExpressionMarks }
    \new Staff \with { midiInstrument = "accordion" } <<
      { \global } { \compressEmptyMeasures \accordionLeftMusicPrint }
    >>
  >>
  \partPrintLayout
}
% The individual MIDI/stem must inherit the same tempo and 3/4 playback
% timeline as the orchestral mix. Without rehearsalMarksPlayback it defaults
% to quarter=120 instead of dotted-half=66 (quarter=198).
\score {
  \articulate
  \new PianoStaff <<
    \new Staff \with { midiInstrument = "accordion" } <<
      { \globalPlayback }
      { \rehearsalMarksPlayback }
      { \accordionRightMusicPlayback }
    >>
    \new Staff \with { midiInstrument = "accordion" } <<
      { \globalPlayback }
      { \accordionLeftMusicPlayback }
    >>
  >>
  \midi { }
}

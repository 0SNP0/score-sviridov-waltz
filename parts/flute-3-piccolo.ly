\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/clarinet-1.ily"
\include "../music/flute-1.ily"
\include "../music/flute-3.ily"
\include "../scorekit/lilypond/layout/part.ily"
\header {
  title = \workTitle
  subtitle = \workSubtitle
  composer = \composerCredit
  arranger = \arrangerCredit
  instrument = "Flute III / Piccolo"
  tagline = ##f
}
\score {
  \new Staff \with { midiInstrument = "flute" \override InstrumentName.stencil = ##f } <<
    { \global }
    { \rehearsalMarks }
    { \compressEmptyMeasures \keepWithTag #'(written flute3SaxCuePart flute3FluteCuePart) \fluteThreeMusic }
  >>
  \partPrintLayout
}
\score {
  \articulate \new Staff \with { midiInstrument = "flute" } <<
    { \globalPlayback }
    { \rehearsalMarksPlayback }
    { \keepWithTag #'(playback flute3SaxCueRest flute3FluteCueRest) \fluteThreeMusicPlayback }
  >>
  \midi { }
}

\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/global.ily"
\include "../music/piano.ily"
\include "../scorekit/lilypond/layout/part.ily"

\header {
  title = \workTitle
  subtitle = \workSubtitle
  composer = \composerCredit
  arranger = \arrangerCredit
  instrument = "Piano"
  tagline = ##f
}

\score {
  \new PianoStaff <<
    \new Staff = "pianoRight" \with { midiInstrument = "acoustic grand" } <<
      { \global }
      { \rehearsalMarks }
      { \compressEmptyMeasures \pianoRightMusicPrint }
    >>
    \new Dynamics = "pianoExpression" { \pianoExpressionMarks }
    \new Staff = "pianoLeft" \with { midiInstrument = "acoustic grand" } <<
      { \global }
      { \compressEmptyMeasures \pianoLeftMusicPrint }
    >>
  >>
  \partPrintLayout
}

% Match the 268-bar orchestral D.C. performance and tempo.
\score {
  \articulate
  \new PianoStaff <<
    \new Staff \with { midiInstrument = "acoustic grand" } <<
      { \globalPlayback }
      { \rehearsalMarksPlayback }
      { \pianoRightMusicPlayback }
    >>
    \new Staff \with { midiInstrument = "acoustic grand" } <<
      { \globalPlayback }
      { \pianoLeftMusicPlayback }
    >>
  >>
  \midi { }
}

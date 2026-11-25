\version "2.26.0"
\include "metadata.ily"
\include "music/global.ily"
\include "music/clarinet-1.ily"
\include "music/flute-1.ily"
\include "music/flute-2.ily"
\include "music/soprano-saxophone.ily"
\include "music/flute-3.ily"
\include "music/oboe.ily"
\include "music/clarinet-2.ily"
\include "music/trumpet-1.ily"
\include "music/trumpet-2.ily"
\include "music/trombone-1.ily"
\include "music/trombone-2.ily"
\include "music/violins-1.ily"
\include "music/violins-2.ily"
\include "music/violas.ily"
\include "music/bass-clarinet.ily"
\include "music/violoncellos.ily"
\include "music/contrabasses.ily"

\include "scorekit/lilypond/pitch-views.ily"
\include "scorekit/lilypond/combined-rests.ily"
\include "music/combined/flutes.ily"
\include "music/paired.ily"
\include "music/drum-kit.ily"
\include "music/alto-saxophone.ily"
\include "music/tenor-saxophone.ily"
\include "music/accordion.ily"
\include "music/piano.ily"

orchestraScore = <<
  \new StaffGroup <<
    \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f instrumentName = \markup \fontsize #-1 "Flutes I–II" shortInstrumentName = "Fl. I–II" midiInstrument = "flute" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \flutesDeskPrint } \tag #'concert { \flutesDeskPrint } \tag #'playback { \flutesTogetherPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Flute III / Piccolo" shortInstrumentName = "Fl. III/Picc." midiInstrument = "flute" } { <<
      { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } }
      { \tag #'written { \rehearsalMarks } \tag #'concert { \rehearsalMarks } \tag #'playback { \rehearsalMarksPlayback } }
      { \tag #'written { \fluteThreeMusic }
        \tag #'concert { \fluteThreeMusic }
        \tag #'playback { \fluteThreeMusicPlayback } }
    >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Oboe" shortInstrumentName = "Ob." midiInstrument = "oboe" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \oboeMusic } \tag #'concert { \oboeMusic } \tag #'playback { \oboeMusicPlayback } } >> }
    \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f instrumentName = \markup \fontsize #-1 "Clarinets in B-flat I–II" shortInstrumentName = "Cl. B♭ I–II" midiInstrument = "clarinet" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \scorekitNotatedAt d { \clarinetsDeskPrint } } \tag #'concert { \clarinetsDeskPrint } \tag #'playback { \clarinetsTogetherPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Bass Clarinet in B-flat" shortInstrumentName = "B. Cl." midiInstrument = "clarinet" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \clef treble \scorekitNotatedAt d' { \bassClarinetMusic } } \tag #'concert { \clef "treble_8" \bassClarinetMusic } \tag #'playback { \bassClarinetMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Soprano Saxophone" shortInstrumentName = "S. Sax." midiInstrument = "soprano sax" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \scorekitNotatedAt d { \sopranoSaxMusic } } \tag #'concert { \sopranoSaxMusicConcert } \tag #'playback { \sopranoSaxMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Alto Saxophone" shortInstrumentName = "A. Sax." midiInstrument = "alto sax" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \scorekitNotatedAt a { \altoSaxMusic } } \tag #'concert { \altoSaxMusic } \tag #'playback { \altoSaxMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Tenor Saxophone" shortInstrumentName = "T. Sax." midiInstrument = "tenor sax" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \clef treble \scorekitNotatedAt d' { \tenorSaxMusic } } \tag #'concert { \clef "treble_8" \tenorSaxMusicConcert } \tag #'playback { \tenorSaxMusicPlayback } } >> }
  >>
  \new StaffGroup <<
    \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f instrumentName = \markup \fontsize #-1 "Trumpets in B-flat I–II" shortInstrumentName = "Tpt. I–II" midiInstrument = "trumpet" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \scorekitNotatedAt d { \trumpetsDeskPrint } } \tag #'concert { \trumpetsDeskPrint } \tag #'playback { \trumpetsTogetherPlayback } } >> }
    \new Staff \with { \consists Merge_rests_engraver printPartCombineTexts = ##f instrumentName = \markup \fontsize #-1 "Trombones I–II" shortInstrumentName = "Tbn. I–II" midiInstrument = "trombone" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \trombonesDeskPrint } \tag #'concert { \trombonesDeskPrint } \tag #'playback { \trombonesTogetherPlayback } } >> }
  >>
  \new StaffGroup <<
    \new DrumStaff \with {
      instrumentName = \markup \fontsize #-1 "Drum Kit"
      shortInstrumentName = "D. Kit"
    } <<
      { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } }
      { \tag #'written { \drumKitMusic } \tag #'concert { \drumKitMusic } \tag #'playback { \drumKitPlayback } }
    >>
  >>
  \new StaffGroup <<
    \new PianoStaff \with {
      instrumentName = \markup \fontsize #-1 "Accordion"
      shortInstrumentName = "Acc."
      % Staff labels are right-aligned; match them for the two-staff group.
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #0.25
    } <<
      \new Staff \with { midiInstrument = "accordion" \consists Merge_rests_engraver } << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \accordionRightMusicPrint } \tag #'concert { \accordionRightMusicPrint } \tag #'playback { \accordionRightMusicPlayback } } >>
      \tag #'(written concert) { \new Dynamics = "accordionExpression" { \accordionExpressionMarks } }
      \new Staff \with { midiInstrument = "accordion" } << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \accordionLeftMusicPrint } \tag #'concert { \accordionLeftMusicPrint } \tag #'playback { \accordionLeftMusicPlayback } } >>
    >>
  >>
  \new StaffGroup <<
    \new PianoStaff \with {
      instrumentName = \markup \fontsize #-1 "Piano"
      shortInstrumentName = "Pno."
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #0.25
    } <<
      \new Staff \with { midiInstrument = "acoustic grand" } <<
        { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } }
        { \tag #'written { \pianoRightMusicPrint } \tag #'concert { \pianoRightMusicPrint } \tag #'playback { \pianoRightMusicPlayback } }
      >>
      \tag #'(written concert) { \new Dynamics = "pianoExpression" { \pianoExpressionMarks } }
      \new Staff \with { midiInstrument = "acoustic grand" } <<
        { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } }
        { \tag #'written { \pianoLeftMusicPrint } \tag #'concert { \pianoLeftMusicPrint } \tag #'playback { \pianoLeftMusicPlayback } }
      >>
    >>
  >>
  \new StaffGroup <<
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Violins I" shortInstrumentName = "Vlns. I" midiInstrument = "violin" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \violinsOneMusic } \tag #'concert { \violinsOneMusic } \tag #'playback { \violinsOneMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Violins II" shortInstrumentName = "Vlns. II" midiInstrument = "violin" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \violinsTwoMusic } \tag #'concert { \violinsTwoMusic } \tag #'playback { \violinsTwoMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Violas" shortInstrumentName = "Vlas." midiInstrument = "viola" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \violasMusic } \tag #'concert { \violasMusic } \tag #'playback { \violasMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Violoncellos" shortInstrumentName = "Vcs." midiInstrument = "cello" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \violoncellosMusic } \tag #'concert { \violoncellosMusic } \tag #'playback { \violoncellosMusicPlayback } } >> }
    \new Staff \with { instrumentName = \markup \fontsize #-1 "Contrabasses" shortInstrumentName = "Cbs." midiInstrument = "contrabass" } { << { \tag #'written { \global } \tag #'concert { \global } \tag #'playback { \globalPlayback } } { \tag #'written { \clef bass \scorekitNotatedAt c' { \contrabassesMusic } } \tag #'concert { \clef "bass_8" \contrabassesMusicConcert } \tag #'playback { \clef "bass_8" \contrabassesMusicPlayback } } >> }
  >>
>>

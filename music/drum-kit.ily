% Drum kit: one print voice; separate MIDI percussion stems.
\include "scorekit/lilypond/drum-stems.ily"

drumKitOpening = \drummode {
  \clef percussion
  \time 3/4
  % Bars 1–4
  sn8-^ \f sn8-^ sn4-^ r4 |
  sn8-^ sn8-^ sn4-^ r4 |
  sn8-^ sn8-^ sn4-^ r4 |
  R2.*49 |
  bd4 \mf sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 57–60
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 61–64
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 65–68
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 69–72
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 73–76
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 ^\markup \italic { "with stick for snare drum" } sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 77–80
  <sn cymc bd>4 \f ^\markup \italic { "secco" } r4 <sn cymc>4-! |
  <sn cymc>4-! r4 <sn cymc>4-! |
  <sn cymc bd>4-! r4 <sn cymc>4-! |
  <sn cymc>4-! r4 <sn cymc>4-! |
  % Bars 81–84
  <sn cymc bd>4 r4 <sn cymc>4 |
  <sn cymc bd>4 r4 <sn cymc>4 |
  <sn cymc bd>4 r4 r4 |
  R2. |
  % Bars 85–88
  r4 sn4 \mf sn4 |
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  % Bars 89–92
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  % Bars 93–96
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  r4 sn4 sn4 |
  % Bars 97–100
  sn4 r4 r4 |
  \acciaccatura { sn16 } sn4 r4 r4 |
  \acciaccatura { sn16 } sn4 r4 r4 |
  R2. |
  % Bars 101–104
  bd4 \f sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 105–108
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 109–112
  bd4 sn4 sn4 |
  bd4 sn4 sn4 |
  bd4 \< sn4 sn4 |
  bd4 sn4 sn4 |
  % Bars 113–116
  <sn bd>4 \mf r4 r4 |
  \acciaccatura { sn16 } <sn bd>4 r4 r4 |
  \acciaccatura { sn16 } <sn bd>8 \f \acciaccatura { sn16 } sn8 \acciaccatura { sn16 } sn4 \acciaccatura { sn16 } <sn bd>4 |
  \acciaccatura { sn16 } <sn bd>4 r4 r4 |
}
drumKitBridge = \drummode {
  % Bars 117–120
  r4 cymc4-! \ppp ^\markup \italic { "with stick for triangle" } cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 121–124
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 125–128
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 129–132
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 133–136
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 137–140
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 141–144
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 145–148
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  % Bars 149–152
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  r4 cymc4-! cymc4-! |
  cymc4-! r4 r4 |}
drumKitMusic = { \drumKitOpening \drumKitBridge }

drumKitSnarePlayback = \scorePlayback
{ \scorekitDrumStem #'snare { \drumKitOpening } }
{ \scorekitDrumStem #'snare { \drumKitBridge } }
drumKitCymbalsPlayback = \scorePlayback
{ \scorekitDrumStem #'crashcymbal { \drumKitOpening } }
{ \scorekitDrumStem #'crashcymbal { \drumKitBridge } }
drumKitBassDrumPlayback = \scorePlayback
{ \scorekitDrumStem #'bassdrum { \drumKitOpening } }
{ \scorekitDrumStem #'bassdrum { \drumKitBridge } }

drumKitPlayback = <<
  \new DrumVoice { \voiceOne \drumKitSnarePlayback }
  \new DrumVoice { \voiceThree \drumKitCymbalsPlayback }
  \new DrumVoice { \voiceTwo \drumKitBassDrumPlayback }
>>

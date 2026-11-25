% Printed cues use Bass Clarinet's canonical notes; playback keeps the rest.
\include "../scorekit/lilypond/cue-notes.ily"
% \cueDuring takes pitch from the registered quotation rather than the
% instrument's enclosing transposition. Keep separate print spellings.
\addQuote "bassClContrabassWritten" { \scorekitCueOctaveUp \bassClarinetMusic }
\addQuote "bassClContrabassConcert" { \bassClarinetMusic }
contrabassesFirstThree = {
  % Reset the MIDI program on every return to the Opening (D.C. al Fine).
  % This is playback state only; it does not add a printed arco label.
  \set Staff.midiInstrument = "contrabass"
  \key e \major
  \time 3/4
  % Bars 1–4

  R2.*3 |
}
contrabassesAfterFourth = {
  cis,4 \mf r4 r4 |
  e,4 r4 r4 |
  a,,4 r4 r4 |
  fis,,4 r4 r4 |
  % Bars 9–12
  e,4 r4 r4 |
  fis,4 r4 r4 |
  e,4 r4 r4 |
  dis,4 r4 r4 |
  % Bars 13–16
  cis,4 r4 r4 |
  b,,4 r4 r4 |
  a,,4 r4 r4 |
  fis,,4 r4 r4 |
  % Bars 17–20
  e,4 r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 gis,,4 |
  cis,4 r4 r4 |
  % Bars 21–24
  dis,4 \mf r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 25–28
  dis,4 r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 29–32
  cis,4 r4 r4 |
  cis,4 r4 r4 |
  fis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 33–36
  dis,4-> r4 r4 |
  e,4-> r4 r4 |
  fis,4-> r4 r4 |
  R2. |
  % Bars 37–40
  dis,4 \f r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 41–44
  dis,4 r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 45–48
  cis,4 r4 r4 |
  cis,4 r4 r4 |
  fis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 49–52
  dis,4 r4 r4 |
  e,4 r4 r4 |
  gis,,4 r4 gis,,4 |
  cis,4 r4 r4 |
  % Bars 53–56
  a,2. _\markup \italic { "espr." } \f |
  gis,2. |
  fis,2. |
  e,2. |
  % Bars 57–60
  d,2. |
  b,,2. |
  e,,2. |
  e,,2. |
  % Bars 61–64
  a,,2. |
  gis,,2. |
  fis,2. |
  e,2. |
  % Bars 65–68
  d,2. |
  a,,2. |
  fis,,2. |
  b,,2. |
  % Bars 69–72
  a,2. |
  gis,2. |
  fis,2. |
  e,2. |
  % Bars 73–76
  d,2. |
  e,,2. |
  eis,,2. |
  fis,,2. |
  % Bars 77–80
  gis,,4 \ff r4 gis,,4 |
  gis,,4 r4 gis,,4 |
  fis,,4 r4 fis,,4 |
  fis,,4 r4 fis,,4 |
  % Bars 81–84
  gis,,4 r4 gis,,4 |
  gis,,4 r4 gis,,4 |
}
% Cue quotation is chosen independently for written and concert score.
contrabassesCueAtEightyThreeWritten = {
  cis,4 \scorekitCueOrRest ##t "bassClContrabassWritten" #UP "B. Cl." { r4 r4 | r4 } r4 r4 |
}
contrabassesCueAtEightyThreeConcert = {
  cis,4 \scorekitCueOrRest ##t "bassClContrabassConcert" #UP "B. Cl." { r4 r4 | r4 } r4 r4 |
}
contrabassesNoCueAtEightyThree = { cis,4 r4 r4 | R2. | }
contrabassesAfterEightyFour = {
  % Bars 85–88
  dis,4 \f r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 89–92
  dis,4 r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 93–96
  cis,4 r4 r4 |
  cis,4 r4 r4 |
  fis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 97–100
  dis,4 r4 r4 |
  e,4 r4 r4 |
  fis,4 r4 r4 |
  R2. |
  % Bars 101–104
  dis,4 \f r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 105–108
  dis,4 r4 r4 |
  gis,,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 109–112
  cis,4 r4 r4 |
  cis,4 r4 r4 |
  fis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 113–116
  dis,4 r4 r4 |
  e,4 r4 r4 |
  gis,,4 \ff r4 gis,,4 |
  cis,4 r4 r4 |
}
contrabassesOpening = {
  \contrabassesFirstThree
  \scorekitCueOrRest ##t "bassClContrabassWritten" #UP "B. Cl." { R2. | }
  \contrabassesAfterFourth
  \contrabassesCueAtEightyThreeWritten
  \contrabassesAfterEightyFour
}
contrabassesOpeningConcert = {
  \contrabassesFirstThree
  \scorekitCueOrRest ##t "bassClContrabassConcert" #UP "B. Cl." { R2. | }
  \contrabassesAfterFourth
  \contrabassesCueAtEightyThreeConcert
  \contrabassesAfterEightyFour
}
contrabassesOpeningPlayback = {
  \contrabassesFirstThree
  R2. |
  \contrabassesAfterFourth
  \contrabassesNoCueAtEightyThree
  \contrabassesAfterEightyFour
}

contrabassesBridge = {
  % Bars 117–120
  \set Staff.midiInstrument = "pizzicato strings"
  e,4 ^\markup \italic { "pizz." } \p r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 121–124
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 125–128
  e,4 r4 r4 |
  b,,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 129–132
  dis,4 r4 r4 |
  dis,4 r4 r4 |
  gis,4 r4 r4 |
  gis,4 r4 r4 |
  % Bars 133–136
  fis,4 r4 r4 |
  fis,4 r4 r4 |
  b,,4 r4 r4 |
  b,,4 r4 r4 |
  % Bars 137–140
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 141–144
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 145–148
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 149–152
  a,,4 r4 r4 |
  b,,4 r4 r4 |
  e,4 r4 b,,4 |
  e,,4 r4 r4 |
}

contrabassesMusic = { \contrabassesOpening \contrabassesBridge }
contrabassesMusicConcert = { \contrabassesOpeningConcert \contrabassesBridge }
contrabassesMusicPlayback = \scorePlayback \contrabassesOpeningPlayback \contrabassesBridge

% Accordion: actual concert-pitch notes for both hands.
% Discant register notation uses the standard reed-combination symbol.
% A single 8' reedbank sounds only the pitches written on the staff.
% Do not add 4' or 16' octave doublings without an explicit musical request.
#(use-modules (lily accreg))
accordionRightChordsOpening = {
  \clef treble \key e \major \time 3/4
  % Bars 1–4
  \discant "10"
  <gis gis'>8 \f <gis gis'>8 <gis gis'>4 r4 |
  <gis gis'>8 <gis gis'>8 <gis gis'>4 r4 |
  <gis gis'>8 <gis gis'>8 <gis gis'>4 r4 |
  R2. |
  % Bars 5–52: full right-hand chords, one voice / one stem.
  r4 <gis cis' e' gis'>4-.\p <gis cis' e' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <a cis' e' a'>4-. <a cis' e' a'>4-. |
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <a cis' e' a'>4-. <a cis' e' a'>4-. |
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  <gis cis' e' gis'>4-. r4 r4 |
  r4 <gis bis fis'>4-. <gis bis fis'>4-. |
  r4 <gis bis fis'>4-. <gis bis fis'>4-. |
  r4 <gis cis' e'>4-. <gis cis' e'>4-. |
  r4 <gis cis' e'>4-. <gis cis' e'>4-. |
  r4 <gis bis fis'>4-. <gis bis fis'>4-. |
  r4 <gis bis fis'>4-. <gis bis fis'>4-. |
  r4 <gis cis' e'>4-. <gis cis' e'>4-. |
  r4 <gis cis' e'>4-. <gis cis' e'>4-. |
  r4 <b cis' eis'>4-. <b cis' eis'>4-. |
  r4 <b cis' eis'>4-. <b cis' eis'>4-. |
  r4 <a cis' fis'>4-. <a cis' fis'>4-. |
  r4 <a cis' fis'>4-. <a cis' fis'>4-. |
  <a cis' fis'>4->-. r4 r4 |
  <ais cis' fisis'>4->-. r4 r4 |
  <a cis' e'>4->-. r4 r4 |
  R2. |
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  r4 <b cis' eis' gis'>4-. <b cis' eis' gis'>4-. |
  r4 <b cis' eis' gis'>4-. <b cis' eis' gis'>4-. |
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  <a cis' fis' a'>4-. r4 r4 |
  <a cis' fisis' a'>4-. r4 r4 |
  <gis cis' e' gis'>4-. r4 <gis bis fis' gis'>4-. |
  <gis cis' e' gis'>4-. r4 r4 |
  % Bars 53–76
  R2.*24 |
  % Bar 77
  <gis cis' e' gis'>4-. \ff r4 <gis cis' e' gis'>4-. |
  % Bar 78
  <gis cis' e' gis'>4-. r4 <gis cis' e' gis'>4-. |
  % Bar 79
  <a cis' fis' a'>4-. r4 <a cis' fis' a'>4-. |
  % Bar 80
  <a cis' fis' a'>4-. r4 <a cis' fis' a'>4-. |
  % Bar 81
  <gis cis' e' gis'>4-. r4 <gis cis' e' gis'>4-. |
  % Bar 82
  <gis bis fis' gis'>4-. r4 <gis bis fis' gis'>4-. |
  % Bar 83
  <gis cis' e' gis'>4-. r4 r4 |
  % Bars 84–100
  R2.*17 |
  % Bar 101
  r4 <gis bis fis' gis'>4-. \ff <gis bis fis' gis'>4-. |
  % Bar 102
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  % Bar 103
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  % Bar 104
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  % Bar 105
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  % Bar 106
  r4 <gis bis fis' gis'>4-. <gis bis fis' gis'>4-. |
  % Bar 107
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  % Bar 108
  r4 <gis cis' e' gis'>4-. <gis cis' e' gis'>4-. |
  % Bar 109
  r4 <b cis' eis' gis'>4-. <b cis' eis' gis'>4-. |
  % Bar 110
  r4 <b cis' eis' gis'>4-. <b cis' eis' gis'>4-. |
  % Bar 111
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  % Bar 112
  r4 <a cis' fis' a'>4-. <a cis' fis' a'>4-. |
  % Bar 113
  <a cis' fis' a'>4-> \ff r4 r4 |
  % Bar 114
  <a cis' fis' a'>4-> r4 r4 |
  % Bars 115–116: repeat the right-hand chords from bars 51–52
  <gis cis' e' gis'>4-. r4 <gis bis fis' gis'>4-. |
  <gis cis' e' gis'>4-. r4 r4 |
}
accordionRightChordsBridge = { R2.*36 }
accordionRightMusic = { \accordionRightChordsOpening \accordionRightChordsBridge }
accordionRightMusicPlayback = \scorePlayback \accordionRightChordsOpening \accordionRightChordsBridge
% Bars 53–76: the current left-hand notes are in the great octave.
accordionLeftOpening = {
  \clef bass \key e \major \time 3/4
  R2.*3 |
  fis,4-. \mf e,4-. dis,4-. |
  cis,4-. r4 r4 |
  R2.*47 |  % Bars 6–52

  a,2. _\markup \italic { "espr." } \f |
  gis,2. |
  fis,2. |
  e,2. |
  % Bars 57–60
  d,2. |
  b,2. |
  e,2. |
  e,2. |
  % Bars 61–64
  a,2. |
  gis,2. |
  fis,2. |
  e,2. |
  % Bars 65–68
  d,2. |
  a,2. |
  fis,2. |
  b,2. |
  % Bars 69–72
  a,2. |
  gis,2. |
  fis,2. |
  e,2. |
  % Bars 73–76
  d,2. |
  e,2. |
  eis,2. |
  fis,2. |
  % Bars 77–84: tenor saxophone music in the great octave, staccato.
  gis,4-. \ff r4 gis,4-. |
  gis,4-. r4 gis,4-. |
  fis,4-. r4 fis,4-. |
  fis,4-. r4 fis,4-. |
  gis,4-. r4 gis,4-. |
  gis,4-. r4 gis,4-. |
  { cis,4-. gis,4-. e,4-. } |
  { cis,4-. r4 r4 } |
  % Bars 85–88
  dis,4 \f r4 r4 |
  gis,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 89–92
  dis,4 r4 r4 |
  gis,4 r4 r4 |
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
  gis,4 r4 r4 |
  cis,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 105–108
  dis,4 r4 r4 |
  gis,4 r4 r4 |
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
  gis,4-. r4 gis,4-. |
  cis,4-. r4 r4 |
}
accordionLeftBridge = { R2.*36 | }
accordionLeftMusic = { \accordionLeftOpening \accordionLeftBridge }
accordionLeftMusicPlayback = \scorePlayback \accordionLeftOpening \accordionLeftBridge

% All printed accordion dynamics, register signs, and expression text
% belong to the inter-staff Dynamics context. The source note dynamics
% remain intact for the unchanged MIDI performances.
accordionExpressionMarks = {
  \time 3/4
  s2.^\markup \italic "marc." \f   % 1
  s2.*2                               % 2–3
  s2.\mf                              % 4: copied Bass Clarinet
  s4 s4\p s4                        % 5: piano begins on beat two
  s2.*47                              % 6–52
  s2.^\markup \italic "espr." \f  % Bar 53
  s2.*23                              % 54–76
  s2.\ff                              % 77
  s2.*23                              % 78–100
  s2.\ff                              % 101
  s2.*11                              % 102–112
  s2.\ff                              % 113
  s2.*39                              % 114–152
}
accordionRightMusicPrint = {
  % Keep the reed register above this staff; dynamics use interstaff Dynamics.
  \omit DynamicText
  \accordionRightMusic
}
accordionLeftMusicPrint = {
  \omit DynamicText
  \omit TextScript
  \accordionLeftMusic
}

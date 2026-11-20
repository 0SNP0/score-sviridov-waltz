% One measure per line, numbered blocks for Frescobaldi/VS Code.
violasOpening = {
  % Reset the MIDI program on every return to the Opening (D.C. al Fine).
  % This is playback state only; it does not add a printed arco label.
  \set Staff.midiInstrument = "viola"
  \clef alto
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 |
  r4 ^\markup \italic { "div." } <gis cis'>4 \mf <gis cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  % Bars 9–12
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  % Bars 13–16
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  % Bars 17–20
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  <gis cis'>4 r4 r4 |
  % Bars 21–24
  r4 <gis bis>4 \mf <gis bis>4 |
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  % Bars 25–28
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  % Bars 29–32
  r4 <b cis'>4 <b cis'>4 |
  r4 <b cis'>4 <b cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  % Bars 33–36
  <a cis'>4-> r4 r4 |
  <ais cis'>4-> r4 r4 |
  <a cis'>4-> r4 r4 |
  R2. |
  % Bars 37–40
  r4 <gis bis>4 \f <gis bis>4 |
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  % Bars 41–44
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis bis>4 <gis bis>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  r4 <gis cis'>4 <gis cis'>4 |
  % Bars 45–48
  r4 <b cis'>4 <b cis'>4 |
  r4 <b cis'>4 <b cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  r4 <a cis'>4 <a cis'>4 |
  % Bars 49–52
  <a cis'>4 r4 r4 |
  <a cis'>4 r4 r4 |
  <gis cis'>4 r4 <gis bis>4 |
  <gis cis'>4 r4 r4 |
  % Bars 53–68: single voice
  cis'2. _\markup \italic { "espr." } \f |
  e'2. |
  a2. |
  cis'2. |
  fis2. |
  e'4 d'4. a8 |
  cis'2. |
  b2. |
  a2. |
  cis'2. |
  fis2. |
  a2. |
  d'2.~ |
  d'4 cis'4 d'4 |
  f'4 e'4. cis'8 |
  d'2. |
  % Bars 69–72
  <cis' e'>2. \f |
  <cis' e'>2. |
  <fis' a'>2. |
  <e' gis'>2. |
  % Bars 73–76
  <d' fis'>2. |
  <cis' e'>4 <b d'>4. <cis' e'>8 |
  <b d'>2. |
  <a cis'>2. |
  % Bars 77–80
  <gis cis'>4 \ff r4 <gis cis'>4 |
  <gis cis'>4 r4 <gis cis'>4 |
  <a cis'>4 r4 <a cis'>4 |
  <a cis'>4 r4 <a cis'>4 |
  % Bars 81–84
  <gis cis'>4 r4 <gis cis'>4 |
  <gis bis>4 r4 <gis bis>4 |
  <gis cis'>4 r4 r4 |
  R2.*17 |
  gis'2. _\markup \italic { "espr." }~ \f |
  gis'4 a'4.( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( cis''4. gis'8) |
  % Bars 105–108
  gis'2.~ |
  gis'4 a'4.( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( e''4. cis''8) |
  % Bars 109–112
  cis''2.~ |
  cis''4 r4 r4 |
  R2.*4 |
  e'8 \ff gis'8 gis'4-. fis'4-. |
  e'4-. r4 r4 |
}

violasBridge = {
  % Bars 117–120
  \set Staff.midiInstrument = "pizzicato strings"
  r4 ^\markup \italic { "pizz." } b4 \p b4 |
  r4 b4 b4 |
  r4 cis'4 cis'4 |
  r4 cis'4 cis'4 |
  % Bars 121–124
  r4 cis'4 cis'4 |
  r4 cis'4 cis'4 |
  r4 b4 b4 |
  r4 b4 b4 |
  % Bars 125–128
  r4 b4 b4 |
  r4 b4 b4 |
  r4 b4 b4 |
  r4 b4 b4 |
  % Bars 129–132
  r4 b4 b4 |
  r4 cis'4 cis'4 |
  r4 b4 b4 |
  r4 b4 b4 |
  % Bars 133–136
  r4 b4 b4 |
  r4 b4 b4 |
  r4 b4 b4 |
  r4 b4 b4 |
  % Bars 137–140
  r4 b4 b4 |
  r4 b4 b4 |
  r4 cis'4 cis'4 |
  r4 cis'4 cis'4 |
  % Bars 141–144
  r4 cis'4 cis'4 |
  r4 cis'4 cis'4 |
  r4 b4 b4 |
  r4 b4 b4 |
  % Bars 145–148
  r4 b4 b4 |
  r4 b4 b4 |
  r4 b4 b4 |
  r4 b4 b4 |
  % Bars 149–152
  r4 cis'4 cis'4 |
  r4 cis'4 cis'4 |
  r4 b4 b4 |
  b4 r4 r4 |
}

violasMusic = { \violasOpening \violasBridge }
violasMusicPlayback = \scorePlayback \violasOpening \violasBridge

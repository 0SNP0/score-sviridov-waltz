% One measure per line, numbered blocks for Frescobaldi/VS Code.
violinsTwoOpening = {
  % Reset the MIDI program on every return to the Opening (D.C. al Fine).
  % This is playback state only; it does not add a printed arco label.
  \set Staff.midiInstrument = "violin"
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 |
  r4 ^\markup \italic { "div." } <e' gis'>4 \mf <e' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <e' a'>4 <e' a'>4 |
  r4 <fis' a'>4 <fis' a'>4 |
  % Bars 9–12
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <fis' a'>4 <fis' a'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <fis' a'>4 <fis' a'>4 |
  % Bars 13–16
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <e' a'>4 <e' a'>4 |
  r4 <fis' a'>4 <fis' a'>4 |
  % Bars 17–20
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <fis' gis'>4 <fis' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  <e' gis'>4 r4 r4 |
  % Bars 21–24
  r4 <bis fis'>4 \mf <bis fis'>4 |
  r4 <bis fis'>4 <bis fis'>4 |
  r4 <cis' e'>4 <cis' e'>4 |
  r4 <cis' e'>4 <cis' e'>4 |
  % Bars 25–28
  r4 <bis fis'>4 <bis fis'>4 |
  r4 <bis fis'>4 <bis fis'>4 |
  r4 <cis' e'>4 <cis' e'>4 |
  r4 <cis' e'>4 <cis' e'>4 |
  % Bars 29–32
  r4 <cis' eis'>4 <cis' eis'>4 |
  r4 <cis' eis'>4 <cis' eis'>4 |
  r4 <cis' fis'>4 <cis' fis'>4 |
  r4 <cis' fis'>4 <cis' fis'>4-. |
  % Bars 33–36
  <cis' fis'>4 r4 r4 |
  <cis' fisis'>4 r4 r4 |
  <cis' e'>4 r4 r4 |
  R2. |
  % Bars 37–40
  r4 <fis' gis'>4 \f <fis' gis'>4 |
  r4 <fis' gis'>4 <fis' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  % Bars 41–44
  r4 <fis' gis'>4 <fis' gis'>4 |
  r4 <fis' gis'>4 <fis' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  r4 <e' gis'>4 <e' gis'>4 |
  % Bars 45–48
  r4 <eis' gis'>4 <eis' gis'>4 |
  r4 <eis' gis'>4 <eis' gis'>4 |
  r4 <fis' a'>4 <fis' a'>4 |
  r4 <fis' a'>4 <fis' a'>4 |
  % Bars 49–52
  <fis' a'>4 r4 r4 |
  <fisis' a'>4 r4 r4 |
  <e' gis'>4 r4 <fis' gis'>4 |
  <e' gis'>4 r4 r4 |
  % Bars 53–68: two voices
  <<
    { \voiceOne
      a'2. |
      cis''2. |
      fis'2. |
      gis'2. |
      d'2. |
      cis''4 b'4. fis'8 |
      a'2. |
      gis'2. |
      fis'2. |
      gis'2. |
      cis'2. |
      fis'2. |
      b'2.~ |
      b'4 ais'4\downbow b'4 |
      d''4 cis''4. ais'8 |
      b'2. |
    }
    \\
    { \voiceTwo
      e'2. _\markup \italic { "espr." } \f |
      gis'2. |
      cis'2. |
      e'2. |
      a2. |
      gis'4 fis'4. cis'8 |
      e'2. |
      d'2. |
      cis'2. |
      e'2. |
      a2. |
      cis'2. |
      fis'2.~ |
      fis'4 fis'4 fis'4 |
      ais'4 ais'4. e'8 |
      fis'2. \< |
    }
  >>
  \oneVoice
  % Bars 69–84: single voice
  cis''2. _\markup \italic { "espr." } \f |
  e''2. |
  a''2. |
  gis''2. |
  fis''2. |
  e''4 d''4. e''8 |
  d''2. |
  cis''2. |
  gis'4 \ff r8 cis''8 e''4 |
  gis''4 r8 fis''8 e''4 |
  cis''4 r8 fis''8 a''4 |
  a''4 r8 b''8 a''4 |
  gis''4 r8 fis''8 e''4 |
  dis''4 r8 e''8 dis''4 |
  cis''4 r4 r4 |
  R2. |
  % Bars 85–88
  gis'2.~ \f |
  gis'4 a'4.( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( cis''4. gis'8) |
  % Bars 89–92
  gis'2.~ |
  gis'4 a'4.( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( e''4. cis''8) |
  % Bars 93–96
  cis''2.~ |
  cis''4 d''4.( cis''8) |
  a''2.~ |
  a''4 fis''4\downbow gis''4 |
  % Bars 97–100
  a''4( gis''4 fis''4) |
  e''4 _\markup \italic { "cresc." }( dis''4 cis''4) |
  b'4( a'4 gis'4) |
  fis'4( e'4. dis'8) |
  % Bars 101–108: one voice with natural stem directions.
  gis'2. _\markup \italic { "espr." }~ \f |
  gis'4 a'4.( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( cis''4. gis'8) |
  gis'2.~ |
  gis'4 a'4.( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( e''4. cis''8) |
  % Bar 109: continuation of the existing dynamic; no new marking.
  cis''2.~ |
  cis''4 d''4.( cis''8) |
  a''2.~ |
  a''4 fis''4\downbow gis''4 |
  % Bars 113–116
  a''4 gis''4 fis''4 |
  e''4 cis''4 a'4 |
  gis'8 \ff e''8 e''4-. dis''4-. |
  cis''4-. r4 r4 |
}

violinsTwoBridge = {
  % Bars 117–120
  \set Staff.midiInstrument = "pizzicato strings"
  r4 ^\markup \italic { "pizz." } e'4 \p e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  % Bars 121–124
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  % Bars 125–128
  r4 e'4 e'4 |
  r4 dis'4 dis'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  % Bars 129–132
  r4 dis'4 dis'4 |
  r4 dis'4 dis'4 |
  r4 dis'4 dis'4 |
  r4 dis'4 dis'4 |
  % Bars 133–136
  r4 dis'4 dis'4 |
  r4 dis'4 dis'4 |
  r4 dis'4 dis'4 |
  r4 dis'4 dis'4 |
  % Bars 137–140
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  % Bars 141–144
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  % Bars 145–148
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  r4 e'4 e'4 |
  % Bars 149–152
  r4 e'4 e'4 |
  r4 dis'4 dis'4 |
  r4 e'4 e'4 |
  e'4 r4 r4 |
}

violinsTwoMusic = { \violinsTwoOpening \violinsTwoBridge }
violinsTwoMusicPlayback = \scorePlayback \violinsTwoOpening \violinsTwoBridge

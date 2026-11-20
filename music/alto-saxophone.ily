altoSaxOpening = {
  \clef treble \key e \major \time 3/4
  % Bars 1–3
  gis'8 _\markup \italic { "marc." } \f gis'8 gis'4 r4 |
  gis'8 gis'8 gis'4 r4 |
  gis'8 gis'8 gis'4 r4 |
  % Bars 4–37
  R2.*34 |
  gis2. _\markup \italic { "espr." }( \mp |
  gis2.~) |
  gis2.~ |
  gis4 r4 r4 |
  gis2.->( |
  gis2.~) |
  gis2.( |
  gis4) r4 r4 |
  cis'2.->( |
  cis'2.~) |
  cis'2.( |
  cis'4) r4 r4 |
  R2. |
  e'4( gis'4-.) fis'4-. |
  e'4-. r4 r4 |
  cis'2. _\markup \italic { "espr." }( \f |
  e'2.) |
  a2.( |
  cis'2.) |
  fis2. |
  e'4( d'4. a8 |
  cis'2. |
  b2.) |
  a2.( |
  cis'2.) |
  fis2.( |
  a2.) |
  d'2.~ |
  d'4 cis'4( d'4 |
  fis'4 e'4. cis'8 |
  d'2.) |
  cis'2. |
  cis'2. |
  fis'2.( |
  e'2.) |
  d'2. |
  cis'4( b4. cis'8 |
  b2. |
  a2.) |
  gis4 \ff r4 r4 |
  R2.*23 | % Bars 78–100
  % Bars 101–116
  gis'8( \mf a'8 gis'8 fis'8 dis'8 bis8 |
  gis4) r4 r4 |
  R2.*2 |
  gis'8( a'8 gis'8 fis'8 dis'8 bis8 |
  gis4) r4 r4 |
  R2.*2 |
  cis''8( d''8 cis''8 b'8 gis'8 eis'8 |
  cis'4) r4 r4 |
  R2.*4 |
  e'8( \ff gis'8) gis'4-. fis'4-. |
  e'4-. r4 r4 |

}
altoSaxBridge = {
  gis'2.~( \pp ^\markup \italic "I" |
  gis'2. |
  e'2.~ |
  e'2.) |
  e'2.~ |
  e'2. |
  gis'2.~ |
  gis'4 r4 r4 |
  gis'4-. gis'4-. gis'4-. |
  gis'4-. fis'4. gis'8 |
  a'2 gis'4~ |
  gis'2~ gis'8 r8 |
  % Bars 129–136: one voice
  % I/II are textual player labels, not divisi.
  gis'4-. ^\markup \italic "II" \mp gis'4-. gis'4-. |
  fisis'4 fisis'4.( fisis'8 |
  fisis'2 gis'4~ |
  gis'2.) |
  dis'2.~ \p |
  dis'2. |
  dis'2.~ |
  dis'2. \> |
  % Bar 137: player I
  gis'2.~( \pp ^\markup \italic "I" |
  gis'2. |
  e'2.~ |
  e'2.) |
  e'2.~( |
  e'2. |
  gis'2.~ |
  gis'4) r4 r4 |
  gis'4-. \p gis'4-. gis'4-. |
  gis'4-. r4 r4 |
  gis'4-. gis'4-. gis'4-. |
  gis'4-. r4 r4 |
  cis'4-. cis'4-. cis'4-. |
  cis'4-. cis'4 r4 |
  b2.~ |
  b4 r4 r4 |
}
altoSaxMusic = { \altoSaxOpening \altoSaxBridge }
altoSaxMusicPlayback = \scorePlayback \altoSaxOpening \altoSaxBridge

bassClarinetOpening = {
  \key e \major \time 3/4
  R2.*3 |
  fis,4-. \mf e,4-. dis,4-. |
  cis,4-. r4 r4 |
  R2.*47 |
  { a4  \mf r4 r4 } |
  { gis4 r4 r4 } |
  { fis4 r4 r4 } |
  { e4 r4 r4 } |
  { d4 r4 r4 } |
  { b,4 r4 r4 } |
  { e,4 r4 r4 } |
  { e,4 r4 r4 } |
  { a,4 r4 r4 } |
  { gis,4 r4 r4 } |
  { fis4 r4 r4 } |
  { e4 r4 r4 } |
  { d4 r4 r4 } |
  { a,4 r4 r4 } |
  { fis,4 r4 r4 } |
  { b,4 r4 r4 } |
  { a4 r4 r4 } |
  { gis4 r4 r4 } |
  { fis4 r4 r4 } |
  { e4 r4 r4 } |
  { d4 r4 r4 } |
  { e,4 r4 r4 } |
  { eis,4 r4 r4 } |
  { fis,4 r4 r4 } |
  gis,4  \ff r4 gis,4 |
  gis,4 r4 gis,4 |
  fis,4 r4 fis,4 |
  fis,4 r4 fis,4 |
  gis,4 r4 gis,4 |
  gis,4 r4 gis,4 |
  cis4-. \mf gis,4-. e,4-. |
  cis,4-. r4 r4 |
  R2.*30 | % Bars 85–114
  { gis,4-.  \f r4 gis,4-. } |
  { cis4-. r4 r4 } |

}
bassClarinetBridge = {
  % Bars 117–120
  e,2.~ \pp |
  e,2.~ |
  e,2.~ |
  e,2. |
  % Bars 121–124
  e,2.~ |
  e,2.~ |
  e,2.~ |
  e,2.~ |
  % Bars 125–128
  e,4 r4 r4 |
  R2.*11 |
  e,2.~ \pp |
  e,2.~ |
  e,2.~ |
  e,2. |
  % Bars 141–144
  e,2.~ |
  e,2.~ |
  e,2.~ |
  e,2. |
  % Bars 145–148
  e,2.~ |
  e,2.~ |
  e,2.~ |
  e,2.~ |
  % Bars 149–152
  e,4 r4 r4 |
  R2. |
  e,2.~ |
  e,4 r4 r4 |
}
bassClarinetMusic = { \bassClarinetOpening \bassClarinetBridge }
bassClarinetMusicPlayback = \scorePlayback \bassClarinetOpening \bassClarinetBridge

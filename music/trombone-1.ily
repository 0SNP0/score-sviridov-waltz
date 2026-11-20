tromboneOneBeforeSolo = {
  \clef bass
  \key e \major
  \time 3/4
  % Bars 1–4
  % Bars 1–3
  dis'8 _\markup \italic { "marc." } \f dis'8 dis'4 r4 |
  e'8 e'8 e'4 r4 |
  dis'8 dis'8 dis'4 r4 |
  % Bars 4–52
  R2.*49 |
  r4 e'4-. \mf e'4-. |
  r4 e'4-. e'4-. |
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  % Bars 57–60
  r4 a4-. a4-. |
  r4 a4-. a4-. |
  r4 cis'4-. cis'4-. |
  r4 d'4-. d'4-. |
  % Bars 61–64
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  r4 a4-. a4-. |
  r4 cis'4-. cis'4-. |
  % Bars 65–68
  r4 a4-. a4-. |
  r4 a4-. a4-. |
  r4 ais4-. ais4-. |
  r4 b4-. b4-. |
  % Bars 69–72
  r4 e'4-. e'4-. |
  r4 e'4-. e'4-. |
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  % Bars 73–76
  r4 a4-. a4-. |
  r4 a4-. a4-. |
  r4 d'4-. d'4-. |
  r4 cis'4-. cis'4-. |
  % Bars 77–80
  cis'4-. \sf r4 r4 |
  R2.*7 | % Bars 78–84
}
tromboneOneSoloSection = {
  % Bars 85–100: player I
  r4 gis4-. \f gis4-. |
  r4 gis4-. gis4-. |
  r4 gis4-. gis4-. |
  r4 gis4-. gis4-. |
  r4 gis4-. gis4-. |
  r4 gis4-. gis4-. |
  r4 gis4-. gis4-. |
  r4 gis4-. gis4-. |
  r4 b4-. b4-. |
  r4 b4-. b4-. |
  r4 a4-. a4-. |
  r4 a4-. a4-. |
  a4-. r4 r4 |
  ais4-. r4 r4 |
  a4-. r4 r4 |
  R2. |
  % Bar 101
  R2. |
  gis2.~ \mp |
  gis2.~ |
  gis2.~ |
  % Bars 105–108
  gis4 r4 r4 |
  gis2.~ |
  gis2.~ |
  gis2.~ |
  % Bars 109–112: I-only mode continues with natural stems.
  gis4 r4 r4 |
  R2.*5 |
}
tromboneOneAfterSolo = {
  % Bars 115–116
  cis'4-. \f r4 bis4-. |
  cis'4-. r4 r4 |
}
tromboneOneOpening = {
  \tromboneOneBeforeSolo
  \tromboneOneSoloSection
  \tromboneOneAfterSolo
}

tromboneOneBridge = {
  % Bars 117–120
  R2.*36 |
}

tromboneOneMusic = { \tromboneOneOpening \tromboneOneBridge }
tromboneOneMusicPlayback = \scorePlayback \tromboneOneOpening \tromboneOneBridge

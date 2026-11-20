trumpetTwoOpening = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  gis'8  \f  gis'8 gis'4 r4 |
  gis'8  gis'8 gis'4 r4 |
  fis'8  fis'8 fis'4 r4 |
  R2.*49 |
  r4  a'4-.  \mf a'4-. |
  r4 gis'4-. gis'4-. |
  r4 fis'4-. fis'4-. |
  r4 e'4-. e'4-. |
  % Bars 57–60
  r4 d'4-. d'4-. |
  r4  d'4-. d'4-. |
  r4  fis'4-. fis'4-. |
  r4 e'4-. e'4-. |
  % Bars 61–64
  r4  fis'4-. fis'4-. |
  r4 e'4-. e'4-. |
  r4  cis'4-. cis'4-. |
  r4 fis'4-. fis'4-. |
  % Bars 65–68
  r4  d'4-. d'4-. |
  r4 d'4-. d'4-. |
  r4  e'4-. e'4-. |
  r4  d'4-. d'4-. |
  % Bars 69–72
  r4  a'4-. a'4-. |
  r4 gis'4-. gis'4-. |
  r4 fis'4-. fis'4-. |
  r4 e'4-. e'4-. |
  % Bars 73–76
  r4 d'4-. d'4-. |
  r4 d'4-. d'4-. |
  r4 gis'4-. gis'4-. |
  r4 fis'4-. fis'4-. |
  % Bars 77–80
  e'4-.  \sf r4 r4 |
  R2.*7 |
  r4 c'4-.  \f c'4-. |
  r4 c'4-. c'4-. |
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  % Bars 89–92
  r4 c'4-. c'4-. |
  r4 c'4-. c'4-. |
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  % Bars 93–96
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  r4 cis'4-. cis'4-. |
  % Bars 97–100
  cis'4-.  r4 r4 |
  cis'4-. r4 r4 |
  cis'4-. r4 r4 |
  R2.*9 | % Bars 100–108
  R2. | % Bar 109: deleted
  cis'2.~ |
  cis'2.~ |
  cis'2.~ |
  % Bars 113–116
  cis'4 r4 r4 |
  R2. |
  e'4-.  \f r4 fis'4-. |
  e'4-. s2 |
}

trumpetTwoBridge = {
  % Bars 117–120
  R2.*36 |
}


trumpetTwoMusic = { \trumpetTwoOpening \trumpetTwoBridge }
trumpetTwoMusicPlayback = \scorePlayback \trumpetTwoOpening \trumpetTwoBridge

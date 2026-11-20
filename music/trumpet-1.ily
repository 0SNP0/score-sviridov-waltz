% Bars 102–109: shared Trumpet I phrase.
trumpetOneLatePhrase = {
  gis'2.~ \mp |
  gis'2.~ |
  gis'2.~ |
  gis'4 r4 r4 |
  gis'2.~ |
  gis'2.~ |
  gis'2.~ |
  gis'4 r4 r4 |
}

trumpetOneOpening = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  gis'8 _\markup \italic { "marc." } \f  gis'8 gis'4 r4 |
  ais'8  ais'8 ais'4 r4 |
  c''8  c''8 c''4 r4 |
  R2.*49 |
  r4  cis''4-. \mf cis''4-. |
  r4 cis''4-. cis''4-. |
  r4 a'4-. a'4-. |
  r4 gis'4-. gis'4-. |
  % Bars 57–60
  r4 fis'4-. fis'4-. |
  r4  fis'4-. fis'4-. |
  r4  a'4-. a'4-. |
  r4 gis'4-. gis'4-. |
  % Bars 61–64
  r4  a'4-. a'4-. |
  r4 gis'4-. gis'4-. |
  r4  fis'4-. fis'4-. |
  r4 a'4-. a'4-. |
  % Bars 65–68
  r4  fis'4-. fis'4-. |
  r4 fis'4-. fis'4-. |
  r4  fis'4-. fis'4-. |
  r4  fis'4-. fis'4-. |
  % Bars 69–72
  r4  cis''4-. cis''4-. |
  r4 cis''4-. cis''4-. |
  r4 a'4-. a'4-. |
  r4 gis'4-. gis'4-. |
  % Bars 73–76
  r4 fis'4-. fis'4-. |
  r4 fis'4-. fis'4-. |
  r4 b'4-. b'4-. |
  r4 a'4-. a'4-. |
  % Bars 77–80
  gis'4-. \sf r4 r4 |
  R2.*7 |
  r4 fis'4-. \f fis'4-. |
  r4 fis'4-. fis'4-. |
  r4 e'4-. e'4-. |
  r4 e'4-. e'4-. |
  % Bars 89–92
  r4 fis'4-. fis'4-. |
  r4 fis'4-. fis'4-. |
  r4 e'4-. e'4-. |
  r4 e'4-. e'4-. |
  % Bars 93–96
  r4 f'4-. f'4-. |
  r4 f'4-. f'4-. |
  r4 fis'4-. fis'4-. |
  r4 fis'4-. fis'4-. |
  % Bars 97–100
  fis'4-.  r4 r4 |
  g'4-. r4 r4 |
  e'4-. r4 r4 |
  R2.*2 | % Bars 100–101: silence before transferred phrase
  \trumpetOneLatePhrase % Bars 102–109
  cis''2.~ | % Bar 110: no new dynamic
  cis''2.~ |
  cis''2.~ |
  % Bars 113–116
  cis''4 r4 r4 |
  R2. |
  gis'8-. \f gis'8-. gis'4-. gis'4-. |
  gis'4-. r4 r4 |
}

trumpetOneBridge = {
  % Bars 117–120
  R2.*36 |
}

trumpetOneMusic = { \trumpetOneOpening \trumpetOneBridge }
trumpetOneMusicPlayback = \scorePlayback \trumpetOneOpening \trumpetOneBridge



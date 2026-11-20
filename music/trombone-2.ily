% Trombone II: canonical sounding music for the individual part and playback.
tromboneTwoBarsOneToFiftyTwo = {
  \clef bass
  \key e \major
  \time 3/4
  % Bars 1–3
  gis,8 _\markup \italic { "marc." } \f gis,8 gis,4 r4 |
  gis,8 gis,8 gis,4 r4 |
  gis,8 gis,8 gis,4 r4 |
  % Bars 4–52: tacet
  R2.*49 |
}
tromboneTwoBarsFiftyThreeToSeventySix = {
  a4 \mf r4 r4 |
  gis4 r4 r4 |
  fis4 r4 r4 |
  e4 r4 r4 |
  % Bars 57–60
  d4 r4 r4 |
  b,4 r4 r4 |
  e,4 r4 r4 |
  e,4 r4 r4 |
  % Bars 61–64
  a,4 r4 r4 |
  gis,4 r4 r4 |
  fis4 r4 r4 |
  e4 r4 r4 |
  % Bars 65–68
  d4 r4 r4 |
  a,4 r4 r4 |
  fis,4 r4 r4 |
  b,4 r4 r4 |
  % Bars 69–72
  a4 r4 r4 |
  gis4 r4 r4 |
  fis4 r4 r4 |
  e4 r4 r4 |
  % Bars 73–76
  d4 r4 r4 |
  e,4 r4 r4 |
  eis,4 r4 r4 |
  fis,4 r4 r4 |
}
tromboneTwoBarSeventySeven = {
  % Bar 77
  gis,4 \sf r4 r4 |
}
tromboneTwoBeforeRest = {
  \tromboneTwoBarsOneToFiftyTwo
  \tromboneTwoBarsFiftyThreeToSeventySix
  \tromboneTwoBarSeventySeven
}

tromboneTwoRestOrdinary = {
  % Individual part: compress rests between rehearsal marks.
  R2.*7 |   % 78–84
  R2.*16 |  % 85–100
  R2.*14 |  % 101–114
}

tromboneTwoAfterRest = {
  gis,4-. \f r4 gis,4-. |
  cis4-. r4 r4 |
}
tromboneTwoOpening = {
  \tromboneTwoBeforeRest
  \tromboneTwoRestOrdinary
  \tromboneTwoAfterRest
}

tromboneTwoBridge = {
  % Bars 117–120
  R2.*36 |
}
tromboneTwoMusic = { \tromboneTwoOpening \tromboneTwoBridge }

tromboneTwoMusicPlayback = \scorePlayback \tromboneTwoOpening \tromboneTwoBridge

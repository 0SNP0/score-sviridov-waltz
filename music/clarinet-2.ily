clarinetTwoSoloLine = {

  e'2. _\markup \italic { "espr." }( \f |
  gis'2.) |
  cis'2.( |
  e'2.) |
  % Bars 57–60
  a2. |
  gis'4( fis'4. cis'8 |
  e'2. |
  d'2.) |
  % Bars 61–64
  cis'2.( |
  e'2.) |
  a2.( |
  cis'2.) |
  % Bars 65–68
  fis'2.~ |
  fis'4 fis'2( |
  ais'4) ais'4.( e'8 |
  fis'2.) |}
clarinetTwoTogetherLine = {
  % Bars 69–72
  e'2. |
  e'2. |
  a'2.( |
  gis'2.) |
  % Bars 73–76
  fis'2. |
  e'4( d'4. e'8 |
  d'2. |
  cis'2.) |}

clarinetTwoOpening = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*36 |
  gis'8(  \f a'8 gis'8 fis'8 dis'8 bis8 |
  gis4)
  r4
  r4 |

  R2. |

  R2. |
  % Bars 41–44
  gis'8( a'8 gis'8 fis'8 dis'8 bis8 |
  gis4)
  r4
  r4 |

  R2. |

  R2. |
  % Bars 45–48
  cis''8( d''8 cis''8 b'8 gis'8 eis'8 |
  cis'4) r4 r4 |
  r4 r4 r4 |
  r4 r4 r4 |
  % Bars 49–52: Clarinet II rests.
   R2.*4 
  
  % Bars 53–76: Clarinet II sounding pitches.
  \clarinetTwoSoloLine
  \clarinetTwoTogetherLine
  e'4-.  \ff r8 gis'8-. cis''4-. |
  e''4-. r8 dis''8-. cis''4-. |
  a'4-. r8 cis''8-. fis''4-. |
  fis''4-. r8 gis''8-. fis''4-. |
  % Bars 81–84
  e''4-. r8 dis''8-. cis''4-. |
  bis'4 r4 bis'4 |
  cis''4 s2 |
   R2.   |
   R2.*8   |
  cis''2.~ |
  cis''4 d''4. cis''8 |
  a''2.~ |
  a''4 fis''4( gis''4 |
  % Bars 97–100
  a''4 gis''4 fis''4 |
  e''4 dis''4 cis''4 |
  b'4 a'4 gis'4 |
  fis'4 e'4. dis'8 |
  % Bars 101–104
  gis'8  \mf a'8 gis'8 fis'8 dis'8 bis8 |
  gis4) s2 |
  R2.*2 |
  gis'8( a'8 gis'8 fis'8 dis'8 bis8 |
  gis4) s2 |
  R2.*2 |
  cis''8( d''8 cis''8 b'8 gis'8 eis'8 |
  cis'4) s2 |
  R2. |
   r4  fis''4 \ff gis''4 |
  % Bars 113–116
  a''4 gis''4 fis''4 |
  e''4 cis''4 a'4 |
  gis'8(  \ff e''8) e''4-. dis''4-. |
  cis''4-. s2 |
}

clarinetTwoBridge = {
  % Bars 117–120
  e'2.(  \pp |
  gis'2. |
  e'2.~ |
  e'2.) |
  % Bars 121–124
  e'2.~( |
  e'2. |
  gis'2.~ |
  gis'4) r4 r4 |
  % Bars 125–128
  R2.*3 |
  r4 gis'4(  \mf ais'4 |
  % Bars 129–132
  b'4-.) b'4-. b'4-. |
  b'4-. ais'4.( b'8 |
  ais'2 gis'4~ |
  gis'2.) |
  % Bars 133–136
  gis'2.~  \mp  |
  gis'2. |
  gis'2.~ |
  gis'2.  \>  |
  % Bars 137–140
  e'2.(  \pp |
  gis'2. |
  e'2.~ |
  e'2.) |
  % Bars 141–144
  e'2.~( |
  e'2. |
  gis'2.~ |
  gis'4) r4 r4 |
  % Bars 145–148
  R2.*3 |
  r4 cis'4((  \mp dis'4 |
  % Bars 149–152
  e'4-.)) e'4-. e'4-. |
  e'4-. dis'2 |
  e'2.~ |
  e'4 s2 |
}

clarinetTwoMusic = { \clarinetTwoOpening \clarinetTwoBridge }

clarinetTwoMusicPlayback = \scorePlayback \clarinetTwoOpening \clarinetTwoBridge

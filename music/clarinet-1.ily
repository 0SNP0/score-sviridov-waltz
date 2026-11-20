% Bars 5–16: Clarinet I solo
% The solo phrase is shared by both print views and playback.
clarinetOneOpeningSolo = {
  gis''4-.  \mf e''8-. dis''8-. cis''4~ |
  cis''8 dis''8-. e''8-. fis''8-. gis''8-. cis'''8-. |
  e'''4-. dis'''4-. cis'''4-. |
  a''2. |
  % Bars 9–12
  gis''4( cis'''2) |
  fis''4( cis'''2) |
  e''4( dis''4 cis''4 |
  fis''4 e''4 dis''4 |
  % Bars 13–16
  gis''4) e''8-. dis''8-. cis''4~ |
  cis''8 dis''8-. e''8-. fis''8-. gis''8-. cis'''8-. |
  e'''4-. dis'''4-. cis'''4-. |
  cis'''4-. r4 r4 |
}

clarinetOneOpening = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 |
  \clarinetOneOpeningSolo
  R2.*20 |
  gis'2.~( \f |
  gis'4 a'2) |

  gis'4( cis''2) |
  gis'4( cis''2) |

  % Bars 41–44
  gis'2.~( |
  gis'4 a'2) |

  gis'4( cis''2) |
  gis'4( cis''2) |

  % Bars 45–48
  cis''2.~ |

  cis''4 d''4.( cis''8 |
  a''2.~ |
  a''4)  fis''4( \f  gis''4 |

  % Bars 49–52
  a''4 gis''4 fis''4 |
  e''4 cis''4 a'4) |
  gis'4( e''4-.) dis''4-. |
  cis''4-.  r4 r4  |
  % Bars 53–56
  R2.*16 |
   cis''2.( \f -\tweak X-offset #5 _\markup \italic "espr." |
  e''2.) |
  a''2.( |
  gis''2.) |
  % Bars 73–76
  fis''2. |
  e''4( d''4. e''8 |
  d''2. |
  cis''2.) |
  % Bars 77–80
    gis'4-. \ff r8 cis''8-. e''4-. |
  gis''4-. r8 fis''8-. e''4-. |
  cis''4-. r8 fis''8-. a''4-. |
  a''4-. r8 b''8-. a''4-. |
  % Bars 81–84
  gis''4-. r8 fis''8-. e''4-. |

  dis''4-. r8 e''8-. dis''4-. |
  cis''4  r4 r4  |

  R2. |
  % Bars 85–88
    gis'2.~( \f  |
  gis'4 a'2) |
  gis'4( cis''2) |
  gis'4( cis''2) |
  % Bars 89–92
  gis'2.~( |
  gis'4 a'2) |
  gis'4( cis''2) |
  gis'4( e''2) |
  % Bars 93–96

    cis''2.~ |
  cis''4 r4 r4 |

  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |

  gis''8( \mf a''8 gis''8 fis''8 dis''8 bis'8 |
  gis'4)  r4 r4  |

  R2.*2 |
  gis''8( a''8 gis''8 fis''8 dis''8 bis'8 |
  gis'4)  r4 r4  |
  R2.*2 |
  cis'''8( d'''8 cis'''8 b''8 gis''8 eis''8 |
  cis''4) r4 r4 |
  R2. |
   R2.*3   |
  e''8( \ff gis''8) gis''4-. fis''4-. |
  e''4-.  r4 r4  |
}

clarinetOneBridge = {
  % Bars 117–120
  gis'2.( \pp |
  b'2. |
  a'2.~ |
  a'2.) |
  % Bars 121–124
  a'2.~( |
  a'2. |
  b'2.~ |
  b'4) r4 r4 |
  % Bars 125–128
  R2.*3 |
  r4 b'4( \mf cis''4 |
  % Bars 129–132
  dis''4-.) dis''4-. dis''4-. |
  dis''4-. cis''4.( dis''8 |
  cis''2 b'4~ |
  b'2.) |
  % Bars 133–136
  b'4.( \mp cis''8 gis'8 cis''8 |
  b'2.) |
  b'4.( cis''8 gis'8 cis''8 |
  b'2.) \> |
  % Bars 137–140
  gis'2.( \pp |
  b'2. |
  a'2.~ |
  a'2.) |
  % Bars 141–144
  a'2.~( |
  a'2. |
  b'2.~ |
  b'4) r4 r4 |
  % Bars 145–148
  R2.*3 |
  r4 e'4(( \mp fis'4 |
  % Bars 149–152
  gis'4-.)) gis'4-. gis'4-. |
  gis'4-. fis'4.( gis'8 |
  e'2.~ |
  e'4)  r4 r4  |
}

clarinetOneMusic = { \clarinetOneOpening \clarinetOneBridge }

clarinetOneMusicPlayback = \scorePlayback \clarinetOneOpening \clarinetOneBridge



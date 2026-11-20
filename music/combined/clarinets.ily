% Combined-only engraving and manually placed player labels.

clarinetOneMusicCombined = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 |
  \barNumberCheck #5
  \oneVoice % Bars 5–16: explicit I-only mode, natural stems
  \clarinetOneOpeningSolo
  \barNumberCheck #17
  \voiceOne % Bar 17: default two-voice desk presentation resumes
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
  a''4)  \oneVoice  fis''4( \f  ^\markup \italic "I"  gis''4 |

  % Bars 49–52
  a''4 gis''4 fis''4 |
  e''4 cis''4 a'4) |
  gis'4( e''4-.) dis''4-. |
  cis''4-.  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |
  % Bars 53–68: Clarinet II plays alone; omit redundant rests for I.
  s2.*16 |
  \voiceOne  cis''2.( \f -\tweak X-offset #5 _\markup \italic "espr." |
  e''2.) |
  a''2.( |
  gis''2.) |
  % Bars 73–76
  fis''2. |
  % Keep the actual notes and slur in both outputs. Hide only the
  % spanner on the shared staff, where partCombine otherwise extends it.

  e''4( d''4. e''8 |
  d''2. |
  cis''2.) |
  % Bars 77–80
  \voiceOne   \voiceOne  gis'4-. \ff r8 cis''8-. e''4-. |
  gis''4-. r8 fis''8-. e''4-. |
  cis''4-. r8 fis''8-. a''4-. |
  a''4-. r8 b''8-. a''4-. |
  % Bars 81–84
  gis''4-. r8 fis''8-. e''4-. |

  dis''4-. r8 e''8-. dis''4-. |
  cis''4  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |

  R2. |
  % Bars 85–88
  \oneVoice   \oneVoice  gis'2.~( \f  |
  gis'4 a'2) |
  gis'4( cis''2) |
  gis'4( cis''2) |
  % Bars 89–92
  gis'2.~( |
  gis'4 a'2) |
  gis'4( cis''2) |
  gis'4( e''2) |
  % Bars 93–96

  \voiceOne   \voiceOne  cis''2.~ |
  cis''4 r4 r4 |

  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |

  gis''8( \mf a''8 gis''8 fis''8 dis''8 bis'8 |
  gis'4)  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |

  R2.*2 |
  gis''8( a''8 gis''8 fis''8 dis''8 bis'8 |
  gis'4)  \override Rest.staff-position = #0  r4 r4  \revert Rest.staff-position  |
  R2.*2 |
  cis'''8( d'''8 cis'''8 b''8 gis''8 eis''8 |
  cis''4) r4 r4 |
  R2. |
  s2.*3  |
  e''8( \ff gis''8) gis''4-. fis''4-. |
  e''4-.  \override Rest.staff-position = #0  r4 r4  \revert Rest.staff-position  |

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
  e'4)  \override Rest.staff-position = #0  r4 r4  \revert Rest.staff-position  |

}

clarinetTwoMusicCombined = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 | % Bars 1–4: both clarinets rest.
  \barNumberCheck #5
  % Bars 5–16: manual I solo — suppress silent II on this staff.
  % Skips preserve all 12 bars without touching II's independent part.
  s2.*12 |
  \barNumberCheck #17
  R2.*20 | % Bars 17–36: both clarinets rest.
  gis'8(  \once \override DynamicText.stencil = ##f  \f a'8 gis'8 fis'8 dis'8 bis8 |
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
  r4 r4 r4 | % Bar 47: both voices retained
  r4 s2 | % Bar 48: from beat 2 the I solo is active
  % 49-50: clarinet I alone. 51-52: a2, shared notes printed by I.

  s2.*4
  % Bars 53–68: Clarinet II alone, so use natural stems and show its f.
  \oneVoice
  \clarinetTwoSoloLine
  % Bars 69–76: both clarinets sound; use independent voices.
  \voiceTwo
  \clarinetTwoTogetherLine
  e'4-.  \once \override DynamicText.stencil = ##f  \ff r8 gis'8-. cis''4-. |
  e''4-. r8 dis''8-. cis''4-. |
  a'4-. r8 cis''8-. fis''4-. |
  fis''4-. r8 gis''8-. fis''4-. |
  % Bars 81–84
  e''4-. r8 dis''8-. cis''4-. |
  bis'4 r4 bis'4 |
  cis''4 s2 |
  s2.  |
  s2.*8  |
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
  gis'8  \once \override DynamicText.stencil = ##f  \mf a'8 gis'8 fis'8 dis'8 bis8 |
  gis4) s2 |
  R2.*2 |
  gis'8( a'8 gis'8 fis'8 dis'8 bis8 |
  gis4) s2 |
  R2.*2 |
  cis''8( d''8 cis''8 b'8 gis'8 eis'8 |
  cis'4) s2 |
  R2. |
  \oneVoice % Bar 112: explicit II solo, natural stems.
  \once \override Voice.Rest.staff-position = #0  r4  ^\markup \italic { "II" }  fis''4 \ff gis''4 |
  % Bars 113–116
  a''4 gis''4 fis''4 |
  e''4 cis''4 a'4 |
  \voiceTwo % Bar 115: both clarinets sound independently again.
  gis'8(  \once \override DynamicText.stencil = ##f  \ff e''8) e''4-. dis''4-. |
  cis''4-. s2 |

  % Bars 117–120
  e'2.(  \once \override DynamicText.stencil = ##f  \pp |
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
  r4 gis'4(  \once \override DynamicText.stencil = ##f  \mf ais'4 |
  % Bars 129–132
  b'4-.) b'4-. b'4-. |
  b'4-. ais'4.( b'8 |
  ais'2 gis'4~ |
  gis'2.) |
  % Bars 133–136
  gis'2.~  |
  gis'2. |
  gis'2.~ |
  gis'2.  |
  % Bars 137–140
  e'2.(  \once \override DynamicText.stencil = ##f  \pp |
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
  r4 cis'4((  \once \override DynamicText.stencil = ##f  \mp dis'4 |
  % Bars 149–152
  e'4-.)) e'4-. e'4-. |
  e'4-. dis'2 |
  e'2.~ |
  e'4 s2 |

}

clarinetsDeskCues = {
  s2.*4
  s2.^\markup \italic "I"  % bar 5: Clarinet I solo, combined only
  s2.*47
  s2.^\markup \italic "II"  % bar 53: Clarinet II alone
  s2.*15
  s2.^\markup \italic "I, II"  % bar 69: both independently
  s2.*15
  s2.^\markup \italic "I"  % bar 85: Clarinet I alone
  s2.*7
  s2.^\markup \center-column { \italic "I" \italic "II" }
  s2.*59
}

% Shared clarinet desk engraving for combined part and full score.
% Combined clarinet staff only: centered shared rests, default otherwise.
clarinetsRestLayout = {
  \deskRestCenter s2.*4   % Bars 1–4: both rest, centered
  \deskRestAuto s2.*12    % Bars 5–16: manual I solo; II uses invisible duration skips
  \deskRestCenter s2.*20  % Bars 17–36: both rest, centered
  \deskRestAuto s2.*16
  \deskRestAuto s2.*16  % 53–68: II only
  \deskRestAuto s2.*26
  \deskRestUpper #10 s2.*3
  \deskRestUpper #6 s2.*3
  \deskRestAuto s2.*2
  \deskRestCenter s2.*2
  \deskRestAuto s2.*2
  \deskRestCenter s2.*2
  \deskRestAuto s2.*2
  \deskRestCenter s2.
  \deskRestAuto s2.*13
  \deskRestCenter s2.*3
  \deskRestAuto s2.*17
  \deskRestCenter s2.*3
  \deskRestAuto s2.*5
}
% Keep distinct Clarinet I and II voices: the desk prints both directly,
% without unused partCombine mode timelines.
clarinetsTogether = <<
  \new Voice = "clarinetI" { \voiceOne \clarinetOneMusicCombined }
  \new Voice = "clarinetII" { \voiceTwo \clarinetTwoMusicCombined }
>>
clarinetsTogetherPlayback = << \new Voice { \voiceOne \clarinetOneMusicPlayback } \new Voice { \voiceTwo \clarinetTwoMusicPlayback } >>

% Shared clarinet print expression. Keep all manual rest placement in
% clarinetsRestLayout above; no separate copy in the desk part.
clarinetsDeskPrint = <<
  { \clarinetsTogether }
  { \clarinetsDeskCues }
  { \clarinetsRestLayout }
>>

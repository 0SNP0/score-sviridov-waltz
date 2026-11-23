% Clarinet I cue in bars 5–15; Flute III cue in bars 21–52.
\include "scorekit/lilypond/cue-notes.ily"
% Flute III's actual stream supplies this printed cue.
fluteOneBeforeClarinetCue = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 |
}
fluteOneAfterClarinetCue = {
  % Bar 16
  a'''2.-> \f |
  % Bars 17–20
  gis'''4( e'''4 cis'''4 |
  gis''4 \acciaccatura { b''16 } a''4. gis''8 |
  cis'''2.~ |
  cis'''4) r4 r4 |

  % Bars 21–24

}
fluteOneLate = {
  cis'''2. _\markup \italic { "espr." }( \f |
  e'''2.) |
  a'''2.( |
  gis'''2.) |
  % Bars 73–76
  fis'''2. |
  e'''4( d'''4. e'''8 |
  d'''2. |
  cis'''2.) |

  % Bars 77–80
  gis''4-. \ff r8 cis'''8-. e'''4-. |
  gis'''4-. r8 fis'''8-. e'''4-. |
  cis'''4-. r8 fis'''8-. a'''4-. |
  a'''4-. r8 b'''8-. a'''4-. |
  % Bars 81–84
  gis'''4-. r8 fis'''8-. e'''4-. |
  dis'''4-. r8 e'''8-. dis'''4-. |
  cis'''4 r4 r4 |
 R2. |

  % Bars 85–88
  gis''2.~( \f |
  gis''4 a''2) |
  gis''4( cis'''2) |
  gis''4( cis'''2) |
  % Bars 89–92
  gis''2.~( |
  gis''4 a''2) |
  gis''4( cis'''2) |
  gis''4( e'''2) |
  % Bars 93–96
  cis'''2.~( |
  cis'''4 d'''4. cis'''8 |
  a'''2.~ |
  a'''4) fis'''4( gis'''4 |
  % Bars 97–100
  a'''4 gis'''4 fis'''4 |
  e'''4 dis'''4 cis'''4 |
  b''4 a''4 gis''4 |
  fis''4 e''4. dis''8 |
  % Bars 101–104
  gis''4) r4 r4 |
  % Bars 102–110: Flute I rests.

 R2.*9 |

  a'''2.~ |
  a'''4 fis'''4 \ff gis'''4 |
  % Bars 113–116
  a'''4 gis'''4 fis'''4 |
  e'''4 cis'''4 a''4 |
  e'''8( \ff gis'''8) gis'''4-. fis'''4-. |
  e'''4-. r4 r4 |
}
fluteOneOpening = {
  \fluteOneBeforeClarinetCue
  \barNumberCheck #5
  \scorekitCueOrRest ##t "clarinetOneForFluteCues" #UP "Cl. I" { R2.*11 | }
  \barNumberCheck #16
  \fluteOneAfterClarinetCue
  \barNumberCheck #21
  \scorekitCueOrRest ##t "fluteThreeIntoOne" #UP "Fl. III" { R2.*32 | }
 R2.*16 |  % Bars 53–68 remain silent
  \fluteOneLate
}
fluteOneOpeningPlayback = {
  \fluteOneBeforeClarinetCue
  R2.*11 | % Bars 5–15: print-only Clarinet I cue, no flute notes in MIDI.
  \fluteOneAfterClarinetCue
 R2.*48 |  % Bars 21–68, no sounding cue notes
  \fluteOneLate
}

fluteOneBridge = {
  % Bars 117–120
 R2.*17 |
  b''4.( \mf cis'''8 gis''8 cis'''8 |
  b''2.) |
  b''4.( cis'''8 gis''8 cis'''8 |
  % Bars 137–140
  b''4) r4 r4 |
 R2.*15 |
}

fluteOneMusic = { \fluteOneOpening \fluteOneBridge }

fluteOneMusicPlayback = \scorePlayback \fluteOneOpeningPlayback \fluteOneBridge


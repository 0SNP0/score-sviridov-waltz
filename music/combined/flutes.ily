% Combined-only engraving; canonical notes and playback stay in music/flute-*.ily.

fluteOneMusicCombined = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  R2.*4 |
  \barNumberCheck #5
  \scorekitCueOrRest ##t "clarinetOneForFluteCues" #UP "Cl. I" { R2.*11 | }
  \barNumberCheck #16
  \oneVoice  a'''2.-> \f |
  % Bars 17–20
  gis'''4( e'''4 cis'''4 |
  gis''4 \acciaccatura { b''16 } a''4. gis''8 |
  cis'''2.~ |
  cis'''4) r4 r4 |
  \voiceOne
  % Bars 21–24
  \scorekitCueOrRest ##t "fluteThreeIntoOne" #UP "Fl. III" { R2.*32 | }
  R2.*16 |
  \oneVoice  cis'''2. _\markup \italic { "espr." }( \f |
  e'''2.) |
  a'''2.( |
  gis'''2.) |
  % Bars 73–76
  fis'''2. |
  e'''4( d'''4. e'''8 |
  d'''2. |
  cis'''2.) |
  \voiceOne
  % Bars 77–80
  gis''4-. \ff r8 cis'''8-. e'''4-. |
  gis'''4-. r8 fis'''8-. e'''4-. |
  cis'''4-. r8 fis'''8-. a'''4-. |
  a'''4-. r8 b'''8-. a'''4-. |
  % Bars 81–84
  gis'''4-. r8 fis'''8-. e'''4-. |
  dis'''4-. r8 e'''8-. dis'''4-. |
  cis'''4  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |
  R2. |
  \oneVoice
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
  \voiceOne  gis''4)  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |
  % 102-110: I rests while II plays; print upper rests without collision.
  \override Voice.MultiMeasureRest.staff-position = #12
  R2.*9 |
  \revert Voice.MultiMeasureRest.staff-position
  \oneVoice  a'''2.~ |
  a'''4 fis'''4 \ff gis'''4 |
  % Bars 113–116
  a'''4 gis'''4 fis'''4 |
  e'''4 cis'''4 a''4 |
  \voiceOne  e'''8( \ff gis'''8) gis'''4-. fis'''4-. |
  e'''4-.  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |

  % Bars 117–120
  R2.*17 |
  b''4.( \mf cis'''8 gis''8 cis'''8 |
  b''2.) |
  b''4.( cis'''8 gis''8 cis'''8 |
  % Bars 137–140
  b''4)  \override Voice.Rest.staff-position = #0  r4 r4  \revert Voice.Rest.staff-position  |
  R2.*15 |

}

fluteTwoMusicCombined = {
  \clef treble
  \key e \major
  \time 3/4
  % Bars 1–4
  s2.*76  |
  e''4-.  \once \override DynamicText.stencil = ##f  \ff r8 gis''8-. cis'''4-. |
  e'''4-. r8 dis'''8-. cis'''4-. |
  a''4-. r8 cis'''8-. fis'''4-. |
  fis'''4-. r8 gis'''8-. fis'''4-. |
  % Bars 81–84
  e'''4-. r8 dis'''8-. cis'''4-. |
  bis''4 r4 bis''4 |
  cis'''4 s2 |
  s2.*17  |
  \voiceTwo  gis''2.~( |
  gis''4 a''2) |
  gis''4( cis'''2) |
  gis''4( cis'''2) |
  % Bars 105–108
  gis''2.~( |
  gis''4 a''2) |
  gis''4( cis'''2) |
  gis''4( e'''2) |
  % Bars 109–112
  cis'''2.~ |
  cis'''4 d'''2 |
  \voiceTwo
  % 111-114: a2, one printed voice; solo II keeps its own notes.
  s2.*4

  gis''8(  \once \override DynamicText.stencil = ##f  \ff e'''8) e'''4-. dis'''4-. |
  cis'''4-. s2 |

  % Bars 117–120
  s2.*17  |
  gis''2.~ |
  gis''2. |
  gis''2.~ |
  % Bars 137–140
  gis''4 s2 |
  s2.*15  |

}

% Native LilyPond-only mode map for the actual Flutes I-II desk.
% All decisions are local to this file; individual parts are unchanged.
% Printed measure numbers refer to the 152 unique bars of this score.
%
% I,II is the default: independent voices and opposing stems.
% I / II: only that instrument is printed; the other is silent.
% a2: one notehead and stem; both parts MUST have the same music.
%
% Flute I alone: bars 16-20, 69-76 and 85-100.
% Flute II alone: bars 102-110.
% a2: bars 111-114 (the two source note streams agree there).
% All remaining bars: I,II.
flutesModeOpening = {
  \partCombineApart s2.*15
  \partCombineSoloI \omit Staff.MultiMeasureRest s2.*5
  \undo \omit Staff.MultiMeasureRest
  \partCombineApart s2.*48
  \partCombineSoloI \omit Staff.MultiMeasureRest s2.*8
  \undo \omit Staff.MultiMeasureRest
  \partCombineApart s2.*8
  \partCombineSoloI \omit Staff.MultiMeasureRest s2.*16
  \undo \omit Staff.MultiMeasureRest
  \partCombineApart s2.
  \partCombineSoloII s2.*9
  \partCombineUnisono s2.*4
  \partCombineApart s2.*2
}
flutesModeBridge = { \partCombineApart s2.*36 }
flutesModeTimeline = { \flutesModeOpening \flutesModeBridge }
flutesModeTimelinePlayback = \scorePlayback \flutesModeOpening \flutesModeBridge

% PartCombine control events travel in parallel with the first source
% voice. This allows LilyPond to re-engrave the current source immediately
% on every preview, without generating an intermediate .ily file.
flutesTogether = <<
  \new Voice = "fluteI" { \voiceOne \fluteOneMusicCombined }
  \new Voice = "fluteII" { \voiceTwo \fluteTwoMusicCombined }
>>
flutesTogetherPlayback = \partCombine #'(0 . 0)
  { << { \fluteOneMusicPlayback } { \flutesModeTimelinePlayback } >> }
  { \fluteTwoMusicPlayback }

% No invisible dummy notes for labels. PartCombine's own text engraver
% supplies I, II and a2 at mode transitions.
% All labels are ordinary italic music marks, never bold partCombine text.
flutesDeskCues = {
  s2.*15 s2.^\markup \italic "I" s2.*4
  s2.*48 s2.^\markup \italic "I" s2.*7
  s2.*8 s2.^\markup \italic "I" s2.*15
  s2.^\markup \center-column { \italic "I" \italic "II" }
  s2.*9
  s2.^\markup \italic "a2" s2.*3
  s2.*38
}

% Staff-only layout: shared whole-bar rests centered; single-voice
% quarter rests are centered locally in the music files.
flutesRestLayout = { \override Staff.MultiMeasureRest.staff-position = #0 s2.*152 \revert Staff.MultiMeasureRest.staff-position }


% Shared print expression: used verbatim by the stand-alone combined part
% and the same desk in the full orchestral score.
flutesDeskPrint = <<
  { \flutesTogether }
  { \flutesDeskCues }
  { \flutesRestLayout }
>>

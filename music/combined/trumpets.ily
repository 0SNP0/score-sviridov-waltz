% Both voices use the individual canonical notes; only engraving differs here.

trumpetOneMusicCombined = \trumpetOneMusic

trumpetTwoMusicCombined = \trumpetTwoMusic

% Printed trumpet I-II desk. Every measure remains two independent voices.
% No a2 or I+II text: the desk name already identifies both players.
% Dynamics are shared; the first mf is at bar 53.
trumpetsTogether = <<
  \new Voice = "trumpetI" { \voiceOne \trumpetOneMusicCombined }
  \new Voice = "trumpetII" {
    \voiceTwo
    \omit DynamicText
    \trumpetTwoMusicCombined
  }
>>
trumpetsDeskPrint = { \trumpetsTogether }

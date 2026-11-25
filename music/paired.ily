% The combined desks reference their canonical instrument streams.
% Keep printed and playback forms separate to honor D.C. al Fine.

% The shared staff uses regular rest placement whenever both flutes rest.
% Individual overlap cases are corrected locally in flute-1.ily.
\include "combined/clarinets.ily"

\include "combined/trumpets.ily"

trumpetsTogetherPlayback = << \new Voice { \voiceOne \trumpetOneMusicPlayback } \new Voice { \voiceTwo \trumpetTwoMusicPlayback } >>

\include "combined/trombones-1-2.ily"
trombonesTogetherPlayback = << \new Voice { \voiceOne \tromboneOneMusicPlayback } \new Voice { \voiceTwo \tromboneTwoMusicPlayback } >>

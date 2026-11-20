% Written score: 152 unique measures, then Da Capo al Fine.
% Playback: opening 116 + middle 36 + opening 116 = 268 measures.
% The printed Fine is at the end of measure 116; mark that boundary
% with a double barline in both scores and all individual/combined parts.
% It is visual only: MIDI still follows globalPlayback's 268 measures.
global = { \time 3/4 s2.*116 \bar "||" s2.*36 \bar "||" }
globalPlayback = { \time 3/4 \scorePlayback { s2.*116 } { s2.*36 } }

rehearsalMarks = {
  % Bar-number rehearsal boxes are the closest above-staff annotations.
  % Keep them horizontally centered over barlines; tempo, instrument and
  % player labels stack outside them, farther from the staff.
  \override Score.RehearsalMark.outside-staff-priority = #350
  \override Score.RehearsalMark.break-align-symbols = #'(staff-bar)
  \override Score.RehearsalMark.self-alignment-X = #CENTER
  \override Score.RehearsalMark.padding = #0.35
  \tempo \markup { \italic "Tempo di valse allegro" } 2. = 66
  % Bars 1–4
  s2.*4 |
  % Bars 5–20
  \mark \markup \box \bold \abs-fontsize #14 "5" s2.*16 |
  % Bars 21–36
  \mark \markup \box \bold \abs-fontsize #14 "21" s2.*16 |
  % Bars 37–52
  \mark \markup \box \bold \abs-fontsize #14 "37" s2.*16 |
  % Bars 53–60
  \mark \markup \box \bold \abs-fontsize #14 "53" s2.*8 |
  % Bars 61–68
  \mark \markup \box \bold \abs-fontsize #14 "61" s2.*8 |
  % Bars 69–76
  \mark \markup \box \bold \abs-fontsize #14 "69" s2.*8 |
  % Bars 77–84
  \mark \markup \box \bold \abs-fontsize #14 "77" s2.*8 |
  % Bars 85–100
  \mark \markup \box \bold \abs-fontsize #14 "85" s2.*16 |
  % Bars 101–115
  \mark \markup \box \bold \abs-fontsize #14 "101" s2.*15 |
  % Bar 116
  s2. \textEndMark \markup \bold "Fine" |
  % Bars 117–124
  \mark \markup \box \bold \abs-fontsize #14 "117" s2.*8 |
  % Bars 125–136
  \mark \markup \box \bold \abs-fontsize #14 "125" s2.*12 |
  % Bars 137–144
  \mark \markup \box \bold \abs-fontsize #14 "137" s2.*8 |
  % Bars 145–152: one uninterrupted spacer keeps the final rest compressible.
  \mark \markup \box \bold \abs-fontsize #14 "145"
  s2.*8 \textEndMark \markup \bold "D.C. al Fine" |
}
rehearsalMarksPlayback = {
  \tempo 2. = 66
  % Replay markers follow the same LilyPond performance form as every part.
  % The second visit to bar 1 is emitted automatically by \scorePlayback.
  \scorePlayback
  { \scorekitPlaybackStart #1 s2.*116 }
  { s2.*36 }
}

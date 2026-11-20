% Canonical Clarinet II quotation: print-only, not sounded in sax MIDI.
\include "scorekit/lilypond/cue-notes.ily"
% Quoted pitches are independent of the receiver's notation transposition.
\addQuote "tenorSaxClarinetIIWritten" { \transpose c d' { \clarinetTwoMusic } }
\addQuote "tenorSaxClarinetIIConcert" { \clarinetTwoMusic }

tenorSaxBeforeCue = {
  \key e \major \time 3/4
  % Bars 1–3
  gis8 _\markup \italic { "marc." } \f gis8 gis4 r4 |
  gis8 gis8 gis4 r4 |
  gis8 gis8 gis4 r4 |
  % Bars 4–36
  R2.*33 |
}
tenorSaxAfterCue = {
  a2.  \f |
  gis2. |
  fis2. |
  e2. |
  d2. |
  b,2. |
  e,2. |
  e,2. |
  a,2. |
  gis,2. |
  fis2. |
  e2. |
  d2. |
  a,2. |
  fis,2. |
  b,2. |
  a2. |
  gis2. |
  fis2. |
  e2. |
  d2. |
  e,2. |
  eis,2. |
  fis,2. |
  gis,4  \ff r4 gis,4 |
  gis,4 r4 gis,4 |
  fis,4 r4 fis,4 |
  fis,4 r4 fis,4 |
  gis,4 r4 gis,4 |
  gis,4 r4 gis,4 |
  { cis'4-. gis4-. e4-. } |
  { cis4-. r4 r4 } |
  dis4  \f r4 r4 |
  gis,4 r4 r4 |
  cis4 r4 r4 |
  e4 r4 r4 |
  dis4 r4 r4 |
  gis,4 r4 r4 |
  cis4 r4 r4 |
  e4 r4 r4 |
  cis4 r4 r4 |
  cis4 r4 r4 |
  fis4 r4 r4 |
  e4 r4 r4 |
  dis4 r4 r4 |
  e4 r4 r4 |
  fis4 r4 r4 |
  R2. |
  dis4  \f r4 r4 |
  gis,4 r4 r4 |
  cis4 r4 r4 |
  e4 r4 r4 |
  dis4 r4 r4 |
  gis,4 r4 r4 |
  cis4 r4 r4 |
  e4 r4 r4 |
  cis4 r4 r4 |
  cis4 r4 r4 |
  fis4 r4 r4 |
  e4 r4 r4 |
  dis4 r4 r4 |
  e4 r4 r4 |
  gis,4 r4 gis,4 |
  cis4 s2 |

}
% Bars 37–46: Clarinet II cue; bars 47–52: rests.
tenorSaxOpening = {
  \tenorSaxBeforeCue
  \barNumberCheck #37
  \scorekitCueOrRest ##t "tenorSaxClarinetIIWritten" #UP "Cl. II" { R2.*10 | } % Bars 37–46
  R2.*6 | % Bars 47–52: Clarinet II is silent
  \barNumberCheck #53
  \tenorSaxAfterCue
}
tenorSaxOpeningConcert = {
  \tenorSaxBeforeCue
  \barNumberCheck #37
  \scorekitCueOrRest ##t "tenorSaxClarinetIIConcert" #UP "Cl. II" { R2.*10 | } % Bars 37–46
  R2.*6 | % Bars 47–52: Clarinet II is silent
  \barNumberCheck #53
  \tenorSaxAfterCue
}
tenorSaxOpeningPlayback = {
  \tenorSaxBeforeCue
  R2.*16 | % Bars 37–52: cue is print-only.
  \tenorSaxAfterCue
}

tenorSaxBridge = {
  e'2.~(  \pp |
  e'2. |
  cis'2.~ |
  cis'2.) |
  cis'2.~ |
  cis'2. |
  e'2.~ |
  e'4 r4 r4 |
  e'4-. e'4-. e'4-. |
  dis'4-. dis'4. dis'8 |
  dis'2 e'4~ |
  e'2~ e'8 r8 |
  R2.*8 |
  e'2.~(  \pp |
  e'2. |
  cis'2.~ |
  cis'2.) |
  cis'2.~( |
  cis'2. |
  e'2.~ |
  e'4) r4 r4 |
  e'4-.  \p e'4-. e'4-. |
  e'4-. r4 r4 |
  e'4-. e'4-. e'4-. |
  e'4-. r4 r4 |
  a4-. a4-. a4-. |
  a4-. a4 r4 |
  gis2.~ |
  gis4 r4 r4 |
}
tenorSaxMusic = { \tenorSaxOpening \tenorSaxBridge }
tenorSaxMusicConcert = { \tenorSaxOpeningConcert \tenorSaxBridge }
tenorSaxMusicPlayback = \scorePlayback \tenorSaxOpeningPlayback \tenorSaxBridge

% Archived former Trombone II, before the reorchestration that promoted
% the former Trombone III to II. Not used by score, part, MIDI or builds.
% Preserve these musical notes without editing the old source content.

tromboneTwoOpening = {
  \clef bass
  \key e \major
  \time 3/4
  % Bars 1-4
 % Bars 1–3: moved from Trombone III.
 gis,8 _\markup \italic { "marc." } \f gis,8 gis,4 r4 |
 gis,8 gis,8 gis,4 r4 |
 gis,8 gis,8 gis,4 r4 |
 % Bars 4–52
 R2.*49 |
 r4 cis'4-. \tag #'(combined written concert) { \once \override DynamicText.stencil = ##f } \mf cis'4-. |
 r4 cis'4-. cis'4-. |
 r4 a4-. a4-. |
 r4 gis4-. gis4-. |
  % Bars 57-60
 r4 fis4-. fis4-. |
 r4 fis4-. fis4-. |
 r4 a4-. a4-. |
 r4 gis4-. gis4-. |
  % Bars 61-64
 r4 a4-. a4-. |
 r4 gis4-. gis4-. |
 r4 fis4-. fis4-. |
 r4 a4-. a4-. |
  % Bars 65-68
 r4 fis4-. fis4-. |
 r4 fis4-. fis4-. |
 r4 fis4-. fis4-. |
 r4 fis4-. fis4-. |
  % Bars 69-72
 r4 cis'4-. cis'4-. |
 r4 cis'4-. cis'4-. |
 r4 a4-. a4-. |
 r4 gis4-. gis4-. |
  % Bars 73-76
 r4 fis4-. fis4-. |
 r4 fis4-. fis4-. |
 r4 b4-. b4-. |
 r4 a4-. a4-. |
  % Bars 77-80
 gis4-. \tag #'(combined written concert) { \once \override DynamicText.stencil = ##f } \sf r4 r4 |
 R2.*23 |
 \tag #'combined { \omit Voice.MultiMeasureRest }
 R2.*7 |
 \tag #'combined { \undo \omit Voice.MultiMeasureRest }
 gis2. |
  % Bars 109-112
 R2.*6 |
 gis4-. \tag #'(combined written concert) { \once \override DynamicText.stencil = ##f } \f r4 gis4-. |
 gis4-. r4 r4 |
}

tromboneTwoBridge = {
  % Bars 117-120
 R2.*36 |
}

tromboneTwoMusicCombined = \keepWithTag #'combined { \tromboneTwoOpening \tromboneTwoBridge }
tromboneTwoMusic = \keepWithTag #'solo { \tromboneTwoOpening \tromboneTwoBridge }
tromboneTwoMusicPlayback = \scorePlayback { \keepWithTag #'solo \tromboneTwoOpening } \tromboneTwoBridge

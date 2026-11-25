% Flute III doubles piccolo. Its instrument changes are explicit and reusable.
% Bars 21–52 are Flute III music and supply Flute I cue notes.
% Piccolo passages store their actual sounding pitches.
\include "../scorekit/lilypond/instrument-switch.ily"
\include "../scorekit/lilypond/cue-notes.ily"

\addQuote "fluteThreeFluteI" { \fluteOneOpeningPlayback \fluteOneBridge }

fluteThreeSetup = {
  \clef treble \key e \major \time 3/4
  \switchInstrument "Flute III / Piccolo" "Fl. III/Picc." "flute"
  }

fluteThreeAfterCues = {
  \barNumberCheck #21
  % Bar 21: Flute III
  \switchInstrument "Flute III" "Fl. III" "flute"

  % Bars 21–24
  gis'2.^\markup \italic "Flute" _\markup \italic { "espr." }~ \mf |
  gis'4 \acciaccatura { b'16 } a'4.)( gis'8) |
  gis'4 cis''4.( gis'8) |
  gis'4 cis''4.( gis'8) |
  % Bars 25–28
  gis'2.~ |
  gis'4 \acciaccatura { b'16 } a'4.)( gis'8) |
  gis'4 cis''4.( gis'8) |
  gis'4 e''4.( cis''8) |
  % Bars 29–32
  cis''2.~ |
  cis''4 \acciaccatura { e''16 } d''4.)( cis''8) |
  a''2.~ |
  a''4 fis''4 gis''4 |
  % Bars 33–36
  a''4( gis''4 fis''4) |
  e''4( dis''4 cis''4) |
  b'4( a'4 gis'4) |
  \acciaccatura { fis'16 gis'16 } fis'4) e'4. dis'8 |
  % Bars 37–40
  gis'2.( \f |
  gis'4) \acciaccatura { b'16 } a'4.)( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( cis''4. gis'8) |
  % Bars 41–44
  gis'2.( |
  gis'4) \acciaccatura { b'16 } a'4.)( gis'8) |
  gis'4( cis''4. gis'8) |
  gis'4( e''4. cis''8) |
  % Bars 45–48
  cis''2.~ |
  cis''4 \acciaccatura { e''16 } d''4.)( cis''8) |
  a''2.~ |
  a''4 fis''4 gis''4 |
  % Bars 49–52
  a''4( gis''4 fis''4) |
  e''4( cis''4 a'4) |
  gis'8( e''8) e''4-. dis''4-. |
  cis''4-. r4 r4 |
  % Bars 53–76: no notes yet
  R2.*24 |
  % Bar 77: Piccolo, sounding one octave above written notes.
  \switchInstrument "Piccolo" "Picc." "piccolo"
  \tag #'concert { \clef "treble^8" }

  % Bars 77–80
  \scorekitPiccoloNotes { gis'''4^\markup \italic "Piccolo"-. \ff r8 cis''''8-. e''''4-. } |
  \scorekitPiccoloNotes { gis''''4-. r8 fis''''8-. e''''4-. } |
  \scorekitPiccoloNotes { cis''''4-. r8 fis''''8-. a''''4-. } |
  \scorekitPiccoloNotes { a''''4-. r8 b''''8-. a''''4-. } |
  % Bars 81–84
  \scorekitPiccoloNotes { gis''''4-. r8 fis''''8-. e''''4-. } |
  \scorekitPiccoloNotes { dis''''4-. r8 e''''8-. dis''''4-. } |
  \scorekitPiccoloNotes { cis''''4-. r4 r4 } |
  % Bars 84–114: tacet; keep Piccolo as the staff label and
  % instrument state after its first entrance at bar 77.
  R2.*31 |
  % Bars 115–116: Piccolo again (no instrument-name reset).

  \scorekitPiccoloNotes { gis'''8^\markup \italic "Piccolo"( \ff e''''8) e''''4-. dis''''4-. } |
  \scorekitPiccoloNotes { cis''''4-. r4 r4 } |
}

fluteThreeOpening = {
  \fluteThreeSetup
  % Bars 1–4: tacet.
  R2.*4 |
  % Bars 5–15: Clarinet I cue, selectable for each edition.
  \scorekitCueAlternatives
  "clarinetOneForFluteCues" #UP "Cl. I" { R2.*11 | }
  #'(flute3SaxCuePart flute3SaxCueScore flute3SaxCueConcert flute3SaxCueCombined)
  #'(flute3SaxCueRest)
  % Bars 16–20: Flute I cue, independent of the first cue.
  \scorekitCueAlternatives
  "fluteThreeFluteI" #UP "Fl. I" { R2.*5 | }
  #'(flute3FluteCuePart flute3FluteCueScore flute3FluteCueConcert flute3FluteCueCombined)
  #'(flute3FluteCueRest)
  \fluteThreeAfterCues
}
fluteThreeOpeningWithoutCues = {
  \fluteThreeSetup
  R2.*20 | % Print-only cues are not part of the performing/quoted source.
  \fluteThreeAfterCues
}

fluteThreeBridge = {
  % Bars 117–152: tacet; Piccolo staff name persists.
  % The Opening explicitly resets Flute III when playback returns D.C.
  R2.*36 |
}

fluteThreeMusic = { \fluteThreeOpening \fluteThreeBridge }
fluteThreeMusicPlayback = \scorePlayback \fluteThreeOpeningWithoutCues \fluteThreeBridge

% The Flute I cue quotes the genuine Flute III playing stream.
% This untagged source has real Flute III notes and 20 bars of silence.
% It does not depend on print cue selectors or quote the receiving flute.
\addQuote "fluteThreeIntoOne" {
  \fluteThreeOpeningWithoutCues \fluteThreeBridge
}

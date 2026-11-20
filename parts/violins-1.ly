\version "2.26.0"
\include "articulate.ly"
\include "../metadata.ily"
\include "../music/violins-1.ily"
\include "../music/global.ily"
% Part-specific A4 page target for adaptive ScoreKit print size.
#(define partStaffSize 24)
#(define partMaxStaffSize 28.5)
#(define partTargetPages 2)
\include "../scorekit/lilypond/layout/part.ily"
\include "page-fill.ily"
\header { title = \workTitle subtitle = \workSubtitle composer = \composerCredit arranger = \arrangerCredit instrument = "Violins I" tagline = ##f }
\score { \new Staff \with { midiInstrument = "violin" } << { \global } { \rehearsalMarks } { \compressEmptyMeasures \violinsOneMusic } >> \partPrintLayout }
\score { \articulate \new Staff \with { midiInstrument = "violin" } << { \globalPlayback } { \rehearsalMarksPlayback } { \violinsOneMusicPlayback } >> \midi { } }

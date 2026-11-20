# Music source editing style

The music files are concert-pitch LilyPond sources. Keep the notes, rhythms,
articulations, dynamics and playback events in the musical source; keep
layout-only changes in the matching combined/print view.

- Use **two spaces per nesting level**. Put each regular measure on its own
  line and terminate it with `|`; keep `R2.*N` for continuous full-measure
  rests and `s2.*N` only for duration-preserving hidden passages.
- Put one blank line between named musical variables, and optional blank
  lines at major sections. Use concise navigation headings such as
  `% Bars 101–108` when they help locate an entrance.
- Retain comments explaining **current behavior**: why a cue is print-only,
  how a transposition or instrument switch works, why a combined voice is
  hidden, or where `\barNumberCheck` protects an entrance.
- Do not claim a passage was originally written for some other instrument.
  Editing history belongs in Git, not in the current score source.
- Preserve manual `I` / `II` labels, independent voices, and MIDI/print
  differences. Never create divisi automatically.
- When splitting music into variables, reuse the same canonical phrase
  in solo, combined and MIDI views. Verify voice durations and bar-number
  boundaries; recompile and compare the score and extracted desk.

These are project-local editing conventions, not changes to AGENTS.md.

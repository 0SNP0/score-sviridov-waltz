# Agent instructions

These instructions apply to a LilyPond score project that uses ScoreKit. They must remain valid regardless of the composition, instrumentation, repository name, directory layout, or whether ScoreKit is a regular directory, a Git submodule, or another externally managed dependency. Discover the actual project structure before editing; do not assume a particular instrument, file name, or path.

## Approval for AGENTS.md changes

- Before making any AGENTS.md change not already explicitly requested by the user, describe in the chat exactly what you propose to add, modify or remove, and obtain the user's explicit approval. Never silently introduce rules. When the user expressly requests a specific rule, implement only that rule and report the change.

## Project architecture

- **Score project:** owns the composition's musical sources, instrumentation, score and part definitions, metadata, project-specific engraving decisions, configuration, and release choices.
- **ScoreKit:** provides reusable LilyPond templates and engraving helpers, build and publication tooling, Git-derived version metadata for PDFs, audio and viewer asset generation, and GitHub Actions / Pages integration.
- Keep ScoreKit generic. Do not introduce score-specific instrument names, bar numbers, composition metadata, repository identifiers, or local engraving workarounds into it.
- The physical form of ScoreKit is not relevant to this separation. Check whether it is a submodule, a local directory, or another dependency before choosing how to modify or update it.
- A ScoreKit change is warranted only for a genuinely reusable feature or a defect in shared functionality. Prefer a project-local solution for project-specific requirements. Do not refactor functioning infrastructure without a reason.

## Changing ScoreKit when it is external

- First inspect the dependency's version, upstream, contribution workflow, and whether write access is available. Never assume the agent can push to ScoreKit.
- If ScoreKit requires changes, agree on the approach for that repository: an authorized branch, a fork with an upstream contribution, or another approved workflow. Do not silently modify an upstream dependency or switch the project to an unapproved revision.
- When using a submodule, record changes in its own repository and update the parent project's submodule pointer only when authorized and appropriate. Keep the parent project and dependency histories separate.
- Do not bypass missing permissions by copying or vendoring ScoreKit code into the score project without agreement.

## Musical sources and printed views

- Maintain a clear source of truth for each instrument's notes, rhythms, articulations, slurs, and genuine dynamics. Individual parts, combined parts, the full score, and playback must derive consistently from that music rather than drifting copies.
- Distinguish changes to musical content from engraving-only changes. Use appropriately scoped LilyPond tags, contexts, or project-local print layers so layout instructions do not change the music or audio.
- Independent parts must use natural stem directions except where genuine polyphony within that individual part calls for multiple voices. Combined-only stem overrides, player labels, rest offsets, and suppression of duplicate markings must not leak into independent parts.
- The same combined print definition must be used for a desk in its standalone combined part and in the full orchestral score.

### Mandatory print-equivalence invariant

- **A combined staff must render identically in its standalone combined-part PDF and as the corresponding staff in the full score**, except for intentional multimeasure-rest compression and unavoidable page/system layout differences. This is a correctness requirement, not a visual preference.
- Both outputs must instantiate the **same fully resolved print music and engraving controls**: voices, stems, rests and their offsets, player labels, dynamics, articulations, slurs, and relevant context/engraver settings. Sharing a variable name alone is insufficient if outer tags, transposition, context overrides, or score wrappers change the effective music.
- Do not maintain separate engraving fixes for the standalone combined part and the orchestral score. Fix the shared print definition or its shared configuration instead.
- After any combined-part change, compare the affected measures in **both** rendered PDFs. A successful standalone part build, or even two successful builds, does not prove equivalence. Treat any discrepancy as a blocking regression; diagnose the difference in tag filtering, voice contexts, rest merging, or overrides before claiming completion.

## Combined-staff engraving

- When combining two instrumental parts on one staff, preserve **two distinct musical voices**. The upper voice normally has upward stems and the lower voice downward stems when they sound independently. Preserve each voice's rhythm, slurs, articulations, and dynamics.
- Even if the instruments happen to play identical notes, **do not automatically collapse them to a single voice**. In this project, the intended default is two visible voices. Any exceptional unison presentation must be an explicit, approved engraving decision.
- **Manual solo mode:** without a solo indication, the combined staff prints both independent voices (including their necessary rests) with separate stem directions. When a manually placed `I` identifies an I-only passage, print **only player I** on that staff, with natural stem directions (`\oneVoice`), and hide the silent II voice using duration-preserving skips in the **combined print stream only**. The same applies symmetrically to an explicitly designated `II`-only passage. A solo indication remains active until the next manually chosen change of presentation. Restore distinct voices and stem directions when both players return. Do not infer solo modes from rests, pitches or dynamics; `I, II` and `a2` never authorize automatic voice merging.
- Labels such as `I`, `II`, `I, II`, and `a2` are **always placed manually** where the notation calls for them. Never infer, generate, or insert them automatically from matching pitches, rests, or a voice-combining algorithm. A label `a2` does not itself authorize collapsing the two voices.
- These player labels appear only in combined print views, at the relevant onset or change, never in individual parts. Their typography must be consistent throughout a project; no particular font is prescribed.
- Avoid automatic voice-combining mechanisms when they introduce wrong stem directions, lost notes, changed slurs, duplicate markings, or unwanted mode labels. Do not let automatic engraving override the intended two-voice presentation.

## Rest positioning on combined staves

- **Manual rest displacement exists to prevent rests belonging to one voice from overlapping notes of the other voice.** Choose the smallest position change that gives adequate clearance; adjust locally for the actual note register and rhythm.
- **When both voices rest for the entire same measure, display a single merged whole-measure rest centered vertically on the staff.** It must not retain an upper- or lower-voice offset.
- When only one voice rests **and no manually indicated solo mode is active**, preserve its necessary rest and position it away from the sounding voice's notes. In an explicit `I`/`II` solo passage, hide the silent player's rests only in the combined print stream, preserving their duration as skips. Keep both voices' necessary shorter rests in independent-rhythm passages.
- Check ordinary `Rest` and `MultiMeasureRest`, as LilyPond may engrave full-measure rests using either. Apply combined-only, properly scoped overrides and revert them when no longer needed.
- Never change the individual part's rest positions merely to fix a combined-staff collision. Inspect the resulting PDF: a successful compilation does not establish collision-free engraving.

## Doubling and instrument switching

- A musician doubling instruments has one staff and extracted part using the same musical source. Actual switches change Staff.instrumentName, Staff.shortInstrumentName and Staff.midiInstrument together; the selected instrument persists through rests, cues, and system breaks until the next explicit change.
- Written/concert transpositions, sounding MIDI pitches and repeat/D.C. program resets must remain correct in the full score, player part and playback.

## Reusable cue notes

- **ScoreKit owns the reusable cue mechanism**; the project owns quote registrations, canonical source references, cue labels, locations and visibility choices. Never copy quoted melodies or duplicate generic cue logic in project instrument files.
- Cue and hidden-rest alternatives must have exactly the same musical duration derived from a single receiving-music source. Printed cues use duration-preserving invisible skips rather than visible resting voices below the cue; hidden cues retain the receiver's real music.
- Preserve source articulations, slurs, ties, beams and tuplets in quotation. Do not automatically copy source dynamics or unrelated performance directions.
- Select cue visibility independently for each episode in individual parts, written and concert scores, and combined desks. Each output selects exactly one alternative. Never use incompatible nested \keepWithTag filters that delete the entire cue/rest duration and shift rehearsal marks.
- Combined-part cues must not duplicate music printed for another visible player; corresponding combined staffs in parts and full score must engrave identically.
- Cues are print-only. The MIDI stream must use the real receiver music, never quotation; test for unwanted note-on events.
- Test all variants and exact measure alignment, print PDFs and quoted articulation/slurs. A successful compile alone does not establish engraving correctness. Put generic regression tests in ScoreKit.

## Duration integrity across tag filters (mandatory)

- **Musical time is a hard invariant, not a layout preference.** Any \tag, \keepWithTag, \removeWithTag, cue selector, or view-specific engraving branch must preserve the intended duration of every voice in every final consumer. An absent branch is **zero duration**, not an invisible rest: removing a tagged R2.*N can move all later notes N bars earlier even if the whole score compiles and its global time track is correct.
- **Never apply \keepWithTag twice to duration-bearing alternatives.** In particular, do not use \keepWithTag #'solo inside a *Music variable subsequently consumed by \keepWithTag #'written, #'concert or #'playback. The later filter may remove tagged rests already accepted by the earlier filter. Prefer one final selection per view, performed at the consumer, with alternative branches tagged by explicitly compatible output selectors. Changing a filter is a musical-timing change until proven otherwise.
- **Preferred repair for print-only rest differences:** factor the sounding material into shared music variables and assemble separate solo/combined *streams of rests* around those same shared notes, with equal duration. Avoid duration-bearing \tag branches altogether when they would be nested beneath outer output tags. Never "repair" a missing rest by simply adding written/concert/playback to a tag list: retaining both alternatives silently doubles time and is as serious as deleting both.
- Every exclusive tag group must resolve to **exactly one duration-bearing branch** for every consuming view (solo part, written score, concert score, combined part, and MIDI). Select zero branches and a voice moves forward; select two and time may double. Do not use overlapping selectors that retain two alternatives simultaneously.
- Before editing, inspect the entire selector path from source files and intermediate music variables through score/part wrappers. Include tag lists, \scorePlayback, transpositions, \partCombine and every nested filter; never infer safety by inspecting only one source file.
- Add \barNumberCheck at significant entrances and boundaries of tag-dependent rests (or equivalent checked milestones). In tests, include a note after each alternative rest span, not only an end-of-score total: the global/rehearsal track or another simultaneous staff can mask a shortened individual staff. A successful PDF build or a fixed overall measure count is **not** a duration check for each voice.
- Compare each affected staff's real note-on positions against its canonical individual part for the written score, concert score and playback, including repeat visits, or use an equivalent verified per-voice event/timing assertion. Specifically test the spans before and after each tag-controlled rest and verify the printed entrance under the correct rehearsal number.
- Use generic test fixtures in ScoreKit to prove that alternative tag filtering preserves duration across all output selectors, and add project-specific measure assertions in the project. Never declare a filter-related regression fixed on the strength of a clean compile alone; record visual and timing checks performed.

## Musical accuracy and corrections

- This project may contain music imported from another format **or composed directly in LilyPond**. Do not presume any particular origin or that every unusual marking is an import artifact.
- When a note, rhythm, dynamic, articulation, or marking is demonstrably wrong in the music itself, correct the shared musical source so all relevant views agree. When the music is correct but the print layout is wrong, change only the affected engraving view.
- Do not delete or hide musical information merely to make the layout look cleaner. Confirm the intended notation before making uncertain musical changes.
- On combined staves, avoid visually duplicated identical dynamics where a shared indication is intended; preserve genuinely different dynamics and the underlying playback.

## Tests and release latency

- **Keep routine GitHub Actions focused on producing release-facing PDF, audio and viewer artifacts as quickly as practical.** Do not add agent-authored regression tests, rehearsal checks, or nonessential auditing steps to CI/CD unless the user explicitly requests them.
- The agent is responsible for running relevant LilyPond, pitch-equivalence, duration and visual checks before publishing changes. Tests can remain as manual developer tools, but must not delay normal artifact builds.
- When correcting enharmonic notation, verify that the spelling changes do not change sounding MIDI pitches, original rhythmic durations or solo/combined staff equivalence. Resolve the notation in the canonical source and all independently maintained printed forms.

## Git workflow and verification

- Inspect the current HEAD, branches, and recent changes before editing. Follow the repository's current authorized workflow; do not assume permission to create pull requests, merge into the main branch, or change dependency revisions.
- Keep changes focused and commit them meaningfully. Do not retain temporary debugging artifacts, task-specific one-off tests, or abandoned workarounds after the task is complete. Retain reusable tests and documentation that serve an ongoing purpose.
- For notation changes, verify the affected individual parts, combined parts, and full score. Check player labels, natural solo stems, independent voices, note/rest collisions, centered shared rests, slurs, dynamics, and consistency across print views.
- Run the relevant LilyPond/PDF build and, where affected, audio/viewer/release checks. Report precisely which checks succeeded and which were not performed. Never claim visual verification based solely on successful compilation.

## Ordering of print outputs and viewer

- The project defines its instrument and combined-desk display order; reusable ScoreKit code must not hard-code a particular orchestra.
- PDF filename prefixes, package listings, and viewer score-view choices must follow the same project-defined score order.
- Put each combined desk immediately before the relevant individual players. The two full scores precede all parts.
- Derive the order directly from the printed staves in `orchestra.ily` and the part print expressions; do not maintain a separate instrument-order configuration. Fail clearly if a part cannot be matched to a staff.

% Project-specific page justification for individually calibrated parts.
% This changes spacing and page breaks only; musical voices are untouched.
% Keep the generic ScoreKit part.ily defaults for all other instruments.
\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  system-system-spacing =
    #'((basic-distance . 13)
       (minimum-distance . 9)
       (padding . 1)
       (stretchability . 16))
}

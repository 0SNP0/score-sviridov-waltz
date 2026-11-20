% Shared trombone notes come from the individual source; only mode/rest handling is local.

tromboneOneMusicCombined = {
  \tromboneOneBeforeSolo
  \barNumberCheck #85
  \oneVoice
  \tromboneOneSoloSection
  \barNumberCheck #115
  \voiceOne
  \tromboneOneAfterSolo
  \tromboneOneBridge
}

tromboneTwoBeforeRestCombined = {
  \tromboneTwoBarsOneToFiftyTwo
  \barNumberCheck #53
  \once \override DynamicText.stencil = ##f
  \tromboneTwoBarsFiftyThreeToSeventySix
  \barNumberCheck #77
  \once \override DynamicText.stencil = ##f
  \tromboneTwoBarSeventySeven
}

tromboneTwoRestCombined = {
  R2.*7 |   % Bars 78–84: both rest.
  \barNumberCheck #85
  s2.*15 |  % Bars 85–99: I alone.
  \barNumberCheck #100
  R2.*2 |   % Bars 100–101: both rest.
  \barNumberCheck #102
  s2.*8 |   % Bars 102–109: I alone.
  \barNumberCheck #110
  R2.*5 |   % Bars 110–114: both rest.
}

tromboneTwoOpeningCombined = {
  \tromboneTwoBeforeRestCombined
  \barNumberCheck #78
  \tromboneTwoRestCombined
  \barNumberCheck #115
  % Player I already prints f; player II keeps the real dynamic in his part.
  \once \override DynamicText.stencil = ##f
  \tromboneTwoAfterRest
}

tromboneTwoMusicCombined = { \tromboneTwoOpeningCombined \tromboneTwoBridge }

% Two independent voices: Trombone I and II on a shared staff.
% Manual I label at bar 85, when player II rests.
trombonesTogether = <<
  \new Voice = "tromboneI" { \voiceOne \tromboneOneMusicCombined }
  % Solo II retains marc. and f; hide duplicates only on the combined desk.
  \new Voice = "tromboneII" {
    \voiceTwo
    \once \override TextScript.stencil = ##f
    \once \override DynamicText.stencil = ##f
    \tromboneTwoMusicCombined
  }
>>
trombonesDeskCues = { s2.*84 s2.^\markup \italic "I" s2.*67 }
% Shared score and extracted combined part: center the single merged rest
% exactly where both players have a full-bar rest; elsewhere use defaults.
trombonesRestLayout = {
  \deskRestAuto s2.*3      % Bars 1–3: both play
  \deskRestCenter s2.*49   % Bars 4–52: both rest
  \deskRestAuto s2.*25     % Bars 53–77: both play
  \deskRestCenter s2.*7    % Bars 78–84: both rest
  \deskRestAuto s2.*15     % Bars 85–99: manual I solo
  \deskRestCenter s2.*2    % Bars 100–101: both rest
  \deskRestAuto s2.*8      % Bars 102–109: manual I solo
  \deskRestCenter s2.*5    % Bars 110–114: both rest
  \deskRestAuto s2.*2      % Bars 115–116: both play
  \deskRestCenter s2.*36   % Bars 117–152: both rest
  \deskRestAuto
}
trombonesDeskPrint = <<
  { \trombonesTogether }
  { \trombonesDeskCues }
  { \trombonesRestLayout }
>>

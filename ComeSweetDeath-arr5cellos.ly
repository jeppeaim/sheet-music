\version "2.22.0"
#(set-default-paper-size "letter")
#(set-global-staff-size 35)

\header {
  title = "Come, Sweet Death (BWV 478)"
  subtitle = "Arr. for 5 Cellos"
  tagline = ##f
}

\paper {
  top-margin = 14\mm
  bottom-margin = 14\mm
  left-margin = 18\mm
  right-margin = 14\mm
  ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##t
  % Spacing from header/title to first staff
  markup-system-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
}

breaks = {
  \repeat unfold 10 {
    s2. s2. s2. s2. \pageBreak
  }
  s2. s2. s2. s2. \bar "|."
}

emptyStaff = {
  \clef bass
  \key c \minor
  \time 3/4
  \repeat unfold 44 { s2. }
}

\score {
  \new StaffGroup \with {
    % This expands the vertical gap between each cello staff
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 6.5)
         (minimum-distance . 13)
         (padding . 7)
         (stretchability . 10))
  } <<
    \new Staff \with { instrumentName = "Vc. 1" shortInstrumentName = "Vc. 1" } << \breaks \emptyStaff >>
    \new Staff \with { instrumentName = "Vc. 2" shortInstrumentName = "Vc. 2" } { \emptyStaff }
    \new Staff \with { instrumentName = "Vc. 3" shortInstrumentName = "Vc. 3" } { \emptyStaff }
    \new Staff \with { instrumentName = "Vc. 4" shortInstrumentName = "Vc. 4" } { \emptyStaff }
    \new Staff \with { instrumentName = "Vc. 5" shortInstrumentName = "Vc. 5" } { \emptyStaff }
  >>
  \layout {
    indent = 16\mm
    short-indent = 14\mm
    ragged-right = ##f
    ragged-last = ##f
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.uniform-stretching = ##t
    }
  }
}
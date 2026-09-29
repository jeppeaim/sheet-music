\version "2.22.0"
#(set-default-paper-size "letter")
#(set-global-staff-size 22)

\header {
  title = "Come, Sweet Death (BWV 478)"
  subtitle = "Arr. for 5 Cellos"
  tagline = ##f
}

\paper {
  top-margin = 18\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 15\mm
  ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  system-system-spacing.basic-distance = #24
}

% 11 pages total (4 measures per page = 44 measures, covering the 42-measure piece)
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
  \new StaffGroup <<
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
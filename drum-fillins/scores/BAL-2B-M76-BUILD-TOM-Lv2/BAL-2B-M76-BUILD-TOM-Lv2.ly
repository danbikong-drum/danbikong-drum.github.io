\version "2.24.3"

#(set-global-staff-size 26)

drumPattern = \drummode {
  \time 4/4
  <bd sn>4 sn8 bd8 sn4 tomh8 tommh8 |
  tomh16 tommh16 tomfl16 tomfl16 sn16 sn16 sn16 sn16 tomfl16 tomfl16 sn16 sn16 sn16 sn16 <bd sn>8 |
}

\score {
  \new DrumStaff {
    \tempo 4 = 76
    \drumPattern
  }
  \layout {
    indent = 0
    ragged-right = ##f
    line-width = 150
  }
}

\paper {
  print-page-number = ##f
  oddFooterMarkup = ##f
  oddHeaderMarkup = ##f
  evenFooterMarkup = ##f
  evenHeaderMarkup = ##f
  top-margin = 2
  bottom-margin = 2
  left-margin = 2
  right-margin = 2
}

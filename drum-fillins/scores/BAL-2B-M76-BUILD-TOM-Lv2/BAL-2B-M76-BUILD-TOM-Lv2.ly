\version "2.24.3"

#(set-global-staff-size 26)

drumsUp = \drummode {
  \time 4/4
  \tempo 4 = 76
  \voiceOne
  sn4 sn4 sn4 \tweak staff-position 3 tomh8 tommh8 |
  \tweak staff-position 3 tomh16 tommh16 tomfl16 tomfl16 sn16 sn16 sn16 sn16 tomfl16 tomfl16 sn16 sn16 sn16 sn16 sn8 |
}

drumsDown = \drummode {
  \voiceTwo
  \tweak staff-position -3 bd8 r4 \tweak staff-position -3 bd8 r2 |
  r2 r4 r8 \tweak staff-position -3 bd8 |
}

\score {
  \new DrumStaff <<
    \new DrumVoice { \drumsUp }
    \new DrumVoice { \drumsDown }
  >>
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

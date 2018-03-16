#!/bin/bash

# Variables definition
si_sailor="textures/sitagi/underwear"
si_blazer="textures/sitagi/underwear_blazer"
si_sweater="textures/sitagi/underwear_sweater"
si_china="textures/sitagi/underwear_china"
si_track="textures/sitagi/track_suit"
si_bikini="textures/sitagi/bikini"
si_bikini_ppd="textures/sitagi/bikini_ppd"
si_hcswimsuit="textures/sitagi/high_cut_swimsuit"
si_tshirt="textures/sitagi/sports_top"
si_bra_hotpants="textures/sitagi/bra_hotpants"
si_gloves="textures/sitagi/gloves"

skirt="textures/skirt/skirt"
teacher_skirt="textures/skirt/teacher_skirt"
sk_bodysuit="textures/skirt/bodysuit"
sk_dress="textures/skirt/dress"
sk_track="textures/skirt/track_suit"
sk_bikini="textures/skirt/bikini"
sk_bikini_ppd="textures/skirt/bikini_ppd"
sk_ppd_kimono="textures/skirt/ppd_kimono"
sk_ppd_miko="textures/skirt/ppd_miko"
sk_bunny="textures/skirt/bunny_suit"
sk_leotard="textures/skirt/leotard"
sk_spats="textures/skirt/spats"
sk_hcswimsuit="textures/skirt/high_cut_swimsuit"
sk_tshirt="textures/skirt/sports_top"
sk_bloomers="textures/skirt/bloomers"
sk_himo="textures/skirt/himo"
sk_gloves="textures/skirt/gloves"
sk_pants="textures/skirt/pants"
sk_china="textures/skirt/china"
sk_magical_girl="textures/skirt/magical_girl"

function pad_slot {
  printf "%02d" $i
}

function rm_folder {
  rm -r $1
}

function link_folder {
  ln -s $2 $1
}

function link_underwear_slot {
  rm_folder sitagi$(pad_slot $1)
  link_folder sitagi$(pad_slot $1) $2
}

function link_skirt_slot {
  rm_folder skirt$(pad_slot $1)
  link_folder skirt$(pad_slot $1) $2
}

function link_underwear {
  for i in $2
  do
    link_underwear_slot $i $1
  done
}

function link_skirt {
  for i in $2
  do
    link_skirt_slot $i $1
  done
}

# Vanilla game
link_underwear $si_sailor "0 1 3"
link_underwear $si_blazer "4 6"
link_underwear $si_sweater "7"
link_skirt $skirt "0 4 7"

# CC
link_underwear $si_sailor "8 9 10 12 13 15 18 19 21 24 27 29 35 44 45 47 52 59 60 61 62 63 64 65 67 68 69 71 72 74 75 76 78 79 80 85 87 89 90 91 92 95 96 97 98 99 100 101 102 103 106 108 109 110 111 134 136 137 140 141 142 146 147 148 149 155 156 193 194 195 196 197 200 201 202 203 204 205 206 207 209 212 213 218 221 230 231 239 240 241 255"
link_underwear $si_blazer "14 25 30 31 32 37 38 39 40 41 46 49 50 51 66 81 82 84 86 88 221"
link_underwear $si_sweater "33 34 55 56 70 73 77 94 164 165 182 183 184 185 190 191 192 208 210 211 217 226 227 228 229"
link_underwear $si_track "23 54 105"
link_underwear $si_tshirt "53"
link_underwear $si_hcswimsuit "76"
link_underwear $si_gloves "83"
link_underwear $si_bikini "104"
link_underwear $si_bikini_ppd "172"
link_underwear $si_china "162"
link_skirt $skirt "8 9 10 13 14 15 23 24 25 27 30 33 35 40 46 47 49 50 51 52 53 55 56 59 60 61 66 67 68 70 71 72 73 74 75 77 78 79 80 81 82 86 87 88 89 92 93 94 95 96 97 98 100 101 104 105 106 107 108 110 111 112 113 114 115 120 121 122 123 126 127 128 129 130 131 132 134 137 146 147 148 149 153 154 155 156 157 158"
link_skirt $skirt "161 164 165 166 167 169 170 171 176 177 184 188 193 194 199 200 201 208 209 210 211 212 213 214 217 218 221 231 239 240 255"
link_skirt $teacher_skirt "3 19 24 25 32 45 69 90 91 99 163 173 174 185 186 187 195 196 206 207"
link_skirt $sk_track "11 107"
link_skirt $sk_spats "12 63 105"
link_skirt $sk_leotard "16 105"
link_skirt $sk_bikini "22 26 36 42 43 54"
link_skirt $sk_bikini_ppd "172"
link_skirt $sk_bodysuit "28"
link_skirt $sk_tshirt "29 102 103 116"
link_skirt $sk_dress "37 38 81 82"
link_skirt $sk_bunny "39 83"
link_skirt $sk_bloomers "41"
link_skirt $sk_hcswimsuit "48 150"
link_skirt $sk_gloves "84 85 93 94"
link_skirt $sk_pants "104 106"
link_skirt $sk_china "162"
link_skirt $sk_ppd_kimono "203 204"
link_skirt $magical_girl "202"

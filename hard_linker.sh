#!/bin/bash

# Variables definition
si_sailor="textures/sitagi/underwear"
si_blazer="textures/sitagi/underwear"
si_sweater="textures/sitagi/underwear_sweater"
si_china="textures/sitagi/underwear_china"
si_track="textures/sitagi/track_suit"
si_bikini="textures/sitagi/bikini"
si_bikini_ppd="textures/sitagi/bikini_ppd"
si_hcswimsuit="textures/sitagi/high_cut_swimsuit"
si_tshirt="textures/sitagi/sports_top"
si_bra_hotpants="textures/sitagi/bra_hotpants"
si_gloves="textures/sitagi/gloves"
si_bunny="textures/sitagi/bunny_suit"
si_bunny2="textures/sitagi/bunny_suit2"
si_tight_body_suit="textures/sitagi/tight_body_suit"

skirt="textures/skirt/skirt"
sk_teacher_skirt="textures/skirt/teacher_skirt"
sk_teacher_skirt_alt="textures/skirt/teacher_skirt_alt"
sk_bodysuit="textures/skirt/bodysuit"
sk_dress="textures/skirt/dress"
sk_track="textures/skirt/track_suit"
sk_bikini="textures/skirt/bikini"
sk_bikini_alt="textures/skirt/bikini_alt"
sk_bikini_ppd="textures/skirt/bikini_ppd"
sk_bikini_hm8="textures/skirt/bikini_hm8"
sk_bikini_hm8_1="textures/skirt/bikini_hm8_1"
sk_panda="textures/skirt/panda"
sk_kyoei="textures/skirt/kyoei"
sk_himo="textures/skirt/himo"
sk_pj="textures/skirt/pj"
sk_ppd_kimono="textures/skirt/ppd_kimono"
sk_ppd_miko="textures/skirt/ppd_miko"
sk_bunny="textures/skirt/bunny_suit"
sk_bunny2="textures/skirt/bunny_suit2"
sk_leotard="textures/skirt/leotard"
sk_spats="textures/skirt/spats"
sk_hcswimsuit="textures/skirt/high_cut_swimsuit"
sk_tshirt="textures/skirt/sports_top"
sk_bloomers="textures/skirt/bloomers"
sk_himo="textures/skirt/himo"
sk_gloves="textures/skirt/gloves"
sk_pants="textures/skirt/pants"
sk_china2="textures/skirt/china2"
sk_magical_girl="textures/skirt/magical_girl"
sk_sundress="textures/skirt/sundress"
sk_hoodie="textures/skirt/hoodie"
sk_hs_cardigan="textures/skirt/hs_cardigan"
sk_shorts="textures/skirt/shorts"
sk_ichigo="textures/skirt/ichigo"

function pad_slot {
  printf "%02d" $1
}

function rm_folder {
  rm -r $1
}

function link_folder {
  echo Linking $1 to $2
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

# Vanilla game 0-7
link_underwear $si_sailor "0 1 3"
link_underwear $si_blazer "4 6"
link_underwear $si_sweater "7"
link_skirt $skirt "0 4 7"
link_skirt $sk_teacher_skirt "3"


# Clothing Collection A 8-17
link_underwear $si_sailor "8 9 10 12 13 15"
link_underwear $si_blazer "14"
link_skirt $skirt "8 9 10 13 14 15 17"
link_skirt $sk_track "11"
link_skirt $sk_spats "12"
link_skirt $sk_leotard "16"

# Clothing Collection B 18-27
link_underwear $si_sailor "18 19 21 24 27"
link_underwear $si_blazer "25"
link_underwear $si_track "23"
link_skirt $skirt "23 24 25 27"
link_skirt $sk_bikini "22 26"
link_skirt $sk_teacher_skirt "19 24 25"

# Clothing Collection C 28-37
link_underwear $si_sailor "29 35"
link_underwear $si_blazer "30 31 32 37"
link_underwear $si_sweater "33 34"
link_skirt $skirt "30 33 35"
link_skirt $sk_bikini "36"
link_skirt $sk_bodysuit "28"
link_skirt $sk_tshirt "29"
link_skirt $sk_dress "37"
link_skirt $sk_teacher_skirt "32"

# Clothing Collection D 38-47
link_underwear $si_sailor "44 45 47"
link_underwear $si_blazer "38 39 40 41 46"
link_skirt $skirt "40 46 47"
link_skirt $sk_bikini "42 43"
link_skirt $sk_dress "38"
link_skirt $sk_bunny "39"
link_skirt $sk_bloomers "41"
link_skirt $sk_teacher_skirt "45"

# Clothing Collection E 48-57
link_underwear $si_sailor "52"
link_underwear $si_blazer "49 50 51"
link_underwear $si_sweater "55 56"
link_underwear $si_tshirt "53"
link_underwear $si_track "54"
link_skirt $skirt "49 50 51 52 53 55 56"
link_skirt $sk_bikini "54"
link_skirt $sk_hcswimsuit "48"

# Clothing Collection F 58-67
link_underwear $si_sailor "59 60 61 62 63 64 65 67"
link_skirt $skirt "59 60 61 66 67"
link_skirt $sk_spats "63"

# Clothing Collection G 68-77
link_underwear $si_sailor "68 69 71 72 74 75 76"
link_underwear $si_blazer "66"
link_underwear $si_hcswimsuit "76"
link_skirt $skirt "68 70 71 72 73 74 75 77"
link_skirt $sk_teacher_skirt "69"

# Clothing Collection H 78-87
link_underwear $si_sailor "78 79 80 85 87"
link_underwear $si_blazer "81 82 84 86"
link_underwear $si_gloves "83"
link_skirt $skirt "78 79 80 81 82 86 87"
link_skirt $sk_dress "81 82"
link_skirt $sk_bunny "83"
link_skirt $sk_gloves "84 85"

# Clothing Collection I 88-97
link_underwear $si_sailor "89 90 91 92 94 95 96 97"
link_underwear $si_blazer "88"
link_skirt $skirt "88 89 92 95 96 97"
link_skirt $sk_teacher_skirt "90 91"
link_skirt $sk_gloves "93 94"

# Clothing Collection J 98-107
link_underwear $si_sailor "98 99 100 101 102 103 106"
link_underwear $si_bikini "104"
link_underwear $si_track "105"
link_skirt $skirt "98 100 101"
link_skirt $sk_teacher_skirt "99"
link_skirt $sk_pants "104 106"
link_skirt $sk_leotard "105"
link_skirt $sk_track "107"
link_skirt $sk_tshirt "102 103"

# Clothing Collection K 108-117
link_underwear $si_sailor "108 109 110 111 112 113 114 115 116"
link_skirt $skirt "108 109 110 111 112 113 114 115"
link_skirt $sk_tshirt "116"
link_skirt $sk_ichigo "117"

# Clothing Collection L 118-127
link_underwear $si_sailor "120 121 122 123 124 125 126 127"
link_skirt $skirt "120 121 122 123 126 127"
link_skirt $sk_bikini_alt "118 119"
link_skirt $sk_gloves "125"

# Clothing Collection M 128-132
link_underwear $si_sailor "128 129 130 131 132"
link_skirt $skirt "128 129 130 131 132"

# Clothing Collection O 148-157
link_underwear $si_sailor "148 149 153 154 155 156 157"
link_skirt $skirt "148 149 153 154 155 156 157"

# Clothing Collection P 158-159
link_underwear $si_blazer "158"
link_skirt $skirt "158"

# Clothing Collection Q 176-177
link_underwear $si_sailor "176 177"
link_skirt $skirt "176 177"

# Clothing Collection R 181
link_underwear $si_sailor ""
link_underwear $si_blazer ""
link_underwear $si_sweater ""
link_skirt $skirt ""

# Clothing Collection S 193-194
link_underwear $si_sailor "193 194"
link_skirt $skirt "193 194"

# Clothing Collection T 206-207
link_underwear $si_sailor "206 207"
link_skirt $sk_teacher_skirt "206 207"

# Clothing Collection U 208-217
link_underwear $si_sailor "209 212 213 214 215 216"
link_underwear $si_sweater "208 210 211 217"
link_skirt $skirt "208 209 210 211 212 213 214 215 217"

# Arc2
link_underwear $si_sailor "196"
link_underwear $si_blazer "195"
link_skirt $sk_teacher_skirt "195 196"

# Kantoku
link_underwear $si_sweater "164"
link_underwear $si_blazer "165"

# One Room
link_underwear $si_blazer "221"

# Kanpack
link_underwear $si_blazer "133 134 136 137 138 141 142 143 144 145 146 147"
link_underwear $si_bikini_ppd "139"
link_skirt $skirt "138"
link_skirt $sk_shorts "133 137 139 142"
link_skirt $sk_hcswimsuit "140"

# Honey Stimulus Package
link_underwear $si_sailor "241"
link_underwear $si_blazer "239 240 242 244"
link_skirt $sk_sundress "240"
link_skirt $sk_hoodie "239"
link_skirt $sk_hs_cardigan "244"

# tot
link_underwear $si_sailor "233"
link_underwear $si_sweater "253 232"
link_skirt $sk_bikini_hm8 "227"
link_skirt $sk_bikini_hm8_1 "228"
link_skirt $sk_panda "229"
link_skirt $sk_pj "253"

# zzz
link_skirt $sk_kyoei "150"
link_skirt $sk_himo "151 152"

# 2chan
link_underwear $si_sailor "202 203 204 205"
link_underwear $si_bunny2 "171"
link_underwear $si_bikini_ppd "172"
link_underwear $si_china "162"
link_skirt $sk_bunny2 "171"
link_skirt $sk_bikini_ppd "172"
link_skirt $sk_ppd_kimono "203 204"
link_skirt $sk_ppd_miko "205"
link_skirt $sk_magical_girl "202"
link_skirt $sk_china2 "162"

# Closed Blazer
link_skirt $skirt "158"
link_underwear $si_sailor "158"

# Cardigan
link_skirt $skirt "219"
link_underwear $si_blazer "219"

# Tight Body Suit
link_underwear $si_tight_body_suit "161 163"
link_skirt $skirt "161"
link_skirt $sk_teacher_skirt_alt "163"

# Wedding Rings
link_underwear $si_blazer "166 168"
link_underwear $si_sweater "167"
link_skirt $skirt "166 167"
link_skirt $sk_dress "168"

# JS3F's Sailor One Piece
link_underwear $si_sailor "170"

# JS3F's Silent Majority
link_underwear $si_sailor "179"

# Arcueid's Sweater
link_underwear $si_sailor "195 196"
link_skirt $sk_teacher_skirt "195 196"

# Ika
link_underwear $si_sailor "187 188"
link_underwear $si_sweater "182 183 184 185"
link_skirt $skirt "182 183 184 188"
link_skirt $sk_teacher_skirt "185 186 187"

# Unorganized
link_underwear $si_sailor "218 219 220 230 231 255"
link_underwear $si_sweater "226"
link_skirt $skirt "218 231 255"

# frozen_string_literal: true

MEIJI = 1868...1912
TAISHO = 1912...1926
SHOWA = 1926...1989
HEISEI = 1989...2019
REIWA = 2019..2022
def to_japanese_calendar(year) # rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
  case year
  when ..1868
    'too old to convert'
  when MEIJI
    "Meiji #{year - MEIJI.begin + 1}"
  when TAISHO
    "Taisho #{year - TAISHO.begin + 1}"
  when SHOWA
    "Showa #{year - SHOWA.begin + 1}"
  when HEISEI
    "Heisei #{year - HEISEI.begin + 1}"
  when REIWA
    "Reiwa #{year - REIWA.begin + 1}"
  when (2022..)
    'too new to convert'
  end
end

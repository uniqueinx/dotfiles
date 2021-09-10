#!/bin/sh
set -e
set -o errexit # abort on nonzero exitstatus
set -o nounset # abort on unbound variable
path=/sys/class/backlight/nv_backlight
path=/sys/class/backlight/intel_backlight
usage() {
cat <<EOF
Usage: ${0} [options]
    -set value
    -set value%
    -set +value%
    -set -value%
    -get
    -inc value
    -inc value%
    -dec value
    -dec value%
EOF
}

parse_args() {
  case ${1} in
    \+[0-9]*%) set_increment_by_percentage ${1//[!0-9]/} ;;
    \+[0-9]*%) set_decrement_by_percentage ${1//[!0-9]/} ;;
    \+[0-9]*)  set_increment ${1//[!0-9]/} ;;
    \-[0-9]*)  set_decrement ${1//[!0-9]/} ;;
    [0-9]*%)   set_percentage ${1//[!0-9]/} ;;
    *)         set_brightness ${1} ;;
  esac
}

set_increment() {
  current=$(get_brightness)
  value=$(echo $current + ${1} | bc)
  set_brightness $value
}

set_decrement() {
  current=$(get_brightness)
  value=$(echo $current - ${1} | bc)
  set_brightness $value
}

set_percentage() {
  max=$(get_max_brightness)
  value=$(echo "$max/100 * ${1}" | bc -l)
  set_brightness ${value%.*}
}

set_increment_by_percentage() {
  max=$(get_max_brightness)
  current=$(get_brightness)
  value=$(echo "$max/100 * ${1} + ${current}" | bc -l)
  set_brightness ${value%.*}
}

set_decrement_by_percentage() {
  max=$(get_max_brightness)
  current=$(get_brightness)
  value=$(echo "$max/100 * ${1} - ${current}" | bc -l)
  set_brightness ${value%.*}
}

set_brightness() {
  tee $path/brightness <<< ${1} &>/dev/null
}

get_brightness() {
  cat $path/brightness
}

get_max_brightness() {
  cat $path/max_brightness
}

if [ "$#" -eq "0" ]; then
  usage
  exit 2
fi

case "$1" in
  "-set") parse_args $2;;
  "-get") get_brightness;;
  "-inc") parse_args "+$2";;
  "-dec") parse_args "-$2";;
  *) usage;;
esac

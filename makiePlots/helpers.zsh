function tsendall() {
    dirs=( "$@" )
    (( $#dirs == 0 )) && return 1
    tlg-file-captioned ${^dirs}/**/(all|timeseries).(mp4|png)(N)
}
function ani() {
    imgdirs2vid "${^@}"/all
}
function ani-ts() {
    ani "$@"
    tsendall "$@"
    bello
}
function makie-clean() {
    rm -r ~/Base/_Code/uni/stochastic/makiePlots/**/all(/)
    # rm ~/Base/_Code/uni/stochastic/makiePlots/**/log.txt
}
function makp() {
    z makiePlots ; fnswap printz-quoted reval onlc cd ; cd all && mpv-imgseq
}
function makt() {
    z makiePlots ; fnswap printz-quoted reval onlc cd ; imgcat timeseries.png
}

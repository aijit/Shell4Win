dumpdir()
{
    local dir=$1
    find $dir/* -type d -prune 2>/dev/null | sed 's/^\.\///'
}
alias dl=dumpdir
fd()
{
    local data_dir=${SHELL4WIN}.data
    [ -d $data_dir ] || mkdir $data_dir
    local cwd=$data_dir/cwd.txt
    dumpdir . > $cwd
    if [ $# -gt 0 ]; then
        [ $1 -gt 0 ] || return 1
        local dest=`sed -n "$1p" $cwd`
        [ ! -z $dest ] || return 2
        cd $dest
        dumpdir . > $cwd
    fi
    cat $cwd | grep --color -n ".*"
}

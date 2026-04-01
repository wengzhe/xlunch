function xemulator --description 'Launch QEMU emulator for current lunch target'
    set -l xenv (pwd)/.xenv.sh
    if test -f $xenv
        bash -c "
            source build/envsetup.sh
            source $xenv
            emulator $argv
        "
    else
        echo 'ERROR: Please run `xlunch` first' >&2
        return 1
    end
end

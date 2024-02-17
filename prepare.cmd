
move PortableGit\etc\gitconfig PortableGit\etc\gitconfig.origin
copy Prepared\etc\gitconfig PortableGit\etc\gitconfig

heat dir PortableGit -var packageSource -srd -sreg -dr TARGETDIR -gg -ke -cg FILES -sfrag -o bundle.wxs
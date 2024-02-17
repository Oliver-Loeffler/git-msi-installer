del PortableGit\etc\gitconfig
REM move PortableGit\etc\gitconfig PortableGit\etc\gitconfig.origin
REM copy Prepared\etc\gitconfig PortableGit\etc\gitconfig

heat dir PortableGit -var var.packageSource -scom -srd -sreg -sfrag -dr APPLICATIONROOTDIRECTORY -gg -ke -cg GIT_PORTABLE -t remove.xsl -o bundle.wxs 
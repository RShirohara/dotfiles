# Display configs for nushell.

export-env {
  ## Config
  ### Color
  $env.config.color_config = {
    shape_external: "red_bold"
    shape_externalarg: "cyan"
    shape_external_resolved: "green"
    shape_flag: "cyan"
    shape_internalcall: "green"
    shape_nothing: "dark_gray"
  }

  ### Prompt
  $env.config.render_right_prompt_on_last_line = true

  ### Table
  $env.config.table.mode = "light"
  $env.config.table.index_mode = "auto"

  ### Miscellaneous
  $env.config.highlight_resolved_externals = true
  $env.config.ls.use_ls_colors = true

  ## Environment
  $env.LS_COLORS = "no=00:fi=00:rs=0:di=38;5;63;1:ln=target:mh=00:pi=40;33:so=35:do=35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=30;41;01:sg=30;43;01:ca=30;41;01:tw=30;42;01:ow=30;46;01:st=30;44;01:*.directory=34:*.desktop=34:*.tar=35:*.tgz=35:*.arc=35:*.arj=35:*.taz=35:*.lha=35:*.lz4=35:*.lzh=35:*.lzma=35:*.tlz=35:*.txz=35:*.tzo=35:*.t7z=35:*.zip=35:*.z=35:*.Z=35:*.dz=35:*.gz=35:*.lrz=35:*.lz=35:*.lzo=35:*.xz=35:*.zst=35:*.tzst=35:*.bz2=35:*.bz=35:*.tbz=35:*.tbz2=35:*.tz=35:*.ear=35:*.sar=35:*.rar=35:*.alz=35:*.ace=35:*.zoo=35:*.cpio=35:*.7z=35:*.rz=35:*.cab=35:*.wim=35:*.swm=35:*.dwm=35:*.esd=35:*.apk=35:*.gem=35:*.xpi=35:*.crx=35:*.aac=36:*.au=36:*.flac=36:*.m4a=36:*.mid=36:*.midi=36:*.mka=36:*.mp3=36:*.mpc=36:*.ogg=36:*.ra=36:*.wav=36:*.oga=36:*.opus=36:*.spx=36:*.xspf=36:*.torrent=32:*.txt=36:*.pdf=31:*.djvu=31:*.epub=31:*.fb2=31:*.mobi=31:*.cfg=36:*.cnf=36:*.conf=36:*.ini=36:*.properties=36:*.pro=36:*.ics=36:*.sql=35:*.db=35:*.sqlite3=35:*.sqlite=35:*.sqlite-wal=35:*.diff=30;41:*.patch=30;41:*.doc=36:*.docx=36:*.odt=36:*.asc=31:*.enc=31:*.gpg=31:*.signature=31:*.sig=31:*.p12=31:*.pem=31:*.pgp=31:*.asc=31:*.enc=31:*.sig=31:*.p7s=31:*.keystore=31:*.key=31:*.pepk=31:*.jks=31:*.crt=31:*id_dsa=31:*id_dsa.*=31:*id_rsa=31:*id_rsa.*=31:*id_ecdsa=31:*id_ecdsa.*=31:*id_ecdsa_sk=31:*id_ecdsa_sk.*=31:*id_ed25519=31:*id_ed25519.*=31:*id_ed25519_sk=31:*id_ed25519_sk.*=31:*id_dsa.pub=31:*id_dsa.*.pub=31:*id_rsa.pub=31:*id_rsa.*.pub=31:*id_ecdsa.pub=31:*id_ecdsa.*.pub=31:*id_ecdsa_sk.pub=31:*id_ecdsa_sk.*.pub=31:*id_ed25519.pub=31:*id_ed25519.*.pub=31:*id_ed25519_sk.pub=31:*id_ed25519_sk.*.pub=31:*.ttf=33;01:*.woff=33;01:*.woff2=33;01:*.afm=33;01:*.fon=33;01:*.fnt=33;01:*.pfb=33;01:*.pfm=33;01:*.otf=33;01:*.eot=33;01:*.apk=33;01:*.deb=33;01:*.rpm=33;01:*.jad=33;01:*.jar=33;01:*.war=33;01:*.cab=33;01:*.pak=33;01:*.pk3=33;01:*.vdf=33;01:*.vpk=33;01:*.bsp=33;01:*.dmg=33;01:*.msi=33;01:*.appimages=33;01:*.aab=33;01:*.c=34:*.h=34:*.hpp=34:*.cc=34:*.cpp=34:*.cs=34:*.go=34:*.rs=34:*.java=34:*.pas=34:*.py=34:*.ipynb=34:*.rb=34:*.erb=34:*.gemspec=34:*.ru=34:*.lua=34:*.xlt=34:*.groovy=34:*.dsl=34:*.scala=34:*.toml=34:*.yml=34:*.yaml=34:*.xml=34:*.md=34:*.markdown=34:*.tex=34:*.latex=34:*.pl=34:*.hs=34:*.lhs=34:*.map=34:*.vim=34:*.plist=34:*.sty=34:*.dll=34:*.class=34:*.node=34:*.pyc=34:*.so=34:*.pyo=34:*.bash_history=2;37:*.python_history=2;37:*.zsh_history=2;37:*.node_repl_history=2;37:*.mysql_history=2;37:*.zsh_history=2;37:*.autoenv_authorized=2;37:*.pacnew=2;37:*.pacsave=2;37:*.kml=35:*.kmz=35:*.log=2;37:*.zwc=2;37:*.lock=2;37:*.old=2;37:*.o=2;37:*.tmp=2;37:*.out=2;37:*.bak=2;37:*.swo=2;37:*.swp=2;37:*.cache=2;37:*.part=2;37:*.aux=2;37:*.lof=2;37:*.lol=2;37:*.lot=2;37:*.toc=2;37:*.bbl=2;37:*.blg=2;37:*.incomplete=2;37:*.temp=2;37:*.o=2;37:*.cache=2;37:*.aux=2;37:*.dist=2;37:*.orig=2;37:*.zcompdump=2;37:*.viminfo=2;37:*.Xauthority=2;37:*.ICEauthority=2;37:*~=2;37:*#=2;37:*.dmg=35:*.iso=35:*.bin=35:*.nrg=35:*.qcow=35:*.sparseimage=35:*.toast=35:*.vcd=35:*.vmdk=35:*.img=35:*.jpg=35:*.jpeg=35:*.gif=35:*.webp=35:*.heic=35:*.wma=35:*.bmp=35:*.pbm=35:*.pgm=35:*.ppm=35:*.tga=35:*.xbm=35:*.xpm=35:*.tif=35:*.tiff=35:*.png=35:*.svg=35:*.svgz=35:*.mng=35:*.pcx=35:*.ico=35:*.eps=35:*.ppt=36:*.pptx=36:*.odp=36:*.gdslides=36:*.php=34:*.html=34:*.xhtml=34:*.htm=34:*.haml=34:*.slim=34:*.jade=34:*.pug=34:*.hjs=34:*.njk=34:*.css=32:*.sss=32:*.less=32:*.scss=32:*.sass=32:*.stylus=32:*.js=33:*.mjs=33:*.cjs=33:*.jsx=33:*.ts=33:*.tsx=33:*.coffee=33:*.vue=33:*.d.ts=2;33:*.flow=2;33:*.cson=34:*.json=34:ex=33;01:*.cmd=33;01:*.exe=33;01:*.com=33;01:*.awk=33;01:*.btm=33;01:*.bat=33;01:*.sh=33;01:*.bash=33;01:*.csh=33;01:*.zsh=33;01:*.zsh-theme=33;01:*.fish=33;01:*.xlsx=36:*.xls=36:*.ods=36:*.csv=36:*.tsv=36:*.mov=34:*.movie=34:*.mpg=34:*.mpeg=34:*.m2v=34:*.mkv=34:*.webm=34:*.ogm=34:*.mp4=34:*.m4v=34:*.mp4v=34:*.vob=34:*.qt=34:*.nuv=34:*.wmv=34:*.asf=34:*.rm=34:*.rmvb=34:*.avi=34:*.flv=34:*.gl=34:*.dl=34:*.xcf=34:*.xwd=34:*.yuv=34:*.emf=34:*.ogv=34:*.ogx=34:*.3g2=34:*.3gp=34:*.3gp2=34:*.3gpp=34:*samconfig.toml=36:*prod-samconfig.toml=36:*dev-samconfig.toml=36:*samconfig.prod.toml=36:*samconfig.dev.toml=36:*Gemfile=36:*Rakefile=36:*Vagrantfile=36:*Dockerfile=34:*Makefile=36:*Cargo.toml=36:*.rustfmt.toml=36:*.rvm=36:*.rvmrc=36:*.npmrc=36:*node_modules=36:*.eslintrc.js=36:*.eslintrc.cjs=36:*.eslintrc.json=36:*.eslintrc.yaml=36:*.eslintrc.yml=36:*metro.config.js=36:*react-native.config.js=36:*babel.config.js=36:*jest.setup.js=36:*Podfile=36:*fstab=36:*group=36:*group-=36:*passwd=36:*passwd-=36:*shadow=36:*shadow-=36:*hosts=36:*hostname=36:*shells=36:*environment=32:*profile=32:*-release=32:*_release=32:*rc.local=33:*inittab=33:*known_hosts=36:*config=36:*authorized_keys=36:*hosts.allow=32:*hosts.deny=31:*.service=34:*@.service=34:*.socket=34:*.swap=34:*.device=34:*.mount=34:*.automount=34:*.target=34:*.path=34:*.timer=34:*.snapshot=34:*.slice=34:*LICENSE=4;33:*README=4;33:*README.md=4;31:*HEAD=30;41:*.sublime-workspace=34:*.sublime-project=34:*.code-workspace=34:*launch.json=34:*.xinitrc=34:*.xbindkeysrc=34:*.Xresources=34:*.profile=34:*.bashrc=34:*.bash_profile=34:*.bashrc.aliases=34:*.bash_logout=34:*.bashrc=34:*.bashrc=34:*.zprofile=34:*.zshrc=34:*zshrc=34:*.zshrc.local=34:*.vimrc=34:*vimrc=34:*.inputrc=34:*inputrc=34:*.npmrc=34:*.git-credentials=34:*.curlrc=34:*.myclirc=34:*.tldrrc=34:*.nanorc=34:*nanorc=34:*.wget-hst=34:*.wget-hsts=34:*.yarnrc=34:*wgetrc=34:*.face.icon=34:*.bookmarks=34:*.bash_aliases=34:*.gitignore=34:*.pythonrc=34:*.pythonstartup=34:*.dircolors=34:*.nrmrc=34:*sudoers=34:"
}

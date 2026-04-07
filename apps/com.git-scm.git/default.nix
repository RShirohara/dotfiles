{ pkgs, ... }: {
  home.packages = [
    pkgs.delta
    pkgs.ghq
  ];
  programs.git.enable = true;

  programs.git.ignores = [
    # Backup.
    "*.bak"
    "*.gho"
    "*.ori"
    "*.orig"
    "*.tmp"

    # Diff.
    "*.patch"
    "*.diff"

    # Linux.
    "*~"

    ## temporary files which can be created if a process still has a handle open of a deleted file.
    ".fuse_hidden*"

    ## Metadata left by Dolphin file manager, which comes with KDE Plasma.
    ".directory"

    ## Linux trash folder which might appear on any partition or disk.
    ".Trash-*"

    ## .nfs files are created when an open file is removed but is still being accessed.
    ".nfs*"

    ## Log files created by default by the nohup command.
    "nohup.out"

    # macOS.
    ## General.
    ".DS_Store"
    "__MACOSX/"
    ".AppleDouble"
    ".LSOverride"
    "Icon["
    "]"

    ## Thumbnails.
    "._*"

    ## Files that might appear in the root of a volume.
    ".DocumentRevisions-V100"
    ".fseventsd"
    ".Spotlight-V100"
    ".TemporaryItems"
    ".Trashes"
    ".VolumeIcon.icns"
    ".com.apple.timemachine.donotpresent"

    ## Directories potentially created on remote AFP share.
    ".AppleDB"
    ".AppleDesktop"
    "Network Trash Folder"
    "Temporary Items"
    ".apdisk"

    # Windows.
    ## Windows thumbnail cache files.
    "Thumbs.db"
    "Thumbs.db:encryptable"
    "ehthumbs.db"
    "ehthumbs_vista.db"

    ## Dump file.
    "*.stackdump"

    ## Folder config file.
    "[Dd]esktop.ini"

    ## Recycle Bin used on file shares.
    "$RECYCLE.BIN/"

    ## Windows Installer files.
    "*.cab"
    "*.msi"
    "*.msix"
    "*.msm"
    "*.msp"

    ## Windows shortcuts.
    "*.lnk"
  ];

  programs.git.settings = {
    # Git core settings.
    branch.sort = "-committerdate";
    commit.verbose = true;
    core.editor = "hx";
    core.fsmonitor = true;
    core.pager = "delta";
    core.untrackedCache = true;
    diff.algorithm = "histogram";
    diff.colorMoved = "plain";
    diff.mnemonicPrefix = true;
    diff.renames = true;
    difftool.prompt = false;
    fetch.all = true;
    fetch.prune = true;
    fetch.pruneTags = true;
    init.defaultBranch = "main";
    interactive.diffFilter = "delta --color-only";
    merge.conflictStyle = "zdiff3";
    pull.rebase = true;
    push.autoSetupRemote = true;
    push.default = "simple";
    push.followTags = true;
    rebase.autoSquash = true;
    rebase.autoStash = true;
    rebase.updateRefs = true;
    rerere.autoUpdate = true;
    rerere.enabled = true;
    tag.sort = "version:refname";

    # External tool settings.
    ## delta.
    delta.line-numbers = true;
    delta.navigate = true;
    delta.width = -2;

    ## ghq.
    ghq.root = "~/Workspace";

    # Aliases.
    alias.push-force = "push --force-if-includes --force-with-lease";
  };
}

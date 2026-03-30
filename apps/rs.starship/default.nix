{ lib, ... }: {
  programs.starship.enable = true;

  programs.starship.settings = {
    add_newline = true;
    format = lib.concatStrings [
      "$os"
      "$directory"
      "$git_branch"
      "$git_commit"
      "$git_state"
      "$git_metrics"
      "$git_status"
      "$fossil_branch"
      "$fossil_metrics"
      "$vcsh"
      "$hg_branch"
      "$pijul_channel"
      "$fill"
      "$status"
      "$cmd_duration"
      "$jobs"
      "$singularity"
      "$kubernetes"
      "$docker_context"
      "$package"
      "$c"
      "$cmake"
      "$cobol"
      "$daml"
      "$dart"
      "$deno"
      "$dotnet"
      "$elixir"
      "$elm"
      "$erlang"
      "$fennel"
      "$gleam"
      "$golang"
      "$guix_shell"
      "$haskell"
      "$haxe"
      "$helm"
      "$java"
      "$julia"
      "$kotlin"
      "$gradle"
      "$lua"
      "$nim"
      "$nodejs"
      "$ocaml"
      "$opa"
      "$perl"
      "$php"
      "$pulumi"
      "$purescript"
      "$python"
      "$quarto"
      "$raku"
      "$rlang"
      "$red"
      "$ruby"
      "$rust"
      "$scala"
      "$solidity"
      "$swift"
      "$terraform"
      "$typst"
      "$vlang"
      "$vagrant"
      "$zig"
      "$buf"
      "$nix_shell"
      "$conda"
      "$meson"
      "$spack"
      "$memory_usage"
      "$aws"
      "$gcloud"
      "$openstack"
      "$azure"
      "$nats"
      "$direnv"
      "$env_var"
      "$crystal"
      "$sudo"
      "$container"
      "$shell"
      "$time"
      "$line_break"
      "$shlvl"
      "$character"
    ];
    right_format = lib.concatStrings [
      "$username"
      "$hostname"
      "$localip"
      "$battery"
    ];

    aws.symbol = " ";

    battery.display = [
      {
        threshold = 20;
        style = "160";
      }
      {
        threshold = 60;
        style = "178";
      }
      {
        threshold = 100;
        style = "70";
      }
    ];

    buf.symbol = " ";

    bun.symbol = " ";

    c.symbol = " ";

    cmake.symbol = " ";

    cmd_duration.format = "[󰔟 $duration]($style) ";
    cmd_duration.min_time = 1000;
    cmd_duration.style = "101";

    conda.symbol = " ";

    container.symbol = " ";

    crystal.symbol = " ";

    dart.symbol = " ";

    deno.symbol = " ";

    directory.before_repo_root_style = "31";
    directory.fish_style_pwd_dir_length = 1;
    directory.format = "[$read_only]($read_only_style)[$path]($style) ";
    directory.read_only = " ";
    directory.read_only_style = "31 bold";
    directory.repo_root_format = "[$read_only]($read_only_style)[$before_root_path]($before_repo_root_style)[$repo_root]($repo_root_style)[$path]($style) ";
    directory.repo_root_style = "39 bold";
    directory.style = "31 bold";

    docker_context.symbol = " ";

    dotnet.symbol = " ";

    elixir.symbol = " ";

    elm.symbol = " ";

    erlang.symbol = " ";

    fennel.symbol = " ";

    fill.symbol = " ";
    fill.style = "";

    fossil_branch.symbol = " ";

    gcloud.symbol = "󱇶 ";

    git_branch.format = "[$symbol$branch(:$remote_branch)]($style) ";
    git_branch.style = "76";
    git_branch.symbol = " ";

    git_commit.commit_hash_length = 8;
    git_commit.format = "@[$hash]($style) ";
    git_commit.style = "76";

    git_state.format = "[$state( $progress_current/$progress_total)]($style) ";
    git_state.style = "196";

    git_status.ahead = "⇡\${count} ";
    git_status.behind = "⇣\${count} ";
    git_status.conflicted = "[=\${count}](196) ";
    git_status.deleted = "[󰆴\${count}](196) ";
    git_status.diverged = "⇡\${ahead_count} ⇣\${behind_count} ";
    git_status.format = "[$ahead_behind](76)$all_status";
    git_status.modified = "[!\${count}](178) ";
    git_status.renamed = "[»\${count}](178) ";
    git_status.staged = "[+\${count}](76) ";
    git_status.stashed = "[*\${count}](76) ";
    git_status.untracked = "[?\${count}](39) ";

    golang.symbol = " ";

    guix_shell.symbol = " ";

    gradle.symbol = " ";

    haskell.symbol = " ";

    haxe.symbol = " ";

    hg_branch.symbol = " ";

    hostname.ssh_symbol = " ";

    helm.symbol = " ";

    java.symbol = " ";

    julia.symbol = " ";

    kotlin.symbol = " ";

    lua.symbol = " ";

    memory_usage.symbol = "󰍛 ";

    meson.symbol = "󰔷 ";

    nim.symbol = "󰆥 ";

    nix_shell.symbol = " ";

    nodejs.symbol = " ";

    ocaml.symbol = " ";

    openstack.symbol = " ";

    os.disabled = false;
    os.symbols.Alpaquita = " ";
    os.symbols.Alpine = " ";
    os.symbols.AlmaLinux = " ";
    os.symbols.Amazon = " ";
    os.symbols.Android = " ";
    os.symbols.Arch = " ";
    os.symbols.Artix = " ";
    os.symbols.CachyOS = " ";
    os.symbols.CentOS = " ";
    os.symbols.Debian = " ";
    os.symbols.DragonFly = " ";
    os.symbols.Emscripten = " ";
    os.symbols.EndeavourOS = " ";
    os.symbols.Fedora = " ";
    os.symbols.FreeBSD = " ";
    os.symbols.Garuda = "󰛓 ";
    os.symbols.Gentoo = " ";
    os.symbols.HardenedBSD = "󰞌 ";
    os.symbols.Illumos = "󰈸 ";
    os.symbols.Kali = " ";
    os.symbols.Linux = " ";
    os.symbols.Mabox = " ";
    os.symbols.Macos = " ";
    os.symbols.Manjaro = " ";
    os.symbols.Mariner = " ";
    os.symbols.MidnightBSD = " ";
    os.symbols.Mint = " ";
    os.symbols.NetBSD = " ";
    os.symbols.NixOS = " ";
    os.symbols.Nobara = " ";
    os.symbols.OpenBSD = "󰈺 ";
    os.symbols.openSUSE = " ";
    os.symbols.OracleLinux = "󰌷 ";
    os.symbols.Pop = " ";
    os.symbols.Raspbian = " ";
    os.symbols.Redhat = " ";
    os.symbols.RedHatEnterprise = " ";
    os.symbols.RockyLinux = " ";
    os.symbols.Redox = "󰀘 ";
    os.symbols.Solus = "󰠳 ";
    os.symbols.SUSE = " ";
    os.symbols.Ubuntu = " ";
    os.symbols.Unknown = " ";
    os.symbols.Void = " ";
    os.symbols.Windows = "󰍲 ";

    package.symbol = "󰏗 ";

    perl.symbol = " ";

    php.symbol = " ";

    pijul_channel.symbol = " ";

    pulumi.symbol = " ";

    purescript.symbol = " ";

    python.symbol = " ";

    rlang.symbol = "󰟔 ";

    ruby.symbol = " ";

    rust.symbol = "󱘗 ";

    scala.symbol = " ";

    shlvl.symbol = " ";

    solidity.symbol = " ";

    spack.symbol = " ";

    swift.symbol = " ";

    terraform.symbol = " ";

    time.disabled = false;
    time.format = "[ $time]($style) ";
    time.style = "66";

    typst.symbol = " ";

    vagrant.symbol = " ";

    vlang.symbol = " ";

    zig.symbol = " ";
  };
}

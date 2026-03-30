{ pkgs, ... }: {
  home.packages = [
    pkgs.hackgen-font
  ];
  programs.vscode.enable = true;

  programs.vscode.profiles = {
    default = {
      enableExtensionUpdateCheck = true;
      enableUpdateCheck = false;
      extensions = with pkgs.vscode-extensions; [
        codezombiech.gitignore
        davidanson.vscode-markdownlint
        editorconfig.editorconfig
        github.github-vscode-theme
        github.vscode-github-actions
        github.vscode-pull-request-github
        gruntfuggly.todo-tree
        mhutchie.git-graph
        ms-azuretools.vscode-containers
        ms-vscode.hexeditor
        pkief.material-icon-theme
        redhat.vscode-yaml
        streetsidesoftware.code-spell-checker
        tamasfe.even-better-toml
        thenuprojectcontributors.vscode-nushell-lang
        yzhang.markdown-all-in-one
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          # https://sgryjp.gallery.vsassets.io/_apis/public/gallery/publisher/sgryjp/extension/japanese-word-handler/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
          name = "japanese-word-handler";
          publisher = "sgryjp";
          version = "1.4.1";
          sha256 = "0e682895d5221ca40373003327fd5f51bd0d2d521f5b93eab93ccd2d467d472b";
        }
      ];
      keybindings = [
        {
          command = "explorer.newFile";
          key = "ctrl+alt+n";
          when = "isWindows && filesExplorerFocus && foldersViewVisible && !inputFocus";
        }
        {
          command = "explorer.newFile";
          key = "alt+cmd+n";
          when = "isMacNative && filesExplorerFocus && foldersViewVisible && !inputFocus";
        }
        {
          command = "jumpToNextSnippetPlaceholder";
          key = "shift+enter";
          when = "editorTextFocus && hasNextTabstop && inSnippetMode";
        }
        {
          command = "-jumpToNextSnippetPlaceholder";
          key = "tab";
          when = "editorTextFocus && hasNextTabstop && inSnippetMode";
        }
        {
          command = "editor.action.inlineSuggest.showNext";
          key = "alt+n";
          when = "inlineSuggestionVisible && !editorReadonly";
        }
        {
          command = "-editor.action.inlineSuggest.showNext";
          key = "alt+]";
          when = "inlineSuggestionVisible && !editorReadonly";
        }
        {
          command = "editor.action.inlineSuggest.showPrevious";
          key = "alt+t";
          when = "inlineSuggestionVisible && !editorReadonly";
        }
        {
          command = "-editor.action.inlineSuggest.showPrevious";
          key = "alt+[";
          when = "inlineSuggestionVisible && !editorReadonly";
        }
      ];
      userSettings = {
        "[dockercompose]" = {
          "editor.autoIndent" = "advanced";
          "editor.defaultFormatter" = "redhat.vscode-yaml";
          "editor.insertSpaces" = true;
          "editor.tabSize" = 2;
        };
        "[github-actions-workflow]" = {
          "editor.defaultFormatter" = "redhat.vscode-yaml";
        };
        "[json][jsonc]" = {
          "editor.defaultFormatter" = "vscode.json-language-features";
        };
        "[markdown]" = {
          "editor.defaultFormatter" = "DavidAnson.vscode-markdownlint";
          "editor.workWrap" = "bounded";
        };
        "[toml]" = {
          "editor.defaultFormatter" = "tamasfe.even-better-toml";
        };
        "[yaml]" = {
          "editor.defaultFormatter" = "redhat.vscode-yaml";
        };
        "cSpell.spellCheckOnlyWorkspaceFiles" = true;
        "chat.agent.enabled" = false;
        "chat.detectParticipant.enabled" = false;
        "chat.disableAIFeatures" = true;
        "diffEditor.experimental.showMoves" = true;
        "diffEditor.hideUnchangedRegions.enabled" = true;
        "diffEditor.renderSideBySide" = false;
        "editor.fontFamily" = "'HackGen', monospace";
        "editor.fontSize" = 14;
        "editor.formatOnSave" = true;
        "editor.formatOnSaveMode" = "modificationsIfAvailable";
        "editor.inlineSuggest.showToolbar" = "always";
        "editor.minimap.maxColumn" = 80;
        "editor.quickSuggestions" = {
          "other" = "inline";
        };
        "editor.renderWhitespace" = "all";
        "editor.smoothScrolling" = true;
        "editor.suggest.localityBonus" = true;
        "editor.suggest.showWords" = false;
        "editor.suggestOnTriggerCharacters" = false;
        "editor.suggestSelection" = "recentlyUsedByPrefix";
        "editor.tabSize" = 2;
        "editor.wordSeparators" = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
        "editor.wordWrap" = "bounded";
        "editor.wordWrapColumn" = 100;
        "emmet.triggerExpansionOnTab" = true;
        "explorer.incrementalNaming" = "smart";
        "explorer.sortOrder" = "type";
        "extensions.ignoreRecommendations" = true;
        "files.associations" = {
          "*.env" = "properties";
          "*config" = "properties";
          "*ignore" = "ignore";
        };
        "files.autoGuessEncoding" = true;
        "files.eol" = "\n";
        "files.insertFinalNewline" = true;
        "files.trimTrailingWhitespace" = true;
        "git.autofetch" = "all";
        "git.blame.editorDecoration.enabled" = true;
        "git.confirmSync" = false;
        "git.enableCommitSigning" = true;
        "git.inputValidation" = true;
        "git.mergeEditor" = true;
        "git.openRepositoryInParentFolders" = "never";
        "git.pruneOnFetch" = true;
        "githubPullRequests.createOnPublishBranch" = "never";
        "githubPullRequests.experimental.chat" = false;
        "merge-conflict.autoNavigateNextConflict.enabled" = true;
        "search.useGlobalIgnoreFiles" = true;
        "telemetry.feedback.enabled" = false;
        "telemetry.telemetryLevel" = "off";
        "terminal.integrated.cursorBlinking" = true;
        "terminal.integrated.cursorStyle" = "line";
        "terminal.integrated.defaultProfile.osx" = "Nushell";
        "terminal.integrated.enableImages" = true;
        "terminal.integrated.enableVisualBell" = true;
        "terminal.integrated.fontFamily" = "'HackGen Console NF', monospace";
        "terminal.integrated.fontSize" = 14;
        "terminal.integrated.macOptionIsMeta" = true;
        "terminal.integrated.rightClickBehavior" = "default";
        "terminal.integrated.scrollback" = 1000000;
        "terminal.integrated.sendKeybindingsToShell" = true;
        "terminal.integrated.smoothScrolling" = true;
        "terminal.integrated.wordSeparators" = " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
        "window.newWindowProfile" = "Default";
        "workbench.activityBar.location" = "bottom";
        "workbench.colorTheme" = "GitHub Dark Dimmed";
        "workbench.editor.defaultBinaryEditor" = "hexEditor.hexedit";
        "workbench.iconTheme" = "material-icon-theme";
        "workbench.settings.applyToAllProfiles" = [
          "cSpell.spellCheckOnlyWorkspaceFiles"
          "chat.agent.enabled"
          "chat.detectParticipant.enabled"
          "chat.disableAIFeatures"
          "diffEditor.experimental.showMoves"
          "diffEditor.hideUnchangedRegions.enabled"
          "diffEditor.renderSideBySide"
          "editor.fontFamily"
          "editor.fontSize"
          "editor.formatOnSave"
          "editor.formatOnSaveMode"
          "editor.inlineSuggest.showToolbar"
          "editor.minimap.maxColumn"
          "editor.quickSuggestions"
          "editor.renderWhitespace"
          "editor.smoothScrolling"
          "editor.suggest.localityBonus"
          "editor.suggest.showWords"
          "editor.suggestOnTriggerCharacters"
          "editor.suggestSelection"
          "editor.tabSize"
          "editor.wordSeparators"
          "editor.wordWrap"
          "editor.wordWrapColumn"
          "emmet.triggerExpansionOnTab"
          "explorer.incrementalNaming"
          "explorer.sortOrder"
          "extensions.ignoreRecommendations"
          "files.associations"
          "files.autoGuessEncoding"
          "files.eol"
          "files.insertFinalNewline"
          "files.trimTrailingWhitespace"
          "git.autofetch"
          "git.blame.editorDecoration.enabled"
          "git.confirmSync"
          "git.enableCommitSigning"
          "git.inputValidation"
          "git.mergeEditor"
          "git.openRepositoryInParentFolders"
          "git.pruneOnFetch"
          "githubPullRequests.createOnPublishBranch"
          "githubPullRequests.experimental.chat"
          "merge-conflict.autoNavigateNextConflict.enabled"
          "search.useGlobalIgnoreFiles"
          "telemetry.feedback.enabled"
          "telemetry.telemetryLevel"
          "terminal.integrated.cursorBlinking"
          "terminal.integrated.cursorStyle"
          "terminal.integrated.defaultProfile.osx"
          "terminal.integrated.enableImages"
          "terminal.integrated.enableVisualBell"
          "terminal.integrated.fontFamily"
          "terminal.integrated.fontSize"
          "terminal.integrated.macOptionIsMeta"
          "terminal.integrated.rightClickBehavior"
          "terminal.integrated.scrollback"
          "terminal.integrated.sendKeybindingsToShell"
          "terminal.integrated.smoothScrolling"
          "terminal.integrated.wordSeparators"
          "window.newWindowProfile"
          "workbench.activityBar.location"
          "workbench.colorTheme"
          "workbench.editor.defaultBinaryEditor"
          "workbench.iconTheme"
          "workbench.settings.applyToAllProfiles"
          "workbench.startupEditor"
          "workbench.tips.enabled"
          "zenMode.hideLineNumbers"
          "zenMode.hideStatusBar"
          "zenMode.restore"
          "zenMode.silentNotifications"
        ];
        "workbench.startupEditor" = "none";
        "workbench.tips.enabled" = false;
        "zenMode.hideLineNumbers" = false;
        "zenMode.hideStatusBar" = false;
        "zenMode.restore" = false;
        "zenMode.silentNotifications" = false;
      };
    };
    infra = {
      extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          # https://opentofu.gallery.vsassets.io/_apis/public/gallery/publisher/opentofu/extension/vscode-opentofu/latest/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
          name = "vscode-opentofu";
          publisher = "opentofu";
          version = "0.6.0";
          sha256 = "057cd1d639a27dac082300344719ea54e1aba53e7f80757894f21c61fa8069e3";
        }
      ];
    };
    python = {
      extensions = with pkgs.vscode-extensions; [
        charliermarsh.ruff
        ms-python.debugpy
        ms-python.python
        ms-python.vscode-pylance
      ];
      userSettings = {
        "python.analysis.inlayHints.callArgumentNames" = "all";
        "python.analysis.inlayHints.functionReturnTypes" = true;
        "python.analysis.inlayHints.pytestParameters" = true;
        "python.analysis.inlayHints.variableTypes" = true;
        "python.analysis.languageServerMode" = "full";
        "python.analysis.typeCheckingMode" = "strict";
      };
    };
  };
}

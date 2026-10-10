# DBmind Homebrew Tap

macOS 上装 DBmind，一行命令、**全程不弹**那道"无法检查恶意软件"的提示：

```bash
brew install --cask --no-quarantine rick-works/tap/dbmind
```

`--no-quarantine` 是必须的：不加的话 Homebrew 会给下载的文件打上"从网上下载"的标记，
系统就会拦一次（点「好」后到「系统设置 → 隐私与安全性」点「仍要打开」也能放行，只是多两步）。

升级：`brew upgrade --cask --no-quarantine dbmind`

版本与校验值由主仓库的 `scripts/update-homebrew-cask.ps1` 在每次发版后同步。
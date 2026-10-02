-- C# support via the Roslyn language server (the same engine VS Code's
-- C# Dev Kit uses). This config uses `vim.pack`, not lazy.nvim, so we
-- install and configure the plugin imperatively like everything else.
--
-- One-time setup after this file is in place:
--   1. Restart Neovim so vim.pack downloads seblyng/roslyn.nvim.
--   2. Install the server binary. Either:
--        Mason:  :MasonInstall roslyn-language-server
--        or (Arch) the AUR:  yay -S roslyn-language-server
--   3. Open a .cs file inside a project/solution and wait a few seconds
--      for it to attach (:LspInfo / :checkhealth roslyn to verify).

local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'seblyng/roslyn.nvim' }

require('roslyn').setup {
  -- Defaults are fine. If you installed the server via Mason, roslyn.nvim
  -- finds it automatically. If you used the AUR package instead, point it
  -- at the binary explicitly:
  -- cmd = { 'roslyn-language-server', '--stdio' },
}

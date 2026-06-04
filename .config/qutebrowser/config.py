config.load_autoconfig()

# ---- Autocompletion ----
c.completion.show = "always"
c.completion.height = 500

# ---- Downloads ----
c.downloads.location.prompt = False
c.downloads.position = "bottom"

# ---- Editor ----
c.editor.command = ["env", "SHELL", "/bin/zsh", "nvim", "{file}"]

# ---- Fonts ----
c.fonts.default_family = "JetBrainsMono Nerd Font"
c.fonts.default_size = "14pt"
c.fonts.tabs.selected = "14pt JetBrainsMono Nerd Font"
c.fonts.tabs.unselected = "14pt JetBrainsMono Nerd Font"
c.fonts.prompts = "default_size"
c.fonts.statusbar = "14pt JetBrainsMono Nerd Font"
c.fonts.hints = "bold 14pt JetBrainsMono Nerd Font"
c.fonts.keyhint = "14pt JetBrainsMono Nerd Font"

# ---- Input ----
c.input.insert_mode.leave_on_load = True
c.input.partial_timeout = 500

# ---- Scrolling ----
c.scrolling.bar = "always"
c.scrolling.smooth = False

# ---- Spellcheck ----
c.spellcheck.languages = ["en-US"]

# ---- Status bar ----
c.statusbar.show = "always"
c.statusbar.widgets = ["keyprogress", "progress", "url", "scroll", "tabs"]

# ---- Tabs ----
c.tabs.show = "multiple"
c.tabs.position = "top"
c.tabs.background = True
c.tabs.indicator.width = 0
c.tabs.padding = {"top": 2, "bottom": 2, "left": 5, "right": 5}
c.tabs.favicons.scale = 1.0
c.tabs.title.alignment = "left"
c.tabs.width = 250
c.tabs.min_width = 100
c.tabs.max_width = 350

# ---- URLs ----
c.url.default_page = "https://google.com"
c.url.start_pages = ["https://google.com"]
c.url.youtube_embed = "replace"

# ---- Colorscheme (Gruvbox dark) ----
c.colors.statusbar.normal.bg = "#282828"
c.colors.statusbar.normal.fg = "#ebdbb2"
c.colors.statusbar.insert.bg = "#458588"
c.colors.statusbar.insert.fg = "#ebdbb2"
c.colors.statusbar.command.bg = "#282828"
c.colors.statusbar.command.fg = "#ebdbb2"
c.colors.statusbar.command.private.bg = "#282828"
c.colors.statusbar.command.private.fg = "#ebdbb2"
c.colors.statusbar.url.fg = "#83a598"
c.colors.statusbar.url.success.http.fg = "#83a598"
c.colors.statusbar.url.success.https.fg = "#b8bb26"
c.colors.statusbar.url.warn.fg = "#fabd2f"
c.colors.statusbar.url.error.fg = "#fb4934"
c.colors.statusbar.url.hover.fg = "#d3869b"

c.colors.statusbar.progress.bg = "#458588"
c.colors.statusbar.progress.fg = "#83a598"

c.colors.tabs.bar.bg = "#1d2021"
c.colors.tabs.even.bg = "#282828"
c.colors.tabs.even.fg = "#ebdbb2"
c.colors.tabs.odd.bg = "#282828"
c.colors.tabs.odd.fg = "#ebdbb2"
c.colors.tabs.selected.even.bg = "#458588"
c.colors.tabs.selected.even.fg = "#ebdbb2"
c.colors.tabs.selected.odd.bg = "#458588"
c.colors.tabs.selected.odd.fg = "#ebdbb2"
c.colors.tabs.pinned.even.bg = "#504945"
c.colors.tabs.pinned.even.fg = "#ebdbb2"
c.colors.tabs.pinned.odd.bg = "#504945"
c.colors.tabs.pinned.odd.fg = "#ebdbb2"
c.colors.tabs.pinned.selected.even.bg = "#458588"
c.colors.tabs.pinned.selected.even.fg = "#ebdbb2"
c.colors.tabs.pinned.selected.odd.bg = "#458588"
c.colors.tabs.pinned.selected.odd.fg = "#ebdbb2"

c.colors.completion.fg = "#ebdbb2"
c.colors.completion.odd.bg = "#282828"
c.colors.completion.even.bg = "#282828"
c.colors.completion.category.fg = "#b8bb26"
c.colors.completion.category.bg = "#1d2021"
c.colors.completion.item.selected.fg = "#ebdbb2"
c.colors.completion.item.selected.bg = "#504945"
c.colors.completion.item.selected.border.top = "#504945"
c.colors.completion.item.selected.border.bottom = "#504945"
c.colors.completion.scrollbar.fg = "#ebdbb2"
c.colors.completion.scrollbar.bg = "#282828"

c.colors.downloads.bar.bg = "#282828"
c.colors.downloads.start.fg = "#282828"
c.colors.downloads.start.bg = "#b8bb26"
c.colors.downloads.stop.fg = "#282828"
c.colors.downloads.stop.bg = "#fb4934"
c.colors.downloads.error.fg = "#fb4934"
c.colors.downloads.error.bg = "#282828"

c.colors.hints.fg = "#282828"
c.colors.hints.bg = "#fabd2f"
c.colors.keyhint.fg = "#ebdbb2"
c.colors.keyhint.suffix.fg = "#fabd2f"
c.colors.keyhint.bg = "#282828"

c.colors.messages.error.fg = "#fb4934"
c.colors.messages.error.bg = "#282828"
c.colors.messages.error.border = "#fb4934"
c.colors.messages.warning.fg = "#fabd2f"
c.colors.messages.warning.bg = "#282828"
c.colors.messages.warning.border = "#fabd2f"
c.colors.messages.info.fg = "#83a598"
c.colors.messages.info.bg = "#282828"
c.colors.messages.info.border = "#83a598"

c.colors.prompts.fg = "#ebdbb2"
c.colors.prompts.bg = "#282828"
c.colors.prompts.border = "#1d2021"
c.colors.prompts.selected.fg = "#ebdbb2"
c.colors.prompts.selected.bg = "#504945"

# ---- Search engines ----
c.url.searchengines = {
    "DEFAULT": "https://google.com/search?q={}",
    "aw": "https://wiki.archlinux.org/?search={}",
    "gh": "https://github.com/search?q={}",
    "gs": "https://scholar.google.com/scholar?q={}",
    "red": "https://www.reddit.com/search/?q={}",
    "yt": "https://www.youtube.com/results?search_query={}",
    "so": "https://stackoverflow.com/search?q={}",
    "npm": "https://www.npmjs.com/search?q={}",
    "cargo": "https://crates.io/search?q={}",
    "aur": "https://aur.archlinux.org/packages?O=0&K={}",
}

# ---- Content settings ----
c.content.cookies.accept = "no-3rdparty"
c.content.autoplay = False
c.content.headers.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Safari/605.1.15"

# ---- Keybindings ----
config.bind("jk", "mode-leave", mode="insert")

# ---- Aliases ----
c.aliases = {
    "w": "session-save",
    "q": "quit",
    "wq": "quit --save",
    "wqa": "quit --save",
}

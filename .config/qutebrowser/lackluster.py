# NOTE: usually not included in colorschemes for qutebrowser
# this one sets the c.hints.border

### COLORS ###
lack = "#708090"
luster = "#DEEEED"
orange = "#FFAA88"
green = "#789978"
blue = "#7788AA"
red = "#D70000"
black = "#000000"
gray1 = "#080808"
gray2 = "#191919"
gray3 = "#2A2A2A"
gray4 = "#444444"
gray5 = "#555555"
gray6 = "#7A7A7A"
gray7 = "#AAAAAA"
gray8 = "#CCCCCC"
gray9 = "#DDDDDD"

### SETTINGS ###

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = gray6

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = gray2

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = gray2

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = gray7

# Background color of the completion widget category headers.
c.colors.completion.category.bg = gray3

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = gray2

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = gray2

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = black

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = gray9

# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = gray9

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = gray9

# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = green

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = green

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = gray9

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = gray2

# Background color of disabled items in the context menu.
c.colors.contextmenu.disabled.bg = gray3

# Foreground color of disabled items in the context menu.
c.colors.contextmenu.disabled.fg = gray5

# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = gray2

# Foreground color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.fg = gray6

# Background color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.bg = gray9

# Foreground color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.fg = black

# Background color for the download bar.
c.colors.downloads.bar.bg = gray2

# Color gradient start for download text.
c.colors.downloads.start.fg = blue

# Color gradient end for download text.
c.colors.downloads.stop.fg = green

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = gray2

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = gray2

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = red

# Background color for downloads with errors.
c.colors.downloads.error.bg = gray2

# Font color for hints.
c.colors.hints.fg = black

# Background color for hints
c.colors.hints.bg = orange

# Font color for the matched part of hints.
c.colors.hints.match.fg = blue

# Border style for hints
c.hints.border = "1px solid #7A7A7A"  # gray6

# Text color for the keyhint widget.
c.colors.keyhint.fg = gray6

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = gray9

# Background color of the keyhint widget.
c.colors.keyhint.bg = gray2

# Foreground color of an error message.
c.colors.messages.error.fg = red

# Background color of an error message.
c.colors.messages.error.bg = gray2

# Border color of an error message.
c.colors.messages.error.border = gray2

# Foreground color of a warning message.
c.colors.messages.warning.fg = orange

# Background color of a warning message.
c.colors.messages.warning.bg = gray2

# Border color of a warning message.
c.colors.messages.warning.border = gray2

# Foreground color of an info message.
c.colors.messages.info.fg = gray9

# Background color of an info message.
c.colors.messages.info.bg = gray2

# Border color of an info message.
c.colors.messages.info.border = gray2

# Foreground color for prompts.
c.colors.prompts.fg = gray6

# Border used around UI elements in prompts.
c.colors.prompts.border = gray2

# Background color for prompts.
c.colors.prompts.bg = gray2

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = gray9

# Foreground color for the selected item in filename prompts.
c.colors.prompts.selected.fg = black

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = gray7

# Background color of the statusbar.
c.colors.statusbar.normal.bg = gray3

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = gray9

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = lack

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = gray9

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = blue

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = gray4

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = black

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = gray7

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = gray3

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = gray7

# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = gray3

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = black

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = orange

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = black

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = gray9

# Background color of the progress bar.
c.colors.statusbar.progress.bg = gray9

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = gray9

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = red

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = gray9

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = blue

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = green

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = orange

# Background color of the tab bar.
c.colors.tabs.bar.bg = gray3

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = green

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = blue

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = red

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = gray7

# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = gray3

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = gray7

# Background color of unselected even tabs.
c.colors.tabs.even.bg = gray3

# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = lack

# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = gray9

# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = lack

# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = gray9

# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = gray9

# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = black

# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = gray9

# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = black

# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = black

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = gray9

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = black

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = gray9

# Background color for webpages if unset (or empty to use the theme's color).
# c.colors.webpage.bg = gray2
c.colors.webpage.bg = ""

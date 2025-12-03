config.load_autoconfig(False)

c.auto_save.session = True

c.statusbar.show = "always"

c.tabs.show = "always"
c.tabs.max_width = 150
c.tabs.min_width = 10

c.downloads.position = "bottom"
c.downloads.remove_finished = 1000

c.fonts.default_family = "CaskaydiaMono NF"
c.fonts.default_size = "12pt"
c.fonts.completion.category = "bold default_size default_family"
c.fonts.completion.entry = "default_size default_family"
c.fonts.contextmenu = "default_size default_family"
c.fonts.debug_console = "default_size default_family"
c.fonts.downloads = "default_size default_family"
c.fonts.hints = "bold default_size default_family"
c.fonts.keyhint = "default_size default_family"
c.fonts.messages.error = "default_size default_family"
c.fonts.messages.info = "default_size default_family"
c.fonts.messages.warning = "default_size default_family"
c.fonts.prompts = "default_size default_family"
c.fonts.statusbar = "default_size default_family"
c.fonts.tabs.selected = "default_size default_family"
c.fonts.tabs.unselected = "default_size default_family"
c.fonts.tooltip = "default_size default_family"

c.fonts.web.family.cursive = "CaskaydiaMono NF"
c.fonts.web.family.fantasy = "CaskaydiaMono NF"
c.fonts.web.family.fixed = "CaskaydiaMono NF"
c.fonts.web.family.sans_serif = "CaskaydiaMono NF"
c.fonts.web.family.serif = "CaskaydiaMono NF"
c.fonts.web.family.standard = "CaskaydiaMono NF"

c.fonts.web.size.default = 18
c.fonts.web.size.default_fixed = 18
c.fonts.web.size.minimum = 8
c.fonts.web.size.minimum_logical = 8

c.colors.webpage.preferred_color_scheme = "dark"

c.completion.timestamp_format = "%H:%M %d-%m-%Y"

c.hints.radius = 0

c.content.autoplay = False
c.content.javascript.clipboard = "access-paste"
c.content.blocking.method = "both"

config.source("theme.py")

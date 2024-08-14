config.load_autoconfig(False)

c.auto_save.session = True

c.statusbar.show = "always"

c.tabs.show = "always"
c.tabs.max_width = 150
c.tabs.min_width = 10

c.downloads.position = "bottom"
c.downloads.remove_finished = 1000

c.fonts.default_family = "JetBrainsMono NF"
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

c.fonts.web.family.cursive = "JetBrainsMono NF"
c.fonts.web.family.fantasy = "JetBrainsMono NF"
c.fonts.web.family.fixed = "JetBrainsMono NF"
c.fonts.web.family.sans_serif = "JetBrainsMono NF"
c.fonts.web.family.serif = "JetBrainsMono NF"
c.fonts.web.family.standard = "JetBrainsMono NF"

c.fonts.web.size.default = 18
c.fonts.web.size.default_fixed = 18
c.fonts.web.size.minimum = 8
c.fonts.web.size.minimum_logical = 8

c.colors.webpage.preferred_color_scheme = "dark"

c.completion.timestamp_format = "%d-%m-%Y %H:%M"

c.hints.radius = 0

c.content.autoplay = False
c.content.javascript.clipboard = "access-paste"
c.content.blocking.method = "both"

config.bind(
    "xx",
    "config-cycle statusbar.show always never;; config-cycle tabs.show always never",
)

config.source("lackluster.py")

## sd-adminrevive

sd-adminrevive is a script that allows your admins to revive themselves and other players with ease.

# Installation
1. Add the following to your server.cfg:
```
ensure sd-adminrevive
add_ace group.admin command.revive allow
```
You may replace "group.admin" with the group you wish to have access to the command.
Make sure the player(s) you want to be able to use the command have been added to then group you have set.
If you need help with aces/principals, please read this [guide](https://forum.cfx.re/t/basic-aces-principals-overview-guide/90917) on the CFX forums.

**Enjoy! If there are bugs/issues, please open an [issue](https://github.com/SiegeDevelopment/sd-adminrevive/issues/new) and provide a reasonable explanation and reproduction steps.**

---

# Notifications
**If you would like nicer notifications, please read the following:**
This resource has an optional dependency on Taso's [t-notify](https://github.com/TasoOneAsia/t-notify/releases).
This is what the notification will look like if you choose this option: ![[t-notify image example](https://siege.file.glass/fr8KInvk2f.png)]
All you need to do for this is change `Config.TNotify` to `true` in config.lua, install t-notify [here](https://github.com/TasoOneAsia/t-notify/releases) and add `ensure t-notify` to your server.cfg above `ensure sd-adminrevive`.
Simple enough!

---

# Licensing
Please read the [license](https://github.com/SiegeDevelopment/sd-adminrevive/blob/main/LICENSE) before you decide to do anything with this code.

# Note
If you would like to change the command name from /revive to something else, change `RegisterCommand('revive'` to `RegisterCommand('yourcommandname'` in server/sv_main.lua:1 **and** change `TriggerEvent('chat:addSuggestion', '/revive'` to `TriggerEvent('chat:addSuggestion', '/yourcommandname'` in client/cl_main.lua:20.

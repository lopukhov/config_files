

mod = "mod4"

keys = [
    Key([mod], "Return", lazy.spawn("kitty")),
    Key([mod], "q", lazy.window.kill()),
]

groups = [ Group("1", layout="max"),
           Group("2", layout="max"),
           Group("3", layout="max"),
           Group("4", layout="max"),
           Group("5", layout="max"),
           Group("6", layout="max"),
           Group("7", layout="max"),
           Group("8", layout="max"),
           Group("9", layout="max"),
         ]

def moves(current = 0):
    def left():
        if current > 1:
            current -= 1
        return current
    def jump(next):
        next = int(next)
        if next > 0 or next < 10:
            current = next
        return current
    def right():
        if current < 9:
            current += 1
        return current
    return (left, jump, right)

def group_keybinds(mod):
    (left, jump, right) = moves()
    keys = []
    for i in groups:
        keys.extend([
            # Jump to group
            Key([mod], i.name, lazy.group[jump(i.name)].toscreen()),
            Key([mod], "h", lazy.group[left(i.name)].toscreen()),
            Key([mod], "l", lazy.group[right(i.name)].toscreen()),

            # Move with focused window to group
            Key([mod, "shift"], i.name, lazy.window.togroup(jump(i.name))),
        ])
    return keys

keys.extend(group_keybinds(mod))

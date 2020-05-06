__auto_expand_alias_insert_char() {
  local left=${READLINE_LINE:0:${READLINE_POINT}}
  local right=${READLINE_LINE:${READLINE_POINT}}
  local space="$1"
  READLINE_LINE="$left$space$right"
  READLINE_POINT=$(($READLINE_POINT + ${#space}))
}

bind '"\C-\xFF": alias-expand-line'
bind '"\C-\xFE": accept-line'
bind -x '"\C-\xFD": __auto_expand_alias_insert_char " "'

# bind space
bind '"\C- ": "\C-\xFD"'
bind '" ": "\C-\xFF\C-\xFD"'

# bind enter
bind '"\C-x\C-m": accept-line'
bind '"\C-x\C-j": accept-line'
bind '"\C-m": "\C-\xFF\C-\xFE"'
bind '"\C-j": "\C-\xFF\C-\xFE"'

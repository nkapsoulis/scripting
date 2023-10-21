#!/bin/bash

# Delete bash history (2 ways)

history -c            # No.1
rm -f ~/.bash_history # No.2

# Delete command from bash history

history -d <line_number>

# Prevent record command in history (i.e. start with space)

 <command>
# e.g.
 ls

# Prevent record command in history for remote server

# e.g.
alias connectRemote='ssh -i user.pem user@IP' 
connectRemote echo 123

# Timestamps in `history` command

HISTTIMEFORMAT="%F %T "
# Make it permanent:
echo 'HISTTIMEFORMAT="%F %T "' >> ~/.bashrc

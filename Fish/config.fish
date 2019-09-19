##
## Locate program-specific data
##
# Tell Python where to find Python modules
set -gx PYTHONPATH /usr/local/lib/python3.6/dist-packages
#
# Tell Go where to find code and binaries
set -gx GOPATH $HOME/shared_data/Software_Projects/Programming_Workspace



##
## Programs accessible from the shell
##  (found in a directory in the PATH)
##
# Append only once to the PATH for all child processess:
#  (and don't change it for other processess)
set --local additions_to_path \
    # User-specific programs
    $HOME/.local/bin \
    \
    # Locally built programs
    /usr/local/bin /usr/local/sbin /usr/local/games \
    \
    # Locally-built Go programs
    $GOPATH/bin \
    \
    # Locally-built rust programs
    #$HOME/.cargo/bin \
    #\
    # Global programs
    /usr/sbin /usr/bin /sbin /bin /usr/games /snap/bin
#
for addition in $additions_to_path
    if not contains $addition $PATH
        set -gx PATH $addition $PATH
    end
end



##
## Startup programs
##
# Start kakoune daemon for faster file loads and shared registers
set --local running_servers (kak -l)
if contains "default (dead)" $running_servers
    echo "Restarting dead Kakoune server 'default'"
    rm /tmp/kakoune/$USER/default
    command kak -d -s default 2>/dev/null
else
    for server in $running_servers
        if string match --quiet "default" $server
            set found
            break
        end
    end
    if not set -q found
        echo "Starting Kakoune server 'default'"
        command kak -d -s default 2>/dev/null
    end
end
#
# Start ssh daemon
#  (SSH_AGENT_PID will still probably be set (universal) from a previous session)
if not ps -p $SSH_AGENT_PID >/dev/null
    echo -n "Starting ssh agent " # Line continues with the PID
    eval (string replace --all "setenv" "set -U" (ssh-agent -c)) >/dev/null
    echo "(PID $SSH_AGENT_PID)"
end



##
## Customized shell behavior
##
# Set hostname for fish prompt prefix
if not set -q prompt_hostname
    set -gx prompt_hostname Ubuntu
end
#
# Remove fish greeting
set fish_greeting



##
## Preferred tools
##
# Preferred editor
if not set -q EDITOR
    set -gx EDITOR kak
end




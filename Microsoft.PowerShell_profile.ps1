# Starship
#$ENV:STARSHIP_CONFIG = "C:\Users\Admin\Documents\PowerShell\Starshipconfig\starship.toml"
#Invoke-Expression (&starship init powershell)

# Oh-My-Posh

oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'C:\Users\Admin\AppData\Local\Programs\oh-my-posh\themes\1_shell.omp.json' | Invoke-Expression

####### Alias ##########

# Git Shortcuts
Set-Alias np notepad

function gi { git init }

Set-Alias g git

function gs { git status }

function ga { git add . }

function gc { param($m) git commit -m "$m" }

function gp { git push }

function gcl { git clone "$args" }

function gcom {
    git add .
    git commit -m "this is auto add-commit-push from ryuu43. Why? welp cuz i lazy :P"
}
function lazyg {
    git add .
    git commit -m "this is auto add-commit-push from ryuu43. Why? welp cuz i lazy :P"
    git push
}
Set-Alias ll ls
Set-Alias ff fastfetch

################ Plugins


# Terminal Icons
Import-Module Terminal-Icons


# Directory Jumper "z"
Import-Module z


# History Reader
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyhandler -Chord 'Ctrl+d' -Function DeleteChar


# Fuzzy finder
Import-Module PsFzf
Set-PsFzfOption -PsReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Check for Profile Updates
function rpf { . $PROFILE }
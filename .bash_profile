# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#~Alias List~#
alias python='python27'

#H namespace alias
alias hrld='source ~/.bash_profile' # reload bash_profile
alias hos='lsb_release -a'          # find os version
alias ta='tmux attach -t hg3'
alias tn='tmux new -s hg3'
alias gg='git log --graph --full-history --all --pretty=format:"%h%x09%d%x20%s"'
##Alias List End##

##Functions##
### h namespace functions ###

#curl with json result
function hcurlj { 
    if [ $# -eq 0 ] 
        then
            echo "input must not be null"
        else 
            curl $1 | python -m json.tool
    fi
}

# use a '+' for spaces in your args
function hje {
    if [ $# -eq 0 ] 
        then
            echo "input must not be null"
        else 
            D="http://localhost:8080/"
            url="$D$1.json"
            argC=0
            for var in "$@"
                do
                    if [[ $var != $1 ]]
                        then
                            if [[ $var == *"~"* ]]
                                then
                                  if [[ $argC == 0 ]]
                                      then
                                          argC=$((argC + 1))
                                      else 
                                          url="$url&"
                                  fi
                                  key=${var:1}
                                  url="$url$key="
                            fi

                            if [[ $var == *"@"* ]]
                                then
                                  value=${var:1}
                                  url="$url$value"
                            fi
                        else
                            url="$url?"
                    fi
                done
             hcurlj $url
    fi
}

## Test Function ##
function test {
    argC=0
    for var in "$@"
        do
            argC=$((argC + 1))
            if [[ $var != $1 ]]
                then
                    echo "$var"
                    if [[ $var == *"~"* ]]
                        then
                          key=${var:1}
                          echo "$key is a key!"
                    fi
                    if [[ $var == *"@"* ]]
                        then
                          value=${var:1}
                          echo "$value is a value!"
                    fi
          fi
          echo "$argC"
    done
}
## End Test Function ##

#~Functions End~#

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export GOPATH=$HOME/go_projects
export PATH=$PATH:$HOME/go_appengine/
export PATH=$PATH:/usr/System/Tools

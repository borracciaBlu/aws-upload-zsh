#compdef aws-upload

function __aws-upload() {
    local curcontext="$curcontext" state line
    typeset -A opt_args
	 
    _arguments \
           '1: :->project'\
           '2: :->env'
    _projects=(${$(aws-upload -q -p)}) 
    
    case $state in
         project)
             # echo "sono in proj"
             compadd "$@" $_projects
         ;;
         env)
             # echo "1w1 :: $words[1] w2:: $words[2] \n"
             if [[ $words[2] == "-e" ]] 
             then
                 compadd "$@" $_projects
             fi

             if [[ $words[2] != "-p" && $words[2] != "-e" ]]
             then
                 if [[ $words[2] = *[!\ ]* ]]
                 then
                     # just for debugging
                     # echo "w1 :: $words[1] w2:: $words[2] \n"
                     _envs=(${$(aws-upload -q -e $words[2]):t})
                     compadd "$@" $_envs
                 fi
             fi
         ;;
    esac
}

compdef __aws-upload aws-upload

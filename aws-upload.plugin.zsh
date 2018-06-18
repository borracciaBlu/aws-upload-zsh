#compdef aws-upload

function __aws-upload() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments \
           '1: :->project'\
           '2: :->env'
    _projects=(${$(aws-upload -q -p)})
    _keys=(${$(aws-upload -q -k):t})
    _key_commands=("edit copy diff export check delete")

    case $state in
         project)
             #echo "sono in proj"
             #compadd "$@" $_commands
             compadd "$@" $_projects
             _values "aws-upload command:" \
                 "check[check a setting file]" \
                 "edit[edit a setting file]" \
                 "diff[get different file to sync]" \
                 "copy[copy a setting file]" \
                 "import[import a setting file]" \
                 "export[export a setting file]" \
                 "delete[delete a setting file]" \
                 "new[create a new  setting file]"
         ;;
         env)
             # echo "1w1 :: $words[1] w2:: $words[2] \n"
             if [[ $words[2] == "-e" ]]
             then
                 compadd "$@" $_projects
             fi

             if [[ ${_key_commands[@]} =~ $words[2] ]]
             then
                 compadd "$@" $_keys
             fi

             if [[ $words[2] != "-p" && $words[2] != "-e" && $word[2] != "edit" && $word[2] != "check" && $word[2] != "copy" && $word[2] != "diff" ]]
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

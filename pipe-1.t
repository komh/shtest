# Test if read command works well when a file is redirected to stdin

transform_todo_ids () {
    while read -r command rest
    do
        case "$command" in
        "$comment_char"* | exec)
            # Be careful for oddball commands like 'exec'
            # that do not have a SHA-1 at the beginning of $rest.
            ;;
        *)
            sha1=$(git rev-parse --verify --quiet "$@" ${rest%%[     ]*}) &&
            rest="$sha1 ${rest#*[    ]}"
            ;;
        esac
        printf '%s\n' "$command${rest:+ }$rest"
    done <"$me.in" >"$me.got"
}

me="$0"
transform_todo_ids
diff "$me.wanted" "$me.got"

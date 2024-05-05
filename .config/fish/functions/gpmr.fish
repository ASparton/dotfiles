function gpmr    
    argparse 't/target=' 'title=' 'd/description=' 'r/remove' 'a/assignee=' -- $argv

    # Build push options
    set push_options "-o merge_request.create"
    if set -q _flag_target
        set push_options (echo "$push_options -o merge_request.target=$_flag_target")
    end
    
    if set -q _flag_title
        set push_options (echo "$push_options -o merge_request.title=\"$_flag_title\"")
    end

    if set -q _flag_description
        set push_options (echo "$push_options -o merge_request.description=\"$_flag_description\"")
    end
    
    if set -q _flag_assignee
        set push_options (echo "$push_options -o merge_request.assignee=$_flag_assignee")
    end

    if set -q _flag_remove
        set push_options (echo "$push_options -o merge_request.remove_source_branch")
    end

    git push $push_options $argv
    return 0
end
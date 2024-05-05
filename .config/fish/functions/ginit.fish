function ginit
    if not set -q argv[1]
        echo "Please, provide the url of the remote repository you want to use."
        return 1
    end

    git init && git remote add origin $argv[1]
    return 0
end

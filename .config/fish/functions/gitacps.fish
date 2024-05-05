function gitacps
    if not set -q argv[1]
        echo "Please, provide a commit message"
        return 1
    end

    git add . && git commit -m "$argv[1]" && git push --set-upstream origin main
    return 0
end

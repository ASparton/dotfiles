function gitconf
    if not set -q argv[1]
        echo "Please, enter your email."
        return 1
    end

    git config user.email "$argv[1]" && git config user.name "Alexandre Sparton"
    return 0
end

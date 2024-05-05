function gitacp
	if not set -q argv[1]
		echo "Please, provide a commit message"
		return 1
	end
	
	git add . && git commit -m "$argv[1]"
	if set -q argv[2]
		git push origin $argv[2]
	else
		git push
	end
	return 0
end

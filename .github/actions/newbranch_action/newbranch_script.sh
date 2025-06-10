echo "****************"
echo "hello from my composite script. you have just created a new branch"
        echo "this is your input:"
        echo "\t${{inputs.brancher_name}}"
        echo "\t${{inputs.branch_name}}"
        echo ""
        name="${{inputs.brancher_name}}"
        branch="${{inputs.branch_name}}"
        message="${name}, you have created the ${branch}!"
        echo "\t message to be accessed by output in workflow${message}"

        echo "output-from-script=${message}" >> $GITHUB_OUTPUT
        echo "****************"
function which --description "Print location of command or source of fish function"
    set --local com_loc (command which $argv)

    if set --local func_lines (functions $argv)
        echo "Fish function defined:"
        for line in $func_lines
            echo $line
        end

        # Separate function definition from command location
        if set -q com_loc
            echo ""
        end
    end

    if set -q com_loc
        echo "Original command location:"
        echo $com_loc
    end
end

function docker-rmi --description "Remove image based on the period"

    set arg (echo $argv | grep -oE "(week|month|year)")
    if [ (count $arg) -ne 1  ]
        echo "Usage: docker-rmi period"
        echo "Arguments:"
        echo \t"period"\t"(week|month|year)"
        return 1
    end

    set total (docker images -a |grep $argv[1] |wc -l)

    if [ $total -eq 0 ]
        echo "There is no image for this period."
        return 1
    else
        docker images -a |grep $argv[1] |awk '{print $3}' |xargs docker rmi -f
        return 0
    end
end

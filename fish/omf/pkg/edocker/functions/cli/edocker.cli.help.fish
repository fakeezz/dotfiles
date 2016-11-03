function edocker.cli.help -a command

    switch "$command"

        case "n" "new"
            echo "\

Create new container

"(omf::dim)"Usage:"(omf::off)"
 edocker new "(omf::em)"<backend> <container>"(omf::off)"

"(omf::dim)"Examples:"(omf::off)"
 edocker new mysql mycontainer
 edocker new postgree mycontainer
"

        case "i" "inspect"
            echo "\

Return low-level information on a container

"(omf::dim)"Usage:"(omf::off)"
 edocker inspect "(omf::em)"<container> [--format]"(omf::off)"

"(omf::dim)"Examples:"(omf::off)"
 edocker inspect mycontainer
 edocker inspect mycontainer --format \"{{ .NetworkSettings.IpAddress }}\"
"

        case "r" "remove"
            echo "\

Remove one or more containers

"(omf::dim)"Usage:"(omf::off)"
 edocker remove "(omf::em)"<container> [--force]"(omf::off)"

"(omf::dim)"Examples:"(omf::off)"
 edocker remove mycontainer
 edocker remove mycontainer --force
"

        case "l" "logs"
            echo "\

Fetch the logs of a container

"(omf::dim)"Usage:"(omf::off)"
 edocker logs "(omf::em)"<container>"(omf::off)"

"(omf::dim)"Examples:"(omf::off)"
 edocker logs mycontainer
"

        case "start"
            echo "\

Start container by name.

"(omf::dim)"Usage:"(omf::off)"
 edocker start "(omf::em)"<container>"(omf::off)" Start container.

"(omf::dim)"Examples:"(omf::off)"
 edocker start mycontainer
"

        case "stop"
            echo "\

Stop containers by name.

"(omf::dim)"Usage:"(omf::off)"
 edocker stop "(omf::em)"<container>"(omf::off)" Stop containers.

"(omf::dim)"Examples:"(omf::off)"
 edocker stop mycontainer
"

        case "clean"
            echo "\

Clean containers not used

"(omf::dim)"Usage:"(omf::off)"
 edocker clean "(omf::em)"(minute | hour | day | week | month | year) [--force]"(omf::off)" Clean containers based on time.

"(omf::dim)"Examples:"(omf::off)"
 edocker clean week
 edocker clean month --force
"
        case "shutdown"
            echo "\

Stop all running containers.

"(omf::dim)"Usage:"(omf::off)"
 edocker shutdown

"(omf::dim)"Examples:"(omf::off)"
 edocker shutdown
"

        case "show"
            echo "\

Show containers.

"(omf::dim)"Usage:"(omf::off)"
 edocker show

"(omf::dim)"Examples:"(omf::off)"
 edocker show
"

        case "*"
            echo "\
\$ edocker [command] [arguments]

"(omf::dim)"Usage:"(omf::off)"
 edocker "(omf::em)"new"(omf::off)"      <backend> <container>
 edocker "(omf::em)"inspect"(omf::off)"  <container> [--format]
 edocker "(omf::em)"remove"(omf::off)"   <container> [--force]
 edocker "(omf::em)"logs"(omf::off)"     <container>
 edocker "(omf::em)"start"(omf::off)"    <container>
 edocker "(omf::em)"stop"(omf::off)"     (running | all)
 edocker "(omf::em)"clean"(omf::off)"    (minute | hour | day | week | month | year) [--force]
 edocker "(omf::em)"shutdown"(omf::off)"
 edocker "(omf::em)"show"(omf::off)"

 "(omf::dim)"Commands:"(omf::off)"
 "(omf::em)"n"(omf::off)"ew       Create new container based on specific backend.
 "(omf::em)"i"(omf::off)"nspect   Return low-level information on a container.
 "(omf::em)"r"(omf::off)"emove    Remove one or more containers.
 "(omf::em)"l"(omf::off)"ogs      Fetch the logs of a container.
 "(omf::em)"start"(omf::off)"     Start container by name.
 "(omf::em)"stop"(omf::off)"      Stop containers by name.
 "(omf::em)"clean"(omf::off)"     Clean containers not used.
 "(omf::em)"shutdown"(omf::off)"  Stop all running containers.
 "(omf::em)"show"(omf::off)"      Shows containers.
 "(omf::em)"help"(omf::off)"      Shows help about a specific action.

"(omf::dim)"Options:"(omf::off)"
"(omf::em)"--h"(omf::off)"elp     Display this help.

"
    end

end

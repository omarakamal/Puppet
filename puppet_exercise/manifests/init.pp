# Class: puppet_exercise
#
#
class puppet_exercise {
    include puppet_exercise::packages
    include puppet_exercise::directory
    include puppet_exercise::mount
    include puppet_exercise::rpm
    include puppet_exercise::nfs
    include puppet_exercise::groups
    include puppet_exercise::timezone
    include puppet_exercise::sudoers
}
let g:ros_build_system = 'catkin-tools'

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.roslaunch = ['="', '$(', '/']
let g:ycm_semantic_triggers.rosmsg = ['re!^', '/']
let g:ycm_semantic_triggers.rossrv = ['re!^', '/']
let g:ycm_semantic_triggers.rosaction = ['re!^', '/']

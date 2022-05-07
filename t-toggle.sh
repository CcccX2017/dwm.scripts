#!/bin/bash
# killall 
# if [ $? != 0 ]; then
#     trayer --transparent true --expand false --align right --width 20 --SetDockType false --tint 0x88888888
# fi
result=$(ps ax|grep -v grep|grep trayer)
if [ "$result" == "" ]; then
    eval "trayer --transparent true --expand false --align right --width 20 --SetDockType false --tint 0x88888888 &"
else
    eval "killall trayer"
fi

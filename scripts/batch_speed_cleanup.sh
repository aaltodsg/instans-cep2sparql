# Speed testing of Event Processing Agents (EPA)
# Using explicit input cleanup-rule, where applicable (EPA1-7)

# By mikko.rinne@aalto.fi 4.7.2016

./EPArun_speed_cleanup.sh EPA1 1event
./EPArun_speed_cleanup.sh EPA1 100events
./EPArun_speed_cleanup.sh EPA1 1000events
./EPArun_speed_cleanup.sh EPA1 10000events

./EPArun_speed_cleanup.sh EPA2 1event
./EPArun_speed_cleanup.sh EPA2 100events
./EPArun_speed_cleanup.sh EPA2 1000events
./EPArun_speed_cleanup.sh EPA2 10000events

./EPArun_speed_cleanup.sh EPA3_local 1event
./EPArun_speed_cleanup.sh EPA3_local 100events
./EPArun_speed_cleanup.sh EPA3_local 1000events
./EPArun_speed_cleanup.sh EPA3_local 10000events

./EPArun_speed_cleanup.sh EPA4 EPA3_1event
./EPArun_speed_cleanup.sh EPA4 EPA3_100events
./EPArun_speed_cleanup.sh EPA4 EPA3_1000events
./EPArun_speed_cleanup.sh EPA4 EPA3_10000events

./EPArun_speed_cleanup.sh EPA5 1event
./EPArun_speed_cleanup.sh EPA5 100events
./EPArun_speed_cleanup.sh EPA5 1000events
./EPArun_speed_cleanup.sh EPA5 10000events

./EPArun_speed_cleanup.sh EPA6 1event
./EPArun_speed_cleanup.sh EPA6 100events
./EPArun_speed_cleanup.sh EPA6 1000events
./EPArun_speed_cleanup.sh EPA6 10000events

./EPA7run_speed.sh EPA5_1event
./EPA7run_speed.sh EPA5_100events
./EPA7run_speed.sh EPA5_1000events
./EPA7run_speed.sh EPA5_10000events

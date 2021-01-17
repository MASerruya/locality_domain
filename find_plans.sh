#/bin/bash

if [ ! -d "./results" ]
   then
	mkdir ./results
   fi

for problem in 01 02 03 04 05 06 07 08 09 10
   do
	if [ ! -d "./results/p$problem" ]
	   then
		mkdir ./results/p$problem
	   fi

	for search_alg in 7 9
	   do
		for heuristic in 0 1 2
		   do
			file=$(echo "./results/p$problem/search_alg_"$search_alg"_heuristic_$heuristic")

			echo "IN EXECUTION: ../seq-sat-cbp/cbp-roller -o domain.pddl -f p$problem.pddl -O -h 1 -g 1 -H $heuristic -S $search_alg -n"

			echo -e "../seq-sat-cbp/cbp-roller -o domain.pddl -f p$problem.pddl -O -h 1 -g 1 -H $heuristic -S $search_alg -n\n\n" > $file
			../seq-sat-cbp/cbp-roller -o domain.pddl -f p$problem.pddl -O -h 1 -g 1 -H $heuristic -S $search_alg -n > $file &

			sleep 300

			pid=$(ps -e | grep cbp-roller | awk '{print $1}')

			kill $pid
		   done
	   done
   done

execute_process(COMMAND ${ELMERGRID_BIN} 2 2 cubes -partdual -metis ${MPIEXEC_NTASKS} 3 -connect 58 59 -nooverwrite)
RUN_ELMER_TEST()

INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/../test_macros.cmake)

CONFIGURE_FILE(Adjoint_Mu.sif Adjoint_Mu.sif COPYONLY)

ADD_ELMERICETEST_MODULE(InvMeth_AdjMu GradientValidation ./PROG/GradientValidation.f90)
ADD_ELMERICETEST_MODULE(InvMeth_AdjMu USF_Init ./PROG/USF_Init.f90)

FILE(COPY ELMERSOLVER_STARTINFO mesh2D.grd PROG DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")

ADD_ELMERICE_TEST(InvMeth_AdjMu)
ADD_ELMERICE_LABEL(InvMeth_AdjMu elmerice-long)

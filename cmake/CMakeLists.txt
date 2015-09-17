##################################################
####project
cmake_minimum_required(VERSION 2.8)
project(cmakeqt)
set(BINNAME obj)
##################################################
##################################################
####config.h.in
configure_file(
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${PROJECT_SOURCE_DIR}/config.h"
  )
option(HAVE_UI "Have .ui File" OFF)
option(HAVE_QRC "HAVE .qrc File" OFF)
##################################################
##################################################
####configure qt4
find_package(Qt4 REQUIRED)
include(${QT_USE_FILE})
add_definitions(${QT_DEFINITIONS})
##------------------------------------------------
####moc\uic\qrc
set(SC_MOC mainwindow.h)
qt4_wrap_cpp(OBJ_MOC ${SC_MOC})

if ( HAVE_UI )
  set(SC_UI mainwindow.ui)
  qt4_wrap_ui(OBJ_UI ${SC_UI})
endif ( HAVE_UI )


if ( HAVE_QRC )
  set(SC_QRC mainwindow.qrc)
  qt4_add_resources(OBJ_RCC ${SC_QRC})
endif ( HAVE_QRC )

#set(SC_UI mainwindow.ui)
#set(SC_QRC mainwindow.qrc)
#qt4_wrap_cpp(OBJ_MOC ${SC_MOC})
#qt4_wrap_ui(OBJ_UI ${SC_UI})
#qt4_add_resources(OBJ_RCC ${SC_QRC})
##################################################
##################################################
####opencv
set(OpenCV_DIR /home/install/opencv2.4.12.1)
find_package(OpenCV REQUIRED)
##################################################
####set the include directories
include_directories(${CMAKE_CURRENT_BINARY_DIR}
  ${OpenCV_INCLUDE_DIRS})
##################################################
####cxx files
set(SC_CXX main.cpp mainwindow.cpp )
##################################################
####bin
#add_executable(${BINNAME} ${SC_CXX} ${OBJ_MOC} )
add_executable(
    ${BINNAME}
    ${SC_CXX}
    ${OBJ_MOC}
#    ${OBJ_UI}
#    ${OBJ_QRC}
    )
target_link_libraries(${BINNAME} ${QT_LIBRARIES} ${OpenCV_LIBS})

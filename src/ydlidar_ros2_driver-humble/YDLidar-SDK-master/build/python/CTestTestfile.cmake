# CMake generated Testfile for 
# Source directory: /home/olee/olee_ros2_ws/src/ydlidar_ros2_driver-humble/YDLidar-SDK-master/python
# Build directory: /home/olee/olee_ros2_ws/src/ydlidar_ros2_driver-humble/YDLidar-SDK-master/build/python
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ydlidar_py_test "/usr/bin/python3.10" "/home/olee/olee_ros2_ws/src/ydlidar_ros2_driver-humble/YDLidar-SDK-master/python/test/pytest.py")
set_tests_properties(ydlidar_py_test PROPERTIES  ENVIRONMENT "PYTHONPATH=/opt/ros/humble/lib/python3.10/site-packages:/opt/ros/humble/local/lib/python3.10/dist-packages:/home/olee/olee_ros2_ws/src/ydlidar_ros2_driver-humble/YDLidar-SDK-master/build/python" _BACKTRACE_TRIPLES "/home/olee/olee_ros2_ws/src/ydlidar_ros2_driver-humble/YDLidar-SDK-master/python/CMakeLists.txt;42;add_test;/home/olee/olee_ros2_ws/src/ydlidar_ros2_driver-humble/YDLidar-SDK-master/python/CMakeLists.txt;0;")
subdirs("examples")

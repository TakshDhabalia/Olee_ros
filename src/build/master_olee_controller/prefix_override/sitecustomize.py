import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/olee/olee_ros2_ws/src/install/master_olee_controller'

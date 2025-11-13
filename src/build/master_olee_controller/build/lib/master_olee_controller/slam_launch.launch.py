from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([

        # Static TF: base_link -> laser_frame
        Node(
            package='tf2_ros',
            executable='static_transform_publisher',
            name='laser_tf_pub',
            arguments=['0', '0', '0', '0', '0', '0', 'base_link', 'laser_frame']
        ),

        # Static TF: odom -> base_link (dummy, no odometry)
        Node(
            package='tf2_ros',
            executable='static_transform_publisher',
            name='odom_tf_pub',
            arguments=['0', '0', '0', '0', '0', '0', 'odom', 'base_link']
        ),

        # SLAM Toolbox
        Node(
            package='slam_toolbox',
            executable='async_slam_toolbox_node',
            name='slam_toolbox',
            output='screen',
            parameters=[{
                'use_sim_time': False,
                'slam_params_file': '/home/olee/olee_ws/src/FOSS_Olee/config/slam_params.yaml',
                'scan_topic': '/scan',
                'map_frame': 'map',
                'odom_frame': 'odom',
                'base_frame': 'base_link'
            }],
        ),
    ])


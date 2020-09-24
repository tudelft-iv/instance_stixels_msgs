# Array of stixels.
Header header

int32 columns                             # horizontal number of stixels
int32 stixel_width                        # width of stixel
int32 image_height                        # rows in ROI
# int32 image_width = columns*stixel_width

int32 semantic_classes # = 19 cityscapes
int32 max_disparity

sensor_msgs/RegionOfInterest valid_region # valid stixel region (due to crop)

InstanceStixel[] stixels

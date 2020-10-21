# Message type for a single stixel.
# This message should not be used standalone, but e.g. in a StixelsArray.

uint8 GROUND=0
uint8 OBJECT=1
uint8 SKY=2

int32 column            # left u coordinate of stixel
int8 type               # 0 = Ground, 1 = Object, 2 = Sky
int32 vB                # top row of stixel in image
int32 vT                # bottom row of stixel in image
float32 disparity       # (mean) disparity of stixel
int8 semantic_class     # one of 19 semantic classes

float32 instance_mean_u # estimated mean u position of instance
float32 instance_mean_v # estimated mean v position of instance

int32 instance_id       # id per object instance within a class or -1

float32[] vertices      # either 3D positions of 4 corners or empty
# Vertex order: clockwise, i.e. top left, top right, bottom right, bottom left
# -> 3 x 4 = 12 elements

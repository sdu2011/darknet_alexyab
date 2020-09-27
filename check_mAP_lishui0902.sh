./darknet detector map data/lishui_0902/trafficlights2.data cfg/yolov3-giou-lishui0902.cfg data/lishui_0902/trained_weights/yolov3-giou-lishui0902_last.weights -iou_thresh 0.75

./darknet detector map data/lishui_0908/trafficlights2.data cfg/lishui_0908/yolov3-giou.cfg data/lishui_0908/trained_weights/yolov3-giou_last.weights -iou_thresh 0.75

./darknet detector map data/lishui_0914/trafficlights2.data cfg/lishui_0914/yolov3-giou.cfg data/lishui_0914/trained_weights/yolov3-giou_last.weights -iou_thresh 0.75

./darknet detector map data/lishui_0927/trafficlights2.data cfg/lishui_0927/yolov3-giou.cfg data/lishui_0927/trained_weights/yolov3-giou_last.weights -iou_thresh 0.75
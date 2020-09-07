# ./darknet detector train data/lishui_0902/trafficlights2.data cfg/yolov3-giou-lishui0902.cfg darknet53.conv.74 -mAP -gpus 2,3 -dont_show

#在多个gpu上训练
# Train it first on 1 GPU for like 1000 iterations: darknet.exe detector train cfg/coco.data cfg/yolov4.cfg yolov4.conv.137
# Then stop and by using partially-trained model /backup/yolov4_1000.weights run training with multigpu (up to 4 GPUs): darknet.exe detector train cfg/coco.data cfg/yolov4.cfg /backup/yolov4_1000.weights -gpus 0,1,2,3
# If you get a Nan, then for some datasets better to decrease learning rate, for 4 GPUs set learning_rate = 0,00065 (i.e. learning_rate = 0.00261 / GPUs). In this case also increase 4x times burn_in = in your cfg-file. I.e. use burn_in = 4000 instead of 1000.


./darknet detector train data/lishui_0902/trafficlights2.data cfg/yolov3-giou-lishui0902.cfg data/lishui_0902/trained_weights/yolov3-giou-lishui0902_last.weights -mAP -gpus 2,3 -dont_show

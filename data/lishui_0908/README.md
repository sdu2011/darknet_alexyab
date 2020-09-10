#　用原始的yolov3的配置

```
 calculation mAP (mean average precision)...
516
 detections_count = 2870, unique_truth_count = 1143  
class_id = 0, name = red, ap = 93.73%   	 (TP = 664, FP = 42) 
class_id = 1, name = green, ap = 90.16%   	 (TP = 401, FP = 42) 

 for conf_thresh = 0.25, precision = 0.93, recall = 0.93, F1-score = 0.93 
 for conf_thresh = 0.25, TP = 1065, FP = 84, FN = 78, average IoU = 82.26 % 

 IoU threshold = 75 %, used Area-Under-Curve for each unique Recall 
 mean average precision (mAP@0.75) = 0.919441, or 91.94 % 
Total Detection Time: 40.000000 Seconds

```

比0902的cfg训练出来的效果差一点.
```
做了更多的数据增强后,mean average precision (mAP@0.75) = 0.966638, or 96.66 % 
```
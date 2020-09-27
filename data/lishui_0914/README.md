#　改进版本的yolo
1. upsample层:小目标调整上采样倍数,增大feature map尺寸
2. route层:小目标,连接更加底层的feature map,去取得更底层的细节信息.
3. 去掉第一个yolo层和第二个yolo层.

```
8000: 0.057951, 0.047304 avg loss, 0.000010 rate, 3.527910 seconds, 1024000 images
```

```
 calculation mAP (mean average precision)...
516
 detections_count = 2599, unique_truth_count = 1143  
class_id = 0, name = red, ap = 96.99%   	 (TP = 687, FP = 15) 
class_id = 1, name = green, ap = 96.37%   	 (TP = 429, FP = 12) 

 for conf_thresh = 0.25, precision = 0.98, recall = 0.98, F1-score = 0.98 
 for conf_thresh = 0.25, TP = 1116, FP = 27, FN = 27, average IoU = 86.87 % 

 IoU threshold = 75 %, used Area-Under-Curve for each unique Recall 
 mean average precision (mAP@0.75) = 0.966769, or 96.68 % 
Total Detection Time: 11.000000 Seconds

```

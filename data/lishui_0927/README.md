#　改进版本的yolo
1. upsample层:小目标调整上采样倍数,增大feature map尺寸
2. route层:小目标,连接更加底层的feature map,去取得更底层的细节信息.
3. 增加spp层
4. 去掉第一个yolo层和第二个yolo层.

```
8000: 0.049269, 0.052790 avg loss, 0.000010 rate, 4.365175 seconds, 1024000 images
```

```
 calculation mAP (mean average precision)...
516
 detections_count = 2567, unique_truth_count = 1143  
class_id = 0, name = red, ap = 96.01%   	 (TP = 683, FP = 19) 
class_id = 1, name = green, ap = 96.80%   	 (TP = 430, FP = 11) 

 for conf_thresh = 0.25, precision = 0.97, recall = 0.97, F1-score = 0.97 
 for conf_thresh = 0.25, TP = 1113, FP = 30, FN = 30, average IoU = 86.50 % 

 IoU threshold = 75 %, used Area-Under-Curve for each unique Recall 
 mean average precision (mAP@0.75) = 0.964046, or 96.40 % 
Total Detection Time: 11.000000 Seconds

Set -points flag:
 `-points 101` for MS COCO 
 `-points 11` for PascalVOC 2007 (uncomment `difficult` in voc.data) 
 `-points 0` (AUC) for ImageNet, PascalVOC 2010-2012, your custom dataset

```

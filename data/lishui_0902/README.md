#　调参心得
1. upsample层:小目标调整上采样倍数,增大feature map尺寸
2. route层:小目标,连接更加底层的feature map,去取得更底层的细节信息.

修改前:mAP@0.75 = 0.7355

修改后:mAP@0.75 = 0.903969


从训练的输出可以看出,对小目标而言,只有region106有用.即第三个yolo层.


做了更多的数据增强后,mean average precision (mAP@0.75) = 0.966638, or 96.66 % 
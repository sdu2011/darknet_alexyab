#coding=utf-8
# 生成训练yolo所需的配置文件

import os

def gen_cfg(dir,file_path):
    files=os.listdir(dir)
    f = open(file_path,'w')
    for file in files:
        suffix = '.png'
        if file.endswith(suffix):
            #/home/train/disk/data/LISA_BDD_APOLLO//a901dfcb-78a02ed5.jpg
            origin_img_name = "{}/{}".format(dir,file)
            origin_label = origin_img_name.replace(suffix,".txt")
            
            if not os.path.isfile(origin_label):
                continue
            
            f.writelines('{}\n'.format(origin_img_name))
    f.close()


data_dir="/home/train/disk/sc/data/lishui_augment_20200902"
file_path='/home/train/disk/sc/darknet_alexyab/data/lishui_0902/train.txt'
gen_cfg(data_dir,file_path)

        
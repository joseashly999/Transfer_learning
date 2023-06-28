# Transfer learning In pre trained models
The study in this project is to use convolutional neural network architecture and computer vision 
techniques to estimate the calories from popular food items in the United Kingdom.In this project, I study the use of a prominent 
deep learning model, Inceptionv3, to perform semantic segmentation of popular food images in the UK. The fully connected layers of the models were replaced with layers suitable for pixel wise segmentation. The networks are trained and validated several times and results are recorded. Additionally, the network architecture of Inceptionv3 network was studied as part of this project for a better understanding of CNNs. The datasets are pre processed and labelled 
using MATLAB apps and functions. The entire experiments were carried with a single CPU (11th Gen Intel(R) Core (TM) i5-1135G7) and 8 GB RAM memory. The device specifications were found to significantly affect the training procedures and the results obtained. 

# Custom Created Dataset
the dataset created contains popular british food items obtained from the publically available websites and captured on an android phone. the data set is included in this repository by the name preprocessed_data. A small snip of the folder is shown below.
![dataset](https://github.com/joseashly999/Transfer_learning/blob/main/data1.png)


# Labelling the Data set
Since the pre trained model used in this experiment required input image dimension of 299 x299 x3, The entire set of images were preprocessed and resized in the *Image Batch processor* app in MATLAB before pixel labelling them. The processed images were exported to a folder in .png format.
The images were labeled using the *Image labeler* app in MATLAB. I considered Semantic segmentation of different classes of food in an image over the traditional bounding box approach. Since food is mostly amorphous this approach was appropriate. Pixel labels were created for each 
item from the ROI Labels in the app. To ensure every pixel in the picture is labelled, a ‘background’ label was applied to every image before labeling the food in it. When you apply a new label to an object it replaces the old label.

# Exporting the Ground truth
After succesfully labelling the images they were exported as a ground truth object into the MATLAB workspace. The dataset were then divided into training and validation sets using the dunction partitionData.m . 

# Implementation and testing
 The inceptionv3 network model was installed and loaded into the *Deep network designer* app in MATLAB. The training and validation sets were imported into it as well. Below is the first few observations of the imported imagedatastore and pixellabeldatastore objects

![importeddata](https://github.com/joseashly999/Transfer_learning/blob/main/fulleng.png)

The last fully connected layers of the Inceptionv3 model, which was initially trained for image classification on 1000 objects were replaced for pixel wise classification as shown below. The network was trained for semantic segmentation of food items in a plate

![](https://github.com/joseashly999/Transfer_learning/blob/main/Screenshot%202023-05-14%20101731.png)


 

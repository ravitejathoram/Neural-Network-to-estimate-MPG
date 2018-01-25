# Neural-Network-to-estimate-MPG
Aim: To develop a Neural Network to estimate the MPG (Miles per Gallon) using MATLAB.
Dataset: Car data (https://archive.ics.uci.edu/ml/datasets/Auto+MPG)
Procedure:
Initially I divided dataset into “INPUT” and “TARGET” sets. Input set has been used to train, validate and test the network and the second set “TARGET” set consists of corresponding output values.
Input data consists of five parameters namely Car weight, Engine Displacement, Cylinder count, Horse Power, Acceleration. We need to train our required neural network with these inputs and corresponding outcomes called “targets”. The “INPUT” set mentioned above consists data about these five fields and all missing values are shown as “?” in given data are replaced with “NaN”. As a pre-processing step during scripting I replaced these “NaN” with mean value of that field.
I used FEED FORWARD concepts of MATLAB to build the Neural Network. Feed Forward is a type of Neural Network where the information (in our case input) flows in only one direction and in addition to this I used backpropagation algorithm to train the network created. The backpropagation algorithms I used is an algorithm referred as “traingda” which means updates weight and bias values according to gradient descent with adaptive learning rate.
In the following points I am going to discuss various dimensions of the Feed Forward Neural Network I have created namely “net”. They are:
 Training algorithm = Gradient Descent with Adaptive Learning rate
 Number of Inputs = one
This can be given by “net.numInputs”
 Number of Layers = two
This can be given by “net.numLayers”
 Number of Outputs = one
This can be given by “net.numOutputs”
 Number of Hidden units =12
 Weights used in the network are defined by a Neural Network property “IW” which shows weights going to layers from network inputs and weights can be seen by using the command “net.IW{1}” displays all the weights. The following shows weight matrix of order 12x5:
[0.5043 -0.6968 -0.9205 0.6438 1.7667
0.8020 0.3886 1.6648 1.1992 -1.3375
0.0109 0.1243 -1.5152 -0.8383 1.8891
-0.4295 0.0218 -1.5047 -1.4198 0.8847
-0.2214 0.5219 -0.0817 0.6798 -2.1170
-1.1108 -0.9017 -0.9446 -0.6073 1.1515
-1.0172 0.7680 -0.5667 1.4238 0.8725
-1.4949 0.6977 -1.2721 -0.4942 0.2328
1.7127 -0.6158 0.8730 0.8479 -0.6521
0.5794 -1.2383 -1.0165 -1.1413 -1.0315
1.8832 -0.3633 0.4103 -0.1617 -1.5432
-0.8462 -2.7550 0.2205 0.0417 -0.4551]
Weights from layer to layer can be seen using property “LW” and can be invoked using command “net.LW{1}” The following shows 1x12 matrix:
[0.1785 0.0973 0.6641 0.2828 0.3339 -0.2927 -0.0126 0.1961 0.0526 -0.0088 0.3983 0.4177]
 Bias used in Neural Network is represented in a property “b” and can be seen using command “net.b”.
Bias values at layer 1 (net.b{1}):
-2.0302
-1.2770
-1.2315
0.9078
0.4160
-0.3794
0.5061
-0.9914
1.0869
1.2533
1.2225
-1.1582
Bias value at layer 2 (net.b{2}):
-0.1971
 Learning Rate is the rate at which the network is learning. “net.trainParam.lr”.
ANSWER: 0.01 (learning rate of neural network)
 Activation function:
For Layer 1: “tansig” function i.e Hyperbolic tangent sigmoid transfer function.
For Layer 2: “purelin” function i.e Linear transfer function.

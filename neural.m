%   input - input data.
%   target - target data.
load input.csv %loading input.csv data into work space with name as 'input'
%checking for NaN values in loaded data and replacing it with mean value of
%that column with help of function interpl. These can be treated as data
%pre-processing steps.
xdata2=(1:size(input,1))';
data2=bsxfun(@(x,y) interp1(y(~isnan(x)),x(~isnan(x)),y),input,xdata2);
load target.csv %loading target.csv data into work space with name as 'output'
x = data2';
t = target';

trainFcn = 'traingda';  % backpropagation.

% Create a FEED FORWARD Network
net = feedforwardnet(23,trainFcn);
net=init(net); %re-initialization of weights and bias
%view(net);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100; %70 percentage of training data
net.divideParam.valRatio = 15/100;% 15 percentage of validation data
net.divideParam.testRatio = 15/100;%15 percentage of testing data
net.trainParam.max_fail=100; %setting validation check limit to 100 epoch

[net,tr] = train(net,x,t);
plotperform(tr)
plottrainstate(tr)
% Testing the Network
y = net(x);
%manual caluclation of error and accuracy
error=abs(sum(t',1)-sum(y',1))/(sum(t',1))
accuracy=(1-error)*100


% View the Network
view(net)

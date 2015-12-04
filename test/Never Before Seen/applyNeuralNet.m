function[Y]=applyNeuralNet(X)%takes a 35x35 RGB image input
x1=reshape(X,3675,1);
xd=double(x1);
Z=myNeuralNetworkFunction(xd);
if(Z(1,1)>Z(2,1))
    Y='Red';
else
    Y='Green';
end
green_correct=0;
red_correct=0;
red_wrong=0;
green_wrong=0;
for i=1:10
    X=trainData(:,:,:,i);
    x1=reshape(X,3675,1);
    xd=double(x1);
    Z=myNeuralNetworkFunction(xd);
    if(Z(1,1)>Z(2,1))
        Y='Red'
        if(light_label(1,i)==1)
            red_correct=red_correct+1;
        else
            red_wrong=red_wrong+1;
        end    
    else
        Y='Green'
        if(light_label(2,i)==1)
            green_correct=green_correct+1;
        else
            green_wrong=green_wrong+1;
        end  
    end
end

conf_mat= [red_correct red_wrong;green_wrong green_correct]
acc=100*((red_correct+green_correct)/10)
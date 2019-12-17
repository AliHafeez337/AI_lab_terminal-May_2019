xheight = randi(4,50,1);
yweight = randi([30,110],50,1);
zBMI = randi(1,50,1);
for v = 1:1:50
    zBMI(v,1) = zAxis(xheight(v,1),yweight(v,1));
end 
title('Randomly generated data')
xlabel('Height')
ylabel('Weight')
zlabel('Body Mass Index')
scatter3(xheight,yweight,zBMI,'filled')

xpart1 = xheight(1:10,:);
ypart1 = yweight(1:10,:);
zpart1 = zBMI(1:10,:);
xpart2 = xheight(11:20,:);
ypart2 = yweight(11:20,:);
zpart2 = zBMI(11:20,:);
xpart3 = xheight(21:30,:);
ypart3 = yweight(21:30,:);
zpart3 = zBMI(21:30,:);
xpart4 = xheight(31:40,:);
ypart4 = yweight(31:40,:);
zpart4 = zBMI(31:40,:);
xpart5 = xheight(41:50,:);
ypart5 = yweight(41:50,:);
zpart5 = zBMI(41:50,:);

xtrain345 = cat(1,xpart3(:), xpart4(:), xpart5(:));
ytrain345 = cat(1,ypart3(:), ypart4(:), ypart5(:));
ztrain345 = cat(1,zpart3(:), zpart4(:), zpart5(:));
xtest12 = cat(1,xpart1(:), xpart2(:));
ytest12 = cat(1,ypart1(:), ypart2(:));
ztest12 = cat(1,zpart1(:), zpart2(:));
fold12 = learn(xtrain345,ytrain345,ztrain345,xtest12,ytest12,ztest12);

xtrain245 = cat(1,xpart2(:), xpart4(:), xpart5(:));
ytrain245 = cat(1,ypart2(:), ypart4(:), ypart5(:));
ztrain245 = cat(1,zpart2(:), zpart4(:), zpart5(:));
xtest13 = cat(1,xpart1(:), xpart3(:));
ytest13 = cat(1,ypart1(:), ypart3(:));
ztest13 = cat(1,zpart1(:), zpart3(:));
fold13 = learn(xtrain245,ytrain245,ztrain245,xtest13,ytest13,ztest13);

xtrain235 = cat(1,xpart2(:), xpart3(:), xpart5(:));
ytrain235 = cat(1,ypart2(:), ypart3(:), ypart5(:));
ztrain235 = cat(1,zpart2(:), zpart3(:), zpart5(:));
xtest14 = cat(1,xpart1(:), xpart4(:));
ytest14 = cat(1,ypart1(:), ypart4(:));
ztest14 = cat(1,zpart1(:), zpart4(:));
fold14 = learn(xtrain235,ytrain235,ztrain235,xtest14,ytest14,ztest14);

xtrain234 = cat(1,xpart2(:), xpart3(:), xpart4(:));
ytrain234 = cat(1,ypart2(:), ypart3(:), ypart4(:));
ztrain234 = cat(1,zpart2(:), zpart3(:), zpart4(:));
xtest15 = cat(1,xpart1(:), xpart5(:));
ytest15 = cat(1,ypart1(:), ypart5(:));
ztest15 = cat(1,zpart1(:), zpart5(:));
fold15 = learn(xtrain234,ytrain234,ztrain234,xtest15,ytest15,ztest15);

xtrain145 = cat(1,xpart1(:), xpart4(:), xpart5(:));
ytrain145 = cat(1,ypart1(:), ypart4(:), ypart5(:));
ztrain145 = cat(1,zpart1(:), zpart4(:), zpart5(:));
xtest23 = cat(1,xpart2(:), xpart3(:));
ytest23 = cat(1,ypart2(:), ypart3(:));
ztest23 = cat(1,zpart2(:), zpart3(:));
fold23 = learn(xtrain145,ytrain145,ztrain145,xtest23,ytest23,ztest23);

xtrain135 = cat(1,xpart1(:), xpart3(:), xpart5(:));
ytrain135 = cat(1,ypart1(:), ypart3(:), ypart5(:));
ztrain135 = cat(1,zpart1(:), zpart3(:), zpart5(:));
xtest24 = cat(1,xpart2(:), xpart4(:));
ytest24 = cat(1,ypart2(:), ypart4(:));
ztest24 = cat(1,zpart2(:), zpart4(:));
fold24 = learn(xtrain135,ytrain135,ztrain135,xtest24,ytest24,ztest24);

xtrain134 = cat(1,xpart1(:), xpart3(:), xpart4(:));
ytrain134 = cat(1,ypart1(:), ypart3(:), ypart4(:));
ztrain134 = cat(1,zpart1(:), zpart3(:), zpart4(:));
xtest25 = cat(1,xpart2(:), xpart5(:));
ytest25 = cat(1,ypart2(:), ypart5(:));
ztest25 = cat(1,zpart2(:), zpart5(:));
fold25 = learn(xtrain134,ytrain134,ztrain134,xtest25,ytest25,ztest25);

xtrain125 = cat(1,xpart1(:), xpart2(:), xpart5(:));
ytrain125 = cat(1,ypart1(:), ypart2(:), ypart5(:));
ztrain125 = cat(1,zpart1(:), zpart2(:), zpart5(:));
xtest34 = cat(1,xpart2(:), xpart4(:));
ytest34 = cat(1,ypart2(:), ypart4(:));
ztest34 = cat(1,zpart2(:), zpart4(:));
fold34 = learn(xtrain125,ytrain125,ztrain125,xtest34,ytest34,ztest34);

xtrain124 = cat(1,xpart1(:), xpart2(:), xpart4(:));
ytrain124 = cat(1,ypart1(:), ypart2(:), ypart4(:));
ztrain124 = cat(1,zpart1(:), zpart2(:), zpart4(:));
xtest35 = cat(1,xpart3(:), xpart5(:));
ytest35 = cat(1,ypart3(:), ypart5(:));
ztest35 = cat(1,zpart3(:), zpart5(:));
fold35 = learn(xtrain124,ytrain124,ztrain124,xtest35,ytest35,ztest35);

xtrain123 = cat(1,xpart1(:), xpart2(:), xpart3(:));
ytrain123 = cat(1,ypart1(:), ypart2(:), ypart3(:));
ztrain123 = cat(1,zpart1(:), zpart2(:), zpart3(:));
xtest45 = cat(1,xpart4(:), xpart5(:));
ytest45 = cat(1,ypart4(:), ypart5(:));
ztest45 = cat(1,zpart4(:), zpart5(:));
fold45 = learn(xtrain123,ytrain123,ztrain123,xtest45,ytest45,ztest45);

for i = 1:1:15
   k(i,1) = callK(i, fold12, fold13, fold14, fold15, fold23, fold24, fold25, fold34, fold35, fold45); 
end

title('Average K from 5 folds, 20 points from 10 samples each')
xlabel('Values of K')
ylabel('Error')
plot(k(:,1));
    
function kError = learn(xtrain, ytrain, ztrain, xtest, ytest, ztest)
    for v = 1:1:20
        for w = 1:1:30
          dist(w,1) = sqrt(((xtrain(w,1)-xtest(v,1))*(xtrain(w,1)-xtest(v,1)))+((ytrain(w,1)-ytest(v,1))*(ytrain(w,1)-ytest(v,1)))+((ztrain(w,1)-ztest(v,1))*(ztrain(w,1)-ztest(v,1))));
          
        end
        %disp(dist);
        for w = 1:1:15
           dist1 = dist;
           val = zeros(w,1);
           temp = 0;
           for i=1:w
              [val(i),idx] = min(dist1);
              temp = temp + val(i);
              % remove for the next iteration the last smallest value:
              dist1(idx) = [];
           end 
           %temp
           zGuess = temp/w;
           disp(zGuess);
           guessError = zGuess - ztest(v,1);
           if guessError < 0
               guessError = -guessError;
           end
           kError(w,v) = guessError;
        end
    end
end

function k = callK(row, fold12, fold13, fold14, fold15, fold23, fold24, fold25, fold34, fold35, fold45)
    t1 = 0;
    t2 = 0;
    t3 = 0;
    t4 = 0;
    t5 = 0;
    t6 = 0;
    t7 = 0;
    t8 = 0;
    t9 = 0;
    t10 = 0;
    for v = 1:1:20
        t1 = t1 + fold12(row, v);
        t2 = t2 + fold13(row, v);
        t3 = t3 + fold14(row, v);
        t4 = t4 + fold15(row, v);
        t5 = t5 + fold23(row, v);
        t6 = t6 + fold24(row, v);
        t7 = t7 + fold25(row, v);
        t8 = t8 + fold34(row, v);
        t9 = t9 + fold35(row, v);
        t10 = t10 + fold45(row, v);
    end
    t1 = t1/20;
    t2 = t2/20;
    t3 = t3/20;
    t4 = t4/20;
    t5 = t5/20;
    t6 = t6/20;
    t7 = t7/20;
    t8 = t8/20;
    t9 = t9/20;
    t10 = t10/20;
    k = (t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10)/10;
end

function tc = zAxis(xAxis, yAxis)
    temp = xAxis*xAxis;
    tc = yAxis/temp;
return;
end
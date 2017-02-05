% A simple impletation of sgd
function w = sgd(iter, alpha, g_fun, X, Y)
% w: Result of sgd, 1*3 vec
% iter: number of iteration 
% alpha: step size, number or 1*3 vec 
% g_fun: gradient function, handle
% X: Dataset  Y: Prediction

% initializate
w = [0.1,0.1,0.1];

% sgd iterate
for p = 1:iter
    % get a sample
    sprintf('%d : %f',p,w);
    si = randi([1 5050],1, 1);
    % get the descent direction
    g_w = g_fun(w,X(si,:),Y(si,:));
    w = w - alpha.*g_w;
    
    % Disp result of this iter
    sprintf('%d : %.5f',p,w)
end
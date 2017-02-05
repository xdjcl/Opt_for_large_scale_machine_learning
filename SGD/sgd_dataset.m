%% Generate dataset
% x = [x1,x2];
% y = w0+ w1*x1+ w2*x2
w = [4,2,6];
y = @(x) w(1)+ w(2).*x(1)+ w(3).*x(2);
X_orign = nchoosek([-50:1:50],2);
X = X_orign+ randn(5050,2); X = [ones(5050,1),X];

Y_orign = sum(repmat(w,5050,1).*[ones(5050,1),X_orign],2);
Y = Y_orign+ rand(5050,1);

%% Generate gradient function
g_fun = @(w,x,y) 2*x*(w*x'-y);
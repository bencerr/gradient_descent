clear
data = load("grad_data.mat")

init_intercept = 0 % guess
init_slope = .64 % guess
height = @(x) init_intercept + (init_slope * x)

residuals = [] % implment later

ssr = @(intercept) (data.data(1,2) - (intercept + init_slope * data.data(1,1))).^2 ...
                 + (data.data(2,2) - (intercept + init_slope * data.data(2,1))).^2 ...
                 + (data.data(3,2) - (intercept + init_slope * data.data(3,1))).^2
             
grad_ssr = @(x) ssr(x)'

iters = 100
learning_rate = .01
next = init_slope


step_size = grad_ssr(init_intercept) * learning_rate
next_guess = init_intercept - step_size

for i=1:iters
    step_size = grad_ssr(next_guess) * learning_rate
    next_guess = next_guess - step_size;
    next_guess
    next
end

fplot(grad_ssr)

% f = @(x) (x(1));
% gradf = @(x) (1)
% 
% init_guess = 2;
% 
% iters = 100;
% 
% step_size = 0.01;
% 
% record_guesses = [init_guess];
% next_guess = init_guess;
% 
% for i=1:iters
%     next_guess = next_guess - step_size * gradf(next_guess);
%     record_guesses = [record_guesses, next_guess];
% end
% 
% display("Distance from the min");
% display(norm([5:-1] - next_guess));
% 
% figure;
% plot(record_guesses(1,:), record_guesses(2,:),'ro');
% hold on;
% plot(5,-1, 'b^');
% hold off;
% for i=1:iters
%    step_size = grad_ssr(next_guess) * learning_rate
%    next_guess = next_guess - step_size;
%    next_guess
%    next
%end

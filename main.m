clear
f = @(x) (x(1)-5).^2 + (x(2)+1).^2;
gradf = @(x) [2*(x(1)-5); 2*(x(2)+1)];

init_guess = [2;1];

iters = 100;

step_size = 0.1;

record_guesses = [init_guess];
next_guess = init_guess;

for i=1:iters
    next_guess = next_guess - step_size * gradf(next_guess);
    record_guesses = [record_guesses, next_guess];
end

display("Distance from the min");
display(norm([5:-1] - next_guess));

figure;
plot(record_guesses(1,:), record_guesses(2,:),'ro');
hold on;
plot(5,-1, 'b^');
hold off;

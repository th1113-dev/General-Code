% Define the integrand function: sqrt(1 + 4x^2 + 4y^2)
f = @(x, y) sqrt(1 + 4.*x.^2 + 4.*y.^2);

% First region: x from 0 to sqrt(2), y from 0 to x
area1 = integral2(f, 0, sqrt(2), ...          % x-limits
    @(x) 0, @(x) x);                          % y-limits: 0 to x

% Second region: x from sqrt(2) to 2, y from 0 to sqrt(4 - x^2)
area2 = integral2(f, sqrt(2), 2, ...          % x-limits
    @(x) 0, @(x) sqrt(4 - x.^2));             % y-limits: 0 to sqrt(4 - x^2)

% Total surface area
total_area = area1 + area2;

% Display result
disp(['Surface area = ', num2str(total_area)]);

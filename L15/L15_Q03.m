% Mary Robinson
% L15_Q03

function[]=L15_Q03()

    diameter = get_positive_integer('Enter the diameter of the target: ');
    num_arrows = get_positive_integer('Enter the number of arrows: ');
    debug = get_boolean('Print debug output? (Enter 0 for no or 1 for yes): ');
    
    [ring_hits, outer_radii] = simulate_archery(diameter, num_arrows, debug);   
    ring_areas = calc_ring_areas(outer_radii);
    print_results(ring_hits, ring_areas, num_arrows, diameter);


end

function val = get_positive_integer(prompt)
    while true
        val = input(prompt);
        if isnumeric(val) && floor(val) == val && val > 0
            break;
        else
            fprintf('Invalid entry %d\n', val);
        end
    end
end

function val = get_boolean(prompt)
    while true
        val = input(prompt);
        if val == 0 || val == 1
            break;
        else
            fprintf('Invalid entry %d\n', val);
        end
    end
end

function [ring_hits, outer_radii] = simulate_archery(diameter, num_arrows, debug)
    % calculate outer radius of the target
    radius = diameter / 2;
    step = radius / 10;

    % preallocate ring boundaries
    outer_radii = zeros(1, 10);
    for i = 1:10
        outer_radii(i) = radius - (i - 1) * step;
    end

    % print the ring boundaries
    fprintf('The radius of the outer boundary of each ring is:\n');
    for i = 1:10
        fprintf('%.2f ', outer_radii(i));
    end
    fprintf('\n');

    % initialize storage for hits and positions
    x_vals = zeros(1, num_arrows);
    y_vals = zeros(1, num_arrows);
    hit_results = zeros(1, num_arrows);
    ring_hits = zeros(1, 11);  % 10 rings + 1 for misses

    % simulate each arrow shot
    for i = 1:num_arrows
        x = (rand * 2 - 1) * radius;
        y = (rand * 2 - 1) * radius;

        x_vals(i) = x;
        y_vals(i) = y;

        dist = sqrt(x^2 + y^2);
        ring = 11;  % default: miss

        % Loop from innermost (10) to outermost (1)
        for j = 10:-1:1
            if dist <= outer_radii(j)
                ring = j;
            end
        end

        hit_results(i) = ring;
        ring_hits(ring) = ring_hits(ring) + 1;

        if debug == 1
            printf('Arrow %d at ( %.2f, %.2f ) is in ring %d, giving a count of %d\n', ...
                i, x, y, ring, ring_hits(ring));
        end
    end

    %plot_results(x_vals, y_vals, hit_results, diameter, num_arrows, outer_radii);
end




function print_vector(vec)
    for i = 1:length(vec)
        fprintf('%.2f ', vec(i));
    end
    fprintf('\n');
end

function plot_results(x_vals, y_vals, ring_numbers, diameter, num_arrows, outer_radii)
    figure;
    hold on;
    axis square;

    radius = diameter / 2;
    fMin = -radius;
    fMax = radius;

    colors = {'g', 'g', 'k', 'k', 'b', 'b', 'r', 'r', 'y', 'y', 'm'};

    for i = 1:num_arrows
        plot(x_vals(i), y_vals(i), 'x', 'Color', colors{ring_numbers(i)}, 'LineWidth', 1.5);
    end

    for r = outer_radii
        draw_circle(r);
    end

    axis([fMin, fMax, fMin, fMax]);
    print('-dpng', 'archery_results.png');
end

function draw_circle(r)
    theta = linspace(0, 2*pi, 300);
    x = r * cos(theta);
    y = r * sin(theta);
    plot(x, y, 'k');
end

function areas = calc_ring_areas(outer_radii)
    areas = zeros(1, 10);
    for i = 1:10
        if i == 1
            inner_r = 0;
        else
            inner_r = outer_radii(i - 1);
        end
        outer_r = outer_radii(i);
        areas(i) = pi * (outer_r^2 - inner_r^2);
    end
end

function print_results(ring_hits, ring_areas, num_arrows, diameter)
    total_area = pi * (diameter / 2)^2;

    fprintf('Final Results:\n');
    for i = 1:10
        hit_count = ring_hits(i);
        hit_pct = 100 * hit_count / num_arrows;
        area_pct = 100 * ring_areas(i) / total_area;
        fprintf('%d arrows (%5.2f percent) landed in ring %d which has relative area %5.2f percent\n', ...
            hit_count, hit_pct, i, area_pct);
    end

    miss_count = ring_hits(11);
    miss_pct = 100 * miss_count / num_arrows;
    fprintf('%d arrows (%5.2f percent) missed the target\n', miss_count, miss_pct);
end





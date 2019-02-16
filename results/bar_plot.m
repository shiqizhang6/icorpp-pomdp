
subplot(1,2,1);
mat1 = zeros(4, 4);
data = importdata('old_reward_results_i.txt');
for i = 1:size(data,1)
    mat1(data(i,1)+1, data(i,2)+1) = mat1(data(i,1)+1, data(i,2)+1) + 1;
end
mat1

mat2 = zeros(4, 4);
data = importdata('new_reward_results_i.txt');
for i = 1:size(data,1)
    mat2(data(i,1)+1, data(i,2)+1) = mat2(data(i,1)+1, data(i,2)+1) + 1;
end
mat2

mat3 = zeros(4, 4);
data = importdata('new_cautious_i.txt');
for i = 1:size(data,1)
    mat3(data(i,1)+1, data(i,2)+1) = mat3(data(i,1)+1, data(i,2)+1) + 1;
end
mat3

bar([0,1,2,3], [sum(mat1(1,:))-mat1(1,1), ...
                sum(mat1(2,:))-mat1(2,2), ...
                sum(mat1(3,:))-mat1(3,3), ...
                sum(mat1(4,:))-mat1(4,4); ...
                sum(mat2(1,:))-mat2(1,1), ...
                sum(mat2(2,:))-mat2(2,2), ...
                sum(mat2(3,:))-mat2(3,3), ...
                sum(mat2(4,:))-mat2(4,4); ...
                sum(mat3(1,:))-mat3(1,1), ...
                sum(mat3(2,:))-mat3(2,2), ...
                sum(mat3(3,:))-mat3(3,3), ...
                sum(mat3(4,:))-mat3(4,4)]')

subplot(1,2,2);

mat1 = zeros(3, 3);
data = importdata('old_reward_results_r.txt');
for i = 1:size(data,1)
    mat1(data(i,1)+1, data(i,2)+1) = mat1(data(i,1)+1, data(i,2)+1) + 1;
end
mat1

mat2 = zeros(3, 3);
data = importdata('new_reward_results_r.txt');
for i = 1:size(data,1)
    mat2(data(i,1)+1, data(i,2)+1) = mat2(data(i,1)+1, data(i,2)+1) + 1;
end
mat2

mat3 = zeros(3, 3);
data = importdata('new_cautious_r.txt');
for i = 1:size(data,1)
    mat3(data(i,1)+1, data(i,2)+1) = mat3(data(i,1)+1, data(i,2)+1) + 1;
end
mat3


bar([0,1,2], [sum(mat1(1,:))-mat1(1,1), ...
                sum(mat1(2,:))-mat1(2,2), ...
                sum(mat1(3,:))-mat1(3,3); ...
                sum(mat2(1,:))-mat2(1,1), ...
                sum(mat2(2,:))-mat2(2,2), ...
                sum(mat2(3,:))-mat2(3,3); ...
                sum(mat3(1,:))-mat3(1,1), ...
                sum(mat3(2,:))-mat3(2,2), ...
                sum(mat3(3,:))-mat3(3,3)]')


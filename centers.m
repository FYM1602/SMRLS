c0 = [-1,0,1];
c = zeros(2,9);
for i=1:3
for j=1:3
    c(:,(i-1)*3+j)=[c0(i);c0(j)];
end
end
for j = 1:9
plot(c(1,j),c(2,j),'o');
hold on;
end
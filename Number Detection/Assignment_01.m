f =[0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 1 0 1 0 0;
    0 0 1 0 1 0 0;
    0 0 1 1 1 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0];

figure;
subplot(1,2,1);
imshow(f);
title('Given image');

[x,y]=size(f);

p=zeros(x,y);


w=[0 1 0; 
   1 1 1; 
   0 1 0];

for s=2:x-1
    for t=2:y-1
        w1=[f(s-1,t)*w(2) f(s,t-1)*w(4) f(s,t)*w(5) f(s,t+1)*w(6) f(s+1,t)*w(8)];
        p(s,t)=max(w1);
    end
end

final = p-f;
subplot(1,2,2);
imshow(final);
title('Output Image');
% Reading Images 
X = zeros(2500,640);
for i=1 : 10
    for j=1 : 64
        p = mat2str(i);
        n = mat2str(j);
        if i <= 9 && j<=9
            Image = strcat( 'person' , '0' , p , '_' , '0' , n , '.png') ;
        elseif i<=9 && j>9
            Image = strcat( 'person' , '0',  p , '_' , n , '.png') ;
        elseif i>9 && j<=9
            Image = strcat( 'person' , p , '_' , '0' , n , '.png') ;
        else
            Image = strcat( 'person' , p , '_' , n , '.png') ;
        end
        disp(Image);
        A = imread(Image);
        colN = i*j;
        X(:,colN:colN) = A(:);
    end
end

% Average of sample
averageImage = zeros(2500,1);

for i=1 : 2500
    avg  = 0;
    for j=1 : 640
        avg = avg + X(i,j);
    end
    avg = avg / 640;
    averageImage(i,1) = avg;
end

%Eigen values and vectors of varriance matrix by svd of X

[U,S,V] = svd(X, 0);
eigenvlues = S.^2;

covarriance = U * eigenvlues * U.';



% calculating eigenImage by taking e number of eigen vectors
e = 50;
EigenMatrix = zeros(2500, e);

for i = 1 : e
    EigenMatrix(:,i:i) = U(:,i:i);
end
%Eigen Images
%for i = 1: 12
%    eigenimage = reshape(EigenMatrix(:,i:i),50,50);

%    figure(i); imagesc(eigenimage); colormap(gray(256));
%end

%Projection Cofficient
ProjectionCoefficient = EigenMatrix.' * (X(:,2:2) - averageImage);

xa = zeros(e,1);
for i=1 : e
    xa(i,1) = i; 
end

 figure(13); plot(xa, ProjectionCoefficient);

%Reconstructing Image from EigenImage

RCImage = EigenMatrix * ProjectionCoefficient + averageImage; 

RC  = reshape(RCImage , 50, 50);

figure(14); imagesc(RC); colormap(gray(256));













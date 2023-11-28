%% Adding path of libraries
addpath('C:\Users\Varsha\Desktop\Image-Steganography\Sender\Library');
%% Reading the secret image and cover image
secret_img = imread('C:\Users\Varsha\Desktop\Image-Steganography\Sender\secret_img.jpg');
cover_img = imread('C:\Users\Varsha\Desktop\Image-Steganography\Sender\cover_img.jpg');

cov_size = size(cover_img);
sec_size = size(secret_img);
if(sec_size(1)*sec_size(2) * 8 > cov_size(1)*cov_size(2)*cov_size(3))
    disp('Cover image too small for the secret image');
    return;
end
%% Setting the secret message to be send to the receiver
secret_msg = 'My credit card CVV is 482. The PIN of this card is 8632.';

%% Step 1 - AES Encyption of secret image
encrypted_img = aes_encryption(secret_img);

if((length(secret_msg)+1)*8 > sec_size(1)*sec_size(2))
    disp('Secret message too long to be fit into the secret message');
    return;
end
%% Step 2 - LSB based steganography to hide secret message in the encrypted secret image
img_with_text = lsbstego(encrypted_img, secret_msg);

%% Step 3 - LSB based steganography to hide encryped secret image with text into the cover image
stego_img = embedding(cover_img, img_with_text);

%% Step 4 - Split the images to be sent to the receiver
splitimage(stego_img);

% Create a new figure window
figure;
imshow(secret_img);
title('Secret Image');

figure;
imshow(cover_img);
title('Cover Image');

figure;
imshow(encrypted_img);
title('Encrypted Image');

figure;
imshow(uint8(img_with_text));
title('Image with Text');

figure;
imshow(stego_img);
title('Stego Image');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img0.tif');
title('Image 0');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img1.tif');
title('Image 1');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img2.tif');
title('Image 2');


figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img3.tif');
title('Image 3');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img4.tif');
title('Image 4');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img5.tif');
title('Image 5');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img6.tif');
title('Image 6');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img7.tif');
title('Image 7');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img8.tif');
title('Image 8');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img9.tif');
title('Image 9');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img10.tif');
title('Image 10');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img11.tif');
title('Image 11');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img12.tif');
title('Image 12');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img13.tif');
title('Image 13');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img14.tif');
title('Image 14');

figure;
imshow('C:\Users\Varsha\Desktop\Image-Steganography\Sender\img15.tif');
title('Image 15');





% The images that have been split and saved as img[0-15].tif must be
% shipped to the receiver.
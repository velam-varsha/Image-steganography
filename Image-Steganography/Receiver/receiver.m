%% Adding path of libraries
addpath('C:\Users\Varsha\Desktop\Image-Steganography\Receiver\Library');

%% Merge images received by the receiver
merged_img = mergeimg();

%% Extract encrypted image from the merged image
encrypted_img = extract_img(merged_img);

%% Extract secret text from the encrypted image
secret_text = extract_text(encrypted_img);
disp(strcat('Secret Text : ', secret_text));

%% Extract original secret image from encrypted secret image
secret_img = decryption(encrypted_img);
imwrite(secret_img, 'C:\Users\Varsha\Desktop\Image-Steganography\Sender\SECRET_IMAGE.jpg');


figure;
imshow(merged_img);
title('Merged Image');

figure;
imshow(uint8(encrypted_img));
title('Extracted Secret Image');

figure;
imshow(secret_img);
title('Secret Image Received');
%figure('Name', 'Merged Image'), imshow(merged_img);
%figure('Name', 'Extract Secret Image'), imshow(uint8(encrypted_img));
%figure('Name', 'Secret Image Received'), imshow(secret_img);

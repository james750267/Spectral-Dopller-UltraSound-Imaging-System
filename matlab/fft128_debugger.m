 %Engineer: Amey Kulkarni
 %Module Name:  fft128_debugger
 %Project Name: Spectral Doppler Ultrasound Imaging System

clear all
close all
clc
format compact

signal = zeros(1,128);
signal(1) = 1;
signal(2) = 1;
signal(3) = 1;
signal(4) = 1;
signal(5) = 1;

fft_signal = fft(signal, 128);

hw_output = [2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 512, 512, 512, 0, 0, 0, 0, 1542, 205, 426, -128, -129, 427, 205, 1542, 2274, 419, 584, 216, -265, 171, 20, 671, 670, 20, 171, -265, 215, 585, 419, 2274, 2486, 487, 580, 384, -189, 65, -16, 292, 1101, 98, 299, -237, 34, 529, 318, 1947, 1947, 318, 528, 35, -237, 299, 98, 1101, 292, -16, 65, -189, 383, 581, 487, 2486, 2541, 505, 553, 454, -109, 27, -15, 133, 1323, 149, 364, -191, -52, 482, 262, 1752, 2123, 371, 563, 125, -263, 234, 54, 882, 473, -5, 114, -240, 303, 591, 458, 2395, 2395, 458, 591, 303, -240, 114, -5, 473, 882, 55, 234, -263, 124, 564, 371, 2123, 1752, 262, 481, -51, -191, 365, 149, 1323, 133];
outputs = 1:128;
%plot(outputs, hw_output/2^9, '-');

%hw_output = [327680, 325317, 318293, 306811, 291191, 271875, 249398, 224381, 197503, 169495, 141087, 113017, 85983, 60630, 37541, 17202, 0, -13790, -24020, -30646, -33752, -33534, -30282, -24378, -16271, -6473, 4488, 16060, 27703, 38910, 49207, 58191, 65536, 70993, 74409, 75718, 74953, 72236, 67760, 61797, 54663, 46726, 38374, 29998, 21984, 14686, 8424, 3462, 0, -1834, -1993, -494, 2569, 7023, 12645, 19157, 26249, 33583, 40818, 47613, 53657, 58673, 62427, 64747, 65536, 64747, 62427, 58673, 53657, 47613, 40818, 33583, 26249, 19157, 12645, 7023, 2569, -494, -1993, -1834, 0, 3462, 8424, 14686, 21984, 29998, 38374, 46726, 54663, 61797, 67760, 72236, 74953, 75718, 74409, 70993, 65536, 58191, 49207, 38910, 27703, 16060, 4488, -6473, -16271, -24378, -30282, -33534, -33752, -30646, -24020, -13790, 0, 17202, 37541, 60630, 85983, 113017, 141087, 169495, 197503, 224381, 249398, 271875, 291191, 306811, 318293, 325317];
%plot(outputs, fft_signal, '+', outputs, hw_output/2^16, '-');

hw_output = [2560, 2542, 2486, 2397, 2275, 2124, 1948, 1753, 1543, 1324, 1102, 883, 672, 474, 294, 134, 0, -108, -188, -240, -264, -262, -236, -191, -127, -51, 35, 125, 216, 304, 384, 455, 512, 554, 582, 592, 586, 565, 530, 483, 427, 365, 300, 234, 172, 115, 66, 27, 0, -14, -16, -4, 20, 55, 99, 150, 205, 263, 319, 372, 419, 458, 488, 506, 512, 506, 488, 458, 419, 372, 319, 263, 205, 150, 99, 55, 20, -4, -16, -14, 0, 27, 66, 115, 172, 234, 300, 365, 427, 483, 530, 565, 586, 592, 582, 554, 512, 455, 384, 304, 216, 125, 35, -51, -127, -191, -236, -262, -264, -240, -188, -108, 0, 134, 294, 474, 672, 883, 1102, 1324, 1543, 1753, 1948, 2124, 2275, 2397, 2486, 2542];
plot(outputs, fft_signal, '+', outputs, hw_output/2^9, '-');

%plot(outputs, fft_signal, '-');

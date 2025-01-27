# 1 "bossPunch.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bossPunch.c"


const unsigned int bossPunch_sampleRate = 11025;
const unsigned int bossPunch_length = 8184;

const signed char bossPunch_data[] = {
0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1,
0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1,
0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0,
-1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1,
0, -1, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0,
-1, 0, -1, 0, 0, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1,
0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
-1, 0, -1, 0, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0,
0, 0, 0, 0, -1, 0, -1, 0, -1, -1, 0, 0, -1, 0, -1, -1, 0, -1, 0, -1,
0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0,
-1, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0,
-1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, -1,
0, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, 0, -1, 0, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0,
-1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0,
0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1,
0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1,
0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0,
0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1,
0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1,
0, -1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, 0, 0, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, -1, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, -1, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -3, -2,
-1, -1, -1, -1, -2, -1, 1, 2, 1, 0, -1, 0, 1, 1, 1, 0, -1, -1, 1, 3,
2, 1, 1, 1, 1, 2, 1, 1, -1, 0, -1, -1, 0, 1, 0, -2, 0, 0, 1, 0,
2, 3, 2, -1, -2, -2, 0, 0, -3, -3, -2, -1, -1, -1, 0, 1, 2, 1, 1, 1,
2, 2, 4, 5, 3, 4, 3, 5, 7, 4, 0, 0, -2, -5, -6, -6, -5, -6, -7, -7,
-5, -4, 3, 1, 1, 8, 8, 8, 7, 11, 8, 4, 4, 8, 11, 10, 9, 13, 9, -5,
-13, -5, -3, -6, -7, -7, -1, 6, 10, 8, 4, 8, 16, 20, 20, 23, 24, 24, 12, 11,
18, -6, -6, -8, -14, -18, -7, 9, 16, 11, -2, 8, 15, 17, 12, 15, 11, 4, 0, 0,
-4, -9, -19, -19, -6, 1, -8, -18, -9, -12, -11, -5, 3, -13, -27, -21, -8, 7, 20, 19,
17, 3, -18, -13, -7, -5, -14, -19, -9, -18, -18, 6, 11, 5, -20, -24, -6, -26, -28, -1,
13, -18, -38, -24, -15, 13, 20, 27, 32, 32, 33, 30, 29, 15, 36, 35, 34, 19, -19, -14,
-26, -22, -24, -33, -30, -33, -29, -21, 8, 0, 13, 12, 0, 2, 12, 34, 30, 24, 18, 31,
44, 34, 19, 25, 11, -14, -24, -20, -8, 5, -24, -16, -20, -36, -44, -15, -26, 1, 20, -42,
26, -25, 14, 30, 18, 41, 32, 45, 2, 3, -9, -10, -22, -20, -38, -20, -11, -12, 13, 7,
5, 17, 45, 40, 41, 24, 33, 36, 15, 15, -23, -45, -50, -56, -51, -40, -41, -47, -49, -18,
-12, 17, 36, 33, 48, 46, 47, -21, -51, -46, -51, -45, -55, -60, -56, -52, 8, -1, 5, 23,
22, -1, -43, -29, -53, -39, -52, -50, -60, -39, -20, -12, -16, -19, 12, 1, 27, 38, 45, 56,
59, 43, 33, 30, 33, 16, 30, 35, 6, 12, -2, 31, 5, -2, 0, 11, 27, -38, -45, -54,
-32, -61, -29, -38, -38, 30, 62, 45, 32, 60, 38, 50, -28, 26, -7, -5, 6, -85, -27, -74,
-22, 14, -53, 48, 58, 38, 53, 52, 77, 22, 59, 13, 31, -29, -63, -51, -63, 29, -27, 23,
50, 58, -32, -21, 18, -62, -56, -18, -32, -29, 38, -33, -20, -25, -73, -50, -60, -60, -73, -65,
-56, -49, -42, -18, 43, -19, -63, 4, 55, 28, 40, 71, 54, 56, 55, 54, 65, 49, 64, 65,
53, 66, 63, 63, 73, 70, 72, 93, 72, 73, 49, 73, 17, -9, 55, 75, 21, 60, 31, -8,
57, 0, -19, -27, 6, -47, -50, -36, 28, -57, -76, -28, -93, -9, -1, 34, -39, 8, 49, 29,
14, -77, -45, -43, -55, -86, -59, -58, -68, -72, -78, -65, -77, -67, -77, -68, -81, -70, -77, -86,
-65, -76, -64, -77, -72, -65, -71, -64, -52, -52, -70, -68, -67, -63, -63, -46, -88, -52, -14, -44,
-45, -35, 10, 35, 60, 60, 70, 74, 83, 74, 81, 89, 87, 78, 68, 90, 76, 89, 78, 90,
90, 75, 90, 86, 78, 78, 88, 55, 31, 36, 78, 26, 47, 82, 64, 85, 47, 70, 85, 67,
51, 72, 75, 23, 37, 85, 82, 73, 79, 84, 74, 75, 77, 82, 77, 82, 80, 86, 76, 72,
89, 76, 91, 78, 84, 48, 73, 80, 45, -8, -32, 31, -44, -99, -72, -71, -85, -78, -91, -89,
-89, -96, -83, -88, -92, -91, -89, -95, -100, -87, -80, -92, -89, -87, -90, -86, -91, -86, -90, -95,
-93, -95, -96, -104, -103, -98, -95, -107, -94, -90, -88, -88, -95, -91, -90, -95, -89, -95, -93, -80,
-87, -98, -93, -84, -98, -100, -97, -89, -104, -93, -105, -90, -108, -84, -89, -88, -52, -45, 65, 61,
80, 88, 97, 101, 85, 93, 102, 105, 92, 95, 96, 98, 101, 109, 103, 104, 101, 98, 103, 74,
44, 67, 87, 94, 86, 101, 104, 97, 100, 100, 96, 95, 95, 89, 96, 101, 95, 95, 105, 98,
97, 99, 94, 99, 109, 101, 96, 99, 97, 101, 103, 108, 102, 97, 101, 97, 96, 104, 106, 91,
92, 99, 106, 88, 72, 90, 96, 100, 90, 89, 96, 90, 95, 104, 104, 93, 91, 98, 99, 93,
95, 99, 99, 99, 92, 89, 87, 89, 98, 98, 96, 98, 101, 103, 92, 98, 103, 102, 87, 103,
107, 100, 87, 80, 54, 33, 32, -31, -52, -78, -37, -84, -106, -78, -105, -91, -104, -94, -99, -90,
-94, -104, -103, -99, -103, -100, -101, -107, -107, -103, -100, -97, -97, -100, -99, -98, -98, -99, -100, -98,
-103, -98, -95, -99, -94, -95, -96, -96, -106, -108, -96, -100, -103, -101, -103, -99, -97, -97, -96, -100,
-92, -103, -99, -109, -87, -74, -57, -74, -97, -80, -76, -77, -94, -38, -64, -92, -93, -64, -76, -99,
-90, -99, -91, -96, -95, -97, -93, -97, -97, -103, -103, -103, -95, -95, -92, -100, -98, -101, -102, -99,
-94, -110, -105, -94, -95, -96, -80, 17, 69, 94, 92, 91, 97, 97, 100, 93, 91, 88, 95, 97,
97, 96, 93, 97, 105, 106, 100, 96, 94, 95, 103, 99, 97, 90, 91, 98, 98, 99, 103, 107,
103, 108, 101, 97, 106, 110, 107, 104, 107, 105, 106, 104, 100, 103, 110, 94, 89, 102, 99, 93,
90, 54, 18, -39, -86, -87, -95, -95, -97, -92, -93, -95, -98, -98, -104, -103, -104, -103, -101, -105,
-105, -106, -110, -92, -63, -63, -36, -49, -51, -32, -39, -52, -60, -84, -99, -97, -102, -99, -103, -101,
-104, -99, -99, -94, -93, -86, -50, -29, -60, -97, -97, -94, -92, -97, -101, -86, -92, -99, -102, -87,
-61, -45, -26, -31, -21, -44, -70, -60, -70, -100, -78, -84, -99, -98, -107, -103, -109, -87, -95, -96,
-96, -87, -92, -101, -100, -101, -96, -97, -98, -103, -98, -101, -97, -89, -40, -4, -5, 25, 36, 35,
54, 56, 56, 70, 80, 79, 81, 88, 96, 97, 91, 94, 90, 94, 95, 95, 96, 96, 94, 88,
98, 73, 69, 72, 84, 101, 92, 97, 94, 97, 96, 97, 95, 96, 99, 103, 103, 102, 105, 103,
104, 101, 102, 100, 100, 99, 100, 100, 100, 101, 101, 103, 104, 105, 107, 104, 106, 104, 106, 102,
102, 102, 101, 99, 98, 103, 99, 102, 96, 103, 88, 91, 91, 90, 79, 50, 33, 18, -1, -20,
-15, -14, -10, -10, -9, -20, -22, -18, -10, -49, -54, -50, -60, -67, -82, -85, -74, -68, -81, -84,
-89, -86, -97, -93, -97, -97, -98, -97, -101, -101, -100, -100, -96, -97, -97, -97, -96, -95, -92, -96,
-93, -94, -92, -92, -92, -93, -92, -93, -94, -95, -96, -98, -99, -99, -100, -101, -101, -101, -102, -101,
-102, -101, -101, -101, -101, -102, -103, -103, -103, -103, -102, -102, -102, -102, -102, -101, -102, -101, -102, -102,
-101, -100, -100, -101, -100, -100, -101, -100, -101, -102, -103, -101, -101, -99, -99, -98, -99, -100, -100, -101,
-96, -92, -94, -86, -78, -88, -78, -62, -29, -34, -29, -15, -9, 3, -5, 29, 32, 18, 52, 55,
48, 49, 66, 73, 58, 61, 68, 92, 68, 66, 82, 84, 85, 89, 94, 88, 97, 88, 95, 93,
95, 98, 96, 96, 97, 97, 98, 99, 99, 101, 99, 99, 99, 100, 98, 98, 97, 96, 96, 96,
95, 96, 96, 97, 98, 99, 99, 99, 100, 99, 99, 98, 98, 98, 98, 98, 99, 98, 98, 98,
98, 97, 97, 99, 98, 99, 99, 98, 98, 99, 98, 97, 95, 96, 96, 95, 94, 92, 91, 91,
92, 95, 97, 98, 89, 85, 90, 75, 81, 78, 68, 65, 50, 46, 53, 55, 54, 53, 52, 60,
62, 58, 67, 60, 51, 40, 40, 52, 53, 52, 43, 49, 42, 40, 52, 46, 38, 30, 21, 34,
13, 18, 20, 15, -1, -1, 10, -1, 4, 4, 10, -1, 3, -11, -5, -15, -19, -28, -36, -39,
-47, -45, -48, -50, -51, -59, -70, -57, -84, -71, -70, -71, -76, -76, -72, -86, -75, -86, -80, -75,
-68, -73, -70, -67, -74, -77, -82, -82, -88, -88, -88, -88, -95, -96, -94, -96, -95, -90, -91, -90,
-83, -94, -88, -79, -75, -78, -79, -74, -72, -69, -67, -66, -64, -49, -51, -52, -59, -67, -65, -64,
-61, -50, -51, -51, -52, -58, -52, -60, -66, -62, -61, -71, -64, -68, -74, -79, -81, -86, -89, -90,
-95, -91, -92, -93, -96, -93, -96, -93, -93, -84, -87, -79, -75, -86, -80, -84, -77, -67, -60, -55,
-57, -63, -59, -52, -43, -32, -23, -14, -15, 2, -4, -4, 13, 10, 10, 23, 42, 44, 56, 66,
70, 77, 84, 88, 88, 91, 95, 98, 95, 94, 98, 101, 100, 99, 100, 102, 100, 98, 101, 100,
100, 100, 100, 100, 101, 102, 102, 102, 102, 102, 101, 101, 102, 101, 101, 102, 101, 101, 101, 100,
100, 101, 100, 100, 100, 100, 99, 99, 99, 99, 99, 100, 99, 99, 99, 100, 100, 101, 102, 100,
98, 99, 100, 100, 95, 98, 98, 94, 91, 88, 88, 84, 81, 75, 73, 73, 77, 69, 67, 65,
65, 65, 57, 58, 59, 63, 57, 51, 53, 49, 44, 44, 35, 26, 27, 27, 20, 21, 16, 1,
1, -3, -11, -12, -20, -18, -30, -40, -38, -51, -52, -57, -62, -61, -67, -82, -84, -87, -95, -93,
-97, -97, -100, -100, -99, -103, -103, -100, -101, -102, -101, -102, -100, -102, -103, -102, -101, -102, -100, -99,
-100, -99, -101, -101, -101, -100, -100, -98, -98, -100, -99, -99, -100, -98, -99, -99, -98, -98, -96, -96,
-97, -96, -96, -97, -97, -97, -97, -98, -97, -98, -99, -98, -99, -98, -99, -100, -99, -100, -97, -97,
-98, -98, -98, -98, -99, -99, -97, -98, -98, -99, -98, -97, -98, -93, -93, -90, -92, -87, -82, -79,
-69, -71, -62, -60, -61, -59, -57, -47, -53, -41, -40, -33, -28, -28, -12, -17, -9, 0, 0, 9,
14, 16, 21, 27, 36, 39, 44, 51, 52, 50, 54, 57, 63, 65, 69, 71, 72, 77, 69, 74,
73, 76, 77, 80, 75, 73, 81, 74, 74, 80, 78, 76, 77, 78, 75, 71, 77, 79, 82, 82,
77, 78, 77, 76, 74, 73, 69, 72, 71, 70, 73, 72, 71, 59, 64, 62, 60, 62, 61, 63,
56, 56, 56, 53, 53, 48, 46, 49, 44, 43, 43, 44, 40, 34, 36, 22, 24, 20, 13, 23,
21, 21, 17, 19, 14, 9, 7, 8, 10, 14, 17, 18, 15, 11, 7, 5, 5, -2, 0, -1,
0, -2, 4, 5, 2, -2, -14, -10, -10, -6, -6, -12, -8, -6, -7, -16, -24, -21, -17, -16,
-15, -16, -13, -15, -10, -8, -11, -7, -9, -11, -7, -4, -4, -8, -7, 1, 0, 4, 7, 6,
4, 6, 5, 1, 2, 2, 0, -1, -4, -5, 0, 4, 2, -1, 1, -3, -1, 1, 6, 8,
8, 11, 17, 22, 25, 29, 26, 31, 34, 30, 31, 33, 29, 27, 28, 25, 26, 31, 30, 30,
35, 33, 34, 30, 27, 32, 36, 41, 38, 35, 34, 40, 41, 48, 54, 48, 39, 36, 38, 37,
41, 37, 34, 31, 35, 51, 59, 55, 47, 46, 43, 40, 33, 36, 45, 48, 49, 46, 50, 59,
61, 53, 48, 47, 47, 44, 46, 48, 48, 47, 40, 41, 43, 45, 42, 38, 35, 35, 33, 32,
39, 40, 40, 39, 34, 38, 35, 35, 37, 35, 38, 33, 27, 25, 32, 38, 42, 41, 36, 32,
33, 32, 31, 28, 25, 28, 32, 37, 40, 41, 37, 36, 30, 30, 29, 26, 27, 23, 24, 22,
20, 19, 16, 13, 13, 18, 19, 19, 16, 14, 17, 17, 19, 19, 18, 18, 19, 19, 16, 15,
14, 10, 12, 11, 13, 14, 12, 14, 12, 10, 7, 7, 10, 11, 15, 18, 15, 11, 11, 8,
6, 6, 4, 8, 10, 11, 11, 8, 10, 15, 14, 14, 20, 18, 15, 16, 18, 14, 15, 14,
9, 6, -2, -2, 0, 1, 3, 9, 10, 7, 8, 7, 5, 3, 3, 3, 0, -1, -1, -1,
3, 5, 4, 4, 5, 5, 8, 10, 6, 4, 5, 5, 1, 0, 2, 4, 5, 6, 8, 7,
8, 8, 11, 12, 12, 13, 13, 12, 9, 10, 5, 2, 0, 0, 0, 1, 2, -1, -5, -6,
-4, -6, -7, -4, -4, -5, -4, -3, -6, -6, -1, -4, -5, -2, 0, -1, -1, -1, 0, -3,
-4, -5, -8, -7, -5, -4, -3, -4, -5, -6, -5, -4, -7, -4, -5, -7, -9, -7, -3, -2,
-5, -8, -8, -8, -6, -6, -8, -11, -12, -15, -15, -14, -14, -14, -13, -13, -12, -14, -14, -15,
-15, -14, -13, -15, -15, -13, -13, -11, -12, -10, -10, -9, -11, -11, -12, -12, -12, -11, -11, -11,
-13, -14, -12, -14, -13, -10, -11, -12, -12, -15, -14, -14, -18, -16, -15, -15, -13, -13, -13, -15,
-15, -16, -17, -16, -20, -20, -19, -16, -16, -18, -18, -16, -16, -14, -12, -13, -10, -8, -10, -9,
-7, -8, -9, -10, -11, -7, -6, -11, -7, -7, -8, -6, -7, -8, -7, -8, -13, -9, -11, -15,
-14, -15, -18, -17, -13, -14, -14, -12, -11, -12, -11, -10, -12, -13, -14, -19, -22, -18, -19, -20,
-17, -18, -18, -15, -16, -17, -17, -18, -20, -19, -20, -19, -20, -20, -21, -22, -27, -29, -28, -28,
-31, -33, -34, -35, -34, -35, -32, -31, -28, -27, -28, -27, -24, -22, -23, -21, -19, -16, -16, -16,
-18, -17, -16, -16, -16, -18, -19, -23, -26, -28, -31, -34, -39, -41, -42, -41, -43, -45, -46, -45,
-45, -50, -49, -48, -45, -44, -48, -46, -40, -39, -41, -41, -37, -36, -36, -33, -36, -34, -35, -33,
-28, -29, -30, -28, -32, -35, -35, -34, -33, -32, -27, -25, -23, -22, -22, -20, -17, -14, -12, -9,
-8, -6, -3, -3, -2, -3, 0, 6, 8, 10, 11, 11, 13, 14, 14, 14, 17, 20, 20, 20,
21, 23, 26, 27, 30, 33, 34, 38, 40, 40, 43, 44, 47, 42, 45, 48, 50, 52, 54, 56,
54, 58, 61, 65, 67, 67, 69, 68, 68, 70, 70, 71, 73, 72, 78, 83, 84, 82, 83, 83,
80, 79, 76, 79, 78, 75, 73, 72, 67, 70, 78, 78, 72, 75, 73, 68, 69, 66, 64, 60,
61, 57, 65, 64, 61, 60, 59, 59, 55, 48, 48, 54, 51, 51, 53, 36, 34, 49, 41, 28,
22, 25, 17, 14, 3, 4, 0, -8, -16, -5, -6, -30, -20, -26, -32, -33, -39, -49, -44, -50,
-64, -57, -53, -65, -60, -66, -61, -61, -80, -77, -85, -85, -91, -87, -85, -89, -97, -99, -97, -96,
-97, -100, -99, -96, -96, -102, -100, -102, -101, -102, -101, -102, -102, -102, -101, -101, -102, -101, -102, -102,
-102, -102, -102, -102, -102, -102, -102, -101, -102, -102, -101, -100, -101, -101, -100, -100, -101, -101, -100, -100,
-99, -96, -96, -98, -97, -96, -95, -91, -91, -86, -84, -85, -83, -77, -71, -71, -64, -58, -55, -52,
-49, -41, -45, -50, -47, -43, -42, -44, -38, -32, -31, -29, -16, -6, -3, 3, 11, 14, 17, 22,
31, 37, 41, 42, 44, 48, 51, 55, 59, 61, 64, 72, 77, 77, 83, 86, 84, 86, 85, 85,
85, 88, 88, 88, 89, 89, 88, 88, 89, 89, 92, 92, 94, 96, 99, 98, 99, 98, 96, 98,
99, 98, 98, 99, 98, 98, 98, 97, 98, 99, 98, 98, 97, 97, 97, 97, 97, 98, 98, 98,
98, 99, 98, 99, 99, 98, 96, 97, 97, 97, 97, 96, 92, 94, 94, 91, 92, 89, 89, 89,
88, 87, 87, 85, 82, 82, 82, 80, 80, 81, 82, 80, 74, 74, 72, 69, 69, 67, 65, 62,
55, 51, 48, 45, 44, 44, 42, 40, 35, 29, 28, 25, 20, 13, 11, 8, 8, 7, 4, 0,
-6, -12, -14, -15, -14, -17, -21, -18, -21, -26, -31, -33, -33, -30, -35, -34, -35, -40, -36, -40,
-42, -41, -43, -45, -40, -44, -50, -48, -51, -52, -50, -51, -53, -51, -56, -57, -56, -56, -60, -62,
-60, -62, -58, -59, -60, -59, -61, -63, -63, -62, -63, -61, -62, -62, -64, -64, -65, -67, -68, -67,
-65, -66, -66, -68, -67, -69, -68, -68, -69, -69, -71, -72, -68, -67, -69, -63, -64, -64, -62, -62,
-58, -58, -54, -53, -50, -51, -53, -51, -52, -51, -51, -50, -51, -50, -51, -54, -54, -54, -55, -55,
-53, -54, -51, -51, -51, -51, -50, -51, -53, -52, -51, -45, -44, -42, -37, -36, -34, -34, -35, -34,
-33, -31, -28, -25, -28, -28, -25, -26, -26, -21, -21, -19, -17, -20, -19, -16, -16, -20, -21, -20,
-19, -19, -18, -20, -19, -19, -17, -20, -20, -15, -14, -15, -12, -8, -14, -12, -12, -12, -11, -11,
-12, -9, -7, -7, -6, -4, -2, -2, 1, -1, -1, 2, 2, 3, 5, 4, 6, 11, 14, 14,
17, 18, 18, 22, 23, 23, 26, 27, 25, 26, 26, 26, 25, 24, 24, 25, 23, 22, 22, 19,
19, 19, 18, 18, 19, 20, 20, 18, 20, 23, 25, 26, 27, 29, 31, 29, 30, 30, 31, 32,
31, 31, 30, 31, 30, 29, 30, 31, 32, 31, 31, 35, 34, 34, 33, 35, 33, 33, 34, 36,
39, 39, 39, 37, 39, 37, 34, 35, 35, 35, 34, 34, 33, 33, 34, 34, 32, 30, 29, 33,
31, 30, 33, 34, 31, 31, 32, 33, 33, 31, 30, 30, 31, 28, 30, 33, 30, 29, 29, 30,
30, 30, 30, 31, 31, 31, 30, 31, 32, 30, 29, 30, 31, 28, 27, 29, 28, 26, 27, 26,
27, 27, 23, 23, 23, 23, 24, 24, 23, 23, 21, 18, 20, 18, 16, 14, 16, 16, 15, 15,
13, 14, 13, 12, 12, 12, 12, 12, 8, 9, 8, 5, 6, 7, 5, 2, 3, 5, 8, 8,
6, 3, 2, 1, 1, -1, -2, -1, -2, -2, -2, -4, -6, -4, -7, -7, -7, -7, -6, -7,
-9, -10, -11, -13, -12, -12, -10, -10, -11, -13, -13, -11, -15, -15, -13, -15, -16, -17, -17, -16,
-14, -17, -17, -17, -16, -15, -17, -18, -17, -19, -22, -19, -18, -20, -22, -21, -21, -21, -21, -22,
-19, -20, -19, -20, -22, -22, -25, -23, -24, -23, -22, -24, -25, -23, -23, -23, -20, -19, -19, -21,
-22, -19, -20, -21, -19, -18, -15, -16, -16, -17, -17, -17, -17, -17, -18, -17, -17, -16, -17, -16,
-15, -13, -14, -14, -14, -16, -14, -13, -13, -13, -13, -15, -16, -17, -15, -14, -15, -14, -14, -14,
-16, -15, -13, -14, -15, -13, -14, -13, -11, -10, -11, -11, -8, -9, -8, -9, -9, -9, -9, -9,
-9, -9, -9, -8, -8, -9, -9, -9, -11, -11, -11, -10, -10, -10, -8, -9, -9, -8, -9, -9,
-8, -9, -9, -9, -9, -9, -9, -8, -7, -7, -7, -9, -8, -9, -7, -6, -7, -7, -5, -6,
-7, -6, -6, -3, -4, -3, -5, -6, -6, -5, -4, -5, -5, -6, -7, -7, -6, -7, -8, -7,
-8, -7, -7, -8, -7, -6, -8, -8, -7, -7, -8, -7, -7, -6, -6, -7, -6, -6, -7, -7,
-8, -9, -8, -6, -4, -5, -4, -3, -3, -3, -2, -1, -2, -1, 0, 1, 1, 1, 1, 0,
0, -1, 1, 0, -2, -1, -1, -1, -2, -1, -1, -2, -2, -1, 0, -1, -1, -1, -2, -2,
1, 0, -1, -1, -1, -2, -2, 0, 1, 1, 0, 2, 2, 1, 1, 1, 1, 0, -1, -1,
-2, -3, -2, 0, 0, 0, 0, -2, -1, -1, -1, 0, 2, -1, 0, 2, 1, 2, 2, 2,
3, 3, 2, 3, 2, 1, 1, 2, 3, 5, 4, 2, 3, 2, 2, 2, 4, 4, 4, 3,
5, 5, 4, 3, 3, 3, 1, 0, 2, 2, 1, 1, 1, 2, 1, -2, -1, 0, -1, 0,
1, 2, 2, 2, 3, 3, 4, 4, 3, 4, 5, 6, 5, 4, 3, 4, 4, 3, 4, 5,
4, 5, 6, 6, 6, 3, 6, 6, 6, 7, 7, 5, 5, 5, 3, 3, 2, 1, 1, 2,
2, 3, 2, 1, 0, -1, 0, 0, 0, -1, -1, -1, 1, 0, -1, 0, -1, -1, 1, 4,
3, 5, 5, 2, 2, 2, 3, 2, 2, 3, 4, 3, 3, 3, 4, 4, 5, 5, 4, 4,
3, 2, 1, 1, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0, 0, -2, -2, -2, -1, -1,
0, -1, -2, -2, -3, -1, -1, 0, 0, 0, -2, -1, 0, 0, 0, 1, -1, -1, 2, 1,
1, 2, 1, -2, -1, -1, -1, 0, -1, -1, -1, -3, -4, -5, -4, -5, -4, -3, -3, -2,
-3, -3, -5, -4, -5, -6, -3, -2, -2, -2, -1, 0, -1, -2, -2, -1, -3, -3, -3, -3,
-4, -3, -2, -1, -1, -2, -1, -1, -1, -2, -2, -2, -2, -1, 0, -2, -2, -2, -1, -1,
-1, -2, -3, -2, -1, -3, -3, -2, -4, -4, -3, -4, -4, -4, -3, -3, -2, -3, -4, -6,
-3, -3, -4, -3, -3, -3, -3, -3, -3, -4, -4, -4, -3, -3, -3, -3, -4, -4, -4, -3,
-3, -3, -2, -1, -3, -3, -2, -3, -2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -3, -2,
-2, -1, 0, -1, -2, -3, -2, -2, -3, -2, -2, -2, -2, -2, -1, -2, -1, -1, -1, -1,
-1, -2, -2, -3, -3, -3, -2, -2, -2, -1, -1, -1, -2, -2, -1, 0, 0, -1, 0, -1,
-2, -2, 0, 0, -1, 0, 0, 0, 0, 0, 1, -1, 0, 0, -2, -3, -1, -1, -2, -3,
-2, -1, -2, -2, -1, -1, -1, -1, -1, -1, 1, 1, 0, 1, 1, 1, 1, 0, -1, 0,
1, 1, 1, 3, 4, 1, 1, 1, 1, 1, 0, 1, 1, 2, 2, 2, 2, 2, 3, 4,
3, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 2, 1, 1,
1, -1, -1, -1, -1, -1, 0, 1, 2, 1, 0, 1, 1, 0, -1, 0, 0, -1, 0, 0,
1, 2, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1,
1, 1, 2, 2, 2, 1, 1, 0, 1, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1,
1, 2, 3, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 3, 2, 2, 2,
2, 3, 2, 2, 2, 2, 2, 2, 1, 2, 3, 2, 2, 1, 0, 0, 0, 0, 1, 1,
1, 2, 2, 1, 1, 2, 3, 3, 4, 4, 4, 3, 4, 3, 4, 4, 3, 4, 3, 2,
3, 3, 3, 3, 3, 3, 3, 2, 3, 4, 3, 2, 3, 3, 3, 3, 3, 3, 4, 3,
3, 4, 4, 4, 3, 3, 4, 3, 3, 3, 3, 2, 2, 3, 4, 3, 3, 3, 3, 3,
4, 3, 3, 3, 4, 4, 4, 5, 4, 3, 4, 4, 5, 4, 4, 4, 4, 3, 5, 4,
3, 4, 3, 3, 3, 3, 2, 3, 3, 3, 3, 2, 2, 2, 3, 2, 2, 2, 2, 2,
1, 1, 2, 2, 2, 1, 0, 0, 2, 1, 1, 0, 0, 2, 2, 2, 2, 2, 1, 1,
2, 2, 2, 3, 3, 3, 2, 2, 4, 4, 3, 4, 4, 3, 3, 3, 3, 1, 2, 2,
1, 3, 3, 3, 3, 2, 3, 4, 3, 2, 1, 2, 3, 3, 2, 3, 4, 3, 2, 2,
2, 3, 2, 2, 1, 1, 2, 2, 1, 1, 1, 0, 0, -1, 1, 1, 1, 0, 0, 1,
0, 2, 0, 1, 2, 1, 2, 2, 1, 1, 2, 0, 1, 4, 1, 1, 4, 3, 4, 4,
3, 2, 2, 1, 4, 8, 9, 4, -1, 1, -1, 0, 2, 0, 2, -2, -3, -3, -5, -1,
-1, -2, -1, -6, -2, 1, -1, 4, 4, 7, 5, -1, 3, 4, 8, 8, 6, 6, 4, 4,
4, 3, 4, 4, 2, 2, 1, 1, 0, -1, 1, -2, -2, -3, -5, -5, -7, -8, -5, -4,
-3, -5, -5, -1, -2, 0, 0, 1, 2, 0, 1, 3, 5, 4, 2, 2, 2, 2, 2, 2,
3, 4, 5, 5, 4, 2, 4, 5, 4, 3, 1, 2, 2, 2, 2, 1, 2, 0, -1, -1,
0, -1, -3, -4, -1, -1, -3, -4, -3, -3, -3, -4, -3, -3, -4, -2, -2, -1, -1, -1,
-1, -2, -1, -1, 0, 2, 2, 1, 1, 1, 2, 3, 2, 4, 2, 4, 5, 3, 4, 3,
3, 2, 1, 0, 0, 2, 2, -1, 0, 0, -1, -2, -4, -3, -1, -3, -4, -4, -4, -3,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1,
0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1,
0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, -1, 0, -1, 0, -1, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, -1, 0, -1, -1, 0, -1, 0,
-1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1,
0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0,
0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0,
-1, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0,
-1, 0, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0,
-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, -1,
0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0,
0, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0,
-1, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, 0, 0, -1,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0,
-1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0,
0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0,
0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, -1,
0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, 0, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, -1, 0, -1, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0,
-1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0,
0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0,
-1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, -1, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0,
0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0,
-1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-1, 0, -1, };

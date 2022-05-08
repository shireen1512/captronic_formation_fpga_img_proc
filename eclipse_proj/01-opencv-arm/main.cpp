/*
 * main.cpp
 *
 *  Created on: 29 avr. 2022
 *      Author: jmecodol
 */


#include "opencv2/opencv.hpp"
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>

using namespace std;
using namespace cv;

int main(){

    Mat frame;


    cvtColor(frame, frame, COLOR_BGR2GRAY);

  return 0;
}


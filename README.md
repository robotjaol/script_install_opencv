# script_install_opencv
Only one command to installed opencv cpp / py

## Prerequisites

- Ubuntu 20.04, 22.04, or 24.04
- `git` installed on your system
- cpp & python3

## Installation Steps

1. **Clone this repository:**
   
   Open a terminal and run the following command to clone the repository :

   ```bash
   git clone <git@github.com:robotjaol/script_install_opencv.git>
   cd <script_install_opencv>  
## Run the installation script:
This repository includes a pre-configured script for installing OpenCV. To execute it with root privileges (as necessary for installing dependencies), use the following command

    sudo chmod+x install_opencv.sh && sudo ./install_opencv.sh

## The script will:
- Update the package list and upgrade the system.
- Install all required dependencies for building OpenCV from source, including compilers, libraries, and - Python support.
- Clone OpenCV and OpenCV contrib repositories.
- Build OpenCV with support for both C++ and Python.
- Install OpenCV and link the necessary files for system-wide access.

## Verify The Instalation
After the script finishes, you can verify the OpenCV installation:

1. **Python** 

        python3 -c "import cv2; print(cv2.__version__)"

For C++: You can create test.cpp and compile a simple OpenCV C++ program to verify the installation:

2. **CPP**
    
        #include <opencv2/opencv.hpp>
        int main() {
        cv::Mat img = cv::imread("test.jpg");
        cv::imshow("Image", img);
        cv::waitKey(0);
        return 0;
        }

    Compile and Run it 

        g++ test.cpp -o test `pkg-config --cflags --libs opencv4`
        ./test


## Final Notes
This script installs OpenCV for both C++ and Python.
If you only need OpenCV for Python or C++, you can edit the script to skip the unnecessary sections.





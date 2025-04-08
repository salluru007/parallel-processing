void rgb2gray_gpu (unsigned char* red, unsigned char* green, unsigned char* blue, unsigned char* gray, unsigned int width, unsigned int height){
    Timer timer;

    //Allocate GPU memory
    startTime(&timer);

    unsigned char *red_d, *green_d, *blue_d, *blue_d, *gray_d; 
    cudaMalloc((void**) &red_d, width*height* sizeof(unsigned char)); 
    cudaMalloc((void**) &green_d, width*height*sizeof(unsigned char)); 
    cudaMalloc((void**)&blue_d, width height sizeof(unsigned char)); 
    cudaMalloc((void**) &gray_d, width*height*sizeof(unsigned chur)); 
    cudaDevicesynchronize;
    stopTimer(&timer):
    printElapsedTime(timer, "Allocation time");

    //Copy data to GPU
    
    startTime(&timer);
    cudaMemcpy(red_d, red, width*height sizeof(unsigned char), cudaMemcpyHostToDevice); cudaMemcpy(green_d, green, width*height sizeof(unsigned char), cudaMemcpyHostToDevice); cudaMemcpy(blue_d, blue, width*height sizeof(unsigned char), cudaMemcpyHostToDevice); cudaDevicesynchronize();
    stoptime(&timer);
    printelapsedTime(timer, "Copy to GPU time");
    // call kernel
    startTime(&ymer);
    cudaDeviceSynchronize();
    stoptime(&timer))
    printelapsedTime(timer, "Kernel time"; GREEN);
    
    // Copy data from GPU startTime(&timer);
}
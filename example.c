#include "mnist.h"
#include <stdio.h>

int main() {
    int batch_size = 5;
    int batch_index = 1;  // To load the second batch of 5 images (i.e., images 5 to 9)
    double batch_images[batch_size][SIZE];
    int batch_labels[batch_size];
    double reshaped_images[batch_size][28][28];

    // Load the second batch of MNIST images and labels
    load_mnist_batch(batch_size, batch_index, batch_images, batch_labels);

    // Reshape the batch images from 1D to 2D (28x28)
    reshape_batch_to_2d(batch_size, batch_images, reshaped_images);

    // Print the reshaped images
    print_reshaped_images(batch_size, reshaped_images);

    return 0;
}


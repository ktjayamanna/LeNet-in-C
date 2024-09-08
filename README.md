<<<<<<< HEAD
# LeNet-in-C
=======
```markdown
# LeNet-5 Implementation in C

This project implements the **LeNet-5** convolutional neural network architecture from scratch in C. The network is designed to classify digits from the MNIST dataset, which consists of 28x28 grayscale images.

## Network Architecture

The LeNet-5 architecture follows the structure below:

```
Input (32x32x1)  ---> [Conv1] ---> (28x28x6)  ---> [Pool1] ---> (14x14x6)
                             ↓                                ↓
                          [Conv2] ---> (10x10x16)  ---> [Pool2] ---> (5x5x16)
                             ↓                                ↓
                          [FC1] ---> (120 units)
                             ↓
                          [FC2] ---> (84 units)
                             ↓
                          [Output] ---> (10 units for digit classification)
```

### Details:
1. **Input**: 32x32x1 grayscale image (28x28 MNIST images are padded to 32x32).
2. **Conv1**: Applies 6 filters of size 5x5 to produce a 28x28x6 output.
3. **Pool1**: 2x2 max pooling reduces the size to 14x14x6.
4. **Conv2**: Applies 16 filters of size 5x5 to produce a 10x10x16 output.
5. **Pool2**: 2x2 max pooling reduces the size to 5x5x16.
6. **FC1**: Fully connected layer with 120 units.
7. **FC2**: Fully connected layer with 84 units.
8. **Output**: Fully connected layer with 10 units for digit classification (0-9).

## Getting Started

### Prerequisites

- **Docker**: You'll need Docker installed on your machine to build and run the containerized environment.
- **C Compiler**: The project is compiled using `gcc` inside the Docker container.

### Installation and Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/lenet-mnist-c.git
   cd lenet-mnist-c
   ```

2. **Build the Docker Image**:
   Run the following command to build the Docker image:
   ```bash
   docker build -t lenet_mnist_image .
   ```

3. **Run the Docker Container**:
   Once the image is built, you can run the container:
   ```bash
   docker run -it lenet_mnist_image
   ```

This will compile the LeNet implementation in C, download the MNIST dataset (if not already included), and start the neural network training process.

## Project Structure

```
.
├── Dockerfile              # Docker configuration file
├── lenet_mnist.c           # Main source code for LeNet-5 in C
├── README.md               # This readme file
└── mnist_loader.c          # Code to load and preprocess the MNIST dataset
```

## Dependencies

The Dockerfile installs the following dependencies:
- **GCC**: For compiling the C code.
- **zlib**: For decompressing and handling the MNIST dataset.

These are automatically installed when you build the Docker image.

## How It Works

1. **Load the MNIST Dataset**: The MNIST dataset is loaded into memory, and images are padded from 28x28 to 32x32 to match the LeNet input size.
2. **Forward Pass**: The input is passed through the convolutional, pooling, and fully connected layers to generate class probabilities for digit classification.
3. **Training**: The network is trained using backpropagation and gradient descent to minimize the cross-entropy loss.
4. **Prediction**: After training, the model predicts the class of unseen MNIST digits.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

### Next Steps

- Implement backpropagation for training the network.
- Integrate weight initialization and gradient descent.
- Add support for saving and loading the model after training.

Happy coding!
```

## References


1. [Dataloader](https://github.com/takafumihoriuchi/MNIST_for_C)
>>>>>>> 7732cf3 (Initial commit)

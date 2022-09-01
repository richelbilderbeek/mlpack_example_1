all: mlpack_example_1

mlpack_example_1: nn_regression.cpp
	g++ nn_regression.cpp -o mlpack_example_1

nn_regression.cpp:
	wget https://raw.githubusercontent.com/mlpack/examples/master/neural_network_regression/nn_regression.cpp

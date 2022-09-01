all: mlpack_example_1_dqn mlpack_example_1_nn

mlpack_example_1_dqn: cartpole_dqn.cpp makefile.mlpack_dqn
	make -f makefile.mlpack_dqn

makefile.mlpack_dqn:
	wget https://raw.githubusercontent.com/mlpack/examples/master/reinforcement_learning_gym/cartpole_dqn/Makefile -O makefile.mlpack_dqn

cartpole_dqn.cpp:
	wget https://raw.githubusercontent.com/mlpack/examples/master/reinforcement_learning_gym/cartpole_dqn/cartpole_dqn.cpp

mlpack_example_1_nn_own: nn_regression.cpp
	g++ nn_regression.cpp \
    -o mlpack_example_1 \
    -I /usr/include \
    -fopenmp -std=c++17 \
    -larmadillo -lmlpack

mlpack_example_1_nn: nn_regression.cpp makefile.mlpack_nn
	make -f makefile.mlpack_nn

nn_regression.cpp:
	wget https://raw.githubusercontent.com/mlpack/examples/master/neural_network_regression/nn_regression.cpp

makefile.mlpack_nn:
	wget https://raw.githubusercontent.com/mlpack/examples/master/neural_network_regression/Makefile -O makefile.mlpack_nn


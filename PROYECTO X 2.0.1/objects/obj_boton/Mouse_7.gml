global.CLIENT = network_create_socket(network_socket_tcp);

var connection = network_connect(global.CLIENT, "192.168.1.170",6510);

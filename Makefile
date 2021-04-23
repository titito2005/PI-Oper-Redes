#Makefile ProyectoIntegradorRedesOper Grupo_C

#Cliente
cliente : src/MainCliente.cc  src/Servidor.cc src/Socket.cc src/Fecha.cc src/Parser.cc src/HTTPSolicitud.cc src/fort.cc
	g++ src/MainCliente.cc src/Servidor.cc src/Socket.cc src/Fecha.cc src/Parser.cc src/HTTPSolicitud.cc src/fort.cc -o src/cliente  -lssl -lcrypto -lpthread


#Servidor
servidor : src/MainServidor.cc src/Servidor.cc src/Socket.cc src/HTTPSolicitud.cc src/Fecha.cc src/Parser.cc src/fort.cc
	g++ src/MainServidor.cc src/Servidor.cc src/Socket.cc src/HTTPSolicitud.cc src/Mutex.cc src/Fecha.cc src/Parser.cc src/fort.cc -o src/servidor -lssl -lcrypto -lpthread

#Servidor Intermedio
servidorIntermedio: src/MainIntermedio.cc src/ServidorIntermedio.cc src/Socket.cc src/HTTPSolicitud.cc src/Fecha.cc src/Parser.cc src/fort.cc
	g++ src/MainIntermedio.cc src/ServidorIntermedio.cc src/Socket.cc src/HTTPSolicitud.cc src/Mutex.cc src/Fecha.cc src/Tabla.cc src/Parser.cc src/fort.cc -o src/servidorIntermedio -lssl -lcrypto -lpthread
	
#Clean
clean :
	rm -f *.o *.gch cliente servidor servidorIntermedio

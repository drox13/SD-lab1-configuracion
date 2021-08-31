# SD-lab1-sustentacion
Montar tres servidores con linux, un middleware y dos instancias, el usuario se debe poder conectar al middleware y verificar de manera gráfica la disponibilidad de las instancias (para esto se debe usar un script que desde el S.O. haga ping o con curl o wget a un servicio de prueba en las instancias y escriba el resultado en un archivo plano tipo log, es decir con la hora estado y mensaje), cuando el usuario cargue la pagina el middleware lee el archivo y carga el ultimo registro, y envía al usuario si las instancias están activas o inactivas de manera gráfica.  El middleware puede ser el sistema anfitrión, desde alli   Algo asi:  https://status.wistia.com/  https://status.segment.com/  Cuando una instancia falle se habilita un botón que ejecuta un bash son ssh que baja el repositorio y reinicia el proceso usando pm2.

ENLACES A REPOSITORIOS:
MIDDLEWARE --> https://github.com/drox13/SD-lab1-middleware.git
INSTANCIAS --> https://github.com/drox13/SD-lab1-instances.git

INSTRUCCIONES:
ejecutar el bash.sh este creara la imagen base, creara y ejecutara las instancias.
el middleware sera su maquina local(linux) --> ejecutar pm2 start app.js

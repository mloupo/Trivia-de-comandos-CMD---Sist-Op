
@echo off
title Trivia Sistemas Operativos
cls
MODE con:cols=100 lines=40
color 0a
echo.
echo.
echo            ====================================
echo            =                                  =
echo            =   Bienvenido a la trivia de SO.  =
echo            =                                  =
echo            ====================================
echo.
set/p nombre= ^   Por favor, ingresa tu nombre: 
pause
cls
echo.
echo.
echo.___________________________________________________________________________________________________
echo.
echo. Hola %nombre%, Bienvenido!!
echo. Pongamos a prueba nuestros conocimientos!
echo. Hay 120 puntos en juego!
echo. A ver que tal nos va!
echo. Igual, cuando termine la trivia seguro algo nuevo aprendiste!
echo ___________________________________________________________________________________________________
echo.
pause
SET var=0
SET puntos=0
cls
:preg1
echo ---------------------------------------------------------------------------------------------------
echo  Pregunta Nro 1 
echo ---------------------------------------------------------------------------------------------------
echo.
echo. I- Es uno de los comandos para redes mas utiles.  
echo.    Informa de los valores de configuracion de red TCP/IP actuales, 
echo.    actualiza la configuracion del protocolo DHCP
echo.    y el sistema de nombres de dominio (DNS). Como se llama este comando? &::IPCONFIG
echo.
echo     1) IPCONFIG
echo     2) NETSTAT
echo     3) SYSTEMINFO
echo     4) NSLOOKUP
echo     5) NETSH 
echo.
echo ---------------------------------------------------------------------------------------------------
echo.

SET /p var= ^  Selecciona una de las siguientes opciones [1-5]:

if "%var%"=="3" goto preg2
if "%var%"=="1" goto sumapunto1
if "%var%"=="2" goto preg2
if "%var%"=="4" goto preg2
if "%var%"=="5" goto preg2

echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
echo. Por favor %nombre%, ingresa nuevamente tu respuesta
echo.
pause
echo.
cls
goto:preg1


:sumapunto1
    set/a puntos= %puntos% + 10
    goto preg2

:preg2
    cls
    echo ------------------------------------------------------------------------------------------------
    echo  Pregunta Nro 2
    echo ------------------------------------------------------------------------------------------------
    echo.
    echo.  II- Este comando devuelve la mac del equipo donde se ejecuta. 
    echo.      La direccion MAC es un identificador de 48 bits determinado
    echo.      y configurado por el IEEE y el fabricante (24 bits cada uno). 
    echo.      Conocida tambien como direccion fisica es unica para cada dispositivo. &::GETMAC
    echo.
    echo     1) NET USE
    echo     2) GETMAC
    echo     3) DISKPART
    echo     4) NETSH
    echo     5) ninguna de las anteriores
    echo.
    echo ------------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="1" goto preg3
    if "%var%"=="2" goto sumapunto2
    if "%var%"=="3" goto preg3
    if "%var%"=="4" goto preg3
    if "%var%"=="5" goto preg3

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg2

:sumapunto2
    set/a puntos= %puntos% + 10
    goto preg3




:preg3
    cls
    echo -----------------------------------------------------------------------------------------------
    echo  Pregunta Nro 3
    echo -----------------------------------------------------------------------------------------------
    echo.
    echo. III- Muestra un listado de las conexiones activas de una computadora,
    echo.      tanto entrantes como salientes. 
    echo.      Incluye el protocolo en uso, las tablas de ruteo, las estadisticas
    echo.      de las interfaces y el estado de la conexion. &::NETSTAT
    echo.
    echo     1) SYSTEMINFO
    echo     2) NETSH
    echo     3) NETSTAT
    echo     4) NSLOOKUP
    echo     5) ninguna de las anteriores
    echo.
    echo -----------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="3" goto sumapunto3
    if "%var%"=="2" goto preg4
    if "%var%"=="1" goto preg4
    if "%var%"=="4" goto preg4
    if "%var%"=="5" goto preg4

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg3


:sumapunto3
    set/a puntos= %puntos% + 10
    goto preg4


:preg4
    cls
    echo ---------------------------------------------------------------------------------------------
    echo  Pregunta Nro 4
    echo ---------------------------------------------------------------------------------------------
    echo.
    echo. IV- Prueba el estado de la comunicacion del host local con uno
    echo.     o varios equipos remotos de una red IP. &::PING
    echo.
    echo     1) PING
    echo     2) PATHPING
    echo     3) NSLOOKUP
    echo     4) NETSTAT
    echo     5) ninguna de las anteriores
    echo.
    echo ---------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="1" goto sumapunto4
    if "%var%"=="2" goto preg5
    if "%var%"=="3" goto preg5
    if "%var%"=="4" goto preg5
    if "%var%"=="5" goto preg5

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg4

:sumapunto4
    set/a puntos= %puntos% + 10
    goto preg5


:preg5
    cls
    echo --------------------------------------------------------------------------------------------
    echo  Pregunta Nro 5
    echo --------------------------------------------------------------------------------------------
    echo.
    echo. V- Se utiliza para administrar unidades de almacenamiento, internas o externas, 
    echo.    manejar discos, particiones, volumenes o discos duros virtuales.&::DISKPART
    echo.
    echo     1) TASKKILL
    echo     2) TRACERT
    echo     3) DISKPART
    echo     4) XCOPY
    echo     5) ninguna de las anteriores
    echo.
    echo --------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="3" goto sumapunto5
    if "%var%"=="1" goto preg6
    if "%var%"=="2" goto preg6
    if "%var%"=="4" goto preg6
    if "%var%"=="5" goto preg6

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg5


:sumapunto5
    set/a puntos= %puntos% + 10
    goto preg6



:preg6
    cls
    echo ------------------------------------------------------------------------------------------
    echo  Pregunta Nro 6
    echo ------------------------------------------------------------------------------------------
    echo. 
    echo. VI- Permite conocer los paquetes que vienen desde un host. 
    echo.     Tambien se obtiene una estadistica del RTT o latencia de red de esos paquetes, 
    echo.     ofreciendo una estimacion de la distancia a la que estan los extremos de la comunicacion. &::TRACERT
    echo.
    echo     1) PING
    echo     2) PATHPING
    echo     3) TRACERT
    echo     4) ninguna de las anteriores
    echo.
    echo ------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-4]:

    if "%var%"=="1" goto preg7
    if "%var%"=="3" goto sumapunto6
    if "%var%"=="2" goto preg7
    if "%var%"=="4" goto preg7

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg6


:sumapunto6
    set/a puntos= %puntos% + 10
    goto preg7



:preg7
    cls
    echo -------------------------------------------------------------------------------------
    echo  Pregunta Nro 7
    echo -------------------------------------------------------------------------------------
    echo.
    echo. VII- Es mas informativo, por lo que tarda mas tiempo para ejecutar. 
    echo.      Despues de enviar los paquetes a un destino determinado, se analiza la ruta tomada y 
    echo.      se calcula la perdida de paquetes y proporciona detalles entre dos host. &::PATHPING
    echo.
    echo     1) NETSTAT
    echo     2) PING
    echo     3) PATHPING
    echo     4) NSLOOKUP
    echo     5) ninguna de las anteriores
    echo.
    echo -------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="2" goto preg8
    if "%var%"=="1" goto preg8
    if "%var%"=="4" goto preg8
    if "%var%"=="3" goto sumapunto7
    if "%var%"=="5" goto preg8

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg7

:sumapunto7
    set/a puntos= %puntos% + 10
    goto preg8


:preg8
    cls
    echo --------------------------------------------------------------------------------------------
    echo  Pregunta Nro 8
    echo --------------------------------------------------------------------------------------------
    echo.
    echo. VIII- Se emplea para conocer si el DNS esta resolviendo correctamente los nombres y las IPs. 
    echo.       Tambien nos permite averiguar la direccion IP detras de un determinado nombre de dominio. 
    echo.       Si deseas convertir una direccion IP en un nombre de dominio. &::NSLOOKUP   name server lookup
    echo.
    echo     1) NSLOOKUP
    echo     2) NETSTAT
    echo     3) TASKLIST
    echo     4) TREE
    echo.
    echo --------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-4]:

    if "%var%"=="1" goto sumapunto8
    if "%var%"=="4" goto preg9
    if "%var%"=="2" goto preg9
    if "%var%"=="3" goto preg9


    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg8

:sumapunto8
    set/a puntos= %puntos% + 5
    goto preg9




:preg9
    cls
    echo --------------------------------------------------------------------------------------
    echo  Pregunta Nro 9
    echo --------------------------------------------------------------------------------------
    echo.
    echo. IX- Sinonimo de shell de red, permite modificar, administrar y diagnosticar la configuracion de una red,
    echo.     con mas detalle y potencia que los anteriores. Un comando avanzado que ofrece un monton de opciones
    echo.     utilizando sus modificadores y que como ejemplo, permite cambiar el DNS primario y secundario de un equipo. &::NETSH netshell
    echo.
    echo     1) SYSTEMINFO
    echo     2) NETSTAT
    echo     3) HOSTNAME
    echo     4) NETSH
    echo     5) ninguna de las anteriores
    echo.
    echo --------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="4" goto sumapunto9
    if "%var%"=="1" goto preg10
    if "%var%"=="2" goto preg10
    if "%var%"=="3" goto preg10
    if "%var%"=="5" goto preg10

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg9

:sumapunto9
    set/a puntos= %puntos% + 5
    goto preg10



:preg10
    cls
    echo --------------------------------------------------------------------------------------
    echo  Pregunta Nro 10
    echo --------------------------------------------------------------------------------------
    echo.
    echo. X- Muestra el nombre del dispositivo. &::HOSTNAME
    echo.
    echo     1) SYSTEMINFO
    echo     2) HOSTNAME
    echo     3) IPCONFIG
    echo     4) GPRESULT
    echo     5) ninguna de las anteriores
    echo.
    echo -------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-5]:

    if "%var%"=="1" goto preg11
    if "%var%"=="2" goto sumapunto10
    if "%var%"=="5" goto preg11
    if "%var%"=="4" goto preg11
    if "%var%"=="3" goto preg11

    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg10

:sumapunto10
    set/a puntos= %puntos% + 5
    goto preg11



:preg11
    cls

    echo -------------------------------------------------------------------------------------------
    echo  Pregunta Nro 11
    echo -------------------------------------------------------------------------------------------
    echo.
    echo. XI- Muestra informacion de la configuracion del sistema operativo de un equipo local o remoto, 
    echo.     incluyendo niveles de Service Pack. Informa del procesador instalado, 
    echo.     la memoria RAM fisica y virtual usada y disponible, la BIOS, el fabricante de la placa base, 
    echo.     asi como la version del sistema operativo utilizada y todas las actualizaciones instaladas. &::SYSTEMINFO
    echo.
    echo     1) IPCONFIG
    echo     2) DISKPART
    echo     3) SYSTEMINFO
    echo     4) TRACERT
    echo.
    echo -------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-4]:

    if "%var%"=="3" goto sumapunto11
    if "%var%"=="1" goto preg12
    if "%var%"=="2" goto preg12
    if "%var%"=="4" goto preg12


    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg11

:sumapunto11
    set/a puntos= %puntos% + 10
    goto preg12


:preg12
    cls
    echo ------------------------------------------------------------------------------------------------
    echo  Pregunta Nro 12
    echo ------------------------------------------------------------------------------------------------
    echo.
    echo. XII- Conecta o desconecta un ordenador a un recurso de red compartido
    echo.      o muestra informacion sobre las conexiones establecidas en el ordenado &::NET USE
    echo.
    echo     1) ROBOCOPY
    echo     2) SUBST
    echo     3) NET USE
    echo     4) ninguna de las anteriores
    echo.
    echo ------------------------------------------------------------------------------------------------
    echo.

    SET /p var= ^> Selecciona una de las siguientes opciones [1-4]:

    if "%var%"=="3" goto sumapunto12
    if "%var%"=="4" goto final
    if "%var%"=="2" goto final
    if "%var%"=="1" goto final


    echo. El numero que ingresaste ("%var%") no corresponde a una opcion valida...
    echo. Por favor %nombre%, ingresa nuevamente tu respuesta
    echo.
    pause
    echo.
    cls
    goto:preg12

:sumapunto12
    set/a puntos= %puntos% + 5
    goto final


:final
    cls
    ::echo. sumatoria de puntos: %puntos% 
    ::pause
    if %puntos% GEQ 70 goto larompestoda
    if %puntos% LEQ 70 goto estamalperonotanmal


:larompestoda 
    echo.
    echo.
    echo.__________________________________________________________________________________________________
    echo.
    echo.   %nombre%, estas por encima de la media! 
    echo.    Acumulaste %puntos% puntos.
    echo.
    echo.__________________________________________________________________________________________________
    echo.
    pause 
    goto salir

:estamalperonotanmal
    echo.
    echo.
    echo.___________________________________________________________________________________________________
    echo.
    echo.     %nombre% acumulaste un total de %puntos% 
    echo.     Esta mal, pppero no tan mal diria Guido Kafka.
    echo.     Estoy seguro que algo nuevo aprendiste!
    echo.     Las que no son....
    echo.
    echo.___________________________________________________________________________________________________
    echo.
    pause 
    goto salir




:salir
    cls
    echo.
    echo.
    echo.
    echo.
    echo.
    echo.***************************************************************************************************
    echo.
    echo.        Gracias por participar %nombre%! 
    echo.        Nos vemos en la proxima trivia!!
    echo.
    echo.***************************************************************************************************
    echo.
    pause
    
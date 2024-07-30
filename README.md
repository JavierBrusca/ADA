
# Proyecto de Ejemplo en Ada

Este proyecto es un ejemplo de cómo compilar un programa en Ada utilizando `gnatmake`.

## Prerrequisitos

Para compilar este proyecto, necesitas tener instalado el compilador GNAT. Puedes instalarlo siguiendo las instrucciones en la [página oficial de GNAT](https://www.adacore.com/download).

## Estructura del Proyecto

El proyecto tiene la siguiente estructura:
```
├── src
│   ├── main.adb
│   └── other_package.ads
│   └── other_package.adb
└── README.md
```
- `src/main.adb`: El archivo principal del programa.
- `src/other_package.ads` y `src/other_package.adb`: Otros paquetes utilizados por el programa.

## Compilar el Proyecto

Para compilar el proyecto, sigue estos pasos:

1. Abre una terminal.
2. Navega al directorio `src` del proyecto:

    cd src

3. Ejecuta el comando `gnatmake` para compilar el archivo principal `main.adb`:

    gnatmake main

Esto generará un ejecutable en el mismo directorio, normalmente llamado `main`.

## Ejecutar el Programa

Después de compilar el proyecto, puedes ejecutar el programa generado con el siguiente comando:

./main

## Notas Adicionales

- Asegúrate de que todos los archivos `.adb` y `.ads` estén en el directorio `src`.
- Si agregas nuevos archivos o paquetes, no olvides mencionarlos en el archivo principal si es necesario.

## Problemas Comunes

### Error: `gnatmake: command not found`

Si ves este error, significa que `gnatmake` no está instalado o no está en tu PATH. Revisa la instalación de GNAT y asegúrate de que el compilador está correctamente configurado.

### Error de Compilación

Revisa los mensajes de error en la terminal para identificar y corregir cualquier problema en el código fuente.

## Recursos

- [Documentación de GNAT](https://www.adacore.com/documentation)
- [Introducción a Ada](https://learn.adacore.com/)

```

Este archivo `README.md` proporciona una guía clara sobre cómo compilar y ejecutar tu proyecto en Ada utilizando `gnatmake`. Asegúrate de ajustar las rutas y nombres de archivos según la estructura específica de tu proyecto.

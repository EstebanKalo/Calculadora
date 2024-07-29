# Calculadora en Ensamblador

Este es un proyecto simple y directo: un código para sumar dos números entre 0 y 9. Está escrito en lenguaje ensamblador para arquitectura x86, utilizando llamadas al sistema en Linux. Este proyecto me sirve para comprender mejor el funcionamiento de las operaciones básicas en ensamblador.

## Descripción

El programa te pide que ingreses dos números, los suma y muestra el resultado en la consola. Aunque tiene aspectos a mejorar (memoria reservada por cada numero por ejemplo), me sirvio para comprender un poco mas.

## Requisitos

Para compilar y ejecutar este programa necesitas:
- Un ensamblador (NASM)
- Un enlazador (ld)

## Instrucciones

### 1. Compilar

Usa NASM para compilar el código fuente ensamblador y generar un archivo objeto:
```bash
nasm -f elf64 -o calculadora.o calculadora.asm

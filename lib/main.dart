import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ---------------------------------------------------------------------------
// Modelo de datos
// ---------------------------------------------------------------------------

class Palabra {
  final String termino;
  final String definicion;
  const Palabra({required this.termino, required this.definicion});
}

const List<Palabra> palabras = [
  Palabra(
    termino: 'Algoritmo',
    definicion: 'Conjunto ordenado y finito de pasos o instrucciones que '
        'permiten resolver un problema o realizar una tarea.',
  ),
  Palabra(
    termino: 'Variable',
    definicion: 'Espacio en la memoria del computador que almacena un valor '
        'y que puede cambiar durante la ejecución de un programa.',
  ),
  Palabra(
    termino: 'Función',
    definicion: 'Bloque de código reutilizable que realiza una tarea '
        'específica y puede recibir datos de entrada y devolver un resultado.',
  ),
  Palabra(
    termino: 'Bucle (Loop)',
    definicion: 'Estructura que repite un bloque de código mientras se '
        'cumpla una condición determinada.',
  ),
  Palabra(
    termino: 'Condicional',
    definicion: 'Estructura de control que ejecuta distintas acciones según '
        'si una condición es verdadera o falsa.',
  ),
  Palabra(
    termino: 'Compilador',
    definicion: 'Programa que traduce el código fuente escrito por un '
        'desarrollador a lenguaje máquina antes de ejecutarlo.',
  ),
  Palabra(
    termino: 'Development',
    definicion: 'Proceso de crear, construir y mantener software o '
        'aplicaciones desde su concepción hasta su lanzamiento.',
  ),
  Palabra(
    termino: 'Bug',
    definicion: 'Error, falla o defecto en el código que provoca un '
        'comportamiento inesperado en el programa.',
  ),
  Palabra(
    termino: 'Debugging',
    definicion: 'Proceso de encontrar y corregir errores (bugs) dentro de '
        'un programa.',
  ),
  Palabra(
    termino: 'API',
    definicion: 'Interfaz de Programación de Aplicaciones: conjunto de '
        'reglas que permite que dos programas se comuniquen entre sí.',
  ),
  Palabra(
    termino: 'Framework',
    definicion: 'Conjunto de herramientas y librerías que ofrece una '
        'estructura base para desarrollar aplicaciones más rápido.',
  ),
  Palabra(
    termino: 'Repositorio',
    definicion: 'Espacio donde se almacena y organiza el código fuente de '
        'un proyecto, normalmente con control de versiones.',
  ),
  Palabra(
    termino: 'Versionamiento (Git)',
    definicion: 'Sistema que registra los cambios realizados en el código '
        'a lo largo del tiempo, permitiendo volver a versiones anteriores.',
  ),
  Palabra(
    termino: 'Widget',
    definicion: 'Componente básico de la interfaz en Flutter; todo lo que '
        'se ve en pantalla está construido a partir de widgets.',
  ),
  Palabra(
    termino: 'State',
    definicion: 'Datos de un widget que pueden cambiar durante su ciclo de '
        'vida y que, al actualizarse, provocan que la interfaz se redibuje.',
  ),
  Palabra(
    termino: 'StatelessWidget',
    definicion: 'Widget de Flutter que no mantiene un estado propio; su '
        'contenido no cambia una vez construido.',
  ),
  Palabra(
    termino: 'StatefulWidget',
    definicion: 'Widget de Flutter capaz de mantener un estado interno que '
        'puede cambiar y actualizar la interfaz.',
  ),
  Palabra(
    termino: 'Hot Reload',
    definicion: 'Función de Flutter que permite ver los cambios de código '
        'en la app casi al instante, sin perder el estado actual.',
  ),
  Palabra(
    termino: 'Layout',
    definicion: 'Disposición y organización de los elementos visuales '
        'dentro de una pantalla o interfaz.',
  ),
  Palabra(
    termino: 'Base de datos',
    definicion: 'Conjunto organizado de información almacenada de forma '
        'estructurada para su fácil acceso y gestión.',
  ),
  Palabra(
    termino: 'JSON',
    definicion: 'Formato ligero de intercambio de datos, fácil de leer '
        'tanto para personas como para máquinas.',
  ),
  Palabra(
    termino: 'Base de datos NoSQL',
    definicion: 'Tipo de base de datos que no utiliza el modelo relacional '
        'tradicional de tablas, sino documentos, clave-valor u otros.',
  ),
  Palabra(
    termino: 'Consulta (Query)',
    definicion: 'Solicitud de información realizada a una base de datos '
        'para obtener, modificar o eliminar datos.',
  ),
];

// ---------------------------------------------------------------------------
// App
// ---------------------------------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Términos',
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

// ---------------------------------------------------------------------------
// Pantalla principal: solo la lista de palabras
// ---------------------------------------------------------------------------

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diccionario de Términos')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: palabras.length,
        itemBuilder: (context, index) {
          final palabra = palabras[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Align(
              alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 250,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFC5BFBF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalleTermino(palabra: palabra),
                    ),
                  );
                },
                child: Text(
                  palabra.termino,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          ),
          );
        },
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Detalle del término
// ---------------------------------------------------------------------------

class DetalleTermino extends StatelessWidget {
  final Palabra palabra;
  const DetalleTermino({super.key, required this.palabra});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(palabra.termino)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            palabra.definicion,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
        ),
      ),
    );
  }
}
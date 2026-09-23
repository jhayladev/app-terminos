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
  final String categoria;
  const Palabra({
    required this.termino,
    required this.definicion,
    required this.categoria,
  });
}

const List<Palabra> palabras = [
  // Fundamentos
  Palabra(
    termino: 'Algoritmo',
    definicion: 'Conjunto ordenado y finito de pasos o instrucciones que '
        'permiten resolver un problema o realizar una tarea.',
    categoria: 'Fundamentos',
  ),
  Palabra(
    termino: 'Variable',
    definicion: 'Espacio en la memoria del computador que almacena un valor '
        'y que puede cambiar durante la ejecución de un programa.',
    categoria: 'Fundamentos',
  ),
  Palabra(
    termino: 'Función',
    definicion: 'Bloque de código reutilizable que realiza una tarea '
        'específica y puede recibir datos de entrada y devolver un resultado.',
    categoria: 'Fundamentos',
  ),
  Palabra(
    termino: 'Bucle (Loop)',
    definicion: 'Estructura que repite un bloque de código mientras se '
        'cumpla una condición determinada.',
    categoria: 'Fundamentos',
  ),
  Palabra(
    termino: 'Condicional',
    definicion: 'Estructura de control que ejecuta distintas acciones según '
        'si una condición es verdadera o falsa.',
    categoria: 'Fundamentos',
  ),
  Palabra(
    termino: 'Compilador',
    definicion: 'Programa que traduce el código fuente escrito por un '
        'desarrollador a lenguaje máquina antes de ejecutarlo.',
    categoria: 'Fundamentos',
  ),

  // Desarrollo de software
  Palabra(
    termino: 'Development',
    definicion: 'Proceso de crear, construir y mantener software o '
        'aplicaciones desde su concepción hasta su lanzamiento.',
    categoria: 'Desarrollo de software',
  ),
  Palabra(
    termino: 'Bug',
    definicion: 'Error, falla o defecto en el código que provoca un '
        'comportamiento inesperado en el programa.',
    categoria: 'Desarrollo de software',
  ),
  Palabra(
    termino: 'Debugging',
    definicion: 'Proceso de encontrar y corregir errores (bugs) dentro de '
        'un programa.',
    categoria: 'Desarrollo de software',
  ),
  Palabra(
    termino: 'API',
    definicion: 'Interfaz de Programación de Aplicaciones: conjunto de '
        'reglas que permite que dos programas se comuniquen entre sí.',
    categoria: 'Desarrollo de software',
  ),
  Palabra(
    termino: 'Framework',
    definicion: 'Conjunto de herramientas y librerías que ofrece una '
        'estructura base para desarrollar aplicaciones más rápido.',
    categoria: 'Desarrollo de software',
  ),
  Palabra(
    termino: 'Repositorio',
    definicion: 'Espacio donde se almacena y organiza el código fuente de '
        'un proyecto, normalmente con control de versiones.',
    categoria: 'Desarrollo de software',
  ),
  Palabra(
    termino: 'Versionamiento (Git)',
    definicion: 'Sistema que registra los cambios realizados en el código '
        'a lo largo del tiempo, permitiendo volver a versiones anteriores.',
    categoria: 'Desarrollo de software',
  ),

  // Flutter y UI
  Palabra(
    termino: 'Widget',
    definicion: 'Componente básico de la interfaz en Flutter; todo lo que '
        'se ve en pantalla está construido a partir de widgets.',
    categoria: 'Flutter y UI',
  ),
  Palabra(
    termino: 'State',
    definicion: 'Datos de un widget que pueden cambiar durante su ciclo de '
        'vida y que, al actualizarse, provocan que la interfaz se redibuje.',
    categoria: 'Flutter y UI',
  ),
  Palabra(
    termino: 'StatelessWidget',
    definicion: 'Widget de Flutter que no mantiene un estado propio; su '
        'contenido no cambia una vez construido.',
    categoria: 'Flutter y UI',
  ),
  Palabra(
    termino: 'StatefulWidget',
    definicion: 'Widget de Flutter capaz de mantener un estado interno que '
        'puede cambiar y actualizar la interfaz.',
    categoria: 'Flutter y UI',
  ),
  Palabra(
    termino: 'Hot Reload',
    definicion: 'Función de Flutter que permite ver los cambios de código '
        'en la app casi al instante, sin perder el estado actual.',
    categoria: 'Flutter y UI',
  ),
  Palabra(
    termino: 'Layout',
    definicion: 'Disposición y organización de los elementos visuales '
        'dentro de una pantalla o interfaz.',
    categoria: 'Flutter y UI',
  ),

  // Datos
  Palabra(
    termino: 'Base de datos',
    definicion: 'Conjunto organizado de información almacenada de forma '
        'estructurada para su fácil acceso y gestión.',
    categoria: 'Datos',
  ),
  Palabra(
    termino: 'JSON',
    definicion: 'Formato ligero de intercambio de datos, fácil de leer '
        'tanto para personas como para máquinas.',
    categoria: 'Datos',
  ),
  Palabra(
    termino: 'Base de datos NoSQL',
    definicion: 'Tipo de base de datos que no utiliza el modelo relacional '
        'tradicional de tablas, sino documentos, clave-valor u otros.',
    categoria: 'Datos',
  ),
  Palabra(
    termino: 'Consulta (Query)',
    definicion: 'Solicitud de información realizada a una base de datos '
        'para obtener, modificar o eliminar datos.',
    categoria: 'Datos',
  ),
];

final List<String> categorias = [
  'Todos',
  ...{for (final p in palabras) p.categoria},
];

// ---------------------------------------------------------------------------
// App
// ---------------------------------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const semilla = Color(0xFF3A5A78); // azul apagado, poco llamativo

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Términos',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF6F7F9),
        colorScheme: ColorScheme.fromSeed(
          seedColor: semilla,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
          scrolledUnderElevation: 1,
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.grey.shade200),
          ),
        ),
        chipTheme: ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: BorderSide.none,
        ),
      ),
      home: const MyHomePage(title: 'Diccionario de Términos'),
    );
  }
}

// ---------------------------------------------------------------------------
// Pantalla principal
// ---------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _busqueda = '';
  String _categoriaSeleccionada = 'Todos';

  List<Palabra> get _filtradas {
    return palabras.where((p) {
      final coincideCategoria =
          _categoriaSeleccionada == 'Todos' || p.categoria == _categoriaSeleccionada;
      final coincideBusqueda = _busqueda.isEmpty ||
          p.termino.toLowerCase().contains(_busqueda.toLowerCase());
      return coincideCategoria && coincideBusqueda;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final agrupadas = <String, List<Palabra>>{};
    for (final p in _filtradas) {
      agrupadas.putIfAbsent(p.categoria, () => []).add(p);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          // Buscador
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: TextField(
              onChanged: (v) => setState(() => _busqueda = v),
              decoration: InputDecoration(
                hintText: 'Buscar término...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: colorScheme.primary),
                ),
              ),
            ),
          ),

          // Filtro de categorías
          SizedBox(
            height: 44,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categorias.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final cat = categorias[index];
                final seleccionado = cat == _categoriaSeleccionada;
                return ChoiceChip(
                  label: Text(cat),
                  selected: seleccionado,
                  onSelected: (_) => setState(() => _categoriaSeleccionada = cat),
                  backgroundColor: Colors.white,
                  selectedColor: colorScheme.primary.withValues(alpha: 0.12),
                  labelStyle: TextStyle(
                    color: seleccionado ? colorScheme.primary : Colors.black87,
                    fontWeight: seleccionado ? FontWeight.w600 : FontWeight.w400,
                  ),
                  side: BorderSide(
                    color: seleccionado ? colorScheme.primary : Colors.grey.shade300,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 8),

          // Contador de resultados
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  '${_filtradas.length} término${_filtradas.length == 1 ? '' : 's'}',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: _filtradas.isEmpty
                ? _EstadoVacio(busqueda: _busqueda)
                : ListView(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                    children: [
                      for (final entrada in agrupadas.entries) ...[
                        _EncabezadoCategoria(texto: entrada.key),
                        const SizedBox(height: 8),
                        for (final p in entrada.value) ...[
                          _TarjetaTermino(palabra: p),
                          const SizedBox(height: 10),
                        ],
                        const SizedBox(height: 8),
                      ],
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class _EncabezadoCategoria extends StatelessWidget {
  final String texto;
  const _EncabezadoCategoria({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 2),
      child: Text(
        texto.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.8,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class _TarjetaTermino extends StatelessWidget {
  final Palabra palabra;
  const _TarjetaTermino({required this.palabra});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalleTermino(palabra: palabra),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      palabra.termino,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      palabra.definicion,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.chevron_right, color: Colors.grey.shade400),
            ],
          ),
        ),
      ),
    );
  }
}

class _EstadoVacio extends StatelessWidget {
  final String busqueda;
  const _EstadoVacio({required this.busqueda});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search_off, size: 48, color: Colors.grey.shade400),
            const SizedBox(height: 12),
            Text(
              'No se encontraron términos',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Intenta con otra búsqueda o categoría.',
              style: TextStyle(color: Colors.grey.shade500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
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
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(palabra.termino),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                palabra.categoria,
                style: TextStyle(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              palabra.termino,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Text(
                palabra.definicion,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

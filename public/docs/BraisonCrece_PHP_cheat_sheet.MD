# PHP - Hoja de referencia rápida
# Autor: Braison Crece

## Tipos de datos

- **`Integer`** - Números enteros
entre -2.147.483.648 y 2.147.483.647 (32 bits)

- **`Float`** - Números decimales

- **`String`** - Cadenas de texto

- **`Boolean`** - Verdadero o falso

- **`Array`** - Colección de datos

- **`Object`** - Colección de datos y funciones

- **`NULL`** - Variable sin valor

## Varaibles predefinidas

- **`$GLOBALS`** - Variables globales, accesibles desde cualquier parte del script

- **`$_GET`** - Variables pasadas por URL

- **`$_POST`** - Variables pasadas por formulario

- **`$_COOKIE`** - Variables de cookies

- **`$_SESSION`** - Variables de sesión

- **`$_SERVER`** - Variables del servidor, como el nombre del host, el software del servidor, el método de solicitud, etc.

- **`$_FILES`** - Variables de archivos

- **`$_ENV`** - Variables de entorno

- **`$_REQUEST`** - Variables de formulario y URL

## Funciones de gestiones de variables

- **`isset()`** - Comprueba si una variable está definida

- **`empty()`** - Comprueba si una variable está vacía

- **`unset()`** - Destruye una variable

- **`floatval()`** - Devuelve el valor float de una variable 

- **`intval()`** - Devuelve el valor int de una variable

- **`var_dump()`** - Muestra información sobre una variable

- **`var_export()`** - Muestra información sobre una variable en forma de código PHP

- **`print_r()`** - Muestra información sobre una variable

- **`gettype()`** - Devuelve el tipo de una variable

- **`settype()`** - Establece el tipo de una variable

- **`get_defined_vars()`** - Devuelve un array con todas las variables definidas

- **`get_defined_functions()`** - Devuelve un array con todas las funciones definidas

- **`get_defined_constants()`** - Devuelve un array con todas las constantes definidas

- **`import_request_variables()`** - Importa variables externas (GET / POST / Cookies) a variables locales

- **`boolval()`** - Devuelve el valor booleano de una variable

- **`strval()`** - Devuelve el valor string de una variable

- **`is_array()`** - Comprueba si una variable es un array

- **`is_bool()`** - Comprueba si una variable es un booleano

- **`is_float()`** - Comprueba si una variable es un float

- **`is_int()`** - Comprueba si una variable es un int

- **`is_null()`** - Comprueba si una variable es null

- **`is_numeric()`** - Comprueba si una variable es numérica

- **`is_object()`** - Comprueba si una variable es un objeto

- **`is_resource()`** - Comprueba si una variable es un recurso

- **`is_string()`** - Comprueba si una variable es un string

- **`is_scalar()`** - Comprueba si una variable es un escalar

- **`is_callable()`** - Comprueba si una variable es una función

- **`is_iterable()`** - Comprueba si una variable es iterable

- **`is_countable()`** - Comprueba si una variable es contable

- **`is_double()`** - Comprueba si una variable es un double

- **`is_real()`** - Comprueba si una variable es un real

- **`is_long()`** - Comprueba si una variable es un long

- **`is_integer()`** - Comprueba si una variable es un integer

- **`isset()`** - Comprueba si una variable está definida

## Constantes predefinidas

- **`PHP_VERSION`** - Versión de PHP

- **`PHP_OS`** - Sistema operativo

- **`PHP_SAPI`** - Servidor API

- **`PHP_EOL`** - Fin de línea

- **`PHP_INT_MAX`** - Valor máximo de un int

- **`PHP_INT_MIN`** - Valor mínimo de un int

- **`PHP_INT_SIZE`** - Tamaño de un int

- **`PHP_FLOAT_DIG`** - Número de dígitos de precisión de un float

- **`PHP_FLOAT_EPSILON`** - Valor más pequeño representable de un float

- **`PHP_FLOAT_MIN`** - Valor más pequeño representable de un float

- **`PHP_FLOAT_MAX`** - Valor más grande representable de un float

- **`PHP_DEBUG`** - Si se está ejecutando en modo debug

- **`PHP_MAXPATHLEN`** - Longitud máxima de un path

- **\_\_`LINE`__** - Número de línea actual

- **\_\_`FILE`__** - Nombre del archivo actual

- **\_\_`DIR`__** - Directorio del archivo actual

- **\_\_`FUNCTION`__** - Nombre de la función actual

- **\_\_`CLASS`__** - Nombre de la clase actual

- **\_\_`TRAIT`__** - Nombre del trait actual

- **\_\_`METHOD`__** - Nombre del método actual

- **\_\_`NAMESPACE`__** - Nombre del espacio de nombres actual. Namespace hace referencia a la jerarquía de carpetas de un proyecto.

## Tipos de arrays

- **Array indexado** - Array con índices numéricos

- **Array asociativo** - Array con índices alfanuméricos (clave => valor)

- **Array multidimensional** - Array con arrays dentro

- **formas de declarar un array**
    ```php
    $array = array(1, 2, 3, 4, 5);
    $array = [1, 2, 3, 4, 5];
    ```
- **formas de declarar un array asociativo**
    ```php
    $array = array("clave1" => "valor1", "clave2" => "valor2");
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    ```
- **formas de declarar un array multidimensional**
    ```php
    $array = array(
        array(1, 2, 3, 4, 5),
        array(6, 7, 8, 9, 10),
        array(11, 12, 13, 14, 15)
    );
    $array = [
        [1, 2, 3, 4, 5],
        [6, 7, 8, 9, 10],
        [11, 12, 13, 14, 15]
    ];
    ```

## Funciones para arrays

- **`count()`** - Cuenta el número de elementos de un array
    ```php
    $array = [1, 2, 3, 4, 5];
    echo count($array); // 5
    ```

- **`sizeof()`** - Cuenta el número de elementos de un array
    ```php
    $array = [1, 2, 3, 4, 5];
    echo sizeof($array); // 5
    ```
- **`array_key_exists()`** - Comprueba si una clave existe en un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    echo array_key_exists("clave1", $array); // true
    echo array_key_exists("clave3", $array); // false
    ```

- **`array_keys()`** - Devuelve un array con las claves de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_keys($array)); // Array ( [0] => clave1 [1] => clave2 )
    ```
- **`array_values()`** - Devuelve un array con los valores de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_values($array)); // Array ( [0] => valor1 [1] => valor2 )
    ```
- **`array_merge()`** - Combina dos o más arrays
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2"];
    $array2 = ["clave3" => "valor3", "clave4" => "valor4"];
    print_r(array_merge($array1, $array2)); // Array ( [clave1] => valor1 [clave2] => valor2 [clave3] => valor3 [clave4] => valor4 )
    ```

- **`array_merge_recursive()`** - Combina dos o más arrays recursivamente
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2"];
    $array2 = ["clave1" => "valor3", "clave4" => "valor4"];
    print_r(array_merge_recursive($array1, $array2)); // Array ( [clave1] => Array ( [0] => valor1 [1] => valor3 ) [clave2] => valor2 [clave4] => valor4 )
    ```

- **`array_pop()`** - Elimina el último elemento de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    array_pop($array);
    print_r($array); // Array ( [clave1] => valor1 )
    ```
- **`array_shift()`** - Elimina el primer elemento de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    array_shift($array);
    print_r($array); // Array ( [clave2] => valor2 )
    ```
- **`array_push()`** - Añade un elemento al final de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    array_push($array, "valor3");
    print_r($array); // Array ( [clave1] => valor1 [clave2] => valor2 [0] => valor3 )
    ```
- **`array_unshift()`** - Añade un elemento al principio de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    array_unshift($array, "valor3");
    print_r($array); // Array ( [0] => valor3 [clave1] => valor1 [clave2] => valor2 )
    ```
- **`array_flip()`** - Intercambia las claves con los valores de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_flip($array)); // Array ( [valor1] => clave1 [valor2] => clave2 )
    ```
- **`array_reverse()`** - Invierte el orden de los elementos de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_reverse($array)); // Array ( [clave2] => valor2 [clave1] => valor1 )
    ```
- **`array_search()`** - Busca un valor en un array y devuelve la clave
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    echo array_search("valor1", $array); // clave1
    ```
- **`array_slice()`** - Extrae una parte de un array
    ```php
    $array = [1, 2, 3, 4, 5];
    $array = array_slice($array, 1, 3);
    // $array = [2, 3, 4]
    ```

- **`array_splice()`** - Elimina una parte de un array y la reemplaza por otra
    ```php
    $array = [1, 2, 3, 4, 5];
    $array = array_splice($array, 1, 3, ["a", "b", "c"]);
    // $array = [1, "a", "b", "c", 5]
    ```
- **`array_unique()`** - Elimina los valores duplicados de un array
    ```php
    $array = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5];
    $array = array_unique($array);
    // $array = [1, 2, 3, 4, 5]
    ```
  
- **`array_sum()`** - Suma los valores de un array
    ```php
    $array = [1, 2, 3, 4, 5];
    echo array_sum($array); // 15
    ```

- **`array_product()`** - Multiplica los valores de un array
    ```php
    $array = [1, 2, 3, 4, 5];
    echo array_product($array); // 120
    ```
- **`array_rand()`** - Devuelve una clave aleatoria de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    echo array_rand($array); // clave1
    ```
    + tambien puede recibir un segundo parámetro para indicar el número de claves que queremos
      ```php
      $array = ["clave1" => "valor1", "clave2" => "valor2"];
      echo array_rand($array, 2); // Array ( [0] => clave1 [1] => clave2 )
      ```
    + y con arrays normales:
      ```php
      $array = ["valor1", "valor2", "valor3", "valor4", "valor5"];
      echo array_rand($array); // 2, devuelve el indice
      ```
- **`array_replace()`** - Reemplaza los valores de un array por otros
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2"];
    $array2 = ["clave1" => "valor3", "clave2" => "valor4"];
    print_r(array_replace($array1, $array2)); // Array ( [clave1] => valor3 [clave2] => valor4 )
    ```
    + Si se le pasan más de dos arrays, reemplaza los valores del primero por los del segundo, los del segundo por los del tercero, etc.

- **`array_replace_recursive()`** - Reemplaza los valores de un array por otros recursivamente
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2"];
    $array2 = ["clave1" => "valor3", "clave2" => "valor4"];
    print_r(array_replace_recursive($array1, $array2)); // Array ( [clave1] => valor3 [clave2] => valor4 )
    ```
    + Si se le pasan más de dos arrays, reemplaza los valores del primero por los del segundo, los del segundo por los del tercero, etc.

- **`array_combine()`** - Crea un array combinando dos arrays
    ```php
    $array1 = ["clave1", "clave2"];
    $array2 = ["valor1", "valor2"];
    print_r(array_combine($array1, $array2)); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```

- **`array_fill()`** - Rellena un array con un valor
    ```php
    $array = array_fill(0, 5, "valor");
    // $array = ["valor", "valor", "valor", "valor", "valor"]
    ```
    + El primer parámetro es el índice desde el que se rellena el array
    + El segundo parámetro es el número de elementos que se rellenan
    + El tercer parámetro es el valor con el que se rellena el array

- **`array_fill_keys()`** - Rellena un array con un valor, usando las claves de otro array
    ```php
    $array = array_fill_keys(["clave1", "clave2"], "valor");
    // $array = ["clave1" => "valor", "clave2" => "valor"]
    ```
    + El primer parámetro es un array con las claves
    + El segundo parámetro es el valor con el que se rellena el array

- **`array_key_exists()`** - Comprueba si una clave existe en un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    echo array_key_exists("clave1", $array); // true
    ```
    + También se puede usar la función **isset()** para comprobar si una clave existe en un array

- **`array_keys()`** - Devuelve las claves de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_keys($array)); // Array ( [0] => clave1 [1] => clave2 )
    ```

- **`array_values()`** - Devuelve los valores de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_values($array)); // Array ( [0] => valor1 [1] => valor2 )
    ```

- **`array_count_values()`** - Cuenta el número de veces que aparece cada valor en un array
    ```php
    $array = ["valor1", "valor2", "valor1", "valor3", "valor2"];
    print_r(array_count_values($array)); // Array ( [valor1] => 2 [valor2] => 2 [valor3] => 1 )
    ```
    + Devuelve un array asociativo con los valores como claves y el número de veces que aparecen como valores

- **`array_map()`** - Aplica una función a cada elemento de un array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    print_r(array_map("strtoupper", $array)); // Array ( [0] => VALOR1 [1] => VALOR2 [2] => VALOR3 )
    ```
    + El primer parámetro es la función que se aplica a cada elemento
    + El segundo parámetro es el array

- **`array_filter()`** - Filtra los elementos de un array usando una función
    ```php
    $array = ["valor1", "valor2", "valor3"];
    print_r(array_filter($array, "strlen")); // Array ( [0] => valor1 [1] => valor2 [2] => valor3 )
    ```
    El primer parámetro es el array
    El segundo parámetro es la función que se usa para filtrar los elementos

- **`array_diff()`** - Calcula la diferencia entre arrays
    ```php
    $array1 = ["valor1", "valor2", "valor3"];
    $array2 = ["valor1", "valor2"];
    print_r(array_diff($array1, $array2)); // Array ( [2] => valor3 )
    ```

- **`array_diff_assoc()`** - Calcula la diferencia entre arrays, usando las claves y los valores
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_diff_assoc($array1, $array2)); // Array ( [clave3] => valor3 )
    ```
    + Devuelve un array con las claves y valores que no están en el segundo array

- **`array_diff_key()`** - Calcula la diferencia entre arrays, usando las claves
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_diff_key($array1, $array2)); // Array ( [clave3] => valor3 )
    ```
    + Esta función es como array_diff() excepto que la comparación se realiza en las claves en lugar de los valores.

- **`array_diff_uassoc()`** - Calcula la diferencia entre arrays, usando una función para comparar las claves (claves y valores)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_diff_uassoc($array1, $array2, "strcasecmp")); // Array ( [clave3] => valor3 )
    ```
    + El primer parámetro es el primer array
    + El segundo parámetro es el segundo array
    + El tercer parámetro es la función que se usa para comparar las claves

- **`array_diff_ukey()`** - Calcula la diferencia entre arrays, usando una función para comparar las claves (solo claves)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_diff_ukey($array1, $array2, "strcasecmp")); // Array ( [clave3] => valor3 )
    ```
    + El primer parámetro es el primer array
    + El segundo parámetro es el segundo array
    + El tercer parámetro es la función que se usa para comparar las claves

- **`array_intersect()`** -Compara arrays y devuelve sus coincidencias (***sólo valores***)
    ```php
    $array1 = ["valor1", "valor2", "valor3"];
    $array2 = ["valor1", "valor2"];
    print_r(array_intersect($array1, $array2)); // Array ( [0] => valor1 [1] => valor2 )
    ```
    + Devuelve un array con los valores que están en ambos arrays

- **`array_intersect_assoc()`** - Comparar arrays y devuelve sus coincidencias (***claves y valores***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_intersect_assoc($array1, $array2)); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```
    + Devuelve un array con las claves y valores que están en ambos arrays

- **`array_intersect_key()`** - Compara arrays y devuelve sus coincidencias (***sólo claves***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_intersect_key($array1, $array2)); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```
    + Esta función es como array_intersect() excepto que la comparación se realiza en las claves en lugar de los valores.

- **`array_intersect_uassoc()`** - Comparar arrays mediante una función callback definida por el usuario (***claves y valores***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_intersect_uassoc($array1, $array2, "strcasecmp")); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```
    + El primer parámetro es el primer array
    + El segundo parámetro es el segundo array
    + El tercer parámetro es la función que se usa para comparar las claves

- **`array_intersect_ukey()`** - Comparar arrays mediante una función callback definida por el usuario (***sólo claves***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_intersect_ukey($array1, $array2, "strcasecmp")); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```

- **`array_key_exists()`** - Comprueba si una clave existe en un array, alternativa: `key_exists()`
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    echo array_key_exists("clave1", $array); // true
    echo array_key_exists("clave4", $array); // false
    ```

- **`array_keys()`** - Devuelve todas las claves de un array
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    print_r(array_keys($array)); // Array ( [0] => clave1 [1] => clave2 [2] => clave3 )
    ```

- **`arsort()`** - Ordena un array en orden inverso manteniendo la asociación de índices
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    arsort($array);
    print_r($array); // Array ( [clave3] => valor3 [clave2] => valor2 [clave1] => valor1 )
    ```

- **`asort()`** - Ordena un array manteniendo la asociación de índices
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    asort($array);
    print_r($array); // Array ( [clave1] => valor1 [clave2] => valor2 [clave3] => valor3 )
    ```

- **`array_multisort()`** - Ordena varios arrays o una matriz multidimensional
    ```php
    $array1 = ["valor1", "valor2", "valor3"];
    $array2 = ["valor4", "valor5", "valor6"];
    array_multisort($array1, $array2);
    print_r($array1); // Array ( [0] => valor1 [1] => valor2 [2] => valor3 )
    print_r($array2); // Array ( [0] => valor4 [1] => valor5 [2] => valor6 )
    ```
    + El primer parámetro es el primer array
    + El segundo parámetro es el segundo array
    + El tercer parámetro es la función que se usa para comparar las claves (opcional)

- **`array_pad()`** - Inserta un número determinado de elementos en un array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    print_r(array_pad($array, 5, "valor4")); // Array ( [0] => valor1 [1] => valor2 [2] => valor3 [3] => valor4 [4] => valor4 )
    ```
    + El primer parámetro es el array
    + El segundo parámetro es el número de elementos que se van a insertar
    + El tercer parámetro es el valor que se va a insertar

- **`array_udiff()`** - Calcula la diferencia de arrays mediante una función callback definida por el usuario (***sólo valores***)
    ```php
    $array1 = ["valor1", "valor2", "valor3"];
    $array2 = ["valor1", "valor2"];
    print_r(array_udiff($array1, $array2, "strcasecmp")); // Array ( [2] => valor3 )
    ```
    + El primer parámetro es el primer array
    + El segundo parámetro es el segundo array
    + El tercer parámetro es la función que se usa para comparar las claves

- **`array_udiff_assoc()`** - Calcula la diferencia de arrays mediante una función callback definida por el usuario (***claves y valores***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_udiff_assoc($array1, $array2, "strcasecmp")); // Array ( [clave3] => valor3 )
    ```

- **`array_udiff_uassoc()`** - Calcula la diferencia de arrays mediante dos funciones callback definidas por el usuario (***claves y valores***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_udiff_uassoc($array1, $array2, "strcasecmp", "strcasecmp")); // Array ( [clave3] => valor3 )
    ```

- **`array_uintersect()`** - Calcula la intersección de arrays mediante una función callback definida por el usuario (***sólo valores***)
    ```php
    $array1 = ["valor1", "valor2", "valor3"];
    $array2 = ["valor1", "valor2"];
    print_r(array_uintersect($array1, $array2, "strcasecmp")); // Array ( [0] => valor1 [1] => valor2 )
    ```

- **`array_uintersect_assoc()`** - Calcula la intersección de arrays mediante una función callback definida por el usuario (***claves y valores***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_uintersect_assoc($array1, $array2, "strcasecmp")); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```

- **`array_uintersect_uassoc()`** - Calcula la intersección de arrays mediante dos funciones callback definidas por el usuario (***claves y valores***)
    ```php
    $array1 = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    $array2 = ["clave1" => "valor1", "clave2" => "valor2"];
    print_r(array_uintersect_uassoc($array1, $array2, "strcasecmp", "strcasecmp")); // Array ( [clave1] => valor1 [clave2] => valor2 )
    ```

- **`array_walk()`** - Aplica una función a cada uno de los elementos de un array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    array_walk($array, "funcion");
    print_r($array); // Array ( [0] => valor1 [1] => valor2 [2] => valor3 )
    ```

    - **`array_walk_recursive()`** - Aplica una función a cada uno de los elementos de un array recursivamente

- **`compact()`** - Crea un array con variables y sus valores
    ```php
    $valor1 = "valor1";
    $valor2 = "valor2";
    $valor3 = "valor3";
    print_r(compact("valor1", "valor2", "valor3")); // Array ( [valor1] => valor1 [valor2] => valor2 [valor3] => valor3 )
    ```

- **`current()`** - Devuelve el elemento actual del array, una alternativa es pos 
    ```php
    $array = ["valor1", "valor2", "valor3"];
    echo current($array); // valor1
    ```

- **`end()`** - Mueve el puntero interno del array al último elemento
    ```php
    $array = ["valor1", "valor2", "valor3"];
    end($array);
    echo current($array); // valor3
    ```

- **`each()`** - Devuelve el elemento actual del array y avanza el puntero interno del array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    print_r(each($array)); // valor1, puntero interno en valor2
    ```

- **`extract()`** - Importa variables de un array a variables locales
    ```php
    $array = ["valor1", "valor2", "valor3"];
    extract($array);
    echo $valor1; // valor1
    echo $valor2; // valor2
    echo $valor3; // valor3
    ```

- **`in_array()`** - Comprueba si un valor existe en un array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    echo in_array("valor1", $array); // true
    ```

### Punteros y rangos

- **`next()`** - Avanza el puntero interno del array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    next($array);
    echo current($array); // valor2
    ```

- **`prev()`** - Retrocede el puntero interno del array
    ```php
    $array = ["valor1", "valor2", "valor3"];
    end($array);
    prev($array);
    echo current($array); // valor2
    ```
- **`range()`** - Crea un array con un rango de elementos
    ```php
    print_r(range(0, 10)); // Array ( [0] => 0 [1] => 1 [2] => 2 [3] => 3 [4] => 4 [5] => 5 [6] => 6 [7] => 7 [8] => 8 [9] => 9 [10] => 10 )
    ```
- **`reset()`** - Mueve el puntero interno del array al primer elemento
    ```php
    $array = ["valor1", "valor2", "valor3"];
    end($array);
    echo current($array); // valor3
    reset($array);
    echo current($array); // valor1
    ```

### ordenación de arrays:

- **`krsort()`** - Ordena un array por clave en orden descendente
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    krsort($array);
    print_r($array); // [clave3] => valor3 [clave2] => valor2 [clave1] => valor1
    ```
- **`ksort()`** - Ordena un array por clave en orden ascendente
    ```php
    $array = ["clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3"];
    ksort($array);
    print_r($array); // [clave1] => valor1 [clave2] => valor2 [clave3] => valor3 )
    ```
- **`natcasesort()`** - Ordena un array usando un algoritmo de ordenación natural (***ignora mayúsculas y minúsculas***)
    ```php
    $array = ["valor1", "valor2", "valor3"];
    natcasesort($array);
    print_r($array); // [valor1, valor2, valor3]
    ```
- **`natsort()`** - Ordena un array usando un algoritmo de ordenación natural
    ```php
    $array = ["valor1", "valor2", "valor3"];
    natsort($array);
    print_r($array); // [0] => valor1 [1] => valor2 [2] => valor3
    ```

- **`rsort()`** - Ordena un array en orden descendente
    ```php
    $array = ["valor1", "valor2", "valor3"];
    rsort($array);
    print_r($array); // [2] => valor3 [1] => valor2 [0] => valor1
    ```

- **`shuffle()`** - Mezcla los elementos de un array, devuelve true si se ha realizado la mezcla
    ```php
    $array = ["valor1", "valor2", "valor3"];
    shuffle($array);
    print_r($array); // [0] => valor2 [1] => valor3 [2] => valor1
    ```

- **`sort()`** - Ordena un array en orden ascendente
    ```php
    $array = ["valor1", "valor2", "valor3"];
    sort($array);
    print_r($array); // [0] => valor1 [1] => valor2 [2] => valor3
    ```

- **`usort()`** - Ordena un array mediante una función callback definida por el usuario
    ```php
    $array = ["valor1", "valor2", "valor3"];
    usort($array, "strcasecmp");
    print_r($array); // [0] => valor1 [1] => valor2 [2] => valor3
    ```


## Strings

### Definiciciones de strings

- **comillas simples** - No se evalúan las variables dentro de las comillas simples
    ```php
    $nombre = "Juan";
    echo 'Hola $nombre'; // Hola $nombre
    ```

- **comillas dobles** - Se evalúan las variables dentro de las comillas dobles
    ```php
    $nombre = "Juan";
    echo "Hola $nombre"; // Hola Juan
    ```

- **heredoc** - heredoc es una sintaxis especial para definir strings que contienen múltiples líneas
    ```php
    $nombre = "Juan";
    echo <<<EOT
    Hola $nombre
    EOT;
    // Hola Juan
    ```

- **nowdoc** - nowdoc es una sintaxis especial para definir strings que contienen múltiples líneas, pero no se evalúan las variables dentro de las comillas dobles
    ```php
    $nombre = "Juan";
    echo <<<'EOT'
    Hola $nombre
    EOT;
    // Hola $nombre
    ```

### Caracteres de escape

- **`\n`** - Salto de línea

- **`\r`** - Retorno de carro

- **`\t`** - Tabulador

- **`\\`** - Barra invertida

- **`\$`** - Dolar

- **`\'`** - Comilla simple

- **`\"`** - Comilla doble

- **`\v`** - Tabulador vertical

- **`\e`** - Escape

- **`\f`** - Salto de página

- **`\xHH`** - Carácter hexadecimal
    ```php
    echo "\x48\x65\x6c\x6c\x6f"; // Hello
    ```
- **`\uHHHH`** - Carácter unicode
    ```php
    echo "\u0048\u0065\u006c\u006c\u006f"; // Hello
    ```
- **`\u{HHHHHH}`** - Carácter unicode
    ```php
    echo "\u{0048}\u{0065}\u{006c}\u{006c}\u{006f}"; // Hello
    ```
- **`\N{nombre}`** - Carácter unicode
    ```php
    echo "\N{LATIN CAPITAL LETTER H}\N{LATIN SMALL LETTER E}\N{LATIN SMALL LETTER L}\N{LATIN SMALL LETTER L}\N{LATIN SMALL LETTER O}"; // Hello
    ```
- **`[0-7]{1,3}`** - Carácter octal
    ```php
    echo "\110\145\154\154\157"; // Hello
    ```


### Funciones de strings

- **`addcslashes()`** - Añade barras invertidas a un string según los caracteres que se le indiquen
    ```php
    echo addcslashes("Hello World!", "W"); // Hello \World!
    ```

- **`addslashes()`** - Devuelve una cadena con barras invertidas (osea los que necesitemos escapar)
    ```php
    echo addslashes("What's up?"); // What\'s up?
    ```

- **`bin2hex()`** - Convierte una cadena de caracteres ASCII en una cadena hexadecimal
    ```php
    echo bin2hex("Hello World!"); // 48656c6c6f20576f726c6421
    ```

- **`chop()`** - Elimina espacios en blanco (u otros caracteres) del final de un string
    ```php
    echo chop("Hello World!", "World!"); // Hello
    ```

- **`chr()`** - Devuelve un caracter de un código ASCII
    ```php
    echo chr(52); // 4
    ```

- **`chunk_split()`** - Divide un string en fragmentos más pequeños
    ```php
    echo chunk_split("Hello world!", 2, "."); // He.ll.o .wo.rl.d.!
    ```

- **`convert_cyr_string()`** - Convierte un string de una codificación a otra, según la tabla de caracteres que se le indique
    ```php
    // en este caso se convierte de la codificación koi8-r a la codificación windows-1251
    echo convert_cyr_string("Hello World!", "k", "w"); // Hello World!
    ```

- **`anotherconvert_uudecode()`** - Decodifica un string codificado en uuencode
    ```php
    echo convert_uudecode("+22!L;W9E(%!(4\"$`\n`"); // Hello World!
    ```

- **`stringconvert_uuencode()`** - Codifica un string en uuencode
    ```php
    echo convert_uuencode("Hello World!"); // +22!L;W9E(%!(4\"$`
    ```

- **`uuencodecount_chars()`** - Devuelve información sobre los caracteres usados en un string
    ```php
    print_r(count_chars("Hello World!", 3)); // Hello World!
    ```

- **`crc32()`** - Calcula el CRC32 polinomio de un string
    ```php
    // ni puta idea de lo que es CRC32, pero OK :D
    echo crc32("Hello World!"); // 1518500249
    ```

- **`crypt()`** - Devuelve un hashed string, o sea, un string encriptado
    ```php
    echo crypt("Hello World!"); // $1$Hl0W0rld$0ZQXZ1Z1Z1Z1Z1Z1Z1Z1Z1
    ```

- **`echo()`** o **`echo ''`** - Imprime un string
    ```php
    echo "Hello World!"; // Hello World!
    ```

- **`explode()`** - Divide un string en un array
    ```php
    print_r(explode(" ", "Hello World!")); // [Hello, World!]
    ```

- **`fprintf()`** - Escribe un string formateado a un archivo especificado
    ```php
    $file = fopen("test.txt", "w");
    fprintf($file, "%04d-%02d-%02d", 1988, 8, 1); // 1988-08-01
    fclose($file);
    ```

- **`get_html_translation_table()`** - Devuelve la tabla de traducción de caracteres HTML
    ```php
    print_r(get_html_translation_table(HTML_ENTITIES)); // [¡ => &iexcl;, ¢ => &cent;, £ => &pound;, ¤ => &curren;, ¥ => &yen;, ¦ => &brvbar;, § => &sect;, ¨ => &uml;, © => &copy;, ª => &ordf;, « => &laquo;, ¬ => &not;, ­ => &shy;, ® => &reg;, ¯ => &macr;, ° => &deg;, ± => &plusmn;, ² => &sup2;, ³ => &sup3;, ´ => &acute;, µ => &micro;, ¶ => &para;, · => &middot;, ¸ => &cedil;, ¹ => &sup1;, º => &ordm;, » => &raquo;, ¼ => &frac14;, ½ => &frac12;, ¾ => &frac34;, ¿ => &iquest;, À => &Agrave;, Á => &Aacute;, Â => &Acirc;, Ã => &Atilde;, Ä => &Auml;, Å => &Aring;, Æ => &AElig;, Ç => &Ccedil;, È => &Egrave;, É => &Eacute;, Ê => &Ecirc;, Ë => &Euml;, Ì => &Igrave;, Í => &Iacute;, Î => &Icirc;, Ï => &Iuml;, Ð => &ETH;, Ñ => &Ntilde;, Ò => &Ograve;, Ó => &Oacute;, Ô => &Ocirc;, Õ => &Otilde;, Ö => &Ouml;, × => &times;, Ø => &Oslash;, Ù => &Ugrave;, Ú => &Uacute;, Û => &Ucirc;, Ü => &Uuml;, Ý => &Yacute;, Þ => &THORN;, ß => &szlig;, à => &agrave;, á => &aacute;, â => &acirc;, ã => &atilde;, ä => &auml;, å => &aring;, æ => &aelig;, ç => &ccedil;, è => &egrave;, é => &eacute;, ê => &ecirc;, ë => &euml;, ì => &igr
    ```

- **`hebrev()`** - Convierte caracteres hebreos en caracteres HTML
    ```php
    echo hebrev("Hello World!"); // Hello World!
    ```

- **`hebrevc()`** - Convierte caracteres hebreos en caracteres HTML, con nueva línea
    ```php
    echo hebrevc("Hello World!"); // Hello World!
    ```

- **`hex2bin()`** - Convierte un string hexadecimal en ASCII
    ```php
    echo hex2bin("48656c6c6f20576f726c6421"); // Hello World!
    ```

- **`html_entity_decode()`** - Convierte caracteres HTML en caracteres ASCII
    ```php
    echo html_entity_decode("&lt;html&gt;"); // <html>
    ```
  
- **`htmlentities()`** - Convierte caracteres ASCII en caracteres HTML
    ```php
    echo htmlentities("<html>"); // &lt;html&gt;
    ```

- **`htmlspecialchars_decode()`** - Convierte caracteres HTML en caracteres ASCII
    ```php
    echo htmlspecialchars_decode("&lt;html&gt;"); // <html>
    ```

- **`htmlspecialchars()`** - Convierte caracteres ASCII en caracteres HTML
    ```php
    echo htmlspecialchars("<html>"); // &lt;html&gt;
    ```

- **`implode()`** - Une elementos de un array en un string
    ```php
    echo implode(" ", ["Hello", "World!"]); // Hello World!
    ```

- **`lcfirst()`** - Convierte el primer caracter de un string a minúscula
    ```php
    echo lcfirst("Hello World!"); // hello World!
    ```

- **`levenshtein()`** - Calcula la distancia Levenshtein entre dos strings
    ```php
    // ni puta idea de lo que es Levenshtein, pero OK :D
    echo levenshtein("Hello World!", "Hello World!"); // 0
    ```

- **`localeconv()`** - Devuelve información sobre la configuración regional actual
    ```php
    print_r(localeconv()); // [decimal_point => ., thousands_sep => ,, int_curr_symbol => USD, currency_symbol => $, mon_decimal_point => ., mon_thousands_sep => ,, positive_sign => , negative_sign => -, int_frac_digits => 2, frac_digits => 2, p_cs_precedes => 1, p_sep_by_space => 0, n_cs_precedes => 1, n_sep_by_space => 0, p_sign_posn => 3, n_sign_posn => 3, grouping => [3, 3], int_p_cs_precedes => 1, int_p_sep_by_space => 0, int_n_cs_precedes => 1, int_n_sep_by_space => 0, int_p_sign_posn => 3, int_n_sign_posn => 3]
    ```

- **`ltrim()`** - Elimina espacios en blanco (o otros caracteres) del inicio de un string
    ```php
    echo ltrim(" Hello World! "); // Hello World! 
    ```

- **`ltrim()`** - Elimina espacios en blanco (o otros caracteres) del final de un string
    ```php
    echo rtrim(" Hello World! "); //  Hello World!
    ```

- **`md5_file()`** - Calcula el hash MD5 de un archivo
    ```php
    echo md5_file("index.php"); // 8b9a9d9e9f9a9b9c9d9e9f9a9b9c9d9e
    ```

- **`md5()`** - Calcula el hash MD5 de un string
    ```php
    echo md5("Hello World!"); // 5eb63bbbe01eeed093cb22bb8f5acdc3
    ```

- **`metaphone()`** - Calcula la clave fonética de un string
    ```php
    // ni puta idea de lo que es metaphone, pero OK :D
    echo metaphone("Hello World!"); // HLRT
    ```

- **`money_format()`** - Formatea un número como un precio
    ```php
    // se le puede definir el formato de la moneda
    // puede ser: %i (para el símbolo de la moneda), %n (para el número), %v (para el valor), %c (para el código de la moneda), %x (para el símbolo de la moneda en formato HTML)
    // simbolos: 0 (para rellenar con ceros), - (para alinear a la izquierda), + (para alinear a la derecha), . (para separar decimales), , (para separar miles)
    // codigos de moneda: USD, EUR, GBP, JPY, CHF, CAD, AUD, NZD, SEK, DKK, NOK, HUF, CZK, PLN, BRL, RUB, INR, MXN, ZAR, TRY, ILS, KRW, TWD 
    echo money_format("%i", 1234.56); // $1,234.56
    ```

- **`nl_langinfo()`** - Devuelve información sobre la configuración regional actual
    ```php
    // se le puede pasar como parámetro un código de idioma
    // códigos de idioma: ABDAY_1, ABDAY_2, ABDAY_3, ABDAY_4, ABDAY_5, ABDAY_6, ABDAY_7, DAY_1, DAY_2, DAY_3, DAY_4, DAY_5, DAY_6, DAY_7, ABMON_1, ABMON_2, ABMON_3, ABMON_4, ABMON_5, ABMON_6, ABMON_7, ABMON_8, ABMON_9, ABMON_10, ABMON_11, ABMON_12, MON_1, MON_2, MON_3, MON_4, MON_5, MON_6, MON_7, MON_8, MON_9, MON_10, MON_11, MON_12, AM_STR, PM_STR, D_T_FMT, D_FMT, T_FMT, T_FMT_AMPM, ERA, ERA_D_T_FMT, ERA_D_FMT, ERA_T_FMT, ALT_DIGITS, RADIXCHAR, THOUSEP, YESEXPR, NOEXPR, YESSTR, NOSTR, CRNCYSTR
    echo nl_langinfo("DAY_1"); // Monday
    ```

- **`nl2br()`** - Inserta saltos de línea HTML antes de cada nueva línea de un string
    ```php
    echo nl2br("Hello\nWorld!"); // Hello<br />World!
    ```

- **`number_format()`** - Formatea un número con los separadores de miles y decimales locales
    ```php
    echo number_format(1234.56); // 1,235
    ```

- **`ord()`** - Devuelve el valor ASCII de un caracter
    ```php
    echo ord("A"); // 65
    ```

- **`parse_str()`** - Analiza una cadena como si fuera una cadena de consulta y establece variables
    ```php
    parse_str("name=John&age=30"); // name = John, age = 30
    ```

- **`print()`** - Imprime una o más cadenas
    ```php
    print("Hello World!"); // Hello World!
    ```

- **`printf()`** - Imprime una cadena formateada
    ```php
    // se le puede definir el formato de la cadena
    // puede ser: %b (para binario), %c (para caracter), %d (para decimal), %e (para notación científica), %u (para decimal sin signo), %f (para punto flotante), %o (para octal), %s (para string), %x (para hexadecimal), %X (para hexadecimal mayúsculas)
    // simbolos: 0 (para rellenar con ceros), - (para alinear a la izquierda), + (para alinear a la derecha), . (para separar decimales), , (para
    printf("%d", 1234.56); // 1235
    ```

- **`quoted_printable_decode()`** - Convierte una cadena codificada en quoted-printable a una cadena normal
    ```php
    echo quoted_printable_decode("Hello=20World!"); // Hello World!
    ```

- **`quoted_printable_encode()`** - Convierte una cadena a una codificada en quoted-printable
    ```php
    echo quoted_printable_encode("Hello World!"); // Hello=20World!
    ```

- **`quotemeta()`** - Escapa los caracteres meta de una cadena
    ```php
    echo quotemeta("Hello World!"); // Hello\ World\!
    ```

- **`setlocale()`** - Establece la configuración regional actual
    ```php
    // se le puede pasar como parámetro un código de idioma
    setlocale(LC_ALL, "es_ES"); // Español (España)
    ```

- **`sha1()`** - Calcula el hash SHA-1 de un string
    ```php
    echo sha1("Hello World!"); // 2ef7bde608ce5404e97d5f042f95f89f1c232871
    ```

- **`sha1_file()`** - Calcula el hash SHA-1 de un archivo
    ```php
    echo sha1_file("test.txt"); // 2ef7bde608ce5404e97d5f042f95f89f1c232871
    ```

- **`similar_text()`** - Calcula la similitud entre dos strings
    ```php
    echo similar_text("Hello World!", "Hello PHP!"); // 6
    ```

- **`soundex()`** - Calcula el código de sonido de un string
    ```php
    // ni puta idea de lo que es soundex, pero OK :D
    echo soundex("Hello World!"); // H416
    ```

- **`sprintf()`** - Devuelve una cadena formateada
    ```php
    // se le puede definir el formato de la cadena
    // puede ser: %b (para binario), %c (para caracter), %d (para decimal), %e (para notación científica), %u (para decimal sin signo), %f (para punto flotante), %o (para octal), %s (para string), %x (para hexadecimal), %X (para hexadecimal mayúsculas)
    echo sprintf("%d", 1234.56); // 1235
    ```

- **`sscanf()`** - Analiza una entrada desde una cadena según un formato
    ```php
    // se le puede definir el formato de la cadena
    // puede ser: %b (para binario), %c (para caracter), %d (para decimal), %e (para notación científica), %u (para decimal sin signo), %f (para punto flotante), %o (para octal), %s (para string), %x (para hexadecimal), %X (para hexadecimal mayúsculas)
    sscanf("Hello World!", "%s %s", $str1, $str2); // $str1 = Hello, $str2 = World!
    ```

- **`str_getcsv()`** - Parsea una línea de un archivo CSV para un array
    ```php
    $array = str_getcsv("John;Doe;30 years;M;1000"); // $array = ["John", "Doe", "30 years", "M", "1000"]
    ```

- **`str_ireplace()`** - Reemplaza todas las apariciones de un string por otro (ignorando mayúsculas y minúsculas)
    ```php
    echo str_ireplace("world", "PHP", "Hello World!"); // Hello PHP!
    ```

- **`str_pad()`** - Rellena una cadena a una longitud dada con otro string
    ```php
    echo str_pad("Hello", 10, "-"); // Hello-----
    ```

- **`str_repeat()`** - Repite un string
    ```php
    echo str_repeat("Hello", 3); // HelloHelloHello
    ```

- **`str_replace()`** - Reemplaza todas las apariciones de un string por otro
    ```php
    echo str_replace("world", "PHP", "Hello World!"); // Hello PHP!
    ```

- **`str_rot13()`** - Aplica la codificación rot13 a un string
    ```php
    echo str_rot13("Hello World!"); // Uryyb Jbeyq!
    ```

- **`str_shuffle()`** - Mezcla un string
    ```php
    echo str_shuffle("Hello World!"); // !dlroW olleH
    ```

- **`str_split()`** - Divide un string en varios strings
    ```php
    print_r(str_split("Hello World!", 3)); // ["Hel", "lo ", "Wor", "ld!"]
    ```

- **`str_word_count()`** - Cuenta el número de palabras de un string
    ```php
    echo str_word_count("Hello World!"); // 2
    ```

- **`strcasecmp()`** - Compara dos strings (ignorando mayúsculas y minúsculas)
    ```php
    echo strcasecmp("Hello World!", "hello world!"); // 0
    ```

- **`strcoll()`** - Compara dos strings (usando la configuración regional actual)
    ```php
    echo strcoll("Hello World!", "hello world!"); // -1
    ```

- **`strcspn()`** - Calcula la longitud de la primera parte de un string que no contiene caracteres de un conjunto dado
    ```php
    echo strcspn("Hello World!", "W"); // 6
    ```

- **`strip_tags()`** - Elimina las etiquetas HTML y PHP de un string
    ```php
    echo strip_tags("<p>Hello World!</p>"); // Hello World!
    ```

- **`stripcslashes()`** - Lo opuesto a `addcslashes()`
    ```php
    echo stripcslashes("Hello\ World!"); // Hello World!
    ```

- **`stripos()`** - Encuentra la posición de la primera aparición de un string dentro de otro (ignorando mayúsculas y minúsculas)
    ```php
    echo stripos("Hello World!", "world"); // 6
    ```

- **`stristr()`** - Encuentra la primera aparición de un string dentro de otro (ignorando mayúsculas y minúsculas)
    ```php
    echo stristr("Hello World!", "world"); // World!
    ```

- **`strlen()`** - Calcula la longitud de un string
    ```php
    echo strlen("Hello World!"); // 12
    ```

- **`strnatcasecmp()`** - Compara dos strings usando un algoritmo "natural" (ignorando mayúsculas y minúsculas)
    ```php
    echo strnatcasecmp("Hello World!", "hello world!"); // 0
    ```

- **`strnatcmp()`** - Compara dos strings usando un algoritmo "natural" (tomando en cuenta mayúsculas y minúsculas)
    ```php
    echo strnatcmp("Hello World!", "hello world!"); // -1
    ```

LUEGO TERMINO DE CUBRIR ESTO
---

## Trabajar con Bases de Datos

- **`mysqli_connect()`** - Abre una nueva conexión a un servidor MySQL
    ```php
    // mysqli_connect(host, usuario, contraseña, base de datos, puerto, socket) - devuelve un objeto mysqli
    $conn = mysqli_connect("localhost", "root", "", "my_db");    
    ```

- **`mysqli_close()`** - Cierra una conexión previamente abierta a un servidor MySQL
    ```php
    mysqli_close($conn);
    ```

- **`mysqli_query()`** - Realiza una consulta a un servidor MySQL
    ```php
    // mysqli_query(conexión, consulta) - devuelve un objeto mysqli_result
    $result = mysqli_query($conn, "SELECT * FROM users");
    ```

- **`mysqli_fetch_array()`** - Obtiene una fila de resultados como un array asociativo, un array numérico o ambos
    ```php
    // mysqli_fetch_array(objeto mysqli_result, tipo de array) - devuelve un array
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    // para volcar el resultado de la consulta en un array
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        print_r($row);
    }
    // esto se mostraria en la consola
    // Array ( [id] => 1 [name] => John [age] => 30 )
    // Array ( [id] => 2 [name] => Mary [age] => 25 )
    // Array ( [id] => 3 [name] => Peter [age] => 40 )
    ```

- **`mysqli_fetch_assoc()`** - Obtiene una fila de resultados como un array asociativo
    ```php
    // mysqli_fetch_assoc(objeto mysqli_result) - devuelve un array
    $row = mysqli_fetch_assoc($result);
    ```

- **`mysqli_fetch_field()`** - Obtiene información sobre los campos de un resultado
    ```php
    // mysqli_fetch_field(objeto mysqli_result) - devuelve un objeto mysqli_field
    $field = mysqli_fetch_field($result);
    ```

- **`mysqli_fetch_fields()`** - Obtiene información sobre los campos de un resultado
    ```php
    // mysqli_fetch_fields(objeto mysqli_result) - devuelve un array de objetos mysqli_field
    $fields = mysqli_fetch_fields($result);
    ```

- **`mysqli_fetch_field_direct()`** - Obtiene información sobre los campos de un resultado
    ```php
    // mysqli_fetch_field_direct(objeto mysqli_result, índice) - devuelve un objeto mysqli_field
    $field = mysqli_fetch_field_direct($result, 0);
    ```

- **`mysqli_fetch_lengths()`** - Obtiene la longitud de cada columna de un resultado
    ```php
    $result = mysqli_query($conn, "SELECT * FROM users");
    // mysqli_fetch_lengths(objeto mysqli_result) - devuelve un array de enteros
    $lengths = mysqli_fetch_lengths($result);
    // obeter los datos
    $row = mysqli_fetch_array($result, MYSQLI_NUM);
    // imprimir los datos
    for ($i = 0; $i < count($lengths); $i++) {
        echo $row[$i] . " (" . $lengths[$i] . ")<br>";
    }
    ```

- **`mysqli_fetch_object()`** - Obtiene una fila de resultados como un objeto
    ```php
    // mysqli_fetch_object(objeto mysqli_result) - devuelve un objeto
    $row = mysqli_fetch_object($result);
    ```

- **`mysqli_fetch_row()`** - Obtiene una fila de resultados como un array numérico
    ```php
    // mysqli_fetch_row(objeto mysqli_result) - devuelve un array
    $row = mysqli_fetch_row($result);
    ```

- **`mysqli_field_count()`** - Obtiene el número de campos de un resultado
    ```php
    // mysqli_field_count(objeto mysqli_result) - devuelve un entero
    $num_fields = mysqli_field_count($result);
    ```

- **`mysqli_field_seek()`** - Establece el puntero de un resultado a la posición especificada
    ```php
    // mysqli_field_seek(objeto mysqli_result, índice) - devuelve un booleano
    // sirve para reiniciar el puntero de un resultado
    $seek = mysqli_field_seek($result, 0);
    ```

- **`mysqli_free_result()`** - Libera la memoria asociada a un resultado
    ```php
    mysqli_free_result($result);
    ```

- **`mysqli_get_client_info()`** - Obtiene la información de la versión del cliente de MySQL
    ```php
    // mysqli_get_client_info() - devuelve un string
    $client_info = mysqli_get_client_info();
    echo $client_info; // 5.7.21
    ```

- **`mysqli_get_client_version()`** - Obtiene la versión del cliente de MySQL
    ```php
    // mysqli_get_client_version() - devuelve un entero
    $client_version = mysqli_get_client_version();
    echo $client_version; // 50721
    ```

- **`mysqli_get_host_info()`** - Obtiene la información del servidor de MySQL
    ```php
    // mysqli_get_host_info(objeto mysqli) - devuelve un string
    $host_info = mysqli_get_host_info($conn);
    echo $host_info; // Localhost via UNIX socket
    ```

- **`mysqli_get_proto_info()`** - Obtiene la versión del protocolo de comunicación de MySQL
    ```php
    // mysqli_get_proto_info(objeto mysqli) - devuelve un entero
    $proto_info = mysqli_get_proto_info($conn);
    echo $proto_info; // 10
    ```

- **`mysqli_get_server_info()`** - Obtiene la información de la versión del servidor de MySQL
    ```php
    // mysqli_get_server_info(objeto mysqli) - devuelve un string
    $server_info = mysqli_get_server_info($conn);
    echo $server_info; // 5.7.21
    ```

- **`mysqli_get_server_version()`** - Obtiene la versión del servidor de MySQL
    ```php
    // mysqli_get_server_version(objeto mysqli) - devuelve un entero
    $server_version = mysqli_get_server_version($conn);
    echo $server_version; // 50721
    ```

- **`mysqli_get_warnings()`** - Obtiene las advertencias de un servidor de MySQL
    ```php
    // mysqli_get_warnings(objeto mysqli) - devuelve un objeto mysqli_warning
    // se utiliza para obtener las advertencias de un servidor de MySQL
    $warnings = mysqli_get_warnings($conn);
    echo $warnings->message; // Warning: 1265 Data truncated for column 'age' at row 1
    ```

- **`mysqli_info()`** - Obtiene la información de la última consulta
    ```php
    // mysqli_info(objeto mysqli) - devuelve un string
    $info = mysqli_info($conn);
    echo $info; // Records: 1  Duplicates: 0  Warnings: 0
    ```

- **`mysqli_init()`** - Inicializa una conexión a MySQL
    ```php
    // mysqli_init() - devuelve un objeto mysqli
    $conn = mysqli_init();
    ```

- **`mysqli_insert_id()`** - Obtiene el ID generado por una consulta con `AUTO_INCREMENT`
    ```php
    // mysqli_insert_id(objeto mysqli) - devuelve un entero
    $id = mysqli_insert_id($conn);
    echo $id; // 1
    ```

- **`mysqli_kill()`** - Mata un proceso de MySQL
    ```php
    // mysqli_kill(objeto mysqli, id_proceso) - devuelve un booleano
    $kill = mysqli_kill($conn, 1);
    ```

- **`mysqli_more_results()`** - Comprueba si hay más resultados de una consulta
    ```php
    // mysqli_more_results(objeto mysqli) - devuelve un booleano
    $more_results = mysqli_more_results($conn);
    echo $more_results; // 1
    ```
    


    
    







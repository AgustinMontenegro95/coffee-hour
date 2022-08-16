import 'models/coffe_model.dart';

List<CoffeClass> coffesList = const [
  CoffeClass(
      name: "Café Batido",
      description:
          "No necesita una máquina elegante para crear su propia experiencia de café.Prepare su propio café batido en casa con el café instantáneo de manera facil",
      intensity: "S",
      temp: "25°",
      steps: [
        "Agregue café instantáneo, azúcar y agua caliente a un recipiente limpio.",
        "Con una batidora de mano, bata / bate los ingredientes durante aproximadamente 2-5 minutos, hasta que la mezcla cambie de espumosa a espumosa a cremosa",
        "Llena un vaso con hielo y agrega la leche.",
        "Coloque con una cuchara el café batido encima. (También puede colocarlo sobre leche tibia para una bebida caliente).",
        "¡Revuélvelo en la leche para combinar y disfrutar!"
      ],
      ingredients: [
        "2 cucharadas de café instantáneo",
        "2 cucharadas de azúcar granulada",
        "1 taza de leche o agua"
      ]),
  CoffeClass(
      name: "Frappé Latte Macchiato",
      description:
          "Helado. Cremoso. Y sumamente delicioso. Un placer helado y apetitoso que te refrescará y dará energía en cualquier momento durante el verano.",
      intensity: "S",
      temp: "30°",
      steps: [
        "Simplemente combine el agua, la crema en polvo Coffee mate, el café, el azúcar y la canela en una jarro mediano; mezda bien. Sirve sobre hielo.",
      ],
      ingredients: [
        "4 tazas de agua caliente",
        "3 cucharadas de Café Puro Soluble ",
        "2 cucharadas de azúcar granulado",
        "1/4 cucharadita de canela en polvo",
        "Cubos de hielo",
      ]),
  CoffeClass(
      name: "Café Helado de Vainilla",
      description:
          "Este café helado de vainilla es perfecto despúes de la cena durante una noche calurosa de verano.",
      intensity: "S",
      temp: "30°",
      steps: [
        "Poner 2 cucharaditas de café soluble en un vaso.",
        "Añadir 2 cucharaditas de azúcar , un poco de agua y bata.",
        "Poner unos cubitos de hielo en el vaso.",
        "Añadir leche al vaso con hielo.",
        "Formar espuma con la leche sobrante e incorporarla.",
        "Verter el café soluble sobre la leche y disfrutar."
      ],
      ingredients: [
        "2 cucharaditas de instantaneo",
        "2 cucharaditas de azúcar",
        "Cubitos de hielo",
        "3/4 partes de leche",
      ]),
  CoffeClass(
      name: "Café bombón ",
      description:
          "Café bombón con chocolate y espuma de leche ideal para postre",
      intensity: "S",
      temp: "20°",
      steps: [
        "Fundir el chocolate en el microondas o al baño maría. ",
        "Preparar el batido de cafe con un poco de agua y azucar",
        "Verter la leche condensada en el vaso, añadir el chocolate fundido formando una segunda capa. ",
        "Añadir el café y encima la espuma de leche al gusto.",
      ],
      ingredients: [
        "25 g de Leche condensada",
        "Espuma de leche a gusto",
        "25 g de Chocolate Negro",
        "2 cucharadas de cafe instantaneo",
      ]),
  CoffeClass(
      name: "Cafe Filtro",
      description: "Un clasico,aromático y lleno de sabor.",
      intensity: "F",
      temp: "20°",
      steps: [
        "Calentar agua caliente en una jarra y agregar una cucharada (10 gramos) de cafe cada dos tazas de agua) ",
        "Filtrar en una taza una vez que el agua este en ebullición ",
      ],
      ingredients: [
        "Agua caliente",
        "granos de cafe de buena calidad",
      ]),
];

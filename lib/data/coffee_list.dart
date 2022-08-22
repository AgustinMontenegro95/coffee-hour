import 'models/coffe_model.dart';

List<CoffeClass> coffesListSp = const [
  CoffeClass(
      name: "Café Batido",
      description:
          "No necesita una máquina elegante para crear su propia experiencia de café. Prepare su propio café batido en casa con el café instantáneo de manera facil.",
      intensity: "S",
      temp: "25°",
      steps: [
        "Agregue café instantáneo, azúcar y agua caliente a un recipiente limpio.",
        "Con una batidora de mano, bata / bate los ingredientes durante aproximadamente 2-5 minutos, hasta que la mezcla cambie de espumosa a espumosa a cremosa.",
        "Llena un vaso con hielo y agrega la leche.",
        "Coloque con una cuchara el café batido encima. (También puede colocarlo sobre leche tibia para una bebida caliente).",
        "¡Revuélvelo en la leche para combinar y disfrutar!"
      ],
      ingredients: [
        "2 cucharadas de café instantáneo",
        "2 cucharadas de azúcar granulada",
        "1 taza de leche o agua",
      ]),
  CoffeClass(
      name: "Café Helado de Vainilla",
      description:
          "Helado, cremoso y sumamente delicioso. Un placer helado y apetitoso que te refrescará y dará energía en cualquier momento durante el verano.",
      intensity: "S",
      temp: "30°",
      steps: [
        "Combine el agua, la crema en polvo Coffee mate, el café, el azúcar y la canela en una jarro mediano y mezda bien.",
        "Sirve sobre un vaso con hielo.",
      ],
      ingredients: [
        "4 tazas de agua caliente",
        "3 cucharadas de Café Puro Soluble ",
        "2 cucharadas de azúcar granulado",
        "1/4 cucharadita de canela en polvo",
        "Cubos de hielo",
      ]),
  CoffeClass(
      name: "Frappé Latte Macchiato",
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
      name: "Café bombón",
      description:
          "Café bombón con chocolate y espuma de leche ideal para postre.",
      intensity: "S",
      temp: "20°",
      steps: [
        "Fundir el chocolate en el microondas o al baño maría.",
        "Preparar el batido de cafe con un poco de agua y azucar.",
        "Verter la leche condensada en el vaso, añadir el chocolate fundido formando una segunda capa.",
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
      description: "Un clasico, aromático y lleno de sabor.",
      intensity: "F",
      temp: "20°",
      steps: [
        "Calentar agua caliente en una jarra y agregar una cucharada (10 gramos) de cafe cada dos tazas de agua).",
        "Filtrar en una taza una vez que el agua este en ebullición.",
      ],
      ingredients: [
        "Agua caliente",
        "granos de cafe de buena calidad",
      ]),
];

List<CoffeClass> coffesListEn = const [
  CoffeClass(
      name: "Coffee Shake",
      description:
          "You don't need a fancy machine to create your own coffee experience. Make your own whipped coffee at home with instant coffee the easy way.",
      intensity: "S",
      temp: "25°",
      steps: [
        "Add instant coffee, sugar and hot water to a clean container.",
        "Using a hand mixer, whisk/whip the ingredients for about 2-5 minutes, until the mixture changes from frothy to frothy to creamy.",
        "Fill a glass with ice and add the milk.",
        "Spoon the whipped coffee on top. (You can also spoon it over warm milk for a hot drink).",
        "Stir it into the milk to combine and enjoy!"
      ],
      ingredients: [
        "2 tablespoons of instant coffee",
        "2 tablespoons of granulated sugar",
        "1 cup of milk or water",
      ]),
  CoffeClass(
      name: "Iced Vanilla Coffee",
      description:
          "Frosted. Creamy. And supremely delicious. An appetizing frozen treat that will refresh and energize you anytime during the summer.",
      intensity: "S",
      temp: "30°",
      steps: [
        "Combine the water, Coffee mate powdered creamer, coffee, sugar, and cinnamon in a medium pitcher and mix well.",
        "Serve over a glass with ice.",
      ],
      ingredients: [
        "4 cups of hot water",
        "3 tablespoons of Pure Soluble Coffee",
        "2 tablespoons of granulated sugar",
        "1/4 teaspoon ground cinnamon",
        "Ice cubes",
      ]),
  CoffeClass(
      name: "Frappé Latte Macchiato",
      description:
          "This vanilla iced coffee is perfect after dinner on a hot summer night.",
      intensity: "S",
      temp: "30°",
      steps: [
        "Put 2 teaspoons of instant coffee in a glass.",
        "Add 2 teaspoons of sugar, a little water and whisk.",
        "Put some ice cubes in the glass.",
        "Add milk to the glass with ice.",
        "Create foam with the remaining milk and add it.",
        "Pour the soluble coffee over the milk and enjoy."
      ],
      ingredients: [
        "2 teaspoons of instant",
        "2 teaspoons of sugar",
        "Ice cubes",
        "3/4 parts of milk",
      ]),
  CoffeClass(
      name: "Coffee bonbon",
      description:
          "Coffee bonbon with chocolate and milk foam ideal for dessert.",
      intensity: "S",
      temp: "20°",
      steps: [
        "Melt the chocolate in the microwave or in a bain-marie. ",
        "Prepare the coffee shake with a little water and sugar.",
        "Pour the condensed milk into the glass, add the melted chocolate forming a second layer.",
        "Add the coffee and on top the milk foam to taste.",
      ],
      ingredients: [
        "25 g of condensed milk",
        "Milk foam to taste",
        "25 g Dark Chocolate",
        "2 tablespoons of instant coffee",
      ]),
  CoffeClass(
      name: "Filter Coffee",
      description: "A classic, aromatic and full of flavor.",
      intensity: "F",
      temp: "20°",
      steps: [
        "Heat hot water in a jug and add a tablespoon (10 grams) of coffee every two cups of water).",
        "Filter into a cup once the water is boiling.",
      ],
      ingredients: [
        "Hot water",
        "good quality coffee beans",
      ]),
];

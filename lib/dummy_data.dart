import './models/category.dart';
import './models/travel.dart';

const List<Category>DUMMY_CATEGORIES= <Category>[
    //creacion de la categorias 
    Category(
      id:'a1',
      title: 'category_artesania',
      catImage: 'images/artesania/ayawun8.jpg',
    ),
    Category(
      id: 'a2',
      title: 'category_ciudades',
      catImage: 'images/cat_images/chachapoyas-calles1.jpg',
    ),
    Category(
      id: 'a3',
      title:'category_arqueologia',
      catImage: 'images/cat_images/kuelap.jpg',

    ),
    Category(
      id: 'a4',
      title: 'category_productos_tradicionales',
      catImage: 'images/cat_images/productostradicionales.jpeg',

    ),
    Category(
      id: 'a5',
      title: 'category_hoteles',
      catImage: 'images/cat_images/hotel-puma-urco.jpg',
    ),
    Category(
      id: 'a6', 
      title: 'category_costumbres', 
      catImage: 'images/cat_images/paquetes_chachapoyas.jpg',
        
    ),
    Category(
      id: 'a7',
      title: 'category_boletos_buses',
      catImage: 'images/cat_images/buschachapoyas.jpg',
    ),
    Category(
      id:'a8',
      title: 'category_boletos_avion',
      catImage: 'images/cat_images/atsa.jpg',
    ),
    Category(
      id: 'a11',
      title: 'category_restaurantes',
      catImage: 'images/cat_images/restaurante.jpg',
    ),
];
const List<Travel>DUMMY_TRAVELS=<Travel>[
    //bagua
    Travel(
      id: 'c1',
      categories: <String>['a2'],
      title: 'travel_c1_title',
      priceTable: <String>[
        'travel_c1_price1',
        'travel_c1_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes: Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/ciudades/baguacity.jpg',
        'images/ciudades/bagua1.jpg',
        'images/ciudades/bagua2.jpg',
        'images/ciudades/bagua3.jpg',
        'images/ciudades/bagua4.jpg',
        'images/ciudades/bagua5.jpg',
        'images/ciudades/bagua6.jpg',
        'images/ciudades/bagua7.jpg',
      ],
      descripcion: <String>[
        'travel_c1_desc1',
        'travel_c1_desc2',
        'travel_c1_desc3',
        'travel_c1_desc4',
        'travel_c1_desc5',
      ],
      website: 'https://web.facebook.com/Bagua.Capital/?locale=es_LA&_rdc=1&_rdr',
    ),
    //bagua grande
    Travel(
      id: 'c2',
      categories: <String>['a2'],
      title:'travel_c2_title',
      priceTable: <String>[
        'travel_c2_price1',
        'travel_c2_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes: Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/ciudades/baguagrande.jpg',
        'images/ciudades/bgrande1.jpg',
        'images/ciudades/bgrande2.jpg',
        'images/ciudades/bgrande3.jpg',
        'images/ciudades/bgrande4.jpg',
      ],
      descripcion: <String>[
        'travel_c2_desc1',
        'travel_c2_desc2',
        'travel_c2_desc3',
        'travel_c2_desc4',
      ],
      website: 'https://web.facebook.com/MunicipalidadProvincialUtcubamba/?locale=es_LA&_rdc=1&_rdr',
    ),
    //chachapoyas
    Travel(
      id: 'c3',
      categories: <String>['a2'],
      title: 'travel_c3_title',
      priceTable: <String>[
        'travel_c3_price1',
        'travel_c3_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes: Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/ciudades/chachapoyas.jpg',
        'images/ciudades/chachapoyas1.jpeg',
        'images/ciudades/chachapoyas2.jpg',
        'images/ciudades/chachapoyas3.jpg',
        'images/ciudades/chachapoyas4.jpeg',
        'images/ciudades/chachapoyas5.jpeg',
        'images/ciudades/chachapoyas6.jpeg',
        'images/ciudades/chachapoyas7.jpeg',
        'images/ciudades/chachapoyas8.jpeg',
    
      ],
      descripcion: <String>[
        'travel_c3_desc1',
        'travel_c3_desc2',
        'travel_c3_desc3',
        'travel_c3_desc4',

      ],
      website: 'https://web.facebook.com/chachapoyas.amazonas.127?locale=es_LA',

    ),
    //luya
    Travel(
      id: 'c4',
      categories: <String>['a2'],
      title: 'travel_c4_title',
      priceTable: <String>[
        'travel_c4_price1',
        'travel_c4_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes: Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/ciudades/luya.jpg',
        'images/ciudades/luya1.jpg',
        'images/ciudades/luya2.jpeg',
        'images/ciudades/luya3.jpeg',
        'images/ciudades/luya4.jpeg',

      ],
      descripcion: <String>[
         'travel_c4_desc1',
         'travel_c4_desc2',
         'travel_c4_desc3',
         'travel_c4_desc4',
      ],
      website: 'https://muniluya.gob.pe/home/',
    ),
    //mendoza
    Travel(
      id: 'c5',
      categories: <String>['a2'],
      title: 'travel_c5_title',
      priceTable: <String>[
        'travel_c5_price1',
        'travel_c5_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes: Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/ciudades/rodriguez de mendoza.jpg',
        'images/ciudades/mendoza1.jpg',
        'images/ciudades/mendoza2.jpg',
        'images/ciudades/mendoza3.jpg',
        'images/ciudades/mendoza4.jpg',
        'images/ciudades/mendoza5.jpg',
        'images/ciudades/mendoza6.jpg',
        'images/ciudades/mendoza7.jpg',
        'images/ciudades/mendoza8.jpg',
        'images/ciudades/mendoza9.jpg',
        'images/ciudades/mendoza10.jpg',

      ],
      descripcion: <String>[
        'travel_c5_desc1',
        'travel_c5_desc2',
        'travel_c5_desc3',
        'travel_c5_desc4',
      ],
      website: 'https://web.facebook.com/p/Rodr%C3%ADguez-de-Mendoza-Huayabamba-100064711177910/?locale=es_LA&_rdc=1&_rdr',
    ),
    //boletos de buses ()
    //civa
    Travel(
      id: 'b1',
      categories: <String>['a7'],
      title: 'travel_b1_title',
      priceTable: <String>[
        'travel_b1_price1',
        'travel_b1_price2',
        'travel_b1_price3',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes: Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/buses/civa3.jpeg',
        'images/buses/civa.jpg',
        'images/buses/civa1.jpeg',
        'images/buses/civa2.jpeg',
        'images/buses/civa4.jpg',
        'images/buses/civa5.jpg',
      ],
      descripcion: <String>[
        'travel_b1_desc1',
        'travel_b1_desc2',
        'travel_b1_desc3',
        'travel_b1_desc4',
        'travel_b1_desc5',
        'travel_b1_desc6',
      ],
      whatsappLink: 'https://wa.me/51986658043',
      website: 'https://www.civa.com.pe/',
    ),
    //movil bus
    Travel(
      id: 'b2',
      categories: <String>['a7'],
      title: 'travel_b2_title',
      priceTable: <String>[
        'travel_b2_price1',
        'travel_b2_price2',
        'travel_b2_price3',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes: Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/buses/movil bus.jpg',
        'images/buses/movil1.jpg',
        'images/buses/movil2.jpg',
        'images/buses/movil3.jpg',
        'images/buses/movil4.jpg',
        'images/buses/movil5.jpg',
        'images/buses/movil6.png',
        'images/buses/movil7.png',
        'images/buses/movil8.png',
      ],
      descripcion: <String>[
        'travel_b2_desc1',
        'travel_b2_desc2',
        'travel_b2_desc3',
        'travel_b2_desc4',
        'travel_b2_desc5',
        'travel_b2_desc6',
      ],
      whatsappLink: 'https://wa.me/5117168000',
      website: 'https://www.movilbus.pe/',
    ),
    //gh bus
    Travel(
      id: 'b3',
      categories: <String>['a7'],
      title: 'travel_b3_title',
      priceTable: <String>[
        'travel_b3_price1',
        'travel_b3_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes:Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/buses/ghbus.jpg',
        'images/buses/gh1.jpg',
        'images/buses/gh2.jpg',
        'images/buses/gh3.jpg',
        'images/buses/gh4.png',
      ],
      descripcion: <String>[
        'travel_b3_desc1',
        'travel_b3_desc2',
        'travel_b3_desc3',
        'travel_b3_desc4',
        'travel_b3_desc5',
      ],
      whatsappLink: 'https://wa.me/5114800223',
      website: 'https://ghbus.com.pe/'
    ),
    //transportes chiclayo
    Travel(
      id: 'b4',
      categories: <String>['a7'],
      title: 'travel_b4_title',
      priceTable: <String>[
        'travel_b4_price1',
        'travel_b4_price2',
      ],
      accesibilidad: Accesibilidad.Economico,
      planes:Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/buses/chiclayo.jpg',
        'images/buses/chiclayo1.jpeg',
        'images/buses/chiclayo2.jpg',
        'images/buses/chiclayo3.jpg',
        'images/buses/chiclayo4.jpg',
      ],
      descripcion: <String>[
        'travel_b4_desc1',
        'travel_b4_desc2',
        'travel_b4_desc3',
        'travel_b4_desc4',
        'travel_b4_desc5',
      ],
      whatsappLink: 'https://wa.me/51972013941',
      website: 'https://ventas.transporteschiclayo.pe:444/',
    ),
    //atsa
    Travel(
       id: 'av1',
       categories: <String>['a8'],
       title: 'travel_av1_title',
       priceTable: <String>[
         'travel_av1_price1',
         'travel_av1_price2',
      ],
      accesibilidad: Accesibilidad.Costoso,
      planes:Planes.SoloBoleto,
      imageCarousel: <String>[
        'images/aviones/atzaair.jpg',
        'images/aviones/atza1.png',
        'images/aviones/atza2.png',
        'images/aviones/atza3.png',
        'images/aviones/atza4.png',

      ],
      descripcion: <String>[
        'travel_av1_desc1',
        'travel_av1_desc2',
        'travel_av1_desc3',
        'travel_av1_desc4',
        'travel_av1_desc5',
      ],
      website: 'https://www.atsaairlines.com/promociones-atsa',
    ),
    //saeta
    Travel(
       id: 'av2',
       categories: <String>['a8'],
       title: 'travel_av2_title',
       priceTable: <String>[
         'travel_av2_price1',
         'travel_av2_price2',
      ],
      accesibilidad: Accesibilidad.Costoso,
      planes:Planes.SoloBoleto,
      imageCarousel: <String>[
        'images/aviones/saeta5.jpg',
        'images/aviones/saeta2.png',
        'images/aviones/saeta1.png',
        'images/aviones/saeta3.png',
        'images/aviones/saeta4.png',

      ],
      descripcion: <String>[
        'travel_av2_desc1',
        'travel_av2_desc2',
        'travel_av2_desc3',
        'travel_av2_desc4',
        'travel_av2_desc5',
      ],
      whatsappLink: 'https://wa.me/51942694483',
      website: 'https://www.saetaairlines.com/#',
    ),
    //carnaval
    Travel(
      id:'co1',
      categories: <String>['a6'],
      title:'travel_co1_title',
      priceTable: <String>[
        'travel_co1_price1',
        'travel_co1_price2',
      ],
      accesibilidad: Accesibilidad.Gratis,
      planes:Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/costumbres/carnaval bagua grande.jpg',
        'images/costumbres/carnava1.jpg',
        'images/costumbres/carnava2.jpg',
        'images/costumbres/carnava3.jpg',
        'images/costumbres/carnava4.jpg',
        'images/costumbres/carnava5.jpg',
        'images/costumbres/carnava6.jpg',
        'images/costumbres/carnava7.jpg',
        'images/costumbres/carnava8.jpg',
        'images/costumbres/carnava9.jpg',
        'images/costumbres/carnava10.jpg',
      ],
      descripcion: <String>[
        'travel_co1_desc1',
        'travel_co1_desc2',
        'travel_co1_desc3',
      ],
    ),
    //fiesta de san juan
    Travel(
      id:'co2',
      categories: <String>['a6'],
      title:'travel_co2_title',
      priceTable: <String>[
        'travel_co2_price1',
        'travel_co2_price2',
      ],
      accesibilidad: Accesibilidad.Gratis,
      planes:Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/costumbres/fiesta de san juan.jpg',
        'images/costumbres/sanJuan1.jpg',
      ],
      descripcion: <String>[
        'travel_co2_desc1',
        
      ],
    ),
    //raymi llacta
    Travel(
      id:'co3',
      categories: <String>['a6'],
      title:'travel_co3_title',
      priceTable: <String>[
        'travel_co3_price1',
        'travel_co3_price2',
      ],
      accesibilidad: Accesibilidad.Gratis,
      planes:Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/costumbres/raymi llacta.jpg',
        'images/costumbres/raymi1.jpg',
        'images/costumbres/raymi2.jpg',
        'images/costumbres/raymi3.jpg',
        'images/costumbres/raymi4.jpg',
       
      ],
      descripcion: <String>[
        'travel_co3_desc1',
       
      ],
    ),
    //yunsa
    Travel(
      id:'co4',
      categories: <String>['a6'],
      title:'travel_co4_title',
      priceTable: <String>[
        'travel_co4_price1',
        'travel_co4_price2',
      ],
      accesibilidad: Accesibilidad.Gratis,
      planes:Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/costumbres/yunsa.jpeg',
        'images/costumbres/yunsa1.jpg',
        'images/costumbres/yunsa2.jpg',
        'images/costumbres/yunsa3.jpg',
        'images/costumbres/yunsa4.jpg',
        'images/costumbres/yunsa5.jpg',
       
      ],
      descripcion: <String>[
        'travel_co3_desc1',
       
      ],
    ),
    //fiesta virgen asunta
    Travel(
      id:'co5',
      categories: <String>['a6'],
      title:'travel_co5_title',
      priceTable: <String>[
        'travel_co5_price1',
        'travel_co5_price2',
      ],
      accesibilidad: Accesibilidad.Gratis,
      planes:Planes.NadaIncluido,
      imageCarousel: <String>[
        'images/costumbres/fiestavirgenAsunta.jpg',
        'images/costumbres/asunta1.jpg',
        'images/costumbres/asunta2.jpg',
        'images/costumbres/asunta3.jpg',
        'images/costumbres/asunta4.jpg',
        'images/costumbres/asunta5.jpg',
      ],
      descripcion: <String>[
        'travel_co5_desc1',
       
      ],
    ),
    //hotel gocta 
    Travel(
      id: 'h1',
      categories: <String>['a5'],
      title: 'travel_h1_title',
      priceTable: <String>[
        'travel_h1_price1',
      ],
      accesibilidad: Accesibilidad.Costoso,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/hoteles/gocta lodge.jpg',
        'images/hoteles/hgocta1.jpg',
        'images/hoteles/hgocta2.jpg',
        'images/hoteles/hgocta3.jpg',
        'images/hoteles/hgocta4.jpg',
        'images/hoteles/hgocta5.jpg',
        'images/hoteles/hgocta6.jpg',
        'images/hoteles/hgocta7.jpg',
        'images/hoteles/hgocta8.jpg',
        'images/hoteles/hgocta9.jpg',
        'images/hoteles/hgocta10.jpg',
        'images/hoteles/hgocta11.jpg',
        'images/hoteles/hgocta12.jpg',
        'images/hoteles/hgocta13.jpg',
        'images/hoteles/hgocta14.jpg',
        'images/hoteles/hgocta15.jpg',
        'images/hoteles/hgocta16.jpg',
        'images/hoteles/hgocta17.jpg',
        'images/hoteles/hgocta18.jpg',
      ],
      descripcion: <String>[
        'travel_h1_desc1',
        'travel_h1_desc2',
        'travel_h1_desc3',
      ],
      whatsappLink: 'https://wa.me/51950465396',
      website: 'https://www.goctalodge.com/',
    ),
    //hotel xalca
    Travel(
      id: 'h2',
      categories: <String>['a5'],
      title: 'travel_h2_title',
      priceTable: <String>[
        'travel_h2_price1',
        'travel_h2_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/hoteles/xalca hotel.jpg',
        'images/hoteles/xalca1.jpg',
        'images/hoteles/xalca2.jpg',
        'images/hoteles/xalca3.jpg',
        'images/hoteles/xalca4.jpg',
        'images/hoteles/xalca5.jpg',
        'images/hoteles/xalca6.jpg',
        'images/hoteles/xalca7.jpg',
        'images/hoteles/xalca8.jpg',
        'images/hoteles/xalca9.jpg',
        'images/hoteles/xalca10.jpg',
        'images/hoteles/xalca11.jpg',
        'images/hoteles/xalca12.jpg',
      ],
      descripcion: <String>[
        'travel_h2_desc1',
      ],
      whatsappLink: 'https://wa.me/51941896039',
      website: 'https://laxalcahotel.com/',
    ),
    //hotel achamaqui
    Travel(
      id: 'h3',
      categories: <String>['a5'],
      title: 'travel_h3_title',
      priceTable: <String>[
        'travel_h3_price1',
        'travel_h3_price2',
      ],
      accesibilidad: Accesibilidad.Costoso,
      planes:Planes.DesayunoIncluidos,
      imageCarousel: <String>[
       'images/hoteles/achamaqui hotel.jpg',
       'images/hoteles/achamaqui1.jpeg',
       'images/hoteles/achamaqui2.jpg',
       'images/hoteles/achamaqui3.jpeg',
       'images/hoteles/achamaqui4.jpg',
       'images/hoteles/achamaqui5.jpeg',
       'images/hoteles/achamaqui6.jpg',
       'images/hoteles/achamaqui7.jpg',
       'images/hoteles/achamaqui8.jpg',
       'images/hoteles/achamaqui9.jpg',
       'images/hoteles/achamaqui10.jpg',
       'images/hoteles/achamaqui11.jpg',
       'images/hoteles/achamaqui12.jpg',
       'images/hoteles/achamaqui13.jpg',
       'images/hoteles/achamaqui14.jpg',
       'images/hoteles/achamaqui15.jpg',
       'images/hoteles/achamaqui16.jpeg',
       'images/hoteles/achamaqui17.jpg',
       'images/hoteles/achamaqui18.jpg',
      ],
      descripcion: <String>[
        'travel_h3_desc1',
        'travel_h3_desc1',
        'travel_h3_desc1',
      ],
     
      website: 'https://achamaqui.pe/',
    ),
    //hotel puma urco
    Travel(
      id: 'h4',
      categories: <String>['a5'],
      title: 'travel_h4_title',
      priceTable: <String>[
        'travel_h4_price1',
        'travel_h4_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/hoteles/pumahotel.jpg',
        'images/hoteles/puma1.jpg',
        'images/hoteles/puma2.jpg',
        'images/hoteles/puma3.jpg',
        'images/hoteles/puma4.png',
        'images/hoteles/puma5.png',
      ],
      descripcion: <String>[
        'travel_h4_desc1',
      ],
     whatsappLink: 'https://wa.me/51941976944',
      website: 'https://hotelpumaurco.com/',
    ),
    //hotel villa paris 
    Travel(
      id: 'h5',
      categories: <String>['a5'],
      title: 'travel_h5_title',
      priceTable: <String>[
        'travel_h5_price1',
        'travel_h5_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.DesayunoIncluidos,
      imageCarousel: <String>[
        'images/hoteles/villa paris.jpg',
        'images/hoteles/villa1.jpg',
        'images/hoteles/villa2.jpg',
        'images/hoteles/villa3.jpg',
        'images/hoteles/villa4.jpg',
        'images/hoteles/villa5.jpg',
        'images/hoteles/villa6.jpg',
        'images/hoteles/villa7.jpg',
        'images/hoteles/villa8.jpg',
        'images/hoteles/villa9.jpg',
        'images/hoteles/villa10.jpg',
      ],
      descripcion: <String>[
        'travel_h5_desc1',
      ],
     whatsappLink: 'https://wa.me/51987472190',
     website: 'https://www.hotelvilladeparis.com/',
    ),
    //kuelap
    Travel(
      id: 'k1',
      categories: <String>['a3'],
      title: 'travel_k1_title',
      priceTable: <String>[
        'travel_k1_price1',
        'travel_k1_price2',

      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/arqueologicos/kuelapar.jpeg',
        'images/arqueologicos/keulap1.jpg',
        'images/arqueologicos/kuelap2.jpg',
        'images/arqueologicos/kuelap3.jpg',
        'images/arqueologicos/kuelap4.jpg',
        'images/arqueologicos/kuelap5.jpg',
        'images/arqueologicos/kuelap6.jpg',
        'images/arqueologicos/kuelap11.png',
        'images/arqueologicos/kuelap8.jpeg',
        'images/arqueologicos/kuelap9.jpg',
      ],
      descripcion: <String>[
        'travel_k1_desc1',
        'travel_k1_desc2',
        'travel_k1_desc3',
      ],
      whatsappLink: 'https://wa.me/51975108550',
      website: 'https://www.peru.travel/es/masperu/todo-lo-que-debes-saber-sobre-el-teleferico-de-kuelap',

    ),
    //laguna de los condores
    Travel(
      id: 'k2',
      categories: <String>['a3'],
      title: 'travel_k2_title',
      priceTable: <String>[
        'travel_k2_price1',
        'travel_k2_price2',

      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.GuiaIncluido,
        imageCarousel: <String>[
        'images/arqueologicos/laguan de los condores.jpeg',
        'images/arqueologicos/laguna1.jpg',
        'images/arqueologicos/laguna2.jpg',
        'images/arqueologicos/laguna3.jpg',
      ],
      descripcion: <String>[
        'travel_k2_desc1',
        'travel_k2_desc2',
        'travel_k2_desc3',
      ],
      whatsappLink: 'https://wa.me/51928429916',
      website: 'https://amazonexpeditionperu.com/es/tour/laguna-de-los-condores-trekking-chachapoyas/?form=MG0AV3',
      
    ),
    //sarcofagos de karajia
    Travel(
      id: 'k3',
      categories: <String>['a3'],
      title: 'travel_k3_title',
      priceTable: <String>[
        'travel_k3_price1',
        'travel_k3_price2',

      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.GuiaIncluido,
      imageCarousel: <String>[
        'images/arqueologicos/sarcojafos de karajia.jpg',
        'images/arqueologicos/sarcofago1.jpeg',
        'images/arqueologicos/sarcofago2.jpg',
        'images/arqueologicos/sarcofago3.jpeg',
        'images/arqueologicos/sarcofago4.jpg',
        'images/arqueologicos/sarcofago5.jpg',
    
      ],
      descripcion: <String>[
        'travel_k3_desc1',
        'travel_k3_desc2',
        'travel_k3_desc3',
      ],
      whatsappLink: 'https://wa.me/51941978382',
      website: 'https://chachapoyasexpedition.com/tour/sarcofagos-de-karajia/?form=MG0AV3',
      
    ),
    //wimba
    Travel(
      id: 'k4',
      categories: <String>['a3'],
      title: 'travel_k4_title',
      priceTable: <String>[
        'travel_k4_price1',
        'travel_k4_price2',

      ],
      accesibilidad: Accesibilidad.Economico,
      planes:Planes.GuiaIncluido,
      imageCarousel: <String>[
         'images/arqueologicos/wimba.jpeg',
         'images/arqueologicos/wimba4.jpg',
         'images/arqueologicos/wimba1.jpg',
         'images/arqueologicos/wimba2.jpg',
         'images/arqueologicos/wimba3.jpg',
    
      ],
      descripcion: <String>[
        'travel_k4_desc1',
        'travel_k4_desc2',
        'travel_k4_desc3',
      ],
      whatsappLink: 'https://wa.me/51957194186',
      website: 'https://wimba085.wixsite.com/tocuya-wimba?fbclid=IwY2xjawF-AqRleHRuA2FlbQIxMAABHYXq0mzRVRpkl1Erz-BIUkoO8a6cXTvwyD3aPiq3zH3RIDDzcprb48ehZw_aem_C8jqvofb7GYgsLMIUw8f_w',
      
    ),
    //cavernas de quiocta
    Travel(
      id: 'k5',
      categories: <String>['a3'],
      title: 'travel_k5_title',
      priceTable: <String>[
        'travel_k5_price1',
        'travel_k5_price2',
        'travel_k5_price3',

      ],
      accesibilidad: Accesibilidad.Economico,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/arqueologicos/quiocta.jpg',
        'images/arqueologicos/quiocta1.jpg',
        'images/arqueologicos/quiocta2.jpg',
        'images/arqueologicos/quiocta3.jpg',
        'images/arqueologicos/quiocta4.jpg',
    
      ],
      descripcion: <String>[
        'travel_k5_desc1',
        'travel_k5_desc2',
       
      ],
   
    ),
      //podructos tradicionales
      //licore victor hugo
    Travel(
        id: 'p1',
        categories: <String>['a4'],
        title:'travel_p1_title',
        priceTable: <String>[
            'travel_p1_price1',
            'travel_p1_price2',
        ],
        accesibilidad: Accesibilidad.Economico,
        planes:Planes.soloProducto,
        imageCarousel: <String>[
            'images/paquetes/chila2.jpg',
            'images/paquetes/chila1.jpg',
            'images/paquetes/chila3.jpg',
            'images/paquetes/chila.jpeg',
            'images/paquetes/chila4.jpg',
            'images/paquetes/chila5.jpg',
            'images/paquetes/chila6.jpg',
            'images/paquetes/chila7.jpg',
            'images/paquetes/chila8.jpg',
        ],
        descripcion: <String>[
            'travel_p1_desc1',
            'travel_p1_desc2',
            'travel_p1_desc3',

        ],
        whatsappLink: 'https://wa.me/51952283408',
        website: 'https://web.facebook.com/photo/?fbid=2885800948360727&set=pb.100054337158697.-2207520000',
        
    ),
    //cafe monteverde
    Travel(
        id: 'p2',
        categories: <String>['a4'],
        title:'travel_p2_title',
        priceTable: <String>[
            'travel_p2_price1',
            'travel_p2_price2',
        ],
        accesibilidad: Accesibilidad.Medio,
        planes:Planes.soloProducto,
        imageCarousel: <String>[
            'images/paquetes/monteverde5.jpg',
            'images/paquetes/monteverde6.jpg',
            'images/paquetes/monteverde7.jpg',
            'images/paquetes/monteverde8.jpg',
            'images/paquetes/cafemonteverde.jpeg',
            'images/paquetes/monteverde3.jpeg',
            'images/paquetes/monteverde4.jpeg',
        ],
        descripcion: <String>[
            'travel_p2_desc1',
            'travel_p2_desc2',
            'travel_p2_desc3',

        ],
        whatsappLink: 'https://wa.me/51994796009',
        website: 'https://monteverdecafe.com/',
        
    ),
    //panaderia lamud
    Travel(
        id: 'p3',
        categories: <String>['a4'],
        title:'travel_p3_title',
        priceTable: <String>[
            'travel_p3_price1',
            'travel_p3_price2',
        ],
        accesibilidad: Accesibilidad.Economico,
        planes:Planes.soloProducto,
        imageCarousel: <String>[
            'images/paquetes/panaderialamud.jpg',
            'images/paquetes/panaderialamud1.jpg',
            'images/paquetes/panaderialamud2.jpg',
            'images/paquetes/panaderialamud3.jpg',
            'images/paquetes/panaderialamud4.jpg',
        ],
        descripcion: <String>[
            'travel_p3_desc1',
            'travel_p3_desc2',
            
        ],
        whatsappLink: 'https://wa.me/51998877474',
        website: 'https://es.restaurantguru.com/Panaderia-Pasteleria-Lamud-Chachapoyas',
        
    ),
    //restaurante real cecina
    Travel(
      id: 'r1',
      categories: <String>['a11'],
      title: 'travel_r1_title',
      priceTable: <String>[
        'travel_r1_price1',
        'travel_r1_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/restaurantes/realcecina.jpg',
        'images/restaurantes/realcecina1.jpg',
        'images/restaurantes/realcecina2.png',
        'images/restaurantes/realcecina3.png',
        'images/restaurantes/realcecina4.png',
        'images/restaurantes/realcecina5.png',
        'images/restaurantes/realcecina6.png',
      ],
      descripcion: <String>[
        'travel_r1_desc1',
        'travel_r1_desc2',
        'travel_r1_desc3',
      ],
      whatsappLink: 'https://wa.me/5141477469',
      website: 'https://es.restaurantguru.com/Real-Cecina-Chachapoyas',

    ),
    //restaurante batan del tayta
    Travel(
      id: 'r2',
      categories: <String>['a11'],
      title: 'travel_r2_title',
      priceTable: <String>[
        'travel_r2_price1',
        'travel_r2_price2',
      ],
      accesibilidad: Accesibilidad.Costoso,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
         'images/restaurantes/batantayta.jpg',
        'images/restaurantes/batan1.jpg',
        'images/restaurantes/batan2.jpg',
        'images/restaurantes/batan3.jpg',
        'images/restaurantes/batan4.jpg',
        'images/restaurantes/batan5.jpg',
        'images/restaurantes/batan6.jpg',
        'images/restaurantes/batan7.jpg',
      ],
      descripcion: <String>[
        'travel_r2_desc1',
        'travel_r2_desc2',
        'travel_r2_desc3',
        'travel_r2_desc4',
      ],
      whatsappLink: 'https://wa.me/51982777219',
      website: 'https://web.facebook.com/ElBatanDelTayta/?_rdc=1&_rdr',

    ),
    //restaurante amazonika
    Travel(
      id: 'r3',
      categories: <String>['a11'],
      title: 'travel_r3_title',
      priceTable: <String>[
        'travel_r3_price1',
        'travel_r3_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/restaurantes/Amazonika.jpg',
        'images/restaurantes/amazonika1.jpg',
        'images/restaurantes/amazonika2.jpg',
        'images/restaurantes/amazonika3.jpg',
        'images/restaurantes/amazonika4.jpg',
        'images/restaurantes/amazonika5.jpg',
        'images/restaurantes/amazonika6.jpg',
        'images/restaurantes/amazonika7.jpg',
        ],
      descripcion: <String>[
        'travel_r3_desc1',
        'travel_r3_desc2',
        'travel_r3_desc3',
        'travel_r3_desc4',
      ],
      whatsappLink: 'https://wa.me/51912532264',
      website: 'https://web.facebook.com/amazonikarestaurante/?_rdc=1&_rdr',

    ),
    //restaurante los guayachos
    Travel(
      id: 'r4',
      categories: <String>['a11'],
      title: 'travel_r4_title',
      priceTable: <String>[
        'travel_r4_price1',
        'travel_r4_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/restaurantes/guayachos.jpg',
        'images/restaurantes/huayacho1.jpg',
        'images/restaurantes/huayacho2.jpg',
        'images/restaurantes/huayacho3.jpg',
        'images/restaurantes/huayacho4.jpg',
        'images/restaurantes/huayacho5.jpg',
        'images/restaurantes/huayacho6.jpg',
        'images/restaurantes/huayacho7.jpg',
        'images/restaurantes/huayacho8.jpg',
        'images/restaurantes/huayacho9.jpg',
        'images/restaurantes/huayacho10.jpg',
      ],
      descripcion: <String>[
        'travel_r4_desc1',
        'travel_r4_desc2',
        'travel_r4_desc3',
        'travel_r4_desc4',
      ],
      whatsappLink: 'https://wa.me/51941913066',
      website: 'https://losguayachos.com/',

    ),
    //restaurante mistura urco
    Travel(
      id: 'r5',
      categories: <String>['a11'],
      title: 'travel_r5_title',
      priceTable: <String>[
        'travel_r5_price1',
        'travel_r5_price2',
      ],
      accesibilidad: Accesibilidad.Costoso,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/restaurantes/misturaUrco.jpg',
        'images/restaurantes/mistura1.jpg',
        'images/restaurantes/mistura2.jpg',
        'images/restaurantes/mistura3.jpg',
        'images/restaurantes/mistura4.jpg',
        'images/restaurantes/mistura5.jpg',
        'images/restaurantes/mistura6.jpg',
        'images/restaurantes/mistura7.jpg',
        'images/restaurantes/mistura8.jpg',
      ],
      descripcion: <String>[
        'travel_r5_desc1',
        'travel_r5_desc2',
        'travel_r5_desc3',
      ],
      whatsappLink: 'https://wa.me/51943840035',
      website: 'https://web.facebook.com/MissturaUrco/?_rdc=1&_rdr',

    ),
    //restaurante hailton
    Travel(
      id: 'r6',
      categories: <String>['a11'],
      title: 'travel_r6_title',
      priceTable: <String>[
        'travel_r6_price1',
        'travel_r6_price2',
      ],
      accesibilidad: Accesibilidad.Medio,
      planes:Planes.TodoIncluido,
      imageCarousel: <String>[
        'images/restaurantes/pollobra.jpeg',
        'images/restaurantes/hailton1.png',
        'images/restaurantes/hailton2.png',
        'images/restaurantes/hailton3.png',
        'images/restaurantes/hailton4.png',
        'images/restaurantes/hailton5.jpg',
      ],
      descripcion: <String>[
        'travel_r6_desc1',
        'travel_r6_desc2',
        'travel_r6_desc3',
      ],
      whatsappLink: 'https://wa.me/51969135926',
      website: 'https://es.restaurantguru.com/Hailton-Pollos-and-Parrillas-Chachapoyas',
    ),
    Travel(
      id:'ar1',
      categories: <String>['a1'],
      title: 'travel_ar1_title',
      priceTable: <String>[
        'travel_ar1_prices1',
        'travel_ar1_prices2',
        
      ],
      accesibilidad: Accesibilidad.Medio,
      planes: Planes.soloProducto,
      imageCarousel: <String>[
        'images/artesania/ayawun1.png',
        'images/artesania/ayawun2.png',
        'images/artesania/ayawun3.png',
        'images/artesania/ayawun5.png',
        'images/artesania/ayawun6.jpg',
        'images/artesania/ayawun7.jpg',
        'images/cat_images/ayawuncat.png',
      ],
      descripcion: <String>[
        'travel_ar1_desc1',
        'travel_ar1_desc2',
        'travel_ar1_desc3',
        'travel_ar1_desc4',
      ],

    ),  
];
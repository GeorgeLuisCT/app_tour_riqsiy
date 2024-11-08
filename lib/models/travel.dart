enum Accesibilidad{
  Economico,
  Medio,
  Costoso,
  Gratis
}

enum Planes{
  TodoIncluido,
  DesayunoIncluidos,
  SoloHospedaje,
  GuiaIncluido,
  GuiaHospedaje,
  NadaIncluido,
  SoloBoleto,
  soloProducto,
}

class Travel{
  final String id;
  final List<String> categories;
  final String title;
  final List<String>priceTable;
  final List<String> imageCarousel;
  final List<String>descripcion;
  final Accesibilidad accesibilidad;
  final Planes planes;
  final String? whatsappLink;
  final String? website;


  const Travel({
    required this.id,
    required this.categories,
    required this.title,
    required this.priceTable,
    required this.accesibilidad,
    required this.descripcion,
    required this.planes,
    required this.imageCarousel,
    this.whatsappLink,
    this.website,
  });
}
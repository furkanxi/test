class Priority {
  final String title;
  final String imageUrl;
  final String id;

  Priority({
    this.title,
    this.imageUrl,
    this.id,
  });
}


final List<Priority> priority = [
  Priority(
      title: 'Lackierarbeiten',
      imageUrl:
      'https://www.autoreparaturen.de/blog/wp-content/uploads/2019/03/auto-selbst-lackieren-autoreparaturen.jpg',
      id: 'a1'),
  Priority(
      title: 'Montage',
      imageUrl:
      'https://www.produktion.de/assets/images/e/bott_web-e4bcd94e.jpg',
      id: 'a2'),
  Priority(
      title: 'Bohren',
      imageUrl:
      'https://bilder.t-online.de/b/85/56/68/10/id_85566810/c_Master-4-3-Large/tid_da/loch-bohren-fuer-die-bohrleistung-ist-das-system-aus-bohrmaschine-und-bohraufsatz-entscheidend-.jpg',
      id: 'a3'),
  Priority(
      title: 'Fräsen',
      imageUrl:
      'https://www.techpilot.de/wp-content/uploads/2019/06/cnc-fraesen.jpg',
      id: 'a4'),
  Priority(
      title: 'PowerPoint',
      imageUrl:
      'https://cdn.prod.www.spiegel.de/images/ca67133b-0001-0004-0000-000000948457_w948_r1.77_fpx33.34_fpy49.98.jpg',
      id: 'a5')
];

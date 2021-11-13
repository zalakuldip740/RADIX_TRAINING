class EventDatas {
  final String title, prize, desc;
  bool isbutton;
  final List<String> imgurl;

  EventDatas(this.title, this.prize, this.desc, this.imgurl, this.isbutton
      //this.cardcolor
      );
}

List<EventDatas> eventitems = [
  EventDatas(
      "Design & Build Finance App",
      "Total Price \$28,600.870",
      "Solving the problems that appear in the new era of technology world.we need come with the mobile ...",
      imagesfirstcard,
      false),
  EventDatas(
      "Charity Website",
      "Non-Profit",
      "Helping elders to what their needs from people in the world.",
      imagessecondcard,
      true),
];

List<String> imagesfirstcard = [
  "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004__340.jpg",
  "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/08/Profile-Photo-Wallpaper.jpg",
  "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814__340.jpg",
  "https://cdn.pixabay.com/photo/2017/11/29/09/15/paint-2985569__480.jpg",
  "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004__340.jpg",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"
];

List<String> imagessecondcard = [
  "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/08/Profile-Photo-Wallpaper.jpg",
  "https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490__340.jpg",
  "https://cdn.pixabay.com/photo/2017/11/29/09/15/paint-2985569__480.jpg",
];

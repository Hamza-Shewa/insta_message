enum Social {
  whatsApp(0, 'WhatsApp', 'https://wa.me/'),
  telegram(1, 'Telegram', 'https://t.me/');

  const Social(
    this.id,
    this.name,
    this.url,
  );
  final int id;
  final String name;
  final String url;
}

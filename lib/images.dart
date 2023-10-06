 _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Image viewer'),
        ),
        body: Center(
            child: SizedBox(
                width: 1000,
                height: 1000,
                child: Image.asset('assets/images/pic_1.1.png'))));
  }
}
